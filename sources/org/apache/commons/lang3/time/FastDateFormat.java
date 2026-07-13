package org.apache.commons.lang3.time;

import android.support.v7.app.AppCompatDelegate;
import com.batescorp.pebble.nav.R;
import defpackage.mn;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.text.DateFormatSymbols;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.commons.lang3.Validate;

/* JADX INFO: loaded from: classes.dex */
public class FastDateFormat extends Format {
    public static final int FULL = 0;
    public static final int LONG = 1;
    public static final int MEDIUM = 2;
    public static final int SHORT = 3;
    private static final mn<FastDateFormat> a = new mn<FastDateFormat>() { // from class: org.apache.commons.lang3.time.FastDateFormat.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // defpackage.mn
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FastDateFormat b(String str, TimeZone timeZone, Locale locale) {
            return new FastDateFormat(str, timeZone, locale);
        }
    };
    private static ConcurrentMap<g, String> b = new ConcurrentHashMap(7);
    private static final long serialVersionUID = 1;
    private final String c;
    private final TimeZone d;
    private final Locale e;
    private transient d[] f;
    private transient int g;

    interface b extends d {
        void a(StringBuffer stringBuffer, int i);
    }

    interface d {
        int a();

        void a(StringBuffer stringBuffer, Calendar calendar);
    }

    public static FastDateFormat getInstance() {
        return (FastDateFormat) a.a(3, 3, null, null);
    }

    public static FastDateFormat getInstance(String str) {
        return (FastDateFormat) a.c(str, null, null);
    }

    public static FastDateFormat getInstance(String str, TimeZone timeZone) {
        return (FastDateFormat) a.c(str, timeZone, null);
    }

    public static FastDateFormat getInstance(String str, Locale locale) {
        return (FastDateFormat) a.c(str, null, locale);
    }

    public static FastDateFormat getInstance(String str, TimeZone timeZone, Locale locale) {
        return (FastDateFormat) a.c(str, timeZone, locale);
    }

    public static FastDateFormat getDateInstance(int i2) {
        return (FastDateFormat) a.a(Integer.valueOf(i2), null, null, null);
    }

    public static FastDateFormat getDateInstance(int i2, Locale locale) {
        return (FastDateFormat) a.a(Integer.valueOf(i2), null, null, locale);
    }

    public static FastDateFormat getDateInstance(int i2, TimeZone timeZone) {
        return (FastDateFormat) a.a(Integer.valueOf(i2), null, timeZone, null);
    }

    public static FastDateFormat getDateInstance(int i2, TimeZone timeZone, Locale locale) {
        return (FastDateFormat) a.a(Integer.valueOf(i2), null, timeZone, locale);
    }

    public static FastDateFormat getTimeInstance(int i2) {
        return (FastDateFormat) a.a(null, Integer.valueOf(i2), null, null);
    }

    public static FastDateFormat getTimeInstance(int i2, Locale locale) {
        return (FastDateFormat) a.a(null, Integer.valueOf(i2), null, locale);
    }

    public static FastDateFormat getTimeInstance(int i2, TimeZone timeZone) {
        return (FastDateFormat) a.a(null, Integer.valueOf(i2), timeZone, null);
    }

    public static FastDateFormat getTimeInstance(int i2, TimeZone timeZone, Locale locale) {
        return (FastDateFormat) a.a(null, Integer.valueOf(i2), timeZone, locale);
    }

    public static FastDateFormat getDateTimeInstance(int i2, int i3) {
        return (FastDateFormat) a.a(Integer.valueOf(i2), Integer.valueOf(i3), null, null);
    }

    public static FastDateFormat getDateTimeInstance(int i2, int i3, Locale locale) {
        return (FastDateFormat) a.a(Integer.valueOf(i2), Integer.valueOf(i3), null, locale);
    }

    public static FastDateFormat getDateTimeInstance(int i2, int i3, TimeZone timeZone) {
        return getDateTimeInstance(i2, i3, timeZone, null);
    }

    public static FastDateFormat getDateTimeInstance(int i2, int i3, TimeZone timeZone, Locale locale) {
        return (FastDateFormat) a.a(Integer.valueOf(i2), Integer.valueOf(i3), timeZone, locale);
    }

    static String a(TimeZone timeZone, boolean z, int i2, Locale locale) {
        g gVar = new g(timeZone, z, i2, locale);
        String str = b.get(gVar);
        if (str == null) {
            String displayName = timeZone.getDisplayName(z, i2, locale);
            String strPutIfAbsent = b.putIfAbsent(gVar, displayName);
            return strPutIfAbsent != null ? strPutIfAbsent : displayName;
        }
        return str;
    }

    protected FastDateFormat(String str, TimeZone timeZone, Locale locale) {
        this.c = str;
        this.d = timeZone;
        this.e = locale;
        a();
    }

    private void a() {
        List<d> pattern = parsePattern();
        this.f = (d[]) pattern.toArray(new d[pattern.size()]);
        int iA = 0;
        int length = this.f.length;
        while (true) {
            length--;
            if (length >= 0) {
                iA += this.f[length].a();
            } else {
                this.g = iA;
                return;
            }
        }
    }

    protected List<d> parsePattern() {
        d eVar;
        DateFormatSymbols dateFormatSymbols = new DateFormatSymbols(this.e);
        ArrayList arrayList = new ArrayList();
        String[] eras = dateFormatSymbols.getEras();
        String[] months = dateFormatSymbols.getMonths();
        String[] shortMonths = dateFormatSymbols.getShortMonths();
        String[] weekdays = dateFormatSymbols.getWeekdays();
        String[] shortWeekdays = dateFormatSymbols.getShortWeekdays();
        String[] amPmStrings = dateFormatSymbols.getAmPmStrings();
        int length = this.c.length();
        int[] iArr = new int[1];
        int i2 = 0;
        while (i2 < length) {
            iArr[0] = i2;
            String token = parseToken(this.c, iArr);
            int i3 = iArr[0];
            int length2 = token.length();
            if (length2 != 0) {
                switch (token.charAt(0)) {
                    case '\'':
                        String strSubstring = token.substring(1);
                        if (strSubstring.length() == 1) {
                            eVar = new a(strSubstring.charAt(0));
                        } else {
                            eVar = new e(strSubstring);
                        }
                        break;
                    case 'D':
                        eVar = selectNumberRule(6, length2);
                        break;
                    case 'E':
                        eVar = new f(7, length2 < 4 ? shortWeekdays : weekdays);
                        break;
                    case 'F':
                        eVar = selectNumberRule(8, length2);
                        break;
                    case 'G':
                        eVar = new f(0, eras);
                        break;
                    case 'H':
                        eVar = selectNumberRule(11, length2);
                        break;
                    case 'K':
                        eVar = selectNumberRule(10, length2);
                        break;
                    case R.styleable.Theme_panelBackground /* 77 */:
                        if (length2 >= 4) {
                            eVar = new f(2, months);
                        } else if (length2 == 3) {
                            eVar = new f(2, shortMonths);
                        } else if (length2 == 2) {
                            eVar = l.a;
                        } else {
                            eVar = o.a;
                        }
                        break;
                    case 'S':
                        eVar = selectNumberRule(14, length2);
                        break;
                    case 'W':
                        eVar = selectNumberRule(4, length2);
                        break;
                    case 'Z':
                        if (length2 == 1) {
                            eVar = i.b;
                        } else {
                            eVar = i.a;
                        }
                        break;
                    case 'a':
                        eVar = new f(9, amPmStrings);
                        break;
                    case 'd':
                        eVar = selectNumberRule(5, length2);
                        break;
                    case 'h':
                        eVar = new j(selectNumberRule(10, length2));
                        break;
                    case 'k':
                        eVar = new k(selectNumberRule(11, length2));
                        break;
                    case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
                        eVar = selectNumberRule(12, length2);
                        break;
                    case 's':
                        eVar = selectNumberRule(13, length2);
                        break;
                    case 'w':
                        eVar = selectNumberRule(3, length2);
                        break;
                    case 'y':
                        if (length2 == 2) {
                            eVar = n.a;
                        } else {
                            if (length2 < 4) {
                                length2 = 4;
                            }
                            eVar = selectNumberRule(1, length2);
                        }
                        break;
                    case 'z':
                        if (length2 >= 4) {
                            eVar = new h(this.d, this.e, 1);
                        } else {
                            eVar = new h(this.d, this.e, 0);
                        }
                        break;
                    default:
                        throw new IllegalArgumentException("Illegal pattern component: " + token);
                }
                arrayList.add(eVar);
                i2 = i3 + 1;
            } else {
                return arrayList;
            }
        }
        return arrayList;
    }

    protected String parseToken(String str, int[] iArr) {
        StringBuilder sb = new StringBuilder();
        int i2 = iArr[0];
        int length = str.length();
        char cCharAt = str.charAt(i2);
        if ((cCharAt >= 'A' && cCharAt <= 'Z') || (cCharAt >= 'a' && cCharAt <= 'z')) {
            sb.append(cCharAt);
            while (i2 + 1 < length && str.charAt(i2 + 1) == cCharAt) {
                sb.append(cCharAt);
                i2++;
            }
        } else {
            sb.append('\'');
            boolean z = false;
            while (i2 < length) {
                char cCharAt2 = str.charAt(i2);
                if (cCharAt2 == '\'') {
                    if (i2 + 1 < length && str.charAt(i2 + 1) == '\'') {
                        i2++;
                        sb.append(cCharAt2);
                    } else {
                        z = !z;
                    }
                } else {
                    if (!z && ((cCharAt2 >= 'A' && cCharAt2 <= 'Z') || (cCharAt2 >= 'a' && cCharAt2 <= 'z'))) {
                        i2--;
                        break;
                    }
                    sb.append(cCharAt2);
                }
                i2++;
            }
        }
        iArr[0] = i2;
        return sb.toString();
    }

    protected b selectNumberRule(int i2, int i3) {
        switch (i3) {
            case 1:
                return new p(i2);
            case 2:
                return new m(i2);
            default:
                return new c(i2, i3);
        }
    }

    @Override // java.text.Format
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (obj instanceof Date) {
            return format((Date) obj, stringBuffer);
        }
        if (obj instanceof Calendar) {
            return format((Calendar) obj, stringBuffer);
        }
        if (obj instanceof Long) {
            return format(((Long) obj).longValue(), stringBuffer);
        }
        throw new IllegalArgumentException("Unknown class: " + (obj == null ? "<null>" : obj.getClass().getName()));
    }

    public String format(long j2) {
        return format(new Date(j2));
    }

    public String format(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(this.d, this.e);
        gregorianCalendar.setTime(date);
        return applyRules(gregorianCalendar, new StringBuffer(this.g)).toString();
    }

    public String format(Calendar calendar) {
        return format(calendar, new StringBuffer(this.g)).toString();
    }

    public StringBuffer format(long j2, StringBuffer stringBuffer) {
        return format(new Date(j2), stringBuffer);
    }

    public StringBuffer format(Date date, StringBuffer stringBuffer) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(this.d, this.e);
        gregorianCalendar.setTime(date);
        return applyRules(gregorianCalendar, stringBuffer);
    }

    public StringBuffer format(Calendar calendar, StringBuffer stringBuffer) {
        return applyRules(calendar, stringBuffer);
    }

    protected StringBuffer applyRules(Calendar calendar, StringBuffer stringBuffer) {
        for (d dVar : this.f) {
            dVar.a(stringBuffer, calendar);
        }
        return stringBuffer;
    }

    @Override // java.text.Format
    public Object parseObject(String str, ParsePosition parsePosition) {
        parsePosition.setIndex(0);
        parsePosition.setErrorIndex(0);
        return null;
    }

    public String getPattern() {
        return this.c;
    }

    public TimeZone getTimeZone() {
        return this.d;
    }

    public Locale getLocale() {
        return this.e;
    }

    public int getMaxLengthEstimate() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FastDateFormat)) {
            return false;
        }
        FastDateFormat fastDateFormat = (FastDateFormat) obj;
        return this.c.equals(fastDateFormat.c) && this.d.equals(fastDateFormat.d) && this.e.equals(fastDateFormat.e);
    }

    public int hashCode() {
        return this.c.hashCode() + ((this.d.hashCode() + (this.e.hashCode() * 13)) * 13);
    }

    public String toString() {
        return "FastDateFormat[" + this.c + "]";
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        a();
    }

    static class a implements d {
        private final char a;

        a(char c) {
            this.a = c;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public int a() {
            return 1;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public void a(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.a);
        }
    }

    static class e implements d {
        private final String a;

        e(String str) {
            this.a = str;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public int a() {
            return this.a.length();
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public void a(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.a);
        }
    }

    static class f implements d {
        private final int a;
        private final String[] b;

        f(int i, String[] strArr) {
            this.a = i;
            this.b = strArr;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public int a() {
            int i = 0;
            int length = this.b.length;
            while (true) {
                int i2 = length - 1;
                if (i2 >= 0) {
                    int length2 = this.b[i2].length();
                    if (length2 <= i) {
                        length2 = i;
                    }
                    i = length2;
                    length = i2;
                } else {
                    return i;
                }
            }
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public void a(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.b[calendar.get(this.a)]);
        }
    }

    static class p implements b {
        private final int a;

        p(int i) {
            this.a = i;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public int a() {
            return 4;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public void a(StringBuffer stringBuffer, Calendar calendar) {
            a(stringBuffer, calendar.get(this.a));
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.b
        public final void a(StringBuffer stringBuffer, int i) {
            if (i < 10) {
                stringBuffer.append((char) (i + 48));
            } else if (i < 100) {
                stringBuffer.append((char) ((i / 10) + 48));
                stringBuffer.append((char) ((i % 10) + 48));
            } else {
                stringBuffer.append(Integer.toString(i));
            }
        }
    }

    static class o implements b {
        static final o a = new o();

        o() {
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public int a() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public void a(StringBuffer stringBuffer, Calendar calendar) {
            a(stringBuffer, calendar.get(2) + 1);
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.b
        public final void a(StringBuffer stringBuffer, int i) {
            if (i < 10) {
                stringBuffer.append((char) (i + 48));
            } else {
                stringBuffer.append((char) ((i / 10) + 48));
                stringBuffer.append((char) ((i % 10) + 48));
            }
        }
    }

    static class c implements b {
        private final int a;
        private final int b;

        c(int i, int i2) {
            if (i2 < 3) {
                throw new IllegalArgumentException();
            }
            this.a = i;
            this.b = i2;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public int a() {
            return 4;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public void a(StringBuffer stringBuffer, Calendar calendar) {
            a(stringBuffer, calendar.get(this.a));
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.b
        public final void a(StringBuffer stringBuffer, int i) {
            int length;
            if (i < 100) {
                int i2 = this.b;
                while (true) {
                    i2--;
                    if (i2 >= 2) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append((char) ((i / 10) + 48));
                        stringBuffer.append((char) ((i % 10) + 48));
                        return;
                    }
                }
            } else {
                if (i < 1000) {
                    length = 3;
                } else {
                    Validate.isTrue(i > -1, "Negative values should not be possible", i);
                    length = Integer.toString(i).length();
                }
                int i3 = this.b;
                while (true) {
                    i3--;
                    if (i3 >= length) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append(Integer.toString(i));
                        return;
                    }
                }
            }
        }
    }

    static class m implements b {
        private final int a;

        m(int i) {
            this.a = i;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public int a() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public void a(StringBuffer stringBuffer, Calendar calendar) {
            a(stringBuffer, calendar.get(this.a));
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.b
        public final void a(StringBuffer stringBuffer, int i) {
            if (i < 100) {
                stringBuffer.append((char) ((i / 10) + 48));
                stringBuffer.append((char) ((i % 10) + 48));
            } else {
                stringBuffer.append(Integer.toString(i));
            }
        }
    }

    static class n implements b {
        static final n a = new n();

        n() {
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public int a() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public void a(StringBuffer stringBuffer, Calendar calendar) {
            a(stringBuffer, calendar.get(1) % 100);
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.b
        public final void a(StringBuffer stringBuffer, int i) {
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }
    }

    static class l implements b {
        static final l a = new l();

        l() {
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public int a() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public void a(StringBuffer stringBuffer, Calendar calendar) {
            a(stringBuffer, calendar.get(2) + 1);
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.b
        public final void a(StringBuffer stringBuffer, int i) {
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }
    }

    static class j implements b {
        private final b a;

        j(b bVar) {
            this.a = bVar;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public int a() {
            return this.a.a();
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public void a(StringBuffer stringBuffer, Calendar calendar) {
            int leastMaximum = calendar.get(10);
            if (leastMaximum == 0) {
                leastMaximum = calendar.getLeastMaximum(10) + 1;
            }
            this.a.a(stringBuffer, leastMaximum);
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.b
        public void a(StringBuffer stringBuffer, int i) {
            this.a.a(stringBuffer, i);
        }
    }

    static class k implements b {
        private final b a;

        k(b bVar) {
            this.a = bVar;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public int a() {
            return this.a.a();
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public void a(StringBuffer stringBuffer, Calendar calendar) {
            int maximum = calendar.get(11);
            if (maximum == 0) {
                maximum = calendar.getMaximum(11) + 1;
            }
            this.a.a(stringBuffer, maximum);
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.b
        public void a(StringBuffer stringBuffer, int i) {
            this.a.a(stringBuffer, i);
        }
    }

    static class h implements d {
        private final TimeZone a;
        private final String b;
        private final String c;

        h(TimeZone timeZone, Locale locale, int i) {
            this.a = timeZone;
            this.b = FastDateFormat.a(timeZone, false, i, locale);
            this.c = FastDateFormat.a(timeZone, true, i, locale);
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public int a() {
            return Math.max(this.b.length(), this.c.length());
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public void a(StringBuffer stringBuffer, Calendar calendar) {
            if (this.a.useDaylightTime() && calendar.get(16) != 0) {
                stringBuffer.append(this.c);
            } else {
                stringBuffer.append(this.b);
            }
        }
    }

    static class i implements d {
        static final i a = new i(true);
        static final i b = new i(false);
        final boolean c;

        i(boolean z) {
            this.c = z;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public int a() {
            return 5;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.d
        public void a(StringBuffer stringBuffer, Calendar calendar) {
            int i = calendar.get(15) + calendar.get(16);
            if (i < 0) {
                stringBuffer.append('-');
                i = -i;
            } else {
                stringBuffer.append('+');
            }
            int i2 = i / 3600000;
            stringBuffer.append((char) ((i2 / 10) + 48));
            stringBuffer.append((char) ((i2 % 10) + 48));
            if (this.c) {
                stringBuffer.append(':');
            }
            int i3 = (i / 60000) - (i2 * 60);
            stringBuffer.append((char) ((i3 / 10) + 48));
            stringBuffer.append((char) ((i3 % 10) + 48));
        }
    }

    static class g {
        private final TimeZone a;
        private final int b;
        private final Locale c;

        g(TimeZone timeZone, boolean z, int i, Locale locale) {
            this.a = timeZone;
            this.b = z ? i | Integer.MIN_VALUE : i;
            this.c = locale;
        }

        public int hashCode() {
            return (((this.b * 31) + this.c.hashCode()) * 31) + this.a.hashCode();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return this.a.equals(gVar.a) && this.b == gVar.b && this.c.equals(gVar.c);
        }
    }
}
