package org.eclipse.jetty.util;

import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class DateCache {
    public static String DEFAULT_FORMAT = "EEE MMM dd HH:mm:ss zzz yyyy";
    private static long a = 3600;
    private String b;
    private String c;
    private SimpleDateFormat d;
    private String e;
    private SimpleDateFormat f;
    private String g;
    private String h;
    private String i;
    private long j;
    private long k;
    private int l;
    private String m;
    private Locale n;
    private DateFormatSymbols o;

    public DateCache() {
        this(DEFAULT_FORMAT);
        getFormat().setTimeZone(TimeZone.getDefault());
    }

    public DateCache(String str) {
        this.j = -1L;
        this.k = -1L;
        this.l = -1;
        this.m = null;
        this.n = null;
        this.o = null;
        this.b = str;
        setTimeZone(TimeZone.getDefault());
    }

    public DateCache(String str, Locale locale) {
        this.j = -1L;
        this.k = -1L;
        this.l = -1;
        this.m = null;
        this.n = null;
        this.o = null;
        this.b = str;
        this.n = locale;
        setTimeZone(TimeZone.getDefault());
    }

    public DateCache(String str, DateFormatSymbols dateFormatSymbols) {
        this.j = -1L;
        this.k = -1L;
        this.l = -1;
        this.m = null;
        this.n = null;
        this.o = null;
        this.b = str;
        this.o = dateFormatSymbols;
        setTimeZone(TimeZone.getDefault());
    }

    public synchronized void setTimeZone(TimeZone timeZone) {
        a(timeZone);
        if (this.n != null) {
            this.d = new SimpleDateFormat(this.c, this.n);
            this.f = new SimpleDateFormat(this.e, this.n);
        } else if (this.o != null) {
            this.d = new SimpleDateFormat(this.c, this.o);
            this.f = new SimpleDateFormat(this.e, this.o);
        } else {
            this.d = new SimpleDateFormat(this.c);
            this.f = new SimpleDateFormat(this.e);
        }
        this.d.setTimeZone(timeZone);
        this.f.setTimeZone(timeZone);
        this.k = -1L;
        this.j = -1L;
    }

    public TimeZone getTimeZone() {
        return this.d.getTimeZone();
    }

    public void setTimeZoneID(String str) {
        setTimeZone(TimeZone.getTimeZone(str));
    }

    private synchronized void a(TimeZone timeZone) {
        int iIndexOf = this.b.indexOf("ZZZ");
        if (iIndexOf >= 0) {
            String strSubstring = this.b.substring(0, iIndexOf);
            String strSubstring2 = this.b.substring(iIndexOf + 3);
            int rawOffset = timeZone.getRawOffset();
            StringBuilder sb = new StringBuilder(this.b.length() + 10);
            sb.append(strSubstring);
            sb.append("'");
            if (rawOffset >= 0) {
                sb.append('+');
            } else {
                rawOffset = -rawOffset;
                sb.append('-');
            }
            int i = rawOffset / 60000;
            int i2 = i / 60;
            int i3 = i % 60;
            if (i2 < 10) {
                sb.append('0');
            }
            sb.append(i2);
            if (i3 < 10) {
                sb.append('0');
            }
            sb.append(i3);
            sb.append('\'');
            sb.append(strSubstring2);
            this.c = sb.toString();
        } else {
            this.c = this.b;
        }
        a();
    }

    private void a() {
        if (this.c.indexOf("ss.SSS") >= 0) {
            throw new IllegalStateException("ms not supported");
        }
        int iIndexOf = this.c.indexOf("ss");
        this.e = this.c.substring(0, iIndexOf) + "'ss'" + this.c.substring(iIndexOf + 2);
    }

    public synchronized String format(Date date) {
        return format(date.getTime());
    }

    public synchronized String format(long j) {
        String str;
        long j2 = j / 1000;
        if (j2 < this.k || (this.k > 0 && j2 > this.k + a)) {
            str = this.d.format(new Date(j));
        } else if (this.k == j2) {
            str = this.m;
        } else {
            Date date = new Date(j);
            long j3 = j2 / 60;
            if (this.j != j3) {
                this.j = j3;
                this.g = this.f.format(date);
                int iIndexOf = this.g.indexOf("ss");
                this.h = this.g.substring(0, iIndexOf);
                this.i = this.g.substring(iIndexOf + 2);
            }
            this.k = j2;
            StringBuilder sb = new StringBuilder(this.g.length());
            sb.append(this.h);
            int i = (int) (j2 % 60);
            if (i < 10) {
                sb.append('0');
            }
            sb.append(i);
            sb.append(this.i);
            this.m = sb.toString();
            str = this.m;
        }
        return str;
    }

    public void format(long j, StringBuilder sb) {
        sb.append(format(j));
    }

    public SimpleDateFormat getFormat() {
        return this.f;
    }

    public String getFormatString() {
        return this.b;
    }

    public String now() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.l = (int) (jCurrentTimeMillis % 1000);
        return format(jCurrentTimeMillis);
    }

    public int lastMs() {
        return this.l;
    }
}
