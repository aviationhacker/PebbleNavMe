package org.eclipse.jetty.util.statistic;

import java.util.concurrent.atomic.AtomicLong;
import org.eclipse.jetty.util.Atomics;

/* JADX INFO: loaded from: classes.dex */
public class SampleStatistic {
    protected final AtomicLong _max = new AtomicLong();
    protected final AtomicLong _total = new AtomicLong();
    protected final AtomicLong _count = new AtomicLong();
    protected final AtomicLong _totalVariance100 = new AtomicLong();

    public void reset() {
        this._max.set(0L);
        this._total.set(0L);
        this._count.set(0L);
        this._totalVariance100.set(0L);
    }

    public void set(long j) {
        long jAddAndGet = this._total.addAndGet(j);
        long jIncrementAndGet = this._count.incrementAndGet();
        if (jIncrementAndGet > 1) {
            long j2 = (j * 10) - ((jAddAndGet * 10) / jIncrementAndGet);
            this._totalVariance100.addAndGet(j2 * j2);
        }
        Atomics.updateMax(this._max, j);
    }

    public long getMax() {
        return this._max.get();
    }

    public long getTotal() {
        return this._total.get();
    }

    public long getCount() {
        return this._count.get();
    }

    public double getMean() {
        return this._total.get() / this._count.get();
    }

    public double getVariance() {
        long j = this._totalVariance100.get();
        if (this._count.get() > 1) {
            return (j / 100.0d) / (r2 - 1);
        }
        return 0.0d;
    }

    public double getStdDev() {
        return Math.sqrt(getVariance());
    }
}
