package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Supplier;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class gz {
    private static final Supplier<gy> a;

    static {
        Supplier<gy> supplier;
        try {
            new ha();
            supplier = new Supplier<gy>() { // from class: gz.1
                @Override // com.google.common.base.Supplier
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public gy get() {
                    return new ha();
                }
            };
        } catch (Throwable th) {
            supplier = new Supplier<gy>() { // from class: gz.2
                @Override // com.google.common.base.Supplier
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public gy get() {
                    return new a();
                }
            };
        }
        a = supplier;
    }

    public static gy a() {
        return a.get();
    }

    static final class a extends AtomicLong implements gy {
        private a() {
        }

        @Override // defpackage.gy
        public void a() {
            getAndIncrement();
        }

        @Override // defpackage.gy
        public void a(long j) {
            getAndAdd(j);
        }

        @Override // defpackage.gy
        public long b() {
            return get();
        }
    }
}
