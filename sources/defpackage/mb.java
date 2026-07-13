package defpackage;

import com.google.common.math.LongMath;
import com.google.common.util.concurrent.RateLimiter;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class mb extends RateLimiter {
    double a;
    double b;
    double c;
    private long d;

    abstract void a(double d, double d2);

    abstract double b();

    abstract long b(double d, double d2);

    public static final class b extends mb {
        private final long d;
        private double e;
        private double f;
        private double g;

        public b(RateLimiter.a aVar, long j, TimeUnit timeUnit, double d) {
            super(aVar);
            this.d = timeUnit.toMicros(j);
            this.g = d;
        }

        @Override // defpackage.mb
        void a(double d, double d2) {
            double d3 = this.b;
            double d4 = this.g * d2;
            this.f = (0.5d * this.d) / d2;
            this.b = this.f + ((2.0d * this.d) / (d2 + d4));
            this.e = (d4 - d2) / (this.b - this.f);
            if (d3 == Double.POSITIVE_INFINITY) {
                this.a = 0.0d;
            } else {
                this.a = d3 == 0.0d ? this.b : (this.a * this.b) / d3;
            }
        }

        @Override // defpackage.mb
        long b(double d, double d2) {
            double d3 = d - this.f;
            long jA = 0;
            if (d3 > 0.0d) {
                double dMin = Math.min(d3, d2);
                jA = (long) (((a(d3) + a(d3 - dMin)) * dMin) / 2.0d);
                d2 -= dMin;
            }
            return (long) (jA + (this.c * d2));
        }

        private double a(double d) {
            return this.c + (this.e * d);
        }

        @Override // defpackage.mb
        double b() {
            return this.d / this.b;
        }
    }

    public static final class a extends mb {
        final double d;

        public a(RateLimiter.a aVar, double d) {
            super(aVar);
            this.d = d;
        }

        @Override // defpackage.mb
        void a(double d, double d2) {
            double d3 = this.b;
            this.b = this.d * d;
            if (d3 == Double.POSITIVE_INFINITY) {
                this.a = this.b;
            } else {
                this.a = d3 != 0.0d ? (this.a * this.b) / d3 : 0.0d;
            }
        }

        @Override // defpackage.mb
        long b(double d, double d2) {
            return 0L;
        }

        @Override // defpackage.mb
        double b() {
            return this.c;
        }
    }

    private mb(RateLimiter.a aVar) {
        super(aVar);
        this.d = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.util.concurrent.RateLimiter
    protected final void a(double d, long j) {
        b(j);
        double micros = TimeUnit.SECONDS.toMicros(1L) / d;
        this.c = micros;
        a(d, micros);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.util.concurrent.RateLimiter
    protected final double a() {
        return TimeUnit.SECONDS.toMicros(1L) / this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.util.concurrent.RateLimiter
    protected final long a(long j) {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.util.concurrent.RateLimiter
    protected final long b(int i, long j) {
        b(j);
        long j2 = this.d;
        double dMin = Math.min(i, this.a);
        try {
            this.d = LongMath.checkedAdd(this.d, ((long) ((((double) i) - dMin) * this.c)) + b(this.a, dMin));
        } catch (ArithmeticException e) {
            this.d = Long.MAX_VALUE;
        }
        this.a -= dMin;
        return j2;
    }

    void b(long j) {
        if (j > this.d) {
            this.a = Math.min(this.b, this.a + ((j - this.d) / b()));
            this.d = j;
        }
    }
}
