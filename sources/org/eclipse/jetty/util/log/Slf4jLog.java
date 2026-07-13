package org.eclipse.jetty.util.log;

import defpackage.mo;
import org.slf4j.LoggerFactory;
import org.slf4j.spi.LocationAwareLogger;

/* JADX INFO: loaded from: classes.dex */
public class Slf4jLog extends AbstractLogger {
    private final org.slf4j.Logger a;

    public Slf4jLog() {
        this("org.eclipse.jetty.util.log");
    }

    public Slf4jLog(String str) {
        LocationAwareLogger logger = LoggerFactory.getLogger(str);
        if (logger instanceof LocationAwareLogger) {
            this.a = new mo(logger);
        } else {
            this.a = logger;
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public String getName() {
        return this.a.getName();
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void warn(String str, Object... objArr) {
        this.a.warn(str, objArr);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void warn(Throwable th) {
        warn("", th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void warn(String str, Throwable th) {
        this.a.warn(str, th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void info(String str, Object... objArr) {
        this.a.info(str, objArr);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void info(Throwable th) {
        info("", th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void info(String str, Throwable th) {
        this.a.info(str, th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void debug(String str, Object... objArr) {
        this.a.debug(str, objArr);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void debug(Throwable th) {
        debug("", th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void debug(String str, Throwable th) {
        this.a.debug(str, th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public boolean isDebugEnabled() {
        return this.a.isDebugEnabled();
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void setDebugEnabled(boolean z) {
        warn("setDebugEnabled not implemented", null, null);
    }

    @Override // org.eclipse.jetty.util.log.AbstractLogger
    protected Logger newLogger(String str) {
        return new Slf4jLog(str);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void ignore(Throwable th) {
        if (Log.a()) {
            warn(Log.IGNORED, th);
        }
    }

    public String toString() {
        return this.a.toString();
    }
}
