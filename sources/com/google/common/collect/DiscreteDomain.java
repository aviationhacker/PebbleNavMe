package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.lang.Comparable;
import java.math.BigInteger;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public abstract class DiscreteDomain<C extends Comparable> {
    public abstract long distance(C c2, C c3);

    public abstract C next(C c2);

    public abstract C previous(C c2);

    public static DiscreteDomain<Integer> integers() {
        return b.a;
    }

    static final class b extends DiscreteDomain<Integer> implements Serializable {
        private static final b a = new b();
        private static final long serialVersionUID = 0;

        private b() {
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer next(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue == Integer.MAX_VALUE) {
                return null;
            }
            return Integer.valueOf(iIntValue + 1);
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Integer previous(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue == Integer.MIN_VALUE) {
                return null;
            }
            return Integer.valueOf(iIntValue - 1);
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public long distance(Integer num, Integer num2) {
            return ((long) num2.intValue()) - ((long) num.intValue());
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer minValue() {
            return Integer.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Integer maxValue() {
            return Integer.MAX_VALUE;
        }

        private Object readResolve() {
            return a;
        }

        public String toString() {
            return "DiscreteDomain.integers()";
        }
    }

    public static DiscreteDomain<Long> longs() {
        return c.a;
    }

    static final class c extends DiscreteDomain<Long> implements Serializable {
        private static final c a = new c();
        private static final long serialVersionUID = 0;

        private c() {
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long next(Long l) {
            long jLongValue = l.longValue();
            if (jLongValue == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue + 1);
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Long previous(Long l) {
            long jLongValue = l.longValue();
            if (jLongValue == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue - 1);
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public long distance(Long l, Long l2) {
            long jLongValue = l2.longValue() - l.longValue();
            if (l2.longValue() > l.longValue() && jLongValue < 0) {
                return Long.MAX_VALUE;
            }
            if (l2.longValue() < l.longValue() && jLongValue > 0) {
                return Long.MIN_VALUE;
            }
            return jLongValue;
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long minValue() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Long maxValue() {
            return Long.MAX_VALUE;
        }

        private Object readResolve() {
            return a;
        }

        public String toString() {
            return "DiscreteDomain.longs()";
        }
    }

    public static DiscreteDomain<BigInteger> bigIntegers() {
        return a.a;
    }

    static final class a extends DiscreteDomain<BigInteger> implements Serializable {
        private static final a a = new a();
        private static final BigInteger b = BigInteger.valueOf(Long.MIN_VALUE);
        private static final BigInteger c = BigInteger.valueOf(Long.MAX_VALUE);
        private static final long serialVersionUID = 0;

        private a() {
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigInteger next(BigInteger bigInteger) {
            return bigInteger.add(BigInteger.ONE);
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public BigInteger previous(BigInteger bigInteger) {
            return bigInteger.subtract(BigInteger.ONE);
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public long distance(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger2.subtract(bigInteger).max(b).min(c).longValue();
        }

        private Object readResolve() {
            return a;
        }

        public String toString() {
            return "DiscreteDomain.bigIntegers()";
        }
    }

    protected DiscreteDomain() {
    }

    public C minValue() {
        throw new NoSuchElementException();
    }

    public C maxValue() {
        throw new NoSuchElementException();
    }
}
