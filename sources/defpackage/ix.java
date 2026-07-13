package defpackage;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public class ix<K, V> extends hh<K, V> implements Serializable {
    private static final long serialVersionUID = 0;
    public final K g;
    public final V h;

    public ix(@Nullable K k, @Nullable V v) {
        this.g = k;
        this.h = v;
    }

    @Override // defpackage.hh, java.util.Map.Entry
    @Nullable
    public final K getKey() {
        return this.g;
    }

    @Override // defpackage.hh, java.util.Map.Entry
    @Nullable
    public final V getValue() {
        return this.h;
    }

    @Override // defpackage.hh, java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
