package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v4.content.IntentCompat;
import android.util.Log;
import defpackage.y;

/* JADX INFO: loaded from: classes.dex */
public class NavUtils {
    public static final String PARENT_ACTIVITY = "android.support.PARENT_ACTIVITY";
    private static final a a;

    interface a {
        Intent a(Activity activity);

        String a(Context context, ActivityInfo activityInfo);

        boolean a(Activity activity, Intent intent);

        void b(Activity activity, Intent intent);
    }

    static class b implements a {
        b() {
        }

        @Override // android.support.v4.app.NavUtils.a
        public Intent a(Activity activity) {
            Intent intentMakeMainActivity = null;
            String parentActivityName = NavUtils.getParentActivityName(activity);
            if (parentActivityName != null) {
                ComponentName componentName = new ComponentName(activity, parentActivityName);
                try {
                    intentMakeMainActivity = NavUtils.getParentActivityName(activity, componentName) == null ? IntentCompat.makeMainActivity(componentName) : new Intent().setComponent(componentName);
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + parentActivityName + "' in manifest");
                }
            }
            return intentMakeMainActivity;
        }

        @Override // android.support.v4.app.NavUtils.a
        public boolean a(Activity activity, Intent intent) {
            String action = activity.getIntent().getAction();
            return (action == null || action.equals("android.intent.action.MAIN")) ? false : true;
        }

        @Override // android.support.v4.app.NavUtils.a
        public void b(Activity activity, Intent intent) {
            intent.addFlags(67108864);
            activity.startActivity(intent);
            activity.finish();
        }

        @Override // android.support.v4.app.NavUtils.a
        public String a(Context context, ActivityInfo activityInfo) {
            String string;
            if (activityInfo.metaData != null && (string = activityInfo.metaData.getString(NavUtils.PARENT_ACTIVITY)) != null) {
                if (string.charAt(0) == '.') {
                    return context.getPackageName() + string;
                }
                return string;
            }
            return null;
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.app.NavUtils.b, android.support.v4.app.NavUtils.a
        public Intent a(Activity activity) {
            Intent intentA = y.a(activity);
            if (intentA == null) {
                return b(activity);
            }
            return intentA;
        }

        Intent b(Activity activity) {
            return super.a(activity);
        }

        @Override // android.support.v4.app.NavUtils.b, android.support.v4.app.NavUtils.a
        public boolean a(Activity activity, Intent intent) {
            return y.a(activity, intent);
        }

        @Override // android.support.v4.app.NavUtils.b, android.support.v4.app.NavUtils.a
        public void b(Activity activity, Intent intent) {
            y.b(activity, intent);
        }

        @Override // android.support.v4.app.NavUtils.b, android.support.v4.app.NavUtils.a
        public String a(Context context, ActivityInfo activityInfo) {
            String strA = y.a(activityInfo);
            if (strA == null) {
                return super.a(context, activityInfo);
            }
            return strA;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            a = new c();
        } else {
            a = new b();
        }
    }

    public static boolean shouldUpRecreateTask(Activity activity, Intent intent) {
        return a.a(activity, intent);
    }

    public static void navigateUpFromSameTask(Activity activity) {
        Intent parentActivityIntent = getParentActivityIntent(activity);
        if (parentActivityIntent == null) {
            throw new IllegalArgumentException("Activity " + activity.getClass().getSimpleName() + " does not have a parent activity name specified. (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data>  element in your manifest?)");
        }
        navigateUpTo(activity, parentActivityIntent);
    }

    public static void navigateUpTo(Activity activity, Intent intent) {
        a.b(activity, intent);
    }

    public static Intent getParentActivityIntent(Activity activity) {
        return a.a(activity);
    }

    public static Intent getParentActivityIntent(Context context, Class<?> cls) throws PackageManager.NameNotFoundException {
        String parentActivityName = getParentActivityName(context, new ComponentName(context, cls));
        if (parentActivityName == null) {
            return null;
        }
        ComponentName componentName = new ComponentName(context, parentActivityName);
        return getParentActivityName(context, componentName) == null ? IntentCompat.makeMainActivity(componentName) : new Intent().setComponent(componentName);
    }

    public static Intent getParentActivityIntent(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String parentActivityName = getParentActivityName(context, componentName);
        if (parentActivityName == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), parentActivityName);
        return getParentActivityName(context, componentName2) == null ? IntentCompat.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    @Nullable
    public static String getParentActivityName(Activity activity) {
        try {
            return getParentActivityName(activity, activity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Nullable
    public static String getParentActivityName(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        return a.a(context, context.getPackageManager().getActivityInfo(componentName, 128));
    }

    private NavUtils() {
    }
}
