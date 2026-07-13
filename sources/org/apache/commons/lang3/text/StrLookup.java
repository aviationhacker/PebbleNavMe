package org.apache.commons.lang3.text;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class StrLookup<V> {
    private static final StrLookup<String> a = new a(null);
    private static final StrLookup<String> b;

    public abstract String lookup(String str);

    static {
        StrLookup<String> aVar;
        try {
            aVar = new a<>(System.getProperties());
        } catch (SecurityException e) {
            aVar = a;
        }
        b = aVar;
    }

    public static StrLookup<?> noneLookup() {
        return a;
    }

    public static StrLookup<String> systemPropertiesLookup() {
        return b;
    }

    public static <V> StrLookup<V> mapLookup(Map<String, V> map) {
        return new a(map);
    }

    protected StrLookup() {
    }

    static class a<V> extends StrLookup<V> {
        private final Map<String, V> a;

        a(Map<String, V> map) {
            this.a = map;
        }

        @Override // org.apache.commons.lang3.text.StrLookup
        public String lookup(String str) {
            V v;
            if (this.a == null || (v = this.a.get(str)) == null) {
                return null;
            }
            return v.toString();
        }
    }
}
