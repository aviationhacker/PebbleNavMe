package defpackage;

import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class mn<F extends Format> {
    private final ConcurrentMap<a, F> a = new ConcurrentHashMap(7);
    private final ConcurrentMap<a, String> b = new ConcurrentHashMap(7);

    protected abstract F b(String str, TimeZone timeZone, Locale locale);

    protected mn() {
    }

    public F c(String str, TimeZone timeZone, Locale locale) {
        if (str == null) {
            throw new NullPointerException("pattern must not be null");
        }
        if (timeZone == null) {
            timeZone = TimeZone.getDefault();
        }
        if (locale == null) {
            locale = Locale.getDefault();
        }
        a aVar = new a(str, timeZone, locale);
        F f = this.a.get(aVar);
        if (f == null) {
            F f2 = (F) b(str, timeZone, locale);
            F fPutIfAbsent = this.a.putIfAbsent(aVar, f2);
            return fPutIfAbsent != null ? fPutIfAbsent : f2;
        }
        return f;
    }

    public F a(Integer num, Integer num2, TimeZone timeZone, Locale locale) {
        DateFormat dateTimeInstance;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        a aVar = new a(num, num2, locale);
        String strPutIfAbsent = this.b.get(aVar);
        if (strPutIfAbsent == null) {
            try {
                if (num == null) {
                    dateTimeInstance = DateFormat.getTimeInstance(num2.intValue(), locale);
                } else if (num2 == null) {
                    dateTimeInstance = DateFormat.getDateInstance(num.intValue(), locale);
                } else {
                    dateTimeInstance = DateFormat.getDateTimeInstance(num.intValue(), num2.intValue(), locale);
                }
                String pattern = ((SimpleDateFormat) dateTimeInstance).toPattern();
                strPutIfAbsent = this.b.putIfAbsent(aVar, pattern);
                if (strPutIfAbsent == null) {
                    strPutIfAbsent = pattern;
                }
            } catch (ClassCastException e) {
                throw new IllegalArgumentException("No date time pattern for locale: " + locale);
            }
        }
        return (F) c(strPutIfAbsent, timeZone, locale);
    }

    static class a {
        private final Object[] a;
        private int b;

        public a(Object... objArr) {
            this.a = objArr;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            return Arrays.equals(this.a, ((a) obj).a);
        }

        public int hashCode() {
            int iHashCode = 0;
            if (this.b == 0) {
                for (Object obj : this.a) {
                    if (obj != null) {
                        iHashCode = (iHashCode * 7) + obj.hashCode();
                    }
                }
                this.b = iHashCode;
            }
            return this.b;
        }
    }
}
