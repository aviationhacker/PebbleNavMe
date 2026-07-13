package com.batescorp.pebble.nav;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.text.Html;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.batescorp.pebble.nav.activity.DestinationActivity;
import com.batescorp.pebble.nav.activity.UnlockActivity;
import com.batescorp.pebble.nav.lib.PebbleUtils;
import com.batescorp.pebble.nav.lib.billing.IabHelper;
import com.batescorp.pebble.nav.lib.billing.IabResult;
import com.batescorp.pebble.nav.lib.billing.Purchase;
import com.batescorp.pebble.nav.processor.NavLicense;
import com.batescorp.pebble.nav.service.CheckLicenseService;
import com.batescorp.pebble.nav.service.DevEmailIntentService;
import com.batescorp.pebble.nav.service.NavProcessingService;
import com.batescorp.pebble.nav.settings.SettingsActivity;
import com.batescorp.pebble.nav.util.StringUtil;
import com.batescorp.pebble.nav.util.SystemUtil;
import com.google.android.gms.appindexing.Action;
import com.google.android.gms.appindexing.AppIndex;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.common.primitives.Ints;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends Activity implements View.OnClickListener {
    static Activity g;
    IntentFilter a;
    PlaceholderFragment b;
    Button c;
    AlertDialog d;
    AlertDialog e;
    IabHelper f;
    IabHelper.OnIabPurchaseFinishedListener h = new IabHelper.OnIabPurchaseFinishedListener() { // from class: com.batescorp.pebble.nav.MainActivity.4
        @Override // com.batescorp.pebble.nav.lib.billing.IabHelper.OnIabPurchaseFinishedListener
        public void onIabPurchaseFinished(IabResult iabResult, Purchase purchase) {
            Log.d("MainActivity", "onIabPurchaseFinished : " + iabResult);
            if (iabResult.isFailure()) {
                Log.d("MainActivity", "Error purchasing: " + iabResult);
            } else if (purchase.getSku().equals("application_product_key")) {
                Log.d("MainActivity", "Wohoo paid for");
                MainActivity.this.startService(new Intent(MainActivity.this, (Class<?>) CheckLicenseService.class));
            }
        }
    };
    private BroadcastReceiver i;
    private GoogleApiClient j;

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.j.connect();
        this.c = (Button) findViewById(R.id.buyAppButton);
        this.c.setOnClickListener(this);
        ((TextView) findViewById(R.id.textView2)).setMovementMethod(LinkMovementMethod.getInstance());
        ((TextView) findViewById(R.id.textView2)).setText(Html.fromHtml(getResources().getString(R.string.description2)));
        AppIndex.AppIndexApi.start(this.j, Action.newAction(Action.TYPE_VIEW, "Main Page", Uri.parse("http://host/path"), Uri.parse("android-app://com.batescorp.pebble.nav/http/host/path")));
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Google Maps Version Invalid");
        builder.setMessage("Google Maps must be at least version \"" + getString(R.string.min_map_version) + "\".").setCancelable(false).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.batescorp.pebble.nav.MainActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        this.d = builder.create();
        AlertDialog.Builder builder2 = new AlertDialog.Builder(this);
        builder2.setTitle("Notification Access");
        builder2.setMessage("Notification access must be enabled for \"" + getString(R.string.app_name) + "\".").setCancelable(false).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.batescorp.pebble.nav.MainActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
                intent.setFlags(intent.getFlags() | Ints.MAX_POWER_OF_TWO);
                MainActivity.this.startActivityForResult(intent, 0);
            }
        });
        this.e = builder2.create();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            String string = extras.getString("type");
            Log.d("MainActivity", "onResume - type : " + string);
            if ("unlock".equals(string)) {
                Intent intent = new Intent(this, (Class<?>) UnlockActivity.class);
                intent.putExtra("uri", extras.getString("uri"));
                startActivity(intent);
            }
        }
        getIntent().putExtra("type", "none");
        registerReceiver(this.i, this.a);
        startService(new Intent(this, (Class<?>) CheckLicenseService.class));
        b();
        checkLicense();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        unregisterReceiver(this.i);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().build());
        if (bundle == null) {
            this.b = new PlaceholderFragment();
            getFragmentManager().beginTransaction().add(R.id.container, new PlaceholderFragment()).commit();
        }
        g = this;
        this.i = new a();
        this.a = new IntentFilter();
        this.a.addAction("pebble.nav.checkpaid");
        a();
        ActivityCompat.requestPermissions(this, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 9999);
        this.j = new GoogleApiClient.Builder(this).addApi(AppIndex.API).build();
    }

    private void a() {
        this.f = new IabHelper(this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzH/mZVNWNkh/1crQe67CKf8V9XDUPYKmDAYgFTYUcFKWsjsIWyoN7nVGZeK9knKR5ebh0cZHqSj7MGUxn8PzIKJmnEsYo78H/r8CC8eMMrfMuJ27txGpWLlgKlJSgRBZtJpcUAbjJQj+AoBQUuDG05OU0IWLdcus4cfWEWpyAnES/WFRtWPMLwQ8XWwnGyP312g199eQp3G4ol9XYyVZXcRASfKu8yTTK0WhHkFRyNoj8nuRGnDCiGzNyiTV4NBfUIDfUw6ZawAKf8GkJZ4KA94eOrfCftclHB5zlCWd0qKod4gjOCXTjVwaJ5mtXRW4PaPTdU2AIYCUhr52SGMgZQIDAQAB");
        this.f.startSetup(new IabHelper.OnIabSetupFinishedListener() { // from class: com.batescorp.pebble.nav.MainActivity.3
            @Override // com.batescorp.pebble.nav.lib.billing.IabHelper.OnIabSetupFinishedListener
            public void onIabSetupFinished(IabResult iabResult) {
                if (!iabResult.isSuccess()) {
                    Log.d("MainActivity", "Problem setting up In-app Billing: " + iabResult);
                } else {
                    Log.d("MainActivity", "Hooray, IAB is fully set up!: " + iabResult);
                }
            }
        });
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) throws Throwable {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_settings) {
            startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
            return true;
        }
        if (itemId == R.id.destination_settings) {
            startActivity(new Intent(this, (Class<?>) DestinationActivity.class));
            return true;
        }
        if (itemId == R.id.email_logcat) {
            if (ContextCompat.checkSelfPermission(this, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
                ActivityCompat.requestPermissions(this, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 8888);
            } else {
                DevEmailIntentService.startSendEmail(this);
            }
            return true;
        }
        if (itemId == R.id.installWatchApp) {
            PebbleUtils.sendToPebbleFromResource(g, "pebble.pbw");
        }
        if (itemId == R.id.downloadWatchApp) {
            PebbleUtils.sendToDownloads(g, "pebble.pbw");
        }
        if (itemId == R.id.restore_purchase) {
            ((TextView) findViewById(R.id.trialDescriptionText)).setText(getString(R.string.check_license));
            startService(new Intent(this, (Class<?>) CheckLicenseService.class));
            return true;
        }
        if (itemId == R.id.jump_notification) {
            if (Build.VERSION.SDK_INT >= 18) {
                Intent intent = new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
                intent.setFlags(intent.getFlags() | Ints.MAX_POWER_OF_TWO);
                startActivityForResult(intent, 0);
            } else if (Build.VERSION.SDK_INT >= 14) {
                Intent intent2 = new Intent("android.settings.ACCESSIBILITY_SETTINGS");
                intent2.setFlags(intent2.getFlags() | Ints.MAX_POWER_OF_TWO);
                startActivityForResult(intent2, 0);
            }
        }
        if (itemId == R.id.jump_writeaccess) {
            Intent intent3 = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
            intent3.setData(Uri.parse("package:" + getPackageName()));
            startActivity(intent3);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 8888) {
            for (int i2 : iArr) {
                if (i2 != 0) {
                    return;
                }
            }
            DevEmailIntentService.startSendEmail(this);
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        AppIndex.AppIndexApi.end(this.j, Action.newAction(Action.TYPE_VIEW, "Main Page", Uri.parse("http://host/path"), Uri.parse("android-app://com.batescorp.pebble.nav/http/host/path")));
        this.j.disconnect();
    }

    public static class PlaceholderFragment extends Fragment {
        @Override // android.app.Fragment
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            return layoutInflater.inflate(R.layout.fragment_main, viewGroup, false);
        }
    }

    @SuppressLint({"SetTextI18n"})
    public void checkLicense() {
        Button button = (Button) findViewById(R.id.buyAppButton);
        TextView textView = (TextView) findViewById(R.id.trialDescriptionText);
        Intent intent = new Intent();
        intent.setClass(this, NavProcessingService.class);
        intent.setAction("com.batescorp.pebble.nav.RELOAD");
        startService(intent);
        NavLicense navLicense = NavLicense.getInstance(this);
        if (!navLicense.checkedForLicense()) {
            button.setVisibility(8);
            textView.setText(getString(R.string.check_license));
            return;
        }
        if (navLicense.isTrial()) {
            button.setVisibility(0);
            if (navLicense.isTrialExpired()) {
                textView.setText(getString(R.string.trial_expired));
                return;
            } else {
                textView.setText(navLicense.expireString() + " " + getString(R.string.trial_will_expire));
                return;
            }
        }
        if (navLicense.isFullLicense()) {
            button.setVisibility(8);
            textView.setText(getString(R.string.thank_purchase));
        }
    }

    private void b() {
        try {
            Log.d("MainActivity", "checkConfig");
            if (Build.VERSION.SDK_INT >= 18) {
                c();
            } else if (Build.VERSION.SDK_INT >= 14) {
                d();
            }
            PackageInfo packageInfo = getPackageManager().getPackageInfo("com.google.android.apps.maps", 128);
            Log.d("MainActivity", "Map version : " + packageInfo.versionCode + " : " + packageInfo.versionName + " : " + StringUtil.compareVersions(packageInfo.versionName, getString(R.string.min_map_version)));
            if (StringUtil.compareVersions(packageInfo.versionName, getString(R.string.min_map_version)) < 0 && !this.d.isShowing()) {
                this.d.show();
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }

    private void c() {
        boolean zNotificationEnable = false;
        try {
            zNotificationEnable = SystemUtil.notificationEnable(this);
        } catch (Exception e) {
            Log.e("MainActivity", "notificationEnable failed ", e);
        }
        if (!zNotificationEnable && !this.e.isShowing()) {
            this.e.show();
        }
    }

    private void d() {
        if (!e()) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle("Accessibility Access");
            builder.setMessage("Accessibility Service must be enabled for \"" + getString(R.string.app_name) + "\".").setCancelable(false).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.batescorp.pebble.nav.MainActivity.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    Intent intent = new Intent("android.settings.ACCESSIBILITY_SETTINGS");
                    intent.setFlags(intent.getFlags() | Ints.MAX_POWER_OF_TWO);
                    MainActivity.this.startActivityForResult(intent, 0);
                }
            });
            builder.create().show();
        }
    }

    private boolean e() {
        Settings.SettingNotFoundException e;
        int i;
        try {
            i = Settings.Secure.getInt(getContentResolver(), "accessibility_enabled");
        } catch (Settings.SettingNotFoundException e2) {
            e = e2;
            i = 0;
        }
        try {
            Log.d("MainActivity", "ACCESSIBILITY: " + i);
        } catch (Settings.SettingNotFoundException e3) {
            e = e3;
            Log.d("MainActivity", "Error finding setting, default accessibility to not found: " + e.getMessage());
        }
        TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(':');
        if (i == 1) {
            Log.d("MainActivity", "***ACCESSIBILIY IS ENABLED***: ");
            String string = Settings.Secure.getString(getContentResolver(), "enabled_accessibility_services");
            Log.d("MainActivity", "Setting: " + string);
            if (string != null) {
                simpleStringSplitter.setString(string);
                while (simpleStringSplitter.hasNext()) {
                    String next = simpleStringSplitter.next();
                    Log.d("MainActivity", "Setting: " + next);
                    if (next.equalsIgnoreCase("com.batescorp.pebble.nav/com.batescorp.pebble.nav.service.NavAccessibilityService")) {
                        Log.d("MainActivity", "We've found the correct setting - accessibility is switched on!");
                        return true;
                    }
                }
            }
            Log.d("MainActivity", "***END***");
        } else {
            Log.d("MainActivity", "***ACCESSIBILIY IS DISABLED***");
        }
        return false;
    }

    class a extends BroadcastReceiver {
        private a() {
            Log.d("MainActivity", "Instantiated InitializationReceiver");
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Log.d("MainActivity", "Paid - " + intent.getBooleanExtra("PAID", false));
            Log.d("MainActivity", "Price - " + intent.getStringExtra("PRICE"));
            MainActivity.this.checkLicense();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Log.e("MainActivity", "onClick - " + view.getId());
        if (view.equals(this.c)) {
            Log.e("MainActivity", "onClick - buyLicenseButton  ");
            try {
                this.f.launchPurchaseFlow(this, "application_product_key", new Random().nextInt(), this.h);
            } catch (Exception e) {
                Log.e("MainActivity", "Failed to purchase", e);
                this.f.dispose();
                a();
            }
        }
    }
}
