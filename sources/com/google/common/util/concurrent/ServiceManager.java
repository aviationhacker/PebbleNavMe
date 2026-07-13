package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.base.Stopwatch;
import com.google.common.collect.Collections2;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSetMultimap;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Multiset;
import com.google.common.collect.Ordering;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.util.concurrent.Monitor;
import com.google.common.util.concurrent.Service;
import defpackage.ly;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class ServiceManager {
    private static final Logger a = Logger.getLogger(ServiceManager.class.getName());
    private static final ly.a<Listener> b = new ly.a<Listener>("healthy()") { // from class: com.google.common.util.concurrent.ServiceManager.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // ly.a
        public void a(Listener listener) {
            listener.healthy();
        }
    };
    private static final ly.a<Listener> c = new ly.a<Listener>("stopped()") { // from class: com.google.common.util.concurrent.ServiceManager.2
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // ly.a
        public void a(Listener listener) {
            listener.stopped();
        }
    };
    private final d d;
    private final ImmutableList<Service> e;

    @Beta
    public static abstract class Listener {
        public void healthy() {
        }

        public void stopped() {
        }

        public void failure(Service service) {
        }
    }

    public ServiceManager(Iterable<? extends Service> iterable) {
        ImmutableList<Service> immutableListCopyOf = ImmutableList.copyOf(iterable);
        if (immutableListCopyOf.isEmpty()) {
            a.log(Level.WARNING, "ServiceManager configured with no services.  Is your application configured properly?", (Throwable) new a());
            immutableListCopyOf = ImmutableList.of(new b());
        }
        this.d = new d(immutableListCopyOf);
        this.e = immutableListCopyOf;
        WeakReference weakReference = new WeakReference(this.d);
        UnmodifiableIterator<Service> it = immutableListCopyOf.iterator();
        while (it.hasNext()) {
            Service next = it.next();
            next.addListener(new c(next, weakReference), MoreExecutors.directExecutor());
            Preconditions.checkArgument(next.state() == Service.State.NEW, "Can only manage NEW services, %s", next);
        }
        this.d.a();
    }

    public void addListener(Listener listener, Executor executor) {
        this.d.a(listener, executor);
    }

    public void addListener(Listener listener) {
        this.d.a(listener, MoreExecutors.directExecutor());
    }

    public ServiceManager startAsync() {
        UnmodifiableIterator<Service> it = this.e.iterator();
        while (it.hasNext()) {
            Service next = it.next();
            Service.State state = next.state();
            Preconditions.checkState(state == Service.State.NEW, "Service %s is %s, cannot start it.", next, state);
        }
        UnmodifiableIterator<Service> it2 = this.e.iterator();
        while (it2.hasNext()) {
            Service next2 = it2.next();
            try {
                this.d.a(next2);
                next2.startAsync();
            } catch (IllegalStateException e) {
                Logger logger = a;
                Level level = Level.WARNING;
                String strValueOf = String.valueOf(next2);
                logger.log(level, new StringBuilder(String.valueOf(strValueOf).length() + 24).append("Unable to start Service ").append(strValueOf).toString(), (Throwable) e);
            }
        }
        return this;
    }

    public void awaitHealthy() {
        this.d.b();
    }

    public void awaitHealthy(long j, TimeUnit timeUnit) {
        this.d.a(j, timeUnit);
    }

    public ServiceManager stopAsync() {
        UnmodifiableIterator<Service> it = this.e.iterator();
        while (it.hasNext()) {
            it.next().stopAsync();
        }
        return this;
    }

    public void awaitStopped() {
        this.d.c();
    }

    public void awaitStopped(long j, TimeUnit timeUnit) {
        this.d.b(j, timeUnit);
    }

    public boolean isHealthy() {
        UnmodifiableIterator<Service> it = this.e.iterator();
        while (it.hasNext()) {
            if (!it.next().isRunning()) {
                return false;
            }
        }
        return true;
    }

    public ImmutableMultimap<Service.State, Service> servicesByState() {
        return this.d.d();
    }

    public ImmutableMap<Service, Long> startupTimes() {
        return this.d.e();
    }

    public String toString() {
        return MoreObjects.toStringHelper((Class<?>) ServiceManager.class).add("services", Collections2.filter(this.e, Predicates.not(Predicates.instanceOf(b.class)))).toString();
    }

    static final class d {

        @GuardedBy("monitor")
        boolean e;

        @GuardedBy("monitor")
        boolean f;
        final int g;
        final Monitor a = new Monitor();

        @GuardedBy("monitor")
        final SetMultimap<Service.State, Service> b = MultimapBuilder.enumKeys(Service.State.class).linkedHashSetValues().build();

        @GuardedBy("monitor")
        final Multiset<Service.State> c = this.b.keys();

        @GuardedBy("monitor")
        final Map<Service, Stopwatch> d = Maps.newIdentityHashMap();
        final Monitor.Guard h = new a();
        final Monitor.Guard i = new b();

        @GuardedBy("monitor")
        final List<ly<Listener>> j = Collections.synchronizedList(new ArrayList());

        final class a extends Monitor.Guard {
            a() {
                super(d.this.a);
            }

            @Override // com.google.common.util.concurrent.Monitor.Guard
            public boolean isSatisfied() {
                return d.this.c.count(Service.State.RUNNING) == d.this.g || d.this.c.contains(Service.State.STOPPING) || d.this.c.contains(Service.State.TERMINATED) || d.this.c.contains(Service.State.FAILED);
            }
        }

        final class b extends Monitor.Guard {
            b() {
                super(d.this.a);
            }

            @Override // com.google.common.util.concurrent.Monitor.Guard
            public boolean isSatisfied() {
                return d.this.c.count(Service.State.TERMINATED) + d.this.c.count(Service.State.FAILED) == d.this.g;
            }
        }

        d(ImmutableCollection<Service> immutableCollection) {
            this.g = immutableCollection.size();
            this.b.putAll(Service.State.NEW, immutableCollection);
        }

        void a(Service service) {
            this.a.enter();
            try {
                if (this.d.get(service) == null) {
                    this.d.put(service, Stopwatch.createStarted());
                }
            } finally {
                this.a.leave();
            }
        }

        void a() {
            this.a.enter();
            try {
                if (!this.f) {
                    this.e = true;
                    return;
                }
                ArrayList arrayListNewArrayList = Lists.newArrayList();
                UnmodifiableIterator<Service> it = d().values().iterator();
                while (it.hasNext()) {
                    Service next = it.next();
                    if (next.state() != Service.State.NEW) {
                        arrayListNewArrayList.add(next);
                    }
                }
                String strValueOf = String.valueOf("Services started transitioning asynchronously before the ServiceManager was constructed: ");
                String strValueOf2 = String.valueOf(arrayListNewArrayList);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 0 + String.valueOf(strValueOf2).length()).append(strValueOf).append(strValueOf2).toString());
            } finally {
                this.a.leave();
            }
        }

        void a(Listener listener, Executor executor) {
            Preconditions.checkNotNull(listener, "listener");
            Preconditions.checkNotNull(executor, "executor");
            this.a.enter();
            try {
                if (!this.i.isSatisfied()) {
                    this.j.add(new ly<>(listener, executor));
                }
            } finally {
                this.a.leave();
            }
        }

        void b() {
            this.a.enterWhenUninterruptibly(this.h);
            try {
                i();
            } finally {
                this.a.leave();
            }
        }

        void a(long j, TimeUnit timeUnit) {
            this.a.enter();
            try {
                if (!this.a.waitForUninterruptibly(this.h, j, timeUnit)) {
                    String strValueOf = String.valueOf("Timeout waiting for the services to become healthy. The following services have not started: ");
                    String strValueOf2 = String.valueOf(Multimaps.filterKeys((SetMultimap) this.b, Predicates.in(ImmutableSet.of(Service.State.NEW, Service.State.STARTING))));
                    throw new TimeoutException(new StringBuilder(String.valueOf(strValueOf).length() + 0 + String.valueOf(strValueOf2).length()).append(strValueOf).append(strValueOf2).toString());
                }
                i();
            } finally {
                this.a.leave();
            }
        }

        void c() {
            this.a.enterWhenUninterruptibly(this.i);
            this.a.leave();
        }

        void b(long j, TimeUnit timeUnit) {
            this.a.enter();
            try {
                if (!this.a.waitForUninterruptibly(this.i, j, timeUnit)) {
                    String strValueOf = String.valueOf("Timeout waiting for the services to stop. The following services have not stopped: ");
                    String strValueOf2 = String.valueOf(Multimaps.filterKeys((SetMultimap) this.b, Predicates.not(Predicates.in(EnumSet.of(Service.State.TERMINATED, Service.State.FAILED)))));
                    throw new TimeoutException(new StringBuilder(String.valueOf(strValueOf).length() + 0 + String.valueOf(strValueOf2).length()).append(strValueOf).append(strValueOf2).toString());
                }
            } finally {
                this.a.leave();
            }
        }

        ImmutableMultimap<Service.State, Service> d() {
            ImmutableSetMultimap.Builder builder = ImmutableSetMultimap.builder();
            this.a.enter();
            try {
                for (Map.Entry<Service.State, Service> entry : this.b.entries()) {
                    if (!(entry.getValue() instanceof b)) {
                        builder.put((Map.Entry) entry);
                    }
                }
                this.a.leave();
                return builder.build();
            } catch (Throwable th) {
                this.a.leave();
                throw th;
            }
        }

        ImmutableMap<Service, Long> e() {
            this.a.enter();
            try {
                ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(this.d.size());
                for (Map.Entry<Service, Stopwatch> entry : this.d.entrySet()) {
                    Service key = entry.getKey();
                    Stopwatch value = entry.getValue();
                    if (!value.isRunning() && !(key instanceof b)) {
                        arrayListNewArrayListWithCapacity.add(Maps.immutableEntry(key, Long.valueOf(value.elapsed(TimeUnit.MILLISECONDS))));
                    }
                }
                this.a.leave();
                Collections.sort(arrayListNewArrayListWithCapacity, Ordering.natural().onResultOf(new Function<Map.Entry<Service, Long>, Long>() { // from class: com.google.common.util.concurrent.ServiceManager.d.1
                    @Override // com.google.common.base.Function
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Long apply(Map.Entry<Service, Long> entry2) {
                        return entry2.getValue();
                    }
                }));
                return ImmutableMap.copyOf(arrayListNewArrayListWithCapacity);
            } catch (Throwable th) {
                this.a.leave();
                throw th;
            }
        }

        void a(Service service, Service.State state, Service.State state2) {
            Preconditions.checkNotNull(service);
            Preconditions.checkArgument(state != state2);
            this.a.enter();
            try {
                this.f = true;
                if (this.e) {
                    Preconditions.checkState(this.b.remove(state, service), "Service %s not at the expected location in the state map %s", service, state);
                    Preconditions.checkState(this.b.put(state2, service), "Service %s in the state map unexpectedly at %s", service, state2);
                    Stopwatch stopwatchCreateStarted = this.d.get(service);
                    if (stopwatchCreateStarted == null) {
                        stopwatchCreateStarted = Stopwatch.createStarted();
                        this.d.put(service, stopwatchCreateStarted);
                    }
                    if (state2.compareTo(Service.State.RUNNING) >= 0 && stopwatchCreateStarted.isRunning()) {
                        stopwatchCreateStarted.stop();
                        if (!(service instanceof b)) {
                            ServiceManager.a.log(Level.FINE, "Started {0} in {1}.", new Object[]{service, stopwatchCreateStarted});
                        }
                    }
                    if (state2 == Service.State.FAILED) {
                        b(service);
                    }
                    if (this.c.count(Service.State.RUNNING) == this.g) {
                        g();
                    } else if (this.c.count(Service.State.TERMINATED) + this.c.count(Service.State.FAILED) == this.g) {
                        f();
                    }
                }
            } finally {
                this.a.leave();
                h();
            }
        }

        @GuardedBy("monitor")
        void f() {
            ServiceManager.c.a((Iterable) this.j);
        }

        @GuardedBy("monitor")
        void g() {
            ServiceManager.b.a((Iterable) this.j);
        }

        @GuardedBy("monitor")
        void b(final Service service) {
            String strValueOf = String.valueOf(service);
            new ly.a<Listener>(new StringBuilder(String.valueOf(strValueOf).length() + 18).append("failed({service=").append(strValueOf).append("})").toString()) { // from class: com.google.common.util.concurrent.ServiceManager.d.2
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // ly.a
                public void a(Listener listener) {
                    listener.failure(service);
                }
            }.a(this.j);
        }

        void h() {
            Preconditions.checkState(!this.a.isOccupiedByCurrentThread(), "It is incorrect to execute listeners with the monitor held.");
            for (int i = 0; i < this.j.size(); i++) {
                this.j.get(i).a();
            }
        }

        @GuardedBy("monitor")
        void i() {
            if (this.c.count(Service.State.RUNNING) != this.g) {
                String strValueOf = String.valueOf(Multimaps.filterKeys((SetMultimap) this.b, Predicates.not(Predicates.equalTo(Service.State.RUNNING))));
                throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 79).append("Expected to be healthy after starting. The following services are not running: ").append(strValueOf).toString());
            }
        }
    }

    static final class c extends Service.Listener {
        final Service a;
        final WeakReference<d> b;

        c(Service service, WeakReference<d> weakReference) {
            this.a = service;
            this.b = weakReference;
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void starting() {
            d dVar = this.b.get();
            if (dVar != null) {
                dVar.a(this.a, Service.State.NEW, Service.State.STARTING);
                if (!(this.a instanceof b)) {
                    ServiceManager.a.log(Level.FINE, "Starting {0}.", this.a);
                }
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void running() {
            d dVar = this.b.get();
            if (dVar != null) {
                dVar.a(this.a, Service.State.STARTING, Service.State.RUNNING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void stopping(Service.State state) {
            d dVar = this.b.get();
            if (dVar != null) {
                dVar.a(this.a, state, Service.State.STOPPING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void terminated(Service.State state) {
            d dVar = this.b.get();
            if (dVar != null) {
                if (!(this.a instanceof b)) {
                    ServiceManager.a.log(Level.FINE, "Service {0} has terminated. Previous state was: {1}", new Object[]{this.a, state});
                }
                dVar.a(this.a, state, Service.State.TERMINATED);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void failed(Service.State state, Throwable th) {
            d dVar = this.b.get();
            if (dVar != null) {
                if (!(this.a instanceof b)) {
                    Logger logger = ServiceManager.a;
                    Level level = Level.SEVERE;
                    String strValueOf = String.valueOf(this.a);
                    String strValueOf2 = String.valueOf(state);
                    logger.log(level, new StringBuilder(String.valueOf(strValueOf).length() + 34 + String.valueOf(strValueOf2).length()).append("Service ").append(strValueOf).append(" has failed in the ").append(strValueOf2).append(" state.").toString(), th);
                }
                dVar.a(this.a, state, Service.State.FAILED);
            }
        }
    }

    static final class b extends AbstractService {
        private b() {
        }

        @Override // com.google.common.util.concurrent.AbstractService
        protected void doStart() {
            notifyStarted();
        }

        @Override // com.google.common.util.concurrent.AbstractService
        protected void doStop() {
            notifyStopped();
        }
    }

    static final class a extends Throwable {
        private a() {
        }
    }
}
