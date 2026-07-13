package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.support.annotation.NonNull;
import android.util.Log;
import defpackage.al;
import defpackage.am;
import defpackage.an;
import defpackage.ao;
import defpackage.ap;
import defpackage.aq;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class ContextCompat {
    public static boolean startActivities(Context context, Intent[] intentArr) {
        return startActivities(context, intentArr, null);
    }

    public static boolean startActivities(Context context, Intent[] intentArr, Bundle bundle) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 16) {
            ap.a(context, intentArr, bundle);
            return true;
        }
        if (i >= 11) {
            ao.a(context, intentArr);
            return true;
        }
        return false;
    }

    public static File[] getObbDirs(Context context) {
        File fileA;
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return aq.b(context);
        }
        if (i >= 11) {
            fileA = ao.a(context);
        } else {
            fileA = a(Environment.getExternalStorageDirectory(), "Android", "obb", context.getPackageName());
        }
        return new File[]{fileA};
    }

    public static File[] getExternalFilesDirs(Context context, String str) {
        File fileA;
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return aq.a(context, str);
        }
        if (i >= 8) {
            fileA = an.a(context, str);
        } else {
            fileA = a(Environment.getExternalStorageDirectory(), "Android", "data", context.getPackageName(), "files", str);
        }
        return new File[]{fileA};
    }

    public static File[] getExternalCacheDirs(Context context) {
        File fileA;
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return aq.a(context);
        }
        if (i >= 8) {
            fileA = an.a(context);
        } else {
            fileA = a(Environment.getExternalStorageDirectory(), "Android", "data", context.getPackageName(), "cache");
        }
        return new File[]{fileA};
    }

    private static File a(File file, String... strArr) {
        File file2;
        int length = strArr.length;
        int i = 0;
        File file3 = file;
        while (i < length) {
            String str = strArr[i];
            if (file3 == null) {
                file2 = new File(str);
            } else {
                file2 = str != null ? new File(file3, str) : file3;
            }
            i++;
            file3 = file2;
        }
        return file3;
    }

    public static final Drawable getDrawable(Context context, int i) {
        return Build.VERSION.SDK_INT >= 21 ? al.a(context, i) : context.getResources().getDrawable(i);
    }

    public static final ColorStateList getColorStateList(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? am.a(context, i) : context.getResources().getColorStateList(i);
    }

    public static final int getColor(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? am.b(context, i) : context.getResources().getColor(i);
    }

    public static int checkSelfPermission(@NonNull Context context, @NonNull String str) {
        if (str == null) {
            throw new IllegalArgumentException("permission is null");
        }
        return context.checkPermission(str, Process.myPid(), Process.myUid());
    }

    public final File getNoBackupFilesDir(Context context) {
        if (Build.VERSION.SDK_INT >= 21) {
            return al.a(context);
        }
        return a(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }

    public final File getCodeCacheDir(Context context) {
        if (Build.VERSION.SDK_INT >= 21) {
            return al.b(context);
        }
        return a(new File(context.getApplicationInfo().dataDir, "code_cache"));
    }

    private static synchronized File a(File file) {
        if (!file.exists() && !file.mkdirs() && !file.exists()) {
            Log.w("ContextCompat", "Unable to create files subdir " + file.getPath());
            file = null;
        }
        return file;
    }
}
