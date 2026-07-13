package org.eclipse.jetty.util.log;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractLogger implements Logger {
    protected abstract Logger newLogger(String str);

    @Override // org.eclipse.jetty.util.log.Logger
    public final Logger getLogger(String str) {
        Logger loggerNewLogger;
        if (!a(str)) {
            String name = getName();
            if (!a(name) && Log.getRootLogger() != this) {
                str = name + "." + str;
            }
            Logger loggerPutIfAbsent = Log.getLoggers().get(str);
            if (loggerPutIfAbsent == null && (loggerPutIfAbsent = Log.b().putIfAbsent(str, (loggerNewLogger = newLogger(str)))) == null) {
                loggerPutIfAbsent = loggerNewLogger;
            }
            return loggerPutIfAbsent;
        }
        return this;
    }

    private static boolean a(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}
