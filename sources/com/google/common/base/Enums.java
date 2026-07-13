package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import defpackage.gu;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible(emulated = true)
@CheckReturnValue
public final class Enums {

    @GwtIncompatible("java.lang.ref.WeakReference")
    private static final Map<Class<? extends Enum<?>>, Map<String, WeakReference<? extends Enum<?>>>> a = new WeakHashMap();

    private Enums() {
    }

    @GwtIncompatible("reflection")
    public static Field getField(Enum<?> r2) {
        try {
            return r2.getDeclaringClass().getDeclaredField(r2.name());
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }

    public static <T extends Enum<T>> Optional<T> getIfPresent(Class<T> cls, String str) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(str);
        return gu.a(cls, str);
    }

    @GwtIncompatible("java.lang.ref.WeakReference")
    private static <T extends Enum<T>> Map<String, WeakReference<? extends Enum<?>>> b(Class<T> cls) {
        HashMap map = new HashMap();
        for (Enum r0 : EnumSet.allOf(cls)) {
            map.put(r0.name(), new WeakReference(r0));
        }
        a.put(cls, map);
        return map;
    }

    @GwtIncompatible("java.lang.ref.WeakReference")
    public static <T extends Enum<T>> Map<String, WeakReference<? extends Enum<?>>> a(Class<T> cls) {
        Map<String, WeakReference<? extends Enum<?>>> mapB;
        synchronized (a) {
            mapB = a.get(cls);
            if (mapB == null) {
                mapB = b(cls);
            }
        }
        return mapB;
    }

    public static <T extends Enum<T>> Converter<String, T> stringConverter(Class<T> cls) {
        return new a(cls);
    }

    static final class a<T extends Enum<T>> extends Converter<String, T> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Class<T> a;

        a(Class<T> cls) {
            this.a = (Class) Preconditions.checkNotNull(cls);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public T doForward(String str) {
            return (T) Enum.valueOf(this.a, str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String doBackward(T t) {
            return t.name();
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof a) {
                return this.a.equals(((a) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a.getName());
            return new StringBuilder(String.valueOf(strValueOf).length() + 29).append("Enums.stringConverter(").append(strValueOf).append(".class)").toString();
        }
    }
}
