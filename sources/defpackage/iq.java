package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Predicate;
import com.google.common.collect.Multimap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public interface iq<K, V> extends Multimap<K, V> {
    Multimap<K, V> a();

    Predicate<? super Map.Entry<K, V>> b();
}
