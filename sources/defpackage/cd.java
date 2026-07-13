package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class cd {
    public static boolean a(Context context, Uri uri) {
        return DocumentsContract.isDocumentUri(context, uri);
    }

    public static String b(Context context, Uri uri) {
        return a(context, uri, "_display_name", (String) null);
    }

    private static String l(Context context, Uri uri) {
        return a(context, uri, "mime_type", (String) null);
    }

    public static String c(Context context, Uri uri) {
        String strL = l(context, uri);
        if ("vnd.android.document/directory".equals(strL)) {
            return null;
        }
        return strL;
    }

    public static boolean d(Context context, Uri uri) {
        return "vnd.android.document/directory".equals(l(context, uri));
    }

    public static boolean e(Context context, Uri uri) {
        String strL = l(context, uri);
        return ("vnd.android.document/directory".equals(strL) || TextUtils.isEmpty(strL)) ? false : true;
    }

    public static long f(Context context, Uri uri) {
        return a(context, uri, "last_modified", 0L);
    }

    public static long g(Context context, Uri uri) {
        return a(context, uri, "_size", 0L);
    }

    public static boolean h(Context context, Uri uri) {
        return context.checkCallingOrSelfUriPermission(uri, 1) == 0 && !TextUtils.isEmpty(l(context, uri));
    }

    public static boolean i(Context context, Uri uri) {
        if (context.checkCallingOrSelfUriPermission(uri, 2) != 0) {
            return false;
        }
        String strL = l(context, uri);
        int iA = a(context, uri, "flags", 0);
        if (TextUtils.isEmpty(strL)) {
            return false;
        }
        if ((iA & 4) != 0) {
            return true;
        }
        if (!"vnd.android.document/directory".equals(strL) || (iA & 8) == 0) {
            return (TextUtils.isEmpty(strL) || (iA & 2) == 0) ? false : true;
        }
        return true;
    }

    public static boolean j(Context context, Uri uri) {
        return DocumentsContract.deleteDocument(context.getContentResolver(), uri);
    }

    public static boolean k(Context context, Uri uri) throws Throwable {
        Cursor cursorQuery;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{"document_id"}, null, null, null);
            try {
                try {
                    boolean z = cursorQuery.getCount() > 0;
                    a(cursorQuery);
                    return z;
                } catch (Exception e) {
                    e = e;
                    Log.w("DocumentFile", "Failed query: " + e);
                    a(cursorQuery);
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                a(cursorQuery);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
            a(cursorQuery);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    private static String a(Context context, Uri uri, String str, String str2) throws Throwable {
        Cursor cursorQuery;
        ?? r1 = 1;
        try {
            try {
                cursorQuery = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) {
                        a(cursorQuery);
                        r1 = cursorQuery;
                    } else {
                        str2 = cursorQuery.getString(0);
                        a(cursorQuery);
                        r1 = cursorQuery;
                    }
                } catch (Exception e) {
                    e = e;
                    Log.w("DocumentFile", "Failed query: " + e);
                    a(cursorQuery);
                    r1 = cursorQuery;
                }
            } catch (Throwable th) {
                th = th;
                a(r1);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            r1 = 0;
            a(r1);
            throw th;
        }
        return str2;
    }

    private static int a(Context context, Uri uri, String str, int i) {
        return (int) a(context, uri, str, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    private static long a(Context context, Uri uri, String str, long j) throws Throwable {
        Cursor cursorQuery;
        ?? r1 = 1;
        try {
            try {
                cursorQuery = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) {
                        a(cursorQuery);
                        r1 = cursorQuery;
                    } else {
                        j = cursorQuery.getLong(0);
                        a(cursorQuery);
                        r1 = cursorQuery;
                    }
                } catch (Exception e) {
                    e = e;
                    Log.w("DocumentFile", "Failed query: " + e);
                    a(cursorQuery);
                    r1 = cursorQuery;
                }
            } catch (Throwable th) {
                th = th;
                a(r1);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            r1 = 0;
            a(r1);
            throw th;
        }
        return j;
    }

    private static void a(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }
}
