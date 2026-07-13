package com.google.common.base;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
public final class Defaults {
    private static final Map<Class<?>, Object> a;

    private Defaults() {
    }

    static {
        HashMap map = new HashMap();
        a(map, Boolean.TYPE, false);
        a(map, Character.TYPE, (char) 0);
        a(map, Byte.TYPE, (byte) 0);
        a(map, Short.TYPE, (short) 0);
        a(map, Integer.TYPE, 0);
        a(map, Long.TYPE, 0L);
        a(map, Float.TYPE, Float.valueOf(0.0f));
        a(map, Double.TYPE, Double.valueOf(0.0d));
        a = Collections.unmodifiableMap(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void a(Map<Class<?>, Object> map, Class<T> cls, T t) {
        map.put(cls, t);
    }

    @Nullable
    public static <T> T defaultValue(Class<T> cls) {
        return (T) a.get(Preconditions.checkNotNull(cls));
    }
}
