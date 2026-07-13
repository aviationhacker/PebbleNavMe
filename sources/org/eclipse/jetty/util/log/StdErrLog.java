package org.eclipse.jetty.util.log;

import java.io.PrintStream;
import java.security.AccessControlException;
import java.util.Properties;
import org.apache.commons.lang3.ClassUtils;
import org.eclipse.jetty.util.DateCache;

/* JADX INFO: loaded from: classes.dex */
public class StdErrLog extends AbstractLogger {
    public static final int LEVEL_ALL = 0;
    public static final int LEVEL_DEBUG = 1;
    public static final int LEVEL_INFO = 2;
    public static final int LEVEL_WARN = 3;
    private static DateCache b;
    private int f;
    private int g;
    private PrintStream h;
    private boolean i;
    private boolean j;
    private final String k;
    private final String l;
    private boolean m;
    private static final String a = System.getProperty("line.separator");
    private static final Properties c = new Properties();
    private static final boolean d = Boolean.parseBoolean(Log.__props.getProperty("org.eclipse.jetty.util.log.SOURCE", Log.__props.getProperty("org.eclipse.jetty.util.log.stderr.SOURCE", "false")));
    private static final boolean e = Boolean.parseBoolean(Log.__props.getProperty("org.eclipse.jetty.util.log.stderr.LONG", "false"));

    static {
        c.putAll(Log.__props);
        for (String str : new String[]{"DEBUG", "org.eclipse.jetty.util.log.DEBUG", "org.eclipse.jetty.util.log.stderr.DEBUG"}) {
            if (System.getProperty(str) != null) {
                System.err.printf("System Property [%s] has been deprecated! (Use org.eclipse.jetty.LEVEL=DEBUG instead)%n", str);
            }
        }
        try {
            b = new DateCache("yyyy-MM-dd HH:mm:ss");
        } catch (Exception e2) {
            e2.printStackTrace(System.err);
        }
    }

    public StdErrLog() {
        this(null);
    }

    public StdErrLog(String str) {
        this(str, c);
    }

    public StdErrLog(String str, Properties properties) {
        this.f = 2;
        this.h = null;
        this.i = d;
        this.j = e;
        this.m = false;
        if (properties != null && properties != c) {
            c.putAll(properties);
        }
        this.k = str == null ? "" : str;
        this.l = condensePackageString(this.k);
        this.f = getLoggingLevel(properties, this.k);
        this.g = this.f;
        try {
            this.i = Boolean.parseBoolean(properties.getProperty(this.k + ".SOURCE", Boolean.toString(this.i)));
        } catch (AccessControlException e2) {
            this.i = d;
        }
    }

    public static int getLoggingLevel(Properties properties, String str) {
        String strSubstring;
        while (str != null && str.length() > 0) {
            int levelId = getLevelId(str + ".LEVEL", properties.getProperty(str + ".LEVEL"));
            if (levelId == -1) {
                int iLastIndexOf = str.lastIndexOf(46);
                if (iLastIndexOf >= 0) {
                    strSubstring = str.substring(0, iLastIndexOf);
                } else {
                    strSubstring = null;
                }
                str = strSubstring;
            } else {
                return levelId;
            }
        }
        return getLevelId("log.LEVEL", properties.getProperty("log.LEVEL", "INFO"));
    }

    protected static int getLevelId(String str, String str2) {
        if (str2 == null) {
            return -1;
        }
        String strTrim = str2.trim();
        if ("ALL".equalsIgnoreCase(strTrim)) {
            return 0;
        }
        if ("DEBUG".equalsIgnoreCase(strTrim)) {
            return 1;
        }
        if ("INFO".equalsIgnoreCase(strTrim)) {
            return 2;
        }
        if ("WARN".equalsIgnoreCase(strTrim)) {
            return 3;
        }
        System.err.println("Unknown StdErrLog level [" + str + "]=[" + strTrim + "], expecting only [ALL, DEBUG, INFO, WARN] as values.");
        return -1;
    }

    protected static String condensePackageString(String str) {
        String[] strArrSplit = str.split("\\.");
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArrSplit.length - 1; i++) {
            sb.append(strArrSplit[i].charAt(0));
        }
        if (sb.length() > 0) {
            sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
        }
        sb.append(strArrSplit[strArrSplit.length - 1]);
        return sb.toString();
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public String getName() {
        return this.k;
    }

    public void setPrintLongNames(boolean z) {
        this.j = z;
    }

    public boolean isPrintLongNames() {
        return this.j;
    }

    public boolean isHideStacks() {
        return this.m;
    }

    public void setHideStacks(boolean z) {
        this.m = z;
    }

    public boolean isSource() {
        return this.i;
    }

    public void setSource(boolean z) {
        this.i = z;
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void warn(String str, Object... objArr) {
        if (this.f <= 3) {
            StringBuilder sb = new StringBuilder(64);
            a(sb, ":WARN:", str, objArr);
            (this.h == null ? System.err : this.h).println(sb);
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void warn(Throwable th) {
        warn("", th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void warn(String str, Throwable th) {
        if (this.f <= 3) {
            StringBuilder sb = new StringBuilder(64);
            a(sb, ":WARN:", str, th);
            (this.h == null ? System.err : this.h).println(sb);
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void info(String str, Object... objArr) {
        if (this.f <= 2) {
            StringBuilder sb = new StringBuilder(64);
            a(sb, ":INFO:", str, objArr);
            (this.h == null ? System.err : this.h).println(sb);
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void info(Throwable th) {
        info("", th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void info(String str, Throwable th) {
        if (this.f <= 2) {
            StringBuilder sb = new StringBuilder(64);
            a(sb, ":INFO:", str, th);
            (this.h == null ? System.err : this.h).println(sb);
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public boolean isDebugEnabled() {
        return this.f <= 1;
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void setDebugEnabled(boolean z) {
        if (z) {
            this.f = 1;
            for (Logger logger : Log.getLoggers().values()) {
                if (logger.getName().startsWith(getName()) && (logger instanceof StdErrLog)) {
                    ((StdErrLog) logger).setLevel(1);
                }
            }
            return;
        }
        this.f = this.g;
        for (Logger logger2 : Log.getLoggers().values()) {
            if (logger2.getName().startsWith(getName()) && (logger2 instanceof StdErrLog)) {
                ((StdErrLog) logger2).setLevel(((StdErrLog) logger2).g);
            }
        }
    }

    public int getLevel() {
        return this.f;
    }

    public void setLevel(int i) {
        this.f = i;
    }

    public void setStdErrStream(PrintStream printStream) {
        if (printStream == System.err) {
            printStream = null;
        }
        this.h = printStream;
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void debug(String str, Object... objArr) {
        if (this.f <= 1) {
            StringBuilder sb = new StringBuilder(64);
            a(sb, ":DBUG:", str, objArr);
            (this.h == null ? System.err : this.h).println(sb);
        }
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void debug(Throwable th) {
        debug("", th);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void debug(String str, Throwable th) {
        if (this.f <= 1) {
            StringBuilder sb = new StringBuilder(64);
            a(sb, ":DBUG:", str, th);
            (this.h == null ? System.err : this.h).println(sb);
        }
    }

    private void a(StringBuilder sb, String str, String str2, Object... objArr) {
        a(sb, b.now(), b.lastMs(), str);
        a(sb, str2, objArr);
    }

    private void a(StringBuilder sb, String str, String str2, Throwable th) {
        a(sb, str, str2, new Object[0]);
        if (isHideStacks()) {
            a(sb, String.valueOf(th), new Object[0]);
        } else {
            a(sb, th);
        }
    }

    private void a(StringBuilder sb, String str, int i, String str2) {
        sb.setLength(0);
        sb.append(str);
        if (i > 99) {
            sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
        } else if (i > 9) {
            sb.append(".0");
        } else {
            sb.append(".00");
        }
        sb.append(i).append(str2);
        if (this.j) {
            sb.append(this.k);
        } else {
            sb.append(this.l);
        }
        sb.append(':');
        if (this.i) {
            for (StackTraceElement stackTraceElement : new Throwable().getStackTrace()) {
                String className = stackTraceElement.getClassName();
                if (!className.equals(StdErrLog.class.getName()) && !className.equals(Log.class.getName())) {
                    if (!this.j && className.startsWith("org.eclipse.jetty.")) {
                        sb.append(condensePackageString(className));
                    } else {
                        sb.append(className);
                    }
                    sb.append('#').append(stackTraceElement.getMethodName());
                    if (stackTraceElement.getFileName() != null) {
                        sb.append('(').append(stackTraceElement.getFileName()).append(':').append(stackTraceElement.getLineNumber()).append(')');
                    }
                    sb.append(':');
                    return;
                }
            }
        }
    }

    private void a(StringBuilder sb, String str, Object... objArr) {
        String str2;
        if (str == null) {
            str2 = "";
            for (int i = 0; i < objArr.length; i++) {
                str2 = str2 + "{} ";
            }
        } else {
            str2 = str;
        }
        int length = 0;
        for (Object obj : objArr) {
            int iIndexOf = str2.indexOf("{}", length);
            if (iIndexOf < 0) {
                a(sb, str2.substring(length));
                sb.append(" ");
                sb.append(obj);
                length = str2.length();
            } else {
                a(sb, str2.substring(length, iIndexOf));
                sb.append(String.valueOf(obj));
                length = "{}".length() + iIndexOf;
            }
        }
        a(sb, str2.substring(length));
    }

    private void a(StringBuilder sb, String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isISOControl(cCharAt)) {
                if (cCharAt == '\n') {
                    sb.append('|');
                } else if (cCharAt == '\r') {
                    sb.append('<');
                } else {
                    sb.append('?');
                }
            } else {
                sb.append(cCharAt);
            }
        }
    }

    private void a(StringBuilder sb, Throwable th) {
        if (th == null) {
            sb.append("null");
            return;
        }
        sb.append(a);
        a(sb, th.toString(), new Object[0]);
        StackTraceElement[] stackTrace = th.getStackTrace();
        for (int i = 0; stackTrace != null && i < stackTrace.length; i++) {
            sb.append(a).append("\tat ");
            a(sb, stackTrace[i].toString(), new Object[0]);
        }
        Throwable cause = th.getCause();
        if (cause != null && cause != th) {
            sb.append(a).append("Caused by: ");
            a(sb, cause);
        }
    }

    @Override // org.eclipse.jetty.util.log.AbstractLogger
    protected Logger newLogger(String str) {
        StdErrLog stdErrLog = new StdErrLog(str);
        stdErrLog.setPrintLongNames(this.j);
        stdErrLog.setSource(this.i);
        stdErrLog.h = this.h;
        if (this.f != this.g) {
            stdErrLog.f = this.f;
        }
        return stdErrLog;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("StdErrLog:");
        sb.append(this.k);
        sb.append(":LEVEL=");
        switch (this.f) {
            case 0:
                sb.append("ALL");
                break;
            case 1:
                sb.append("DEBUG");
                break;
            case 2:
                sb.append("INFO");
                break;
            case 3:
                sb.append("WARN");
                break;
            default:
                sb.append("?");
                break;
        }
        return sb.toString();
    }

    public static void setProperties(Properties properties) {
        c.clear();
        c.putAll(properties);
    }

    @Override // org.eclipse.jetty.util.log.Logger
    public void ignore(Throwable th) {
        if (this.f <= 0) {
            StringBuilder sb = new StringBuilder(64);
            a(sb, ":IGNORED:", "", th);
            (this.h == null ? System.err : this.h).println(sb);
        }
    }
}
