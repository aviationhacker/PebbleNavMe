package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final class Range<T> implements Serializable {
    private static final long serialVersionUID = 1;
    private final Comparator<T> a;
    private final T b;
    private final T c;
    private transient int d;
    private transient String e;

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/lang/Comparable<TT;>;>(TT;)Lorg/apache/commons/lang3/Range<TT;>; */
    public static Range is(Comparable comparable) {
        return between(comparable, comparable, null);
    }

    public static <T> Range<T> is(T t, Comparator<T> comparator) {
        return between(t, t, comparator);
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/lang/Comparable<TT;>;>(TT;TT;)Lorg/apache/commons/lang3/Range<TT;>; */
    public static Range between(Comparable comparable, Comparable comparable2) {
        return between(comparable, comparable2, null);
    }

    public static <T> Range<T> between(T t, T t2, Comparator<T> comparator) {
        return new Range<>(t, t2, comparator);
    }

    private Range(T t, T t2, Comparator<T> comparator) {
        if (t == null || t2 == null) {
            throw new IllegalArgumentException("Elements in a range must not be null: element1=" + t + ", element2=" + t2);
        }
        comparator = comparator == null ? a.INSTANCE : comparator;
        if (comparator.compare(t, t2) < 1) {
            this.b = t;
            this.c = t2;
        } else {
            this.b = t2;
            this.c = t;
        }
        this.a = comparator;
    }

    public T getMinimum() {
        return this.b;
    }

    public T getMaximum() {
        return this.c;
    }

    public Comparator<T> getComparator() {
        return this.a;
    }

    public boolean isNaturalOrdering() {
        return this.a == a.INSTANCE;
    }

    public boolean contains(T t) {
        if (t == null) {
            return false;
        }
        return this.a.compare(t, this.b) > -1 && this.a.compare(t, this.c) < 1;
    }

    public boolean isAfter(T t) {
        return t != null && this.a.compare(t, this.b) < 0;
    }

    public boolean isStartedBy(T t) {
        return t != null && this.a.compare(t, this.b) == 0;
    }

    public boolean isEndedBy(T t) {
        return t != null && this.a.compare(t, this.c) == 0;
    }

    public boolean isBefore(T t) {
        return t != null && this.a.compare(t, this.c) > 0;
    }

    public int elementCompareTo(T t) {
        if (t == null) {
            throw new NullPointerException("Element is null");
        }
        if (isAfter(t)) {
            return -1;
        }
        if (isBefore(t)) {
            return 1;
        }
        return 0;
    }

    public boolean containsRange(Range<T> range) {
        return range != null && contains(range.b) && contains(range.c);
    }

    public boolean isAfterRange(Range<T> range) {
        if (range == null) {
            return false;
        }
        return isAfter(range.c);
    }

    public boolean isOverlappedBy(Range<T> range) {
        if (range == null) {
            return false;
        }
        return range.contains(this.b) || range.contains(this.c) || contains(range.b);
    }

    public boolean isBeforeRange(Range<T> range) {
        if (range == null) {
            return false;
        }
        return isBefore(range.b);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Range range = (Range) obj;
        return this.b.equals(range.b) && this.c.equals(range.c);
    }

    public int hashCode() {
        int i = this.d;
        if (this.d == 0) {
            int iHashCode = ((((getClass().hashCode() + 629) * 37) + this.b.hashCode()) * 37) + this.c.hashCode();
            this.d = iHashCode;
            return iHashCode;
        }
        return i;
    }

    public String toString() {
        String str = this.e;
        if (str == null) {
            StringBuilder sb = new StringBuilder(32);
            sb.append('[');
            sb.append(this.b);
            sb.append("..");
            sb.append(this.c);
            sb.append(']');
            String string = sb.toString();
            this.e = string;
            return string;
        }
        return str;
    }

    public String toString(String str) {
        return String.format(str, this.b, this.c, this.a);
    }

    enum a implements Comparator {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }
}
