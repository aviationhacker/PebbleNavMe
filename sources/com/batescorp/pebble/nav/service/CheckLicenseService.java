package com.batescorp.pebble.nav.service;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.android.vending.billing.IInAppBillingService;
import com.batescorp.pebble.nav.lib.billing.IabHelper;
import com.batescorp.pebble.nav.lib.billing.IabResult;
import com.batescorp.pebble.nav.lib.billing.Inventory;
import com.batescorp.pebble.nav.lib.billing.SkuDetails;
import com.batescorp.pebble.nav.processor.NavLicense;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class CheckLicenseService extends Service {
    IabHelper d;
    private IInAppBillingService g;
    boolean a = false;
    Boolean b = false;
    String c = null;
    private ServiceConnection h = new ServiceConnection() { // from class: com.batescorp.pebble.nav.service.CheckLicenseService.2
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            CheckLicenseService.this.g = null;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            CheckLicenseService.this.g = IInAppBillingService.Stub.asInterface(iBinder);
        }
    };
    IabHelper.QueryInventoryFinishedListener e = new IabHelper.QueryInventoryFinishedListener() { // from class: com.batescorp.pebble.nav.service.CheckLicenseService.3
        @Override // com.batescorp.pebble.nav.lib.billing.IabHelper.QueryInventoryFinishedListener
        public void onQueryInventoryFinished(IabResult iabResult, Inventory inventory) {
            if (iabResult.isFailure()) {
                CheckLicenseService.this.a();
                return;
            }
            if (inventory == null) {
                CheckLicenseService.this.a();
                return;
            }
            SkuDetails skuDetails = inventory.getSkuDetails("application_product_key");
            if (skuDetails == null) {
                CheckLicenseService.this.a();
                return;
            }
            CheckLicenseService.this.c = skuDetails.getPrice();
            Log.d("CheckLicenseService", "fullPrice: " + CheckLicenseService.this.c + " : " + CheckLicenseService.this.b);
            CheckLicenseService.this.a = true;
            Intent intent = new Intent();
            intent.setAction("pebble.nav.checkpaid");
            intent.putExtra("PRICE", CheckLicenseService.this.c);
            intent.putExtra("PAID", CheckLicenseService.this.b);
            CheckLicenseService.this.sendBroadcast(intent);
            CheckLicenseService.this.a();
        }
    };
    IabHelper.QueryInventoryFinishedListener f = new IabHelper.QueryInventoryFinishedListener() { // from class: com.batescorp.pebble.nav.service.CheckLicenseService.4
        @Override // com.batescorp.pebble.nav.lib.billing.IabHelper.QueryInventoryFinishedListener
        public void onQueryInventoryFinished(IabResult iabResult, Inventory inventory) {
            if (iabResult.isFailure()) {
                Log.e("CheckLicenseService", "Failure : " + iabResult.getResponse());
                CheckLicenseService.this.a();
                return;
            }
            CheckLicenseService.this.b = Boolean.valueOf(inventory.hasPurchase("application_product_key"));
            NavLicense.getInstance(CheckLicenseService.this).updateLicenseCheck(CheckLicenseService.this.b.booleanValue());
            Log.d("CheckLicenseService", "Paid : " + CheckLicenseService.this.b);
            CheckLicenseService.this.d.queryInventoryAsync(true, Collections.singletonList("application_product_key"), CheckLicenseService.this.e);
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE);
        bindService(intent, this.h, 1);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        a();
        if (this.h != null) {
            unbindService(this.h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.d != null) {
            this.d.dispose();
        }
        this.d = null;
        Intent intent = new Intent();
        intent.setClass(this, NavProcessingService.class);
        intent.setAction("com.batescorp.pebble.nav.RELOAD");
        startService(intent);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.d("CheckLicenseService", "onStartCommand - start");
        if (this.d == null) {
            this.d = new IabHelper(this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzH/mZVNWNkh/1crQe67CKf8V9XDUPYKmDAYgFTYUcFKWsjsIWyoN7nVGZeK9knKR5ebh0cZHqSj7MGUxn8PzIKJmnEsYo78H/r8CC8eMMrfMuJ27txGpWLlgKlJSgRBZtJpcUAbjJQj+AoBQUuDG05OU0IWLdcus4cfWEWpyAnES/WFRtWPMLwQ8XWwnGyP312g199eQp3G4ol9XYyVZXcRASfKu8yTTK0WhHkFRyNoj8nuRGnDCiGzNyiTV4NBfUIDfUw6ZawAKf8GkJZ4KA94eOrfCftclHB5zlCWd0qKod4gjOCXTjVwaJ5mtXRW4PaPTdU2AIYCUhr52SGMgZQIDAQAB");
            this.d.startSetup(new IabHelper.OnIabSetupFinishedListener() { // from class: com.batescorp.pebble.nav.service.CheckLicenseService.1
                @Override // com.batescorp.pebble.nav.lib.billing.IabHelper.OnIabSetupFinishedListener
                public void onIabSetupFinished(IabResult iabResult) {
                    if (!iabResult.isSuccess()) {
                        CheckLicenseService.this.a();
                        Log.d("CheckLicenseService", "Problem setting up In-app Billing: " + iabResult);
                    } else {
                        Log.d("CheckLicenseService", "Hooray, IAB is fully set up!: " + iabResult);
                        CheckLicenseService.this.d.queryInventoryAsync(CheckLicenseService.this.f);
                    }
                }
            });
            Log.d("CheckLicenseService", "onStartCommand - end");
        }
        return 2;
    }
}
