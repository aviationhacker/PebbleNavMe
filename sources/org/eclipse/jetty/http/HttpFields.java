package org.eclipse.jetty.http;

import com.google.android.gms.search.SearchAuth;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.BufferCache;
import org.eclipse.jetty.io.BufferDateCache;
import org.eclipse.jetty.io.BufferUtil;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.QuotedStringTokenizer;
import org.eclipse.jetty.util.StringMap;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class HttpFields {
    public static final String __01Jan1970;
    public static final Buffer __01Jan1970_BUFFER;
    public static final String __01Jan1970_COOKIE;
    public static final String __COOKIE_DELIM = "\"\\\n\r\t\f\b%+ ;=";
    public static final String __separators = ", \t";
    private static final String[] b;
    private static final String[] c;
    private static final ThreadLocal<a> d;
    private static final String[] e;
    private static final ThreadLocal<b> f;
    private static ConcurrentMap<String, Buffer> i;
    private static int j;
    private static final Float k;
    private static final Float l;
    private static final StringMap m;
    private final ArrayList<Field> g = new ArrayList<>(20);
    private final HashMap<Buffer, Field> h = new HashMap<>(32);
    private static final Logger a = Log.getLogger((Class<?>) HttpFields.class);
    public static final TimeZone __GMT = TimeZone.getTimeZone("GMT");
    public static final BufferDateCache __dateCache = new BufferDateCache("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);

    static {
        __GMT.setID("GMT");
        __dateCache.setTimeZone(__GMT);
        b = new String[]{"Sat", "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
        c = new String[]{"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", "Jan"};
        d = new ThreadLocal<a>() { // from class: org.eclipse.jetty.http.HttpFields.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public a initialValue() {
                return new a();
            }
        };
        e = new String[]{"EEE, dd MMM yyyy HH:mm:ss zzz", "EEE, dd-MMM-yy HH:mm:ss", "EEE MMM dd HH:mm:ss yyyy", "EEE, dd MMM yyyy HH:mm:ss", "EEE dd MMM yyyy HH:mm:ss zzz", "EEE dd MMM yyyy HH:mm:ss", "EEE MMM dd yyyy HH:mm:ss zzz", "EEE MMM dd yyyy HH:mm:ss", "EEE MMM-dd-yyyy HH:mm:ss zzz", "EEE MMM-dd-yyyy HH:mm:ss", "dd MMM yyyy HH:mm:ss zzz", "dd MMM yyyy HH:mm:ss", "dd-MMM-yy HH:mm:ss zzz", "dd-MMM-yy HH:mm:ss", "MMM dd HH:mm:ss yyyy zzz", "MMM dd HH:mm:ss yyyy", "EEE MMM dd HH:mm:ss yyyy zzz", "EEE, MMM dd HH:mm:ss yyyy zzz", "EEE, MMM dd HH:mm:ss yyyy", "EEE, dd-MMM-yy HH:mm:ss zzz", "EEE dd-MMM-yy HH:mm:ss zzz", "EEE dd-MMM-yy HH:mm:ss"};
        f = new ThreadLocal<b>() { // from class: org.eclipse.jetty.http.HttpFields.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public b initialValue() {
                return new b();
            }
        };
        __01Jan1970 = formatDate(0L);
        __01Jan1970_BUFFER = new ByteArrayBuffer(__01Jan1970);
        __01Jan1970_COOKIE = formatCookieDate(0L).trim();
        i = new ConcurrentHashMap();
        j = Integer.getInteger("org.eclipse.jetty.http.HttpFields.CACHE", 2000).intValue();
        k = new Float("1.0");
        l = new Float("0.0");
        m = new StringMap();
        m.put((String) null, (Object) k);
        m.put("1.0", (Object) k);
        m.put("1", (Object) k);
        m.put("0.9", (Object) new Float("0.9"));
        m.put("0.8", (Object) new Float("0.8"));
        m.put("0.7", (Object) new Float("0.7"));
        m.put("0.66", (Object) new Float("0.66"));
        m.put("0.6", (Object) new Float("0.6"));
        m.put("0.5", (Object) new Float("0.5"));
        m.put("0.4", (Object) new Float("0.4"));
        m.put("0.33", (Object) new Float("0.33"));
        m.put("0.3", (Object) new Float("0.3"));
        m.put("0.2", (Object) new Float("0.2"));
        m.put("0.1", (Object) new Float("0.1"));
        m.put("0", (Object) l);
        m.put("0.0", (Object) l);
    }

    static class a {
        private final StringBuilder a;
        private final GregorianCalendar b;

        private a() {
            this.a = new StringBuilder(32);
            this.b = new GregorianCalendar(HttpFields.__GMT);
        }

        public String a(long j) {
            this.a.setLength(0);
            this.b.setTimeInMillis(j);
            int i = this.b.get(7);
            int i2 = this.b.get(5);
            int i3 = this.b.get(2);
            int i4 = this.b.get(1);
            int i5 = this.b.get(11);
            int i6 = this.b.get(12);
            int i7 = this.b.get(13);
            this.a.append(HttpFields.b[i]);
            this.a.append(',');
            this.a.append(' ');
            StringUtil.append2digits(this.a, i2);
            this.a.append(' ');
            this.a.append(HttpFields.c[i3]);
            this.a.append(' ');
            StringUtil.append2digits(this.a, i4 / 100);
            StringUtil.append2digits(this.a, i4 % 100);
            this.a.append(' ');
            StringUtil.append2digits(this.a, i5);
            this.a.append(':');
            StringUtil.append2digits(this.a, i6);
            this.a.append(':');
            StringUtil.append2digits(this.a, i7);
            this.a.append(" GMT");
            return this.a.toString();
        }

        public void a(StringBuilder sb, long j) {
            this.b.setTimeInMillis(j);
            int i = this.b.get(7);
            int i2 = this.b.get(5);
            int i3 = this.b.get(2);
            int i4 = this.b.get(1) % SearchAuth.StatusCodes.AUTH_DISABLED;
            int i5 = (int) ((j / 1000) % 86400);
            int i6 = i5 % 60;
            int i7 = i5 / 60;
            sb.append(HttpFields.b[i]);
            sb.append(',');
            sb.append(' ');
            StringUtil.append2digits(sb, i2);
            sb.append('-');
            sb.append(HttpFields.c[i3]);
            sb.append('-');
            StringUtil.append2digits(sb, i4 / 100);
            StringUtil.append2digits(sb, i4 % 100);
            sb.append(' ');
            StringUtil.append2digits(sb, i7 / 60);
            sb.append(':');
            StringUtil.append2digits(sb, i7 % 60);
            sb.append(':');
            StringUtil.append2digits(sb, i6);
            sb.append(" GMT");
        }
    }

    public static String formatDate(long j2) {
        return d.get().a(j2);
    }

    public static void formatCookieDate(StringBuilder sb, long j2) {
        d.get().a(sb, j2);
    }

    public static String formatCookieDate(long j2) {
        StringBuilder sb = new StringBuilder(28);
        formatCookieDate(sb, j2);
        return sb.toString();
    }

    static class b {
        final SimpleDateFormat[] a;

        private b() {
            this.a = new SimpleDateFormat[HttpFields.e.length];
        }

        long a(String str) {
            for (int i = 0; i < this.a.length; i++) {
                if (this.a[i] == null) {
                    this.a[i] = new SimpleDateFormat(HttpFields.e[i], Locale.US);
                    this.a[i].setTimeZone(HttpFields.__GMT);
                }
                try {
                    return ((Date) this.a[i].parseObject(str)).getTime();
                } catch (Exception e) {
                }
            }
            if (str.endsWith(" GMT")) {
                String strSubstring = str.substring(0, str.length() - 4);
                for (int i2 = 0; i2 < this.a.length; i2++) {
                    try {
                        return ((Date) this.a[i2].parseObject(strSubstring)).getTime();
                    } catch (Exception e2) {
                    }
                }
            }
            return -1L;
        }
    }

    public static long parseDate(String str) {
        return f.get().a(str);
    }

    private Buffer a(String str) {
        Buffer buffer = i.get(str);
        if (buffer == null) {
            try {
                ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(str, "ISO-8859-1");
                if (j > 0) {
                    if (i.size() > j) {
                        i.clear();
                    }
                    Buffer bufferPutIfAbsent = i.putIfAbsent(str, byteArrayBuffer);
                    if (bufferPutIfAbsent != null) {
                        return bufferPutIfAbsent;
                    }
                }
                return byteArrayBuffer;
            } catch (UnsupportedEncodingException e2) {
                throw new RuntimeException(e2);
            }
        }
        return buffer;
    }

    public Collection<String> getFieldNamesCollection() {
        ArrayList arrayList = new ArrayList(this.g.size());
        for (Field field : this.g) {
            if (field != null) {
                arrayList.add(BufferUtil.to8859_1_String(field.a));
            }
        }
        return arrayList;
    }

    public Enumeration<String> getFieldNames() {
        final Enumeration enumeration = Collections.enumeration(this.h.keySet());
        return new Enumeration<String>() { // from class: org.eclipse.jetty.http.HttpFields.3
            @Override // java.util.Enumeration
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String nextElement() {
                return enumeration.nextElement().toString();
            }

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return enumeration.hasMoreElements();
            }
        };
    }

    public int size() {
        return this.g.size();
    }

    public Field getField(int i2) {
        return this.g.get(i2);
    }

    private Field b(String str) {
        return this.h.get(HttpHeaders.CACHE.lookup(str));
    }

    private Field a(Buffer buffer) {
        return this.h.get(HttpHeaders.CACHE.lookup(buffer));
    }

    public boolean containsKey(Buffer buffer) {
        return this.h.containsKey(HttpHeaders.CACHE.lookup(buffer));
    }

    public boolean containsKey(String str) {
        return this.h.containsKey(HttpHeaders.CACHE.lookup(str));
    }

    public String getStringField(String str) {
        Field fieldB = b(str);
        if (fieldB == null) {
            return null;
        }
        return fieldB.getValue();
    }

    public String getStringField(Buffer buffer) {
        Field fieldA = a(buffer);
        if (fieldA == null) {
            return null;
        }
        return fieldA.getValue();
    }

    public Buffer get(Buffer buffer) {
        Field fieldA = a(buffer);
        if (fieldA == null) {
            return null;
        }
        return fieldA.b;
    }

    public Collection<String> getValuesCollection(String str) {
        Field fieldB = b(str);
        if (fieldB == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (fieldB != null) {
            arrayList.add(fieldB.getValue());
            fieldB = fieldB.c;
        }
        return arrayList;
    }

    public Enumeration<String> getValues(String str) {
        final Field fieldB = b(str);
        return fieldB == null ? Collections.enumeration(Collections.emptyList()) : new Enumeration<String>() { // from class: org.eclipse.jetty.http.HttpFields.4
            Field a;

            {
                this.a = fieldB;
            }

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.a != null;
            }

            @Override // java.util.Enumeration
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String nextElement() {
                if (this.a == null) {
                    throw new NoSuchElementException();
                }
                Field field = this.a;
                this.a = this.a.c;
                return field.getValue();
            }
        };
    }

    public Enumeration<String> getValues(Buffer buffer) {
        final Field fieldA = a(buffer);
        return fieldA == null ? Collections.enumeration(Collections.emptyList()) : new Enumeration<String>() { // from class: org.eclipse.jetty.http.HttpFields.5
            Field a;

            {
                this.a = fieldA;
            }

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.a != null;
            }

            @Override // java.util.Enumeration
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String nextElement() {
                if (this.a == null) {
                    throw new NoSuchElementException();
                }
                Field field = this.a;
                this.a = this.a.c;
                return field.getValue();
            }
        };
    }

    public Enumeration<String> getValues(String str, final String str2) {
        final Enumeration<String> values = getValues(str);
        if (values == null) {
            return null;
        }
        return new Enumeration<String>() { // from class: org.eclipse.jetty.http.HttpFields.6
            QuotedStringTokenizer a = null;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                if (this.a != null && this.a.hasMoreElements()) {
                    return true;
                }
                while (values.hasMoreElements()) {
                    this.a = new QuotedStringTokenizer((String) values.nextElement(), str2, false, false);
                    if (this.a.hasMoreElements()) {
                        return true;
                    }
                }
                this.a = null;
                return false;
            }

            @Override // java.util.Enumeration
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String nextElement() {
                if (!hasMoreElements()) {
                    throw new NoSuchElementException();
                }
                String str3 = (String) this.a.nextElement();
                return str3 != null ? str3.trim() : str3;
            }
        };
    }

    public void put(String str, String str2) {
        if (str2 == null) {
            remove(str);
        } else {
            put(HttpHeaders.CACHE.lookup(str), a(str2));
        }
    }

    public void put(Buffer buffer, String str) {
        put(HttpHeaders.CACHE.lookup(buffer), a(str));
    }

    public void put(Buffer buffer, Buffer buffer2) {
        remove(buffer);
        if (buffer2 != null) {
            if (!(buffer instanceof BufferCache.CachedBuffer)) {
                buffer = HttpHeaders.CACHE.lookup(buffer);
            }
            if (!(buffer2 instanceof BufferCache.CachedBuffer)) {
                buffer2 = HttpHeaderValues.CACHE.lookup(buffer2).asImmutableBuffer();
            }
            Field field = new Field(buffer, buffer2);
            this.g.add(field);
            this.h.put(buffer, field);
        }
    }

    public void put(String str, List<?> list) {
        if (list == null || list.size() == 0) {
            remove(str);
            return;
        }
        Buffer bufferLookup = HttpHeaders.CACHE.lookup(str);
        Object obj = list.get(0);
        if (obj != null) {
            put(bufferLookup, HttpHeaderValues.CACHE.lookup(obj.toString()));
        } else {
            remove(bufferLookup);
        }
        if (list.size() > 1) {
            Iterator<?> it = list.iterator();
            it.next();
            while (it.hasNext()) {
                Object next = it.next();
                if (next != null) {
                    put(bufferLookup, HttpHeaderValues.CACHE.lookup(next.toString()));
                }
            }
        }
    }

    public void add(String str, String str2) {
        if (str2 != null) {
            add(HttpHeaders.CACHE.lookup(str), a(str2));
        }
    }

    public void add(Buffer buffer, Buffer buffer2) {
        if (buffer2 == null) {
            throw new IllegalArgumentException("null value");
        }
        if (!(buffer instanceof BufferCache.CachedBuffer)) {
            buffer = HttpHeaders.CACHE.lookup(buffer);
        }
        Buffer bufferAsImmutableBuffer = buffer.asImmutableBuffer();
        if (!(buffer2 instanceof BufferCache.CachedBuffer) && HttpHeaderValues.hasKnownValues(HttpHeaders.CACHE.getOrdinal(bufferAsImmutableBuffer))) {
            buffer2 = HttpHeaderValues.CACHE.lookup(buffer2);
        }
        Buffer bufferAsImmutableBuffer2 = buffer2.asImmutableBuffer();
        Field field = this.h.get(bufferAsImmutableBuffer);
        Field field2 = null;
        while (field != null) {
            Field field3 = field;
            field = field.c;
            field2 = field3;
        }
        Field field4 = new Field(bufferAsImmutableBuffer, bufferAsImmutableBuffer2);
        this.g.add(field4);
        if (field2 == null) {
            this.h.put(bufferAsImmutableBuffer, field4);
        } else {
            field2.c = field4;
        }
    }

    public void remove(String str) {
        remove(HttpHeaders.CACHE.lookup(str));
    }

    public void remove(Buffer buffer) {
        if (!(buffer instanceof BufferCache.CachedBuffer)) {
            buffer = HttpHeaders.CACHE.lookup(buffer);
        }
        for (Field fieldRemove = this.h.remove(buffer); fieldRemove != null; fieldRemove = fieldRemove.c) {
            this.g.remove(fieldRemove);
        }
    }

    public long getLongField(String str) {
        Field fieldB = b(str);
        if (fieldB == null) {
            return -1L;
        }
        return fieldB.getLongValue();
    }

    public long getLongField(Buffer buffer) {
        Field fieldA = a(buffer);
        if (fieldA == null) {
            return -1L;
        }
        return fieldA.getLongValue();
    }

    public long getDateField(String str) {
        String strValueParameters;
        Field fieldB = b(str);
        if (fieldB != null && (strValueParameters = valueParameters(BufferUtil.to8859_1_String(fieldB.b), null)) != null) {
            long jA = f.get().a(strValueParameters);
            if (jA == -1) {
                throw new IllegalArgumentException("Cannot convert date: " + strValueParameters);
            }
            return jA;
        }
        return -1L;
    }

    public void putLongField(Buffer buffer, long j2) {
        put(buffer, BufferUtil.toBuffer(j2));
    }

    public void putLongField(String str, long j2) {
        put(HttpHeaders.CACHE.lookup(str), BufferUtil.toBuffer(j2));
    }

    public void addLongField(String str, long j2) {
        add(HttpHeaders.CACHE.lookup(str), BufferUtil.toBuffer(j2));
    }

    public void addLongField(Buffer buffer, long j2) {
        add(buffer, BufferUtil.toBuffer(j2));
    }

    public void putDateField(Buffer buffer, long j2) {
        put(buffer, new ByteArrayBuffer(formatDate(j2)));
    }

    public void putDateField(String str, long j2) {
        putDateField(HttpHeaders.CACHE.lookup(str), j2);
    }

    public void addDateField(String str, long j2) {
        add(HttpHeaders.CACHE.lookup(str), new ByteArrayBuffer(formatDate(j2)));
    }

    public void addSetCookie(HttpCookie httpCookie) {
        addSetCookie(httpCookie.getName(), httpCookie.getValue(), httpCookie.getDomain(), httpCookie.getPath(), httpCookie.getMaxAge(), httpCookie.getComment(), httpCookie.isSecure(), httpCookie.isHttpOnly(), httpCookie.getVersion());
    }

    public void addSetCookie(String str, String str2, String str3, String str4, long j2, String str5, boolean z, boolean z2, int i2) {
        boolean z3;
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Bad cookie name");
        }
        StringBuilder sb = new StringBuilder(128);
        QuotedStringTokenizer.quoteIfNeeded(sb, str, __COOKIE_DELIM);
        sb.append('=');
        String string = sb.toString();
        boolean z4 = false;
        boolean z5 = false;
        if (str2 != null && str2.length() > 0) {
            QuotedStringTokenizer.quoteIfNeeded(sb, str2, __COOKIE_DELIM);
        }
        if (str5 != null && str5.length() > 0) {
            sb.append(";Comment=");
            QuotedStringTokenizer.quoteIfNeeded(sb, str5, __COOKIE_DELIM);
        }
        if (str4 == null || str4.length() <= 0) {
            z3 = z5;
        } else {
            z5 = true;
            sb.append(";Path=");
            if (str4.trim().startsWith("\"")) {
                sb.append(str4);
                z3 = true;
            } else {
                QuotedStringTokenizer.quoteIfNeeded(sb, str4, __COOKIE_DELIM);
                z3 = z5;
            }
        }
        if (str3 != null && str3.length() > 0) {
            z4 = true;
            sb.append(";Domain=");
            QuotedStringTokenizer.quoteIfNeeded(sb, str3.toLowerCase(Locale.ENGLISH), __COOKIE_DELIM);
        }
        boolean z6 = z4;
        if (j2 >= 0) {
            sb.append(";Expires=");
            if (j2 == 0) {
                sb.append(__01Jan1970_COOKIE);
            } else {
                formatCookieDate(sb, System.currentTimeMillis() + (1000 * j2));
            }
            if (i2 > 0) {
                sb.append(";Max-Age=");
                sb.append(j2);
            }
        }
        if (z) {
            sb.append(";Secure");
        }
        if (z2) {
            sb.append(";HttpOnly");
        }
        String string2 = sb.toString();
        Field field = null;
        for (Field fieldB = b("Set-Cookie"); fieldB != null; fieldB = fieldB.c) {
            String string3 = fieldB.b == null ? null : fieldB.b.toString();
            if (string3 != null && string3.startsWith(string) && (((!z6 && !string3.contains("Domain")) || (z6 && string3.contains("Domain=" + str3))) && ((!z3 && !string3.contains("Path")) || (z3 && string3.contains("Path=" + str4))))) {
                this.g.remove(fieldB);
                if (field == null) {
                    this.h.put(HttpHeaders.SET_COOKIE_BUFFER, fieldB.c);
                } else {
                    field.c = fieldB.c;
                }
                add(HttpHeaders.SET_COOKIE_BUFFER, new ByteArrayBuffer(string2));
                put(HttpHeaders.EXPIRES_BUFFER, __01Jan1970_BUFFER);
            }
            field = fieldB;
        }
        add(HttpHeaders.SET_COOKIE_BUFFER, new ByteArrayBuffer(string2));
        put(HttpHeaders.EXPIRES_BUFFER, __01Jan1970_BUFFER);
    }

    public void putTo(Buffer buffer) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.g.size()) {
                Field field = this.g.get(i3);
                if (field != null) {
                    field.putTo(buffer);
                }
                i2 = i3 + 1;
            } else {
                BufferUtil.putCRLF(buffer);
                return;
            }
        }
    }

    public String toString() {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                Field field = this.g.get(i2);
                if (field != null) {
                    String name = field.getName();
                    if (name != null) {
                        stringBuffer.append(name);
                    }
                    stringBuffer.append(": ");
                    String value = field.getValue();
                    if (value != null) {
                        stringBuffer.append(value);
                    }
                    stringBuffer.append("\r\n");
                }
            }
            stringBuffer.append("\r\n");
            return stringBuffer.toString();
        } catch (Exception e2) {
            a.warn(e2);
            return e2.toString();
        }
    }

    public void clear() {
        this.g.clear();
        this.h.clear();
    }

    public void add(HttpFields httpFields) {
        if (httpFields != null) {
            Enumeration<String> fieldNames = httpFields.getFieldNames();
            while (fieldNames.hasMoreElements()) {
                String strNextElement = fieldNames.nextElement();
                Enumeration<String> values = httpFields.getValues(strNextElement);
                while (values.hasMoreElements()) {
                    add(strNextElement, values.nextElement());
                }
            }
        }
    }

    public static String valueParameters(String str, Map<String, String> map) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(59);
        if (iIndexOf < 0) {
            return str;
        }
        if (map == null) {
            return str.substring(0, iIndexOf).trim();
        }
        QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(str.substring(iIndexOf), ";", false, true);
        while (quotedStringTokenizer.hasMoreTokens()) {
            QuotedStringTokenizer quotedStringTokenizer2 = new QuotedStringTokenizer(quotedStringTokenizer.nextToken(), "= ");
            if (quotedStringTokenizer2.hasMoreTokens()) {
                map.put(quotedStringTokenizer2.nextToken(), quotedStringTokenizer2.hasMoreTokens() ? quotedStringTokenizer2.nextToken() : null);
            }
        }
        return str.substring(0, iIndexOf).trim();
    }

    public static Float getQuality(String str) {
        if (str == null) {
            return l;
        }
        int iIndexOf = str.indexOf(";");
        int i2 = iIndexOf + 1;
        if (iIndexOf < 0 || i2 == str.length()) {
            return k;
        }
        int i3 = i2 + 1;
        if (str.charAt(i2) == 'q') {
            int i4 = i3 + 1;
            Map.Entry entry = m.getEntry(str, i4, str.length() - i4);
            if (entry != null) {
                return (Float) entry.getValue();
            }
        }
        HashMap map = new HashMap(3);
        valueParameters(str, map);
        String str2 = (String) map.get("q");
        Float f2 = (Float) m.get(str2);
        if (f2 == null) {
            try {
                f2 = new Float(str2);
            } catch (Exception e2) {
                f2 = k;
            }
        }
        return f2;
    }

    public static List qualityList(Enumeration enumeration) {
        Object objAdd = null;
        if (enumeration == null || !enumeration.hasMoreElements()) {
            return Collections.EMPTY_LIST;
        }
        Object objAdd2 = null;
        while (enumeration.hasMoreElements()) {
            String string = enumeration.nextElement().toString();
            Float quality = getQuality(string);
            if (quality.floatValue() >= 0.001d) {
                objAdd2 = LazyList.add(objAdd2, string);
                objAdd = LazyList.add(objAdd, quality);
            }
        }
        List list = LazyList.getList(objAdd2, false);
        if (list.size() < 2) {
            return list;
        }
        List list2 = LazyList.getList(objAdd, false);
        Float f2 = l;
        int size = list.size();
        Float f3 = f2;
        while (true) {
            int i2 = size - 1;
            if (size > 0) {
                Float f4 = (Float) list2.get(i2);
                if (f3.compareTo(f4) > 0) {
                    Object obj = list.get(i2);
                    list.set(i2, list.get(i2 + 1));
                    list.set(i2 + 1, obj);
                    list2.set(i2, list2.get(i2 + 1));
                    list2.set(i2 + 1, f4);
                    Float f5 = l;
                    size = list.size();
                    f3 = f5;
                } else {
                    f3 = f4;
                    size = i2;
                }
            } else {
                list2.clear();
                return list;
            }
        }
    }

    public static final class Field {
        private Buffer a;
        private Buffer b;
        private Field c;

        private Field(Buffer buffer, Buffer buffer2) {
            this.a = buffer;
            this.b = buffer2;
            this.c = null;
        }

        public void putTo(Buffer buffer) {
            if ((this.a instanceof BufferCache.CachedBuffer ? ((BufferCache.CachedBuffer) this.a).getOrdinal() : -1) >= 0) {
                buffer.put(this.a);
            } else {
                int index = this.a.getIndex();
                int iPutIndex = this.a.putIndex();
                while (index < iPutIndex) {
                    int i = index + 1;
                    byte bPeek = this.a.peek(index);
                    switch (bPeek) {
                        case 10:
                        case 13:
                        case 58:
                            index = i;
                            break;
                        default:
                            buffer.put(bPeek);
                            index = i;
                            break;
                    }
                }
            }
            buffer.put(HttpTokens.COLON);
            buffer.put((byte) 32);
            if ((this.b instanceof BufferCache.CachedBuffer ? ((BufferCache.CachedBuffer) this.b).getOrdinal() : -1) >= 0) {
                buffer.put(this.b);
            } else {
                int index2 = this.b.getIndex();
                int iPutIndex2 = this.b.putIndex();
                while (index2 < iPutIndex2) {
                    int i2 = index2 + 1;
                    byte bPeek2 = this.b.peek(index2);
                    switch (bPeek2) {
                        case 10:
                        case 13:
                            index2 = i2;
                            break;
                        case 11:
                        case 12:
                        default:
                            buffer.put(bPeek2);
                            index2 = i2;
                            break;
                    }
                }
            }
            BufferUtil.putCRLF(buffer);
        }

        public String getName() {
            return BufferUtil.to8859_1_String(this.a);
        }

        public int getNameOrdinal() {
            return HttpHeaders.CACHE.getOrdinal(this.a);
        }

        public String getValue() {
            return BufferUtil.to8859_1_String(this.b);
        }

        public Buffer getValueBuffer() {
            return this.b;
        }

        public int getValueOrdinal() {
            return HttpHeaderValues.CACHE.getOrdinal(this.b);
        }

        public int getIntValue() {
            return (int) getLongValue();
        }

        public long getLongValue() {
            return BufferUtil.toLong(this.b);
        }

        public String toString() {
            return "[" + getName() + "=" + this.b + (this.c == null ? "" : "->") + "]";
        }
    }
}
