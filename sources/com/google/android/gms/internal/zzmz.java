package com.google.android.gms.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzmz {
    private static int a(StackTraceElement[] stackTraceElementArr, StackTraceElement[] stackTraceElementArr2) {
        int i = 0;
        int length = stackTraceElementArr2.length;
        int length2 = stackTraceElementArr.length;
        while (true) {
            length2--;
            if (length2 < 0 || length - 1 < 0 || !stackTraceElementArr2[length].equals(stackTraceElementArr[length2])) {
                break;
            }
            i++;
        }
        return i;
    }

    public static String zzqF() {
        StringBuilder sb = new StringBuilder();
        Throwable th = new Throwable();
        StackTraceElement[] stackTrace = th.getStackTrace();
        sb.append("Async stack trace:");
        for (StackTraceElement stackTraceElement : stackTrace) {
            sb.append("\n\tat ").append(stackTraceElement);
        }
        StackTraceElement[] stackTraceElementArr = stackTrace;
        Throwable cause = th.getCause();
        while (cause != null) {
            sb.append("\nCaused by: ");
            sb.append(cause);
            StackTraceElement[] stackTrace2 = cause.getStackTrace();
            int iA = a(stackTrace2, stackTraceElementArr);
            for (int i = 0; i < stackTrace2.length - iA; i++) {
                sb.append("\n\tat " + stackTrace2[i]);
            }
            if (iA > 0) {
                sb.append("\n\t... " + iA + " more");
            }
            cause = cause.getCause();
            stackTraceElementArr = stackTrace2;
        }
        return sb.toString();
    }
}
