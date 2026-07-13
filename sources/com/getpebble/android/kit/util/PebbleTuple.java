package com.getpebble.android.kit.util;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class PebbleTuple {
    static final Map<Integer, b> b;
    public final int c;
    public final a d;
    public final b e;
    public final int f;
    public final Object g;
    private static final Charset h = Charset.forName("UTF-8");
    static final Map<String, a> a = new HashMap();

    static {
        for (a aVar : a.values()) {
            a.put(aVar.a(), aVar);
        }
        b = new HashMap();
        for (b bVar : b.values()) {
            b.put(Integer.valueOf(bVar.e), bVar);
        }
    }

    private PebbleTuple(int i, a aVar, b bVar, int i2, Object obj) {
        this.c = i;
        this.d = aVar;
        this.e = bVar;
        this.f = i2;
        this.g = obj;
    }

    static PebbleTuple a(int i, a aVar, b bVar, int i2) {
        return new PebbleTuple(i, aVar, bVar, bVar.e, Long.valueOf(i2));
    }

    static PebbleTuple a(int i, a aVar, b bVar, Object obj) {
        int length = Integer.MAX_VALUE;
        if (bVar != b.NONE) {
            length = bVar.e;
        } else if (aVar == a.BYTES) {
            length = ((byte[]) obj).length;
        } else if (aVar == a.STRING) {
            length = ((String) obj).getBytes(h).length;
        }
        if (length > 65535) {
            throw new ValueOverflowException();
        }
        return new PebbleTuple(i, aVar, bVar, length, obj);
    }

    public static class ValueOverflowException extends RuntimeException {
        public ValueOverflowException() {
            super("Value exceeds tuple capacity");
        }
    }

    enum b {
        NONE(0),
        BYTE(1),
        SHORT(2),
        WORD(4);

        public final int e;

        b(int i) {
            this.e = i;
        }
    }

    enum a {
        BYTES(0),
        STRING(1),
        UINT(2),
        INT(3);

        public final byte e;

        a(int i) {
            this.e = (byte) i;
        }

        public String a() {
            return name().toLowerCase();
        }
    }
}
