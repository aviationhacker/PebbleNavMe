package defpackage;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.common.collect.HashMultimap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.eventbus.EventBus;
import com.google.common.eventbus.Subscribe;
import com.google.common.reflect.TypeToken;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.j2objc.annotations.Weak;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class kv {
    private static final LoadingCache<Class<?>, ImmutableList<Method>> c = CacheBuilder.newBuilder().weakKeys().build(new CacheLoader<Class<?>, ImmutableList<Method>>() { // from class: kv.1
        @Override // com.google.common.cache.CacheLoader
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ImmutableList<Method> load(Class<?> cls) {
            return kv.d(cls);
        }
    });
    private static final LoadingCache<Class<?>, ImmutableSet<Class<?>>> d = CacheBuilder.newBuilder().weakKeys().build(new CacheLoader<Class<?>, ImmutableSet<Class<?>>>() { // from class: kv.2
        @Override // com.google.common.cache.CacheLoader
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ImmutableSet<Class<?>> load(Class<?> cls) {
            return ImmutableSet.copyOf((Collection) TypeToken.of((Class) cls).getTypes().rawTypes());
        }
    });
    private final ConcurrentMap<Class<?>, CopyOnWriteArraySet<ku>> a = Maps.newConcurrentMap();

    @Weak
    private final EventBus b;

    public kv(EventBus eventBus) {
        this.b = (EventBus) Preconditions.checkNotNull(eventBus);
    }

    public void a(Object obj) {
        CopyOnWriteArraySet<ku> copyOnWriteArraySet;
        for (Map.Entry<Class<?>, Collection<ku>> entry : d(obj).asMap().entrySet()) {
            Class<?> key = entry.getKey();
            Collection<ku> value = entry.getValue();
            CopyOnWriteArraySet<ku> copyOnWriteArraySet2 = this.a.get(key);
            if (copyOnWriteArraySet2 == null) {
                CopyOnWriteArraySet<ku> copyOnWriteArraySet3 = new CopyOnWriteArraySet<>();
                copyOnWriteArraySet = (CopyOnWriteArraySet) MoreObjects.firstNonNull(this.a.putIfAbsent(key, copyOnWriteArraySet3), copyOnWriteArraySet3);
            } else {
                copyOnWriteArraySet = copyOnWriteArraySet2;
            }
            copyOnWriteArraySet.addAll(value);
        }
    }

    public void b(Object obj) {
        for (Map.Entry<Class<?>, Collection<ku>> entry : d(obj).asMap().entrySet()) {
            Class<?> key = entry.getKey();
            Collection<ku> value = entry.getValue();
            CopyOnWriteArraySet<ku> copyOnWriteArraySet = this.a.get(key);
            if (copyOnWriteArraySet == null || !copyOnWriteArraySet.removeAll(value)) {
                String strValueOf = String.valueOf(obj);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 65).append("missing event subscriber for an annotated method. Is ").append(strValueOf).append(" registered?").toString());
            }
        }
    }

    public Iterator<ku> c(Object obj) {
        ImmutableSet<Class<?>> immutableSetA = a(obj.getClass());
        ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(immutableSetA.size());
        UnmodifiableIterator<Class<?>> it = immutableSetA.iterator();
        while (it.hasNext()) {
            CopyOnWriteArraySet<ku> copyOnWriteArraySet = this.a.get(it.next());
            if (copyOnWriteArraySet != null) {
                arrayListNewArrayListWithCapacity.add(copyOnWriteArraySet.iterator());
            }
        }
        return Iterators.concat(arrayListNewArrayListWithCapacity.iterator());
    }

    private Multimap<Class<?>, ku> d(Object obj) {
        HashMultimap hashMultimapCreate = HashMultimap.create();
        UnmodifiableIterator<Method> it = c(obj.getClass()).iterator();
        while (it.hasNext()) {
            Method next = it.next();
            hashMultimapCreate.put(next.getParameterTypes()[0], ku.a(this.b, obj, next));
        }
        return hashMultimapCreate;
    }

    private static ImmutableList<Method> c(Class<?> cls) {
        return c.getUnchecked(cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImmutableList<Method> d(Class<?> cls) {
        Set setRawTypes = TypeToken.of((Class) cls).getTypes().rawTypes();
        HashMap mapNewHashMap = Maps.newHashMap();
        Iterator it = setRawTypes.iterator();
        while (it.hasNext()) {
            for (Method method : ((Class) it.next()).getDeclaredMethods()) {
                if (method.isAnnotationPresent(Subscribe.class) && !method.isSynthetic()) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    Preconditions.checkArgument(parameterTypes.length == 1, "Method %s has @Subscribe annotation but has %s parameters.Subscriber methods must have exactly 1 parameter.", method, Integer.valueOf(parameterTypes.length));
                    a aVar = new a(method);
                    if (!mapNewHashMap.containsKey(aVar)) {
                        mapNewHashMap.put(aVar, method);
                    }
                }
            }
        }
        return ImmutableList.copyOf(mapNewHashMap.values());
    }

    @VisibleForTesting
    static ImmutableSet<Class<?>> a(Class<?> cls) {
        try {
            return d.getUnchecked(cls);
        } catch (UncheckedExecutionException e) {
            throw Throwables.propagate(e.getCause());
        }
    }

    static final class a {
        private final String a;
        private final List<Class<?>> b;

        a(Method method) {
            this.a = method.getName();
            this.b = Arrays.asList(method.getParameterTypes());
        }

        public int hashCode() {
            return Objects.hashCode(this.a, this.b);
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b.equals(aVar.b);
        }
    }
}
