package defpackage;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.MoreObjects;
import com.google.common.collect.MapMaker;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible(emulated = true)
@Deprecated
public abstract class iu<K0, V0> {

    @GwtIncompatible("To be supported")
    protected MapMaker.e<K0, V0> a;

    @Deprecated
    protected abstract <K extends K0, V extends V0> ConcurrentMap<K, V> a(Function<? super K, ? extends V> function);

    @GwtIncompatible("MapMakerInternalMap")
    protected abstract <K, V> jj<K, V> b();

    /* JADX INFO: renamed from: concurrencyLevel */
    public abstract iu<K0, V0> concurrencyLevel2(int i);

    /* JADX INFO: renamed from: initialCapacity */
    public abstract iu<K0, V0> initialCapacity2(int i);

    public abstract <K extends K0, V extends V0> ConcurrentMap<K, V> makeMap();

    @GwtIncompatible("java.lang.ref.WeakReference")
    /* JADX INFO: renamed from: weakKeys */
    public abstract iu<K0, V0> weakKeys2();

    @GwtIncompatible("java.lang.ref.WeakReference")
    /* JADX INFO: renamed from: weakValues */
    public abstract iu<K0, V0> weakValues2();

    @GwtIncompatible("To be supported")
    enum a implements MapMaker.e<Object, Object> {
        INSTANCE;

        @Override // com.google.common.collect.MapMaker.e
        public void a(MapMaker.f<Object, Object> fVar) {
        }
    }

    protected iu() {
    }

    @GwtIncompatible("To be supported")
    public <K extends K0, V extends V0> MapMaker.e<K, V> a() {
        return (MapMaker.e) MoreObjects.firstNonNull(this.a, a.INSTANCE);
    }
}
