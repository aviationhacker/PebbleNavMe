package com.google.common.eventbus;

import com.google.common.annotations.Beta;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.kt;
import defpackage.ku;
import defpackage.kv;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
@Beta
public class EventBus {
    private static final Logger a = Logger.getLogger(EventBus.class.getName());
    private final String b;
    private final Executor c;
    private final SubscriberExceptionHandler d;
    private final kv e;
    private final kt f;

    public EventBus() {
        this("default");
    }

    public EventBus(String str) {
        this(str, MoreExecutors.directExecutor(), kt.a(), a.a);
    }

    public EventBus(SubscriberExceptionHandler subscriberExceptionHandler) {
        this("default", MoreExecutors.directExecutor(), kt.a(), subscriberExceptionHandler);
    }

    EventBus(String str, Executor executor, kt ktVar, SubscriberExceptionHandler subscriberExceptionHandler) {
        this.e = new kv(this);
        this.b = (String) Preconditions.checkNotNull(str);
        this.c = (Executor) Preconditions.checkNotNull(executor);
        this.f = (kt) Preconditions.checkNotNull(ktVar);
        this.d = (SubscriberExceptionHandler) Preconditions.checkNotNull(subscriberExceptionHandler);
    }

    public final String identifier() {
        return this.b;
    }

    public final Executor a() {
        return this.c;
    }

    public void a(Throwable th, SubscriberExceptionContext subscriberExceptionContext) {
        Preconditions.checkNotNull(th);
        Preconditions.checkNotNull(subscriberExceptionContext);
        try {
            this.d.handleException(th, subscriberExceptionContext);
        } catch (Throwable th2) {
            a.log(Level.SEVERE, String.format(Locale.ROOT, "Exception %s thrown while handling exception: %s", th2, th), th2);
        }
    }

    public void register(Object obj) {
        this.e.a(obj);
    }

    public void unregister(Object obj) {
        this.e.b(obj);
    }

    public void post(Object obj) {
        Iterator<ku> itC = this.e.c(obj);
        if (itC.hasNext()) {
            this.f.a(obj, itC);
        } else if (!(obj instanceof DeadEvent)) {
            post(new DeadEvent(this, obj));
        }
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).addValue(this.b).toString();
    }

    static final class a implements SubscriberExceptionHandler {
        static final a a = new a();

        a() {
        }

        @Override // com.google.common.eventbus.SubscriberExceptionHandler
        public void handleException(Throwable th, SubscriberExceptionContext subscriberExceptionContext) {
            Logger loggerA = a(subscriberExceptionContext);
            if (loggerA.isLoggable(Level.SEVERE)) {
                loggerA.log(Level.SEVERE, b(subscriberExceptionContext), th);
            }
        }

        private static Logger a(SubscriberExceptionContext subscriberExceptionContext) {
            String strValueOf = String.valueOf(EventBus.class.getName());
            String strIdentifier = subscriberExceptionContext.getEventBus().identifier();
            return Logger.getLogger(new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(strIdentifier).length()).append(strValueOf).append(".").append(strIdentifier).toString());
        }

        private static String b(SubscriberExceptionContext subscriberExceptionContext) {
            Method subscriberMethod = subscriberExceptionContext.getSubscriberMethod();
            String strValueOf = String.valueOf(subscriberMethod.getName());
            String strValueOf2 = String.valueOf(subscriberMethod.getParameterTypes()[0].getName());
            String strValueOf3 = String.valueOf(subscriberExceptionContext.getSubscriber());
            String strValueOf4 = String.valueOf(subscriberExceptionContext.getEvent());
            return new StringBuilder(String.valueOf(strValueOf).length() + 80 + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length() + String.valueOf(strValueOf4).length()).append("Exception thrown by subscriber method ").append(strValueOf).append("(").append(strValueOf2).append(")").append(" on subscriber ").append(strValueOf3).append(" when dispatching event: ").append(strValueOf4).toString();
        }
    }
}
