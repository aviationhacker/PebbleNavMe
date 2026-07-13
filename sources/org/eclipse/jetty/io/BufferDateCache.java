package org.eclipse.jetty.io;

import java.text.DateFormatSymbols;
import java.util.Locale;
import org.eclipse.jetty.util.DateCache;

/* JADX INFO: loaded from: classes.dex */
public class BufferDateCache extends DateCache {
    Buffer a;
    String b;

    public BufferDateCache() {
    }

    public BufferDateCache(String str, DateFormatSymbols dateFormatSymbols) {
        super(str, dateFormatSymbols);
    }

    public BufferDateCache(String str, Locale locale) {
        super(str, locale);
    }

    public BufferDateCache(String str) {
        super(str);
    }

    public synchronized Buffer formatBuffer(long j) {
        Buffer buffer;
        String str = super.format(j);
        if (str == this.b) {
            buffer = this.a;
        } else {
            this.b = str;
            this.a = new ByteArrayBuffer(str);
            buffer = this.a;
        }
        return buffer;
    }
}
