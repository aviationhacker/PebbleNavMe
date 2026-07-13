package defpackage;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.eventbus.AllowConcurrentEvents;
import com.google.common.eventbus.EventBus;
import com.google.common.eventbus.SubscriberExceptionContext;
import com.google.j2objc.annotations.Weak;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class ku {

    @VisibleForTesting
    final Object a;

    @Weak
    private EventBus b;
    private final Method c;
    private final Executor d;

    static ku a(EventBus eventBus, Object obj, Method method) {
        return a(method) ? new ku(eventBus, obj, method) : new a(eventBus, obj, method);
    }

    private ku(EventBus eventBus, Object obj, Method method) {
        this.b = eventBus;
        this.a = Preconditions.checkNotNull(obj);
        this.c = method;
        method.setAccessible(true);
        this.d = eventBus.a();
    }

    final void a(final Object obj) {
        this.d.execute(new Runnable() { // from class: ku.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ku.this.b(obj);
                } catch (InvocationTargetException e) {
                    ku.this.b.a(e.getCause(), ku.this.c(obj));
                }
            }
        });
    }

    @VisibleForTesting
    void b(Object obj) throws InvocationTargetException {
        try {
            this.c.invoke(this.a, Preconditions.checkNotNull(obj));
        } catch (IllegalAccessException e) {
            String strValueOf = String.valueOf(obj);
            throw new Error(new StringBuilder(String.valueOf(strValueOf).length() + 28).append("Method became inaccessible: ").append(strValueOf).toString(), e);
        } catch (IllegalArgumentException e2) {
            String strValueOf2 = String.valueOf(obj);
            throw new Error(new StringBuilder(String.valueOf(strValueOf2).length() + 33).append("Method rejected target/argument: ").append(strValueOf2).toString(), e2);
        } catch (InvocationTargetException e3) {
            if (e3.getCause() instanceof Error) {
                throw ((Error) e3.getCause());
            }
            throw e3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SubscriberExceptionContext c(Object obj) {
        return new SubscriberExceptionContext(this.b, obj, this.a, this.c);
    }

    public final int hashCode() {
        return ((this.c.hashCode() + 31) * 31) + System.identityHashCode(this.a);
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ku)) {
            return false;
        }
        ku kuVar = (ku) obj;
        return this.a == kuVar.a && this.c.equals(kuVar.c);
    }

    private static boolean a(Method method) {
        return method.getAnnotation(AllowConcurrentEvents.class) != null;
    }

    @VisibleForTesting
    static final class a extends ku {
        private a(EventBus eventBus, Object obj, Method method) {
            super(eventBus, obj, method);
        }

        @Override // defpackage.ku
        void b(Object obj) {
            synchronized (this) {
                super.b(obj);
            }
        }
    }
}
