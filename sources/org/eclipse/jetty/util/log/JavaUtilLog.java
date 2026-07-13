package org.eclipse.jetty.util.log;

import java.util.logging.Level;

/* JADX INFO: loaded from: classes.dex */
public class JavaUtilLog extends AbstractLogger {
    private Level a;
    private java.util.logging.Logger b;

    public JavaUtilLog() {
        this("org.eclipse.jetty.util.log");
    }

    public JavaUtilLog(String str) {
        this.b = java.util.logging.Logger.getLogger(str);
        if (Boolean.parseBoolean(Log.__props.getProperty("org.eclipse.jetty.util.log.DEBUG", "false"))) {
            this.b.setLevel(Level.FINE);
        }
        this.a = this.b.getLevel();
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public String getName() {
        return this.b.getName();
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void warn(String str, Object... objArr) {
        this.b.log(Level.WARNING, a(str, objArr));
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void warn(Throwable th) {
        warn("", th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void warn(String str, Throwable th) {
        this.b.log(Level.WARNING, str, th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void info(String str, Object... objArr) {
        this.b.log(Level.INFO, a(str, objArr));
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void info(Throwable th) {
        info("", th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void info(String str, Throwable th) {
        this.b.log(Level.INFO, str, th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public boolean isDebugEnabled() {
        return this.b.isLoggable(Level.FINE);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void setDebugEnabled(boolean z) {
        if (z) {
            this.a = this.b.getLevel();
            this.b.setLevel(Level.FINE);
        } else {
            this.b.setLevel(this.a);
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void debug(String str, Object... objArr) {
        this.b.log(Level.FINE, a(str, objArr));
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void debug(Throwable th) {
        debug("", th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void debug(String str, Throwable th) {
        this.b.log(Level.FINE, str, th);
    }

    @Override // org.eclipse.jetty.util.log.AbstractLogger
    protected Logger newLogger(String str) {
        return new JavaUtilLog(str);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void ignore(Throwable th) {
        if (Log.a()) {
            warn(Log.IGNORED, th);
        }
    }

    private String a(String str, Object... objArr) {
        int length = 0;
        String strValueOf = String.valueOf(str);
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            int iIndexOf = strValueOf.indexOf("{}", length);
            if (iIndexOf < 0) {
                sb.append(strValueOf.substring(length));
                sb.append(" ");
                sb.append(obj);
                length = strValueOf.length();
            } else {
                sb.append(strValueOf.substring(length, iIndexOf));
                sb.append(String.valueOf(obj));
                length = "{}".length() + iIndexOf;
            }
        }
        sb.append(strValueOf.substring(length));
        return sb.toString();
    }
}
