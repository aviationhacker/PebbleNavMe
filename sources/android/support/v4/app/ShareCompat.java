package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.support.annotation.StringRes;
import android.support.v4.content.IntentCompat;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import defpackage.ag;
import defpackage.ah;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ShareCompat {
    public static final String EXTRA_CALLING_ACTIVITY = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
    public static final String EXTRA_CALLING_PACKAGE = "android.support.v4.app.EXTRA_CALLING_PACKAGE";
    private static a a;

    interface a {
        String a(CharSequence charSequence);

        void a(MenuItem menuItem, IntentBuilder intentBuilder);
    }

    static class b implements a {
        b() {
        }

        @Override // android.support.v4.app.ShareCompat.a
        public void a(MenuItem menuItem, IntentBuilder intentBuilder) {
            menuItem.setIntent(intentBuilder.createChooserIntent());
        }

        @Override // android.support.v4.app.ShareCompat.a
        public String a(CharSequence charSequence) {
            StringBuilder sb = new StringBuilder();
            a(sb, charSequence, 0, charSequence.length());
            return sb.toString();
        }

        private static void a(StringBuilder sb, CharSequence charSequence, int i, int i2) {
            int i3 = i;
            while (i3 < i2) {
                char cCharAt = charSequence.charAt(i3);
                if (cCharAt == '<') {
                    sb.append("&lt;");
                } else if (cCharAt == '>') {
                    sb.append("&gt;");
                } else if (cCharAt == '&') {
                    sb.append("&amp;");
                } else if (cCharAt > '~' || cCharAt < ' ') {
                    sb.append("&#" + ((int) cCharAt) + ";");
                } else if (cCharAt == ' ') {
                    while (i3 + 1 < i2 && charSequence.charAt(i3 + 1) == ' ') {
                        sb.append("&nbsp;");
                        i3++;
                    }
                    sb.append(' ');
                } else {
                    sb.append(cCharAt);
                }
                i3++;
            }
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.app.ShareCompat.b, android.support.v4.app.ShareCompat.a
        public void a(MenuItem menuItem, IntentBuilder intentBuilder) {
            ag.a(menuItem, intentBuilder.a(), intentBuilder.getIntent());
            if (a(menuItem)) {
                menuItem.setIntent(intentBuilder.createChooserIntent());
            }
        }

        boolean a(MenuItem menuItem) {
            return !menuItem.hasSubMenu();
        }
    }

    static class d extends c {
        d() {
        }

        @Override // android.support.v4.app.ShareCompat.b, android.support.v4.app.ShareCompat.a
        public String a(CharSequence charSequence) {
            return ah.a(charSequence);
        }

        @Override // android.support.v4.app.ShareCompat.c
        boolean a(MenuItem menuItem) {
            return false;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            a = new d();
        } else if (Build.VERSION.SDK_INT >= 14) {
            a = new c();
        } else {
            a = new b();
        }
    }

    public static String getCallingPackage(Activity activity) {
        String callingPackage = activity.getCallingPackage();
        if (callingPackage == null) {
            return activity.getIntent().getStringExtra(EXTRA_CALLING_PACKAGE);
        }
        return callingPackage;
    }

    public static ComponentName getCallingActivity(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity == null) {
            return (ComponentName) activity.getIntent().getParcelableExtra(EXTRA_CALLING_ACTIVITY);
        }
        return callingActivity;
    }

    public static void configureMenuItem(MenuItem menuItem, IntentBuilder intentBuilder) {
        a.a(menuItem, intentBuilder);
    }

    public static void configureMenuItem(Menu menu, int i, IntentBuilder intentBuilder) {
        MenuItem menuItemFindItem = menu.findItem(i);
        if (menuItemFindItem == null) {
            throw new IllegalArgumentException("Could not find menu item with id " + i + " in the supplied menu");
        }
        configureMenuItem(menuItemFindItem, intentBuilder);
    }

    public static class IntentBuilder {
        private Activity a;
        private Intent b = new Intent().setAction("android.intent.action.SEND");
        private CharSequence c;
        private ArrayList<String> d;
        private ArrayList<String> e;
        private ArrayList<String> f;
        private ArrayList<Uri> g;

        public static IntentBuilder from(Activity activity) {
            return new IntentBuilder(activity);
        }

        private IntentBuilder(Activity activity) {
            this.a = activity;
            this.b.putExtra(ShareCompat.EXTRA_CALLING_PACKAGE, activity.getPackageName());
            this.b.putExtra(ShareCompat.EXTRA_CALLING_ACTIVITY, activity.getComponentName());
            this.b.addFlags(524288);
        }

        public Intent getIntent() {
            if (this.d != null) {
                a("android.intent.extra.EMAIL", this.d);
                this.d = null;
            }
            if (this.e != null) {
                a("android.intent.extra.CC", this.e);
                this.e = null;
            }
            if (this.f != null) {
                a("android.intent.extra.BCC", this.f);
                this.f = null;
            }
            boolean z = this.g != null && this.g.size() > 1;
            boolean zEquals = this.b.getAction().equals("android.intent.action.SEND_MULTIPLE");
            if (!z && zEquals) {
                this.b.setAction("android.intent.action.SEND");
                if (this.g != null && !this.g.isEmpty()) {
                    this.b.putExtra("android.intent.extra.STREAM", this.g.get(0));
                } else {
                    this.b.removeExtra("android.intent.extra.STREAM");
                }
                this.g = null;
            }
            if (z && !zEquals) {
                this.b.setAction("android.intent.action.SEND_MULTIPLE");
                if (this.g != null && !this.g.isEmpty()) {
                    this.b.putParcelableArrayListExtra("android.intent.extra.STREAM", this.g);
                } else {
                    this.b.removeExtra("android.intent.extra.STREAM");
                }
            }
            return this.b;
        }

        Activity a() {
            return this.a;
        }

        private void a(String str, ArrayList<String> arrayList) {
            String[] stringArrayExtra = this.b.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr = new String[arrayList.size() + length];
            arrayList.toArray(strArr);
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr, arrayList.size(), length);
            }
            this.b.putExtra(str, strArr);
        }

        private void a(String str, String[] strArr) {
            Intent intent = getIntent();
            String[] stringArrayExtra = intent.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr2 = new String[strArr.length + length];
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr2, 0, length);
            }
            System.arraycopy(strArr, 0, strArr2, length, strArr.length);
            intent.putExtra(str, strArr2);
        }

        public Intent createChooserIntent() {
            return Intent.createChooser(getIntent(), this.c);
        }

        public void startChooser() {
            this.a.startActivity(createChooserIntent());
        }

        public IntentBuilder setChooserTitle(CharSequence charSequence) {
            this.c = charSequence;
            return this;
        }

        public IntentBuilder setChooserTitle(@StringRes int i) {
            return setChooserTitle(this.a.getText(i));
        }

        public IntentBuilder setType(String str) {
            this.b.setType(str);
            return this;
        }

        public IntentBuilder setText(CharSequence charSequence) {
            this.b.putExtra("android.intent.extra.TEXT", charSequence);
            return this;
        }

        public IntentBuilder setHtmlText(String str) {
            this.b.putExtra(IntentCompat.EXTRA_HTML_TEXT, str);
            if (!this.b.hasExtra("android.intent.extra.TEXT")) {
                setText(Html.fromHtml(str));
            }
            return this;
        }

        public IntentBuilder setStream(Uri uri) {
            if (!this.b.getAction().equals("android.intent.action.SEND")) {
                this.b.setAction("android.intent.action.SEND");
            }
            this.g = null;
            this.b.putExtra("android.intent.extra.STREAM", uri);
            return this;
        }

        public IntentBuilder addStream(Uri uri) {
            Uri uri2 = (Uri) this.b.getParcelableExtra("android.intent.extra.STREAM");
            if (uri2 == null) {
                return setStream(uri);
            }
            if (this.g == null) {
                this.g = new ArrayList<>();
            }
            if (uri2 != null) {
                this.b.removeExtra("android.intent.extra.STREAM");
                this.g.add(uri2);
            }
            this.g.add(uri);
            return this;
        }

        public IntentBuilder setEmailTo(String[] strArr) {
            if (this.d != null) {
                this.d = null;
            }
            this.b.putExtra("android.intent.extra.EMAIL", strArr);
            return this;
        }

        public IntentBuilder addEmailTo(String str) {
            if (this.d == null) {
                this.d = new ArrayList<>();
            }
            this.d.add(str);
            return this;
        }

        public IntentBuilder addEmailTo(String[] strArr) {
            a("android.intent.extra.EMAIL", strArr);
            return this;
        }

        public IntentBuilder setEmailCc(String[] strArr) {
            this.b.putExtra("android.intent.extra.CC", strArr);
            return this;
        }

        public IntentBuilder addEmailCc(String str) {
            if (this.e == null) {
                this.e = new ArrayList<>();
            }
            this.e.add(str);
            return this;
        }

        public IntentBuilder addEmailCc(String[] strArr) {
            a("android.intent.extra.CC", strArr);
            return this;
        }

        public IntentBuilder setEmailBcc(String[] strArr) {
            this.b.putExtra("android.intent.extra.BCC", strArr);
            return this;
        }

        public IntentBuilder addEmailBcc(String str) {
            if (this.f == null) {
                this.f = new ArrayList<>();
            }
            this.f.add(str);
            return this;
        }

        public IntentBuilder addEmailBcc(String[] strArr) {
            a("android.intent.extra.BCC", strArr);
            return this;
        }

        public IntentBuilder setSubject(String str) {
            this.b.putExtra("android.intent.extra.SUBJECT", str);
            return this;
        }
    }

    public static class IntentReader {
        private Activity a;
        private Intent b;
        private String c;
        private ComponentName d;
        private ArrayList<Uri> e;

        public static IntentReader from(Activity activity) {
            return new IntentReader(activity);
        }

        private IntentReader(Activity activity) {
            this.a = activity;
            this.b = activity.getIntent();
            this.c = ShareCompat.getCallingPackage(activity);
            this.d = ShareCompat.getCallingActivity(activity);
        }

        public boolean isShareIntent() {
            String action = this.b.getAction();
            return "android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action);
        }

        public boolean isSingleShare() {
            return "android.intent.action.SEND".equals(this.b.getAction());
        }

        public boolean isMultipleShare() {
            return "android.intent.action.SEND_MULTIPLE".equals(this.b.getAction());
        }

        public String getType() {
            return this.b.getType();
        }

        public CharSequence getText() {
            return this.b.getCharSequenceExtra("android.intent.extra.TEXT");
        }

        public String getHtmlText() {
            String stringExtra = this.b.getStringExtra(IntentCompat.EXTRA_HTML_TEXT);
            if (stringExtra == null) {
                CharSequence text = getText();
                if (text instanceof Spanned) {
                    return Html.toHtml((Spanned) text);
                }
                if (text != null) {
                    return ShareCompat.a.a(text);
                }
            }
            return stringExtra;
        }

        public Uri getStream() {
            return (Uri) this.b.getParcelableExtra("android.intent.extra.STREAM");
        }

        public Uri getStream(int i) {
            if (this.e == null && isMultipleShare()) {
                this.e = this.b.getParcelableArrayListExtra("android.intent.extra.STREAM");
            }
            if (this.e != null) {
                return this.e.get(i);
            }
            if (i == 0) {
                return (Uri) this.b.getParcelableExtra("android.intent.extra.STREAM");
            }
            throw new IndexOutOfBoundsException("Stream items available: " + getStreamCount() + " index requested: " + i);
        }

        public int getStreamCount() {
            if (this.e == null && isMultipleShare()) {
                this.e = this.b.getParcelableArrayListExtra("android.intent.extra.STREAM");
            }
            if (this.e != null) {
                return this.e.size();
            }
            return this.b.hasExtra("android.intent.extra.STREAM") ? 1 : 0;
        }

        public String[] getEmailTo() {
            return this.b.getStringArrayExtra("android.intent.extra.EMAIL");
        }

        public String[] getEmailCc() {
            return this.b.getStringArrayExtra("android.intent.extra.CC");
        }

        public String[] getEmailBcc() {
            return this.b.getStringArrayExtra("android.intent.extra.BCC");
        }

        public String getSubject() {
            return this.b.getStringExtra("android.intent.extra.SUBJECT");
        }

        public String getCallingPackage() {
            return this.c;
        }

        public ComponentName getCallingActivity() {
            return this.d;
        }

        public Drawable getCallingActivityIcon() {
            if (this.d == null) {
                return null;
            }
            try {
                return this.a.getPackageManager().getActivityIcon(this.d);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("IntentReader", "Could not retrieve icon for calling activity", e);
                return null;
            }
        }

        public Drawable getCallingApplicationIcon() {
            if (this.c == null) {
                return null;
            }
            try {
                return this.a.getPackageManager().getApplicationIcon(this.c);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("IntentReader", "Could not retrieve icon for calling application", e);
                return null;
            }
        }

        public CharSequence getCallingApplicationLabel() {
            if (this.c == null) {
                return null;
            }
            PackageManager packageManager = this.a.getPackageManager();
            try {
                return packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.c, 0));
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("IntentReader", "Could not retrieve label for calling application", e);
                return null;
            }
        }
    }
}
