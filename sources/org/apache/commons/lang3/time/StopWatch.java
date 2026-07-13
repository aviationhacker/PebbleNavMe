package org.apache.commons.lang3.time;

/* JADX INFO: loaded from: classes.dex */
public class StopWatch {
    private int a = 0;
    private int b = 10;
    private long c;
    private long d;
    private long e;

    public void start() {
        if (this.a == 2) {
            throw new IllegalStateException("Stopwatch must be reset before being restarted. ");
        }
        if (this.a != 0) {
            throw new IllegalStateException("Stopwatch already started. ");
        }
        this.c = System.nanoTime();
        this.d = System.currentTimeMillis();
        this.a = 1;
    }

    public void stop() {
        if (this.a != 1 && this.a != 3) {
            throw new IllegalStateException("Stopwatch is not running. ");
        }
        if (this.a == 1) {
            this.e = System.nanoTime();
        }
        this.a = 2;
    }

    public void reset() {
        this.a = 0;
        this.b = 10;
    }

    public void split() {
        if (this.a != 1) {
            throw new IllegalStateException("Stopwatch is not running. ");
        }
        this.e = System.nanoTime();
        this.b = 11;
    }

    public void unsplit() {
        if (this.b != 11) {
            throw new IllegalStateException("Stopwatch has not been split. ");
        }
        this.b = 10;
    }

    public void suspend() {
        if (this.a != 1) {
            throw new IllegalStateException("Stopwatch must be running to suspend. ");
        }
        this.e = System.nanoTime();
        this.a = 3;
    }

    public void resume() {
        if (this.a != 3) {
            throw new IllegalStateException("Stopwatch must be suspended to resume. ");
        }
        this.c += System.nanoTime() - this.e;
        this.a = 1;
    }

    public long getTime() {
        return getNanoTime() / 1000000;
    }

    public long getNanoTime() {
        if (this.a == 2 || this.a == 3) {
            return this.e - this.c;
        }
        if (this.a == 0) {
            return 0L;
        }
        if (this.a == 1) {
            return System.nanoTime() - this.c;
        }
        throw new RuntimeException("Illegal running state has occured. ");
    }

    public long getSplitTime() {
        return getSplitNanoTime() / 1000000;
    }

    public long getSplitNanoTime() {
        if (this.b != 11) {
            throw new IllegalStateException("Stopwatch must be split to get the split time. ");
        }
        return this.e - this.c;
    }

    public long getStartTime() {
        if (this.a == 0) {
            throw new IllegalStateException("Stopwatch has not been started");
        }
        return this.d;
    }

    public String toString() {
        return DurationFormatUtils.formatDurationHMS(getTime());
    }

    public String toSplitString() {
        return DurationFormatUtils.formatDurationHMS(getSplitTime());
    }
}
