package org.eclipse.jetty.util.log;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class LoggerLog extends AbstractLogger {
    private final Object a;
    private final Method b;
    private final Method c;
    private final Method d;
    private final Method e;
    private final Method f;
    private final Method g;
    private final Method h;
    private final Method i;
    private final Method j;
    private volatile boolean k;

    public LoggerLog(Object obj) {
        try {
            this.a = obj;
            Class<?> cls = obj.getClass();
            this.b = cls.getMethod("debug", String.class, Throwable.class);
            this.c = cls.getMethod("debug", String.class, Object[].class);
            this.d = cls.getMethod("info", String.class, Throwable.class);
            this.e = cls.getMethod("info", String.class, Object[].class);
            this.f = cls.getMethod("warn", String.class, Throwable.class);
            this.g = cls.getMethod("warn", String.class, Object[].class);
            Method method = cls.getMethod("isDebugEnabled", new Class[0]);
            this.h = cls.getMethod("setDebugEnabled", Boolean.TYPE);
            this.i = cls.getMethod("getLogger", String.class);
            this.j = cls.getMethod("getName", new Class[0]);
            this.k = ((Boolean) method.invoke(this.a, new Object[0])).booleanValue();
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public String getName() {
        try {
            return (String) this.j.invoke(this.a, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void warn(String str, Object... objArr) {
        try {
            this.g.invoke(this.a, objArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void warn(Throwable th) {
        warn("", th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void warn(String str, Throwable th) {
        try {
            this.f.invoke(this.a, str, th);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void info(String str, Object... objArr) {
        try {
            this.e.invoke(this.a, objArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void info(Throwable th) {
        info("", th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void info(String str, Throwable th) {
        try {
            this.d.invoke(this.a, str, th);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public boolean isDebugEnabled() {
        return this.k;
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void setDebugEnabled(boolean z) {
        try {
            this.h.invoke(this.a, Boolean.valueOf(z));
            this.k = z;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void debug(String str, Object... objArr) {
        if (this.k) {
            try {
                this.c.invoke(this.a, objArr);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void debug(Throwable th) {
        debug("", th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void debug(String str, Throwable th) {
        if (this.k) {
            try {
                this.b.invoke(this.a, str, th);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void ignore(Throwable th) {
        if (Log.a()) {
            warn(Log.IGNORED, th);
        }
    }

    @Override // org.eclipse.jetty.util.log.AbstractLogger
    protected Logger newLogger(String str) {
        try {
            return new LoggerLog(this.i.invoke(this.a, str));
        } catch (Exception e) {
            e.printStackTrace();
            return this;
        }
    }
}
