package org.eclipse.jetty.util.ajax;

import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.eclipse.jetty.util.DateCache;
import org.eclipse.jetty.util.ajax.JSON;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class JSONDateConvertor implements JSON.Convertor {
    private static final Logger a = Log.getLogger((Class<?>) JSONDateConvertor.class);
    private final boolean b;
    private final DateCache c;
    private final SimpleDateFormat d;

    public JSONDateConvertor() {
        this(false);
    }

    public JSONDateConvertor(boolean z) {
        this(DateCache.DEFAULT_FORMAT, TimeZone.getTimeZone("GMT"), z);
    }

    public JSONDateConvertor(String str, TimeZone timeZone, boolean z) {
        this.c = new DateCache(str);
        this.c.setTimeZone(timeZone);
        this.b = z;
        this.d = new SimpleDateFormat(str);
        this.d.setTimeZone(timeZone);
    }

    public JSONDateConvertor(String str, TimeZone timeZone, boolean z, Locale locale) {
        this.c = new DateCache(str, locale);
        this.c.setTimeZone(timeZone);
        this.b = z;
        this.d = new SimpleDateFormat(str, new DateFormatSymbols(locale));
        this.d.setTimeZone(timeZone);
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        Object object;
        if (!this.b) {
            throw new UnsupportedOperationException();
        }
        try {
            synchronized (this.d) {
                object = this.d.parseObject((String) map.get("value"));
            }
            return object;
        } catch (Exception e) {
            a.warn(e);
            return null;
        }
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        String str = this.c.format((Date) obj);
        if (this.b) {
            output.addClass(obj.getClass());
            output.add("value", str);
        } else {
            output.add(str);
        }
    }
}
