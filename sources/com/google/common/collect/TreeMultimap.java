package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import defpackage.hf;
import defpackage.hn;
import defpackage.ka;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public class TreeMultimap<K, V> extends hn<K, V> {

    @GwtIncompatible("not needed in emulated source")
    private static final long serialVersionUID = 0;
    private transient Comparator<? super K> a;
    private transient Comparator<? super V> b;

    @Override // defpackage.hf, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@Nullable Object obj, @Nullable Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // defpackage.hf, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsKey(@Nullable Object obj) {
        return super.containsKey(obj);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsValue(@Nullable Object obj) {
        return super.containsValue(obj);
    }

    @Override // defpackage.hm, defpackage.hf, defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set entries() {
        return super.entries();
    }

    @Override // defpackage.hm, defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.hm, defpackage.hf, defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean put(@Nullable Object obj, @Nullable Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean putAll(Multimap multimap) {
        return super.putAll(multimap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean putAll(@Nullable Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean remove(@Nullable Object obj, @Nullable Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // defpackage.hp, defpackage.hm, defpackage.hf, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ SortedSet removeAll(@Nullable Object obj) {
        return super.removeAll(obj);
    }

    @Override // defpackage.hp, defpackage.hm, defpackage.hf, defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ SortedSet replaceValues(@Nullable Object obj, Iterable iterable) {
        return super.replaceValues(obj, iterable);
    }

    @Override // defpackage.hf, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // defpackage.hi
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // defpackage.hp, defpackage.hf, defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create() {
        return new TreeMultimap<>(Ordering.natural(), Ordering.natural());
    }

    public static <K, V> TreeMultimap<K, V> create(Comparator<? super K> comparator, Comparator<? super V> comparator2) {
        return new TreeMultimap<>((Comparator) Preconditions.checkNotNull(comparator), (Comparator) Preconditions.checkNotNull(comparator2));
    }

    public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        return new TreeMultimap<>(Ordering.natural(), Ordering.natural(), multimap);
    }

    TreeMultimap(Comparator<? super K> comparator, Comparator<? super V> comparator2) {
        super(new TreeMap(comparator));
        this.a = comparator;
        this.b = comparator2;
    }

    private TreeMultimap(Comparator<? super K> comparator, Comparator<? super V> comparator2, Multimap<? extends K, ? extends V> multimap) {
        this(comparator, comparator2);
        putAll(multimap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hp, defpackage.hm, defpackage.hf
    /* JADX INFO: renamed from: n */
    public SortedSet<V> c() {
        return new TreeSet(this.b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.hf
    protected Collection<V> a(@Nullable K k) {
        if (k == 0) {
            keyComparator().compare(k, k);
        }
        return super.a(k);
    }

    public Comparator<? super K> keyComparator() {
        return this.a;
    }

    @Override // com.google.common.collect.SortedSetMultimap
    public Comparator<? super V> valueComparator() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hn
    @GwtIncompatible("NavigableMap")
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public NavigableMap<K, Collection<V>> e() {
        return (NavigableMap) super.e();
    }

    @Override // defpackage.hp, defpackage.hm, defpackage.hf, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @GwtIncompatible("NavigableSet")
    public NavigableSet<V> get(@Nullable K k) {
        return (NavigableSet) super.get((Object) k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hf
    @GwtIncompatible("NavigableSet")
    protected Collection<V> a(Collection<V> collection) {
        return Sets.unmodifiableNavigableSet((NavigableSet) collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hf
    @GwtIncompatible("NavigableSet")
    protected Collection<V> a(K k, Collection<V> collection) {
        return new hf.k(k, (NavigableSet) collection, null);
    }

    @Override // defpackage.hn, defpackage.hi, com.google.common.collect.Multimap
    @GwtIncompatible("NavigableSet")
    public NavigableSet<K> keySet() {
        return (NavigableSet) super.keySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hf, defpackage.hi
    @GwtIncompatible("NavigableSet")
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public NavigableSet<K> f() {
        return new hf.e(e());
    }

    @Override // defpackage.hn, defpackage.hp, defpackage.hm, defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @GwtIncompatible("NavigableMap")
    public NavigableMap<K, Collection<V>> asMap() {
        return (NavigableMap) super.asMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hf, defpackage.hi
    @GwtIncompatible("NavigableMap")
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public NavigableMap<K, Collection<V>> i() {
        return new hf.d(e());
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(keyComparator());
        objectOutputStream.writeObject(valueComparator());
        ka.a(this, objectOutputStream);
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.a = (Comparator) Preconditions.checkNotNull((Comparator) objectInputStream.readObject());
        this.b = (Comparator) Preconditions.checkNotNull((Comparator) objectInputStream.readObject());
        a((Map) new TreeMap(this.a));
        ka.a(this, objectInputStream);
    }
}
