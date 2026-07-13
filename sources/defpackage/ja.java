package defpackage;

import com.google.common.annotations.GwtIncompatible;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtIncompatible("unnecessary")
public class ja<K, V> extends ix<K, V> {
    static <K, V> ja<K, V>[] a(int i) {
        return new ja[i];
    }

    public ja(K k, V v) {
        super(k, v);
        hu.a(k, v);
    }

    @Nullable
    ja<K, V> a() {
        return null;
    }

    @Nullable
    ja<K, V> b() {
        return null;
    }

    boolean c() {
        return true;
    }

    static class b<K, V> extends ja<K, V> {
        private final transient ja<K, V> a;

        b(K k, V v, ja<K, V> jaVar) {
            super(k, v);
            this.a = jaVar;
        }

        @Override // defpackage.ja
        @Nullable
        final ja<K, V> a() {
            return this.a;
        }

        @Override // defpackage.ja
        final boolean c() {
            return false;
        }
    }

    static final class a<K, V> extends b<K, V> {
        private final transient ja<K, V> a;

        a(K k, V v, ja<K, V> jaVar, ja<K, V> jaVar2) {
            super(k, v, jaVar);
            this.a = jaVar2;
        }

        @Override // defpackage.ja
        @Nullable
        ja<K, V> b() {
            return this.a;
        }
    }
}
