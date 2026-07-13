package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public abstract class FluentIterable<E> implements Iterable<E> {
    private final Iterable<E> a;

    protected FluentIterable() {
        this.a = this;
    }

    FluentIterable(Iterable<E> iterable) {
        this.a = (Iterable) Preconditions.checkNotNull(iterable);
    }

    @CheckReturnValue
    public static <E> FluentIterable<E> from(final Iterable<E> iterable) {
        return iterable instanceof FluentIterable ? (FluentIterable) iterable : new FluentIterable<E>(iterable) { // from class: com.google.common.collect.FluentIterable.1
            @Override // java.lang.Iterable
            public Iterator<E> iterator() {
                return iterable.iterator();
            }
        };
    }

    @CheckReturnValue
    @Deprecated
    public static <E> FluentIterable<E> from(FluentIterable<E> fluentIterable) {
        return (FluentIterable) Preconditions.checkNotNull(fluentIterable);
    }

    @Beta
    @CheckReturnValue
    public static <E> FluentIterable<E> of(E[] eArr) {
        return from(Lists.newArrayList(eArr));
    }

    @CheckReturnValue
    public String toString() {
        return Iterables.toString(this.a);
    }

    @CheckReturnValue
    public final int size() {
        return Iterables.size(this.a);
    }

    @CheckReturnValue
    public final boolean contains(@Nullable Object obj) {
        return Iterables.contains(this.a, obj);
    }

    @CheckReturnValue
    public final FluentIterable<E> cycle() {
        return from(Iterables.cycle(this.a));
    }

    @Beta
    @CheckReturnValue
    public final FluentIterable<E> append(Iterable<? extends E> iterable) {
        return from(Iterables.concat(this.a, iterable));
    }

    @Beta
    @CheckReturnValue
    public final FluentIterable<E> append(E... eArr) {
        return from(Iterables.concat(this.a, Arrays.asList(eArr)));
    }

    @CheckReturnValue
    public final FluentIterable<E> filter(Predicate<? super E> predicate) {
        return from(Iterables.filter(this.a, predicate));
    }

    @GwtIncompatible("Class.isInstance")
    @CheckReturnValue
    public final <T> FluentIterable<T> filter(Class<T> cls) {
        return from(Iterables.filter((Iterable<?>) this.a, (Class) cls));
    }

    @CheckReturnValue
    public final boolean anyMatch(Predicate<? super E> predicate) {
        return Iterables.any(this.a, predicate);
    }

    @CheckReturnValue
    public final boolean allMatch(Predicate<? super E> predicate) {
        return Iterables.all(this.a, predicate);
    }

    @CheckReturnValue
    public final Optional<E> firstMatch(Predicate<? super E> predicate) {
        return Iterables.tryFind(this.a, predicate);
    }

    @CheckReturnValue
    public final <T> FluentIterable<T> transform(Function<? super E, T> function) {
        return from(Iterables.transform(this.a, function));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    public <T> FluentIterable<T> transformAndConcat(Function<? super E, ? extends Iterable<? extends T>> function) {
        return from(Iterables.concat(transform(function)));
    }

    @CheckReturnValue
    public final Optional<E> first() {
        Iterator<E> it = this.a.iterator();
        return it.hasNext() ? Optional.of(it.next()) : Optional.absent();
    }

    @CheckReturnValue
    public final Optional<E> last() {
        E next;
        if (this.a instanceof List) {
            List list = (List) this.a;
            if (list.isEmpty()) {
                return Optional.absent();
            }
            return Optional.of(list.get(list.size() - 1));
        }
        Iterator<E> it = this.a.iterator();
        if (!it.hasNext()) {
            return Optional.absent();
        }
        if (this.a instanceof SortedSet) {
            return Optional.of(((SortedSet) this.a).last());
        }
        do {
            next = it.next();
        } while (it.hasNext());
        return Optional.of(next);
    }

    @CheckReturnValue
    public final FluentIterable<E> skip(int i) {
        return from(Iterables.skip(this.a, i));
    }

    @CheckReturnValue
    public final FluentIterable<E> limit(int i) {
        return from(Iterables.limit(this.a, i));
    }

    @CheckReturnValue
    public final boolean isEmpty() {
        return !this.a.iterator().hasNext();
    }

    @CheckReturnValue
    public final ImmutableList<E> toList() {
        return ImmutableList.copyOf(this.a);
    }

    @CheckReturnValue
    public final ImmutableList<E> toSortedList(Comparator<? super E> comparator) {
        return Ordering.from(comparator).immutableSortedCopy(this.a);
    }

    @CheckReturnValue
    public final ImmutableSet<E> toSet() {
        return ImmutableSet.copyOf(this.a);
    }

    @CheckReturnValue
    public final ImmutableSortedSet<E> toSortedSet(Comparator<? super E> comparator) {
        return ImmutableSortedSet.copyOf(comparator, this.a);
    }

    @CheckReturnValue
    public final ImmutableMultiset<E> toMultiset() {
        return ImmutableMultiset.copyOf(this.a);
    }

    @CheckReturnValue
    public final <V> ImmutableMap<E, V> toMap(Function<? super E, V> function) {
        return Maps.toMap(this.a, function);
    }

    @CheckReturnValue
    public final <K> ImmutableListMultimap<K, E> index(Function<? super E, K> function) {
        return Multimaps.index(this.a, function);
    }

    @CheckReturnValue
    public final <K> ImmutableMap<K, E> uniqueIndex(Function<? super E, K> function) {
        return Maps.uniqueIndex(this.a, function);
    }

    @GwtIncompatible("Array.newArray(Class, int)")
    @CheckReturnValue
    public final E[] toArray(Class<E> cls) {
        return (E[]) Iterables.toArray(this.a, cls);
    }

    public final <C extends Collection<? super E>> C copyInto(C c) {
        Preconditions.checkNotNull(c);
        if (this.a instanceof Collection) {
            c.addAll(Collections2.a(this.a));
        } else {
            Iterator<E> it = this.a.iterator();
            while (it.hasNext()) {
                c.add(it.next());
            }
        }
        return c;
    }

    @Beta
    @CheckReturnValue
    public final String join(Joiner joiner) {
        return joiner.join(this);
    }

    @CheckReturnValue
    public final E get(int i) {
        return (E) Iterables.get(this.a, i);
    }
}
