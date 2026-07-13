package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Predicate;
import com.google.common.collect.MapMaker;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import java.lang.reflect.Array;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class jn {
    public static <T> T[] a(T[] tArr, int i) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
    }

    public static <E> Set<E> a(Map<E, Boolean> map) {
        return Collections.newSetFromMap(map);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.MapMaker] */
    public static MapMaker a(MapMaker mapMaker) {
        return mapMaker.weakKeys2();
    }

    public static <K, V1, V2> SortedMap<K, V2> a(SortedMap<K, V1> sortedMap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return sortedMap instanceof NavigableMap ? Maps.transformEntries((NavigableMap) sortedMap, (Maps.EntryTransformer) entryTransformer) : Maps.a((SortedMap) sortedMap, (Maps.EntryTransformer) entryTransformer);
    }

    public static <K, V> SortedMap<K, V> a(SortedSet<K> sortedSet, Function<? super K, V> function) {
        return sortedSet instanceof NavigableSet ? Maps.asMap((NavigableSet) sortedSet, (Function) function) : Maps.a((SortedSet) sortedSet, (Function) function);
    }

    public static <E> SortedSet<E> a(SortedSet<E> sortedSet, Predicate<? super E> predicate) {
        return sortedSet instanceof NavigableSet ? Sets.filter((NavigableSet) sortedSet, (Predicate) predicate) : Sets.a((SortedSet) sortedSet, (Predicate) predicate);
    }

    public static <K, V> SortedMap<K, V> a(SortedMap<K, V> sortedMap, Predicate<? super Map.Entry<K, V>> predicate) {
        return sortedMap instanceof NavigableMap ? Maps.filterEntries((NavigableMap) sortedMap, (Predicate) predicate) : Maps.a((SortedMap) sortedMap, (Predicate) predicate);
    }

    public static <E> Queue<E> a(int i) {
        return new ArrayDeque(i);
    }
}
