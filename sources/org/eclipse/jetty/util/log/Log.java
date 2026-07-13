package org.eclipse.jetty.util.log;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.Loader;

/* JADX INFO: loaded from: classes.dex */
public class Log {
    public static final String EXCEPTION = "EXCEPTION ";
    public static final String IGNORED = "IGNORED ";
    public static boolean __ignored;
    public static String __logClass;
    private static Logger b;
    private static boolean c;
    private static final ConcurrentMap<String, Logger> a = new ConcurrentHashMap();
    protected static Properties __props = new Properties();

    static {
        AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: org.eclipse.jetty.util.log.Log.1
            @Override // java.security.PrivilegedAction
            public Object run() throws Throwable {
                InputStream inputStreamOpenStream;
                URL resource = Loader.getResource(Log.class, "jetty-logging.properties", true);
                if (resource != null) {
                    try {
                        inputStreamOpenStream = resource.openStream();
                        try {
                            try {
                                Log.__props.load(inputStreamOpenStream);
                                IO.close(inputStreamOpenStream);
                            } catch (IOException e) {
                                e = e;
                                System.err.println("Unable to load " + resource);
                                e.printStackTrace(System.err);
                                IO.close(inputStreamOpenStream);
                            }
                        } catch (Throwable th) {
                            th = th;
                            IO.close(inputStreamOpenStream);
                            throw th;
                        }
                    } catch (IOException e2) {
                        e = e2;
                        inputStreamOpenStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        inputStreamOpenStream = null;
                        IO.close(inputStreamOpenStream);
                        throw th;
                    }
                }
                Enumeration<?> enumerationPropertyNames = System.getProperties().propertyNames();
                while (enumerationPropertyNames.hasMoreElements()) {
                    String str = (String) enumerationPropertyNames.nextElement();
                    String property = System.getProperty(str);
                    if (property != null) {
                        Log.__props.setProperty(str, property);
                    }
                }
                Log.__logClass = Log.__props.getProperty("org.eclipse.jetty.util.log.class", "org.eclipse.jetty.util.log.Slf4jLog");
                Log.__ignored = Boolean.parseBoolean(Log.__props.getProperty("org.eclipse.jetty.util.log.IGNORED", "false"));
                return null;
            }
        });
    }

    public static boolean initialized() {
        if (b == null) {
            synchronized (Log.class) {
                if (c) {
                    z = b != null;
                } else {
                    c = true;
                    try {
                        Class clsLoadClass = Loader.loadClass(Log.class, __logClass);
                        if (b == null || !b.getClass().equals(clsLoadClass)) {
                            b = (Logger) clsLoadClass.newInstance();
                            b.debug("Logging to {} via {}", b, clsLoadClass.getName());
                        }
                    } catch (Throwable th) {
                        a(th);
                    }
                    z = b != null;
                }
            }
        }
        return z;
    }

    private static void a(Throwable th) {
        if (th != null && __ignored) {
            th.printStackTrace();
        }
        if (b == null) {
            b = new StdErrLog();
            b.debug("Logging to {} via {}", b, StdErrLog.class.getName());
        }
    }

    public static void setLog(Logger logger) {
        b = logger;
    }

    @Deprecated
    public static Logger getLog() {
        initialized();
        return b;
    }

    public static Logger getRootLogger() {
        initialized();
        return b;
    }

    static boolean a() {
        return __ignored;
    }

    public static void setLogToParent(String str) {
        ClassLoader classLoader = Log.class.getClassLoader();
        if (classLoader != null && classLoader.getParent() != null) {
            try {
                setLog(new LoggerLog(classLoader.getParent().loadClass("org.eclipse.jetty.util.log.Log").getMethod("getLogger", String.class).invoke(null, str)));
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        setLog(getLogger(str));
    }

    @Deprecated
    public static void debug(Throwable th) {
        if (isDebugEnabled()) {
            b.debug(EXCEPTION, th);
        }
    }

    @Deprecated
    public static void debug(String str) {
        if (initialized()) {
            b.debug(str, new Object[0]);
        }
    }

    @Deprecated
    public static void debug(String str, Object obj) {
        if (initialized()) {
            b.debug(str, obj);
        }
    }

    @Deprecated
    public static void debug(String str, Object obj, Object obj2) {
        if (initialized()) {
            b.debug(str, obj, obj2);
        }
    }

    @Deprecated
    public static void ignore(Throwable th) {
        if (initialized()) {
            b.ignore(th);
        }
    }

    @Deprecated
    public static void info(String str) {
        if (initialized()) {
            b.info(str, new Object[0]);
        }
    }

    @Deprecated
    public static void info(String str, Object obj) {
        if (initialized()) {
            b.info(str, obj);
        }
    }

    @Deprecated
    public static void info(String str, Object obj, Object obj2) {
        if (initialized()) {
            b.info(str, obj, obj2);
        }
    }

    @Deprecated
    public static boolean isDebugEnabled() {
        if (initialized()) {
            return b.isDebugEnabled();
        }
        return false;
    }

    @Deprecated
    public static void warn(String str) {
        if (initialized()) {
            b.warn(str, new Object[0]);
        }
    }

    @Deprecated
    public static void warn(String str, Object obj) {
        if (initialized()) {
            b.warn(str, obj);
        }
    }

    @Deprecated
    public static void warn(String str, Object obj, Object obj2) {
        if (initialized()) {
            b.warn(str, obj, obj2);
        }
    }

    @Deprecated
    public static void warn(String str, Throwable th) {
        if (initialized()) {
            b.warn(str, th);
        }
    }

    @Deprecated
    public static void warn(Throwable th) {
        if (initialized()) {
            b.warn(EXCEPTION, th);
        }
    }

    public static Logger getLogger(Class<?> cls) {
        return getLogger(cls.getName());
    }

    public static Logger getLogger(String str) {
        if (!initialized()) {
            return null;
        }
        if (str == null) {
            return b;
        }
        Logger logger = a.get(str);
        if (logger == null) {
            return b.getLogger(str);
        }
        return logger;
    }

    static ConcurrentMap<String, Logger> b() {
        return a;
    }

    public static Map<String, Logger> getLoggers() {
        return Collections.unmodifiableMap(a);
    }
}
