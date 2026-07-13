package org.apache.commons.lang3.concurrent;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class MultiBackgroundInitializer extends BackgroundInitializer<MultiBackgroundInitializerResults> {
    private final Map<String, BackgroundInitializer<?>> a;

    public MultiBackgroundInitializer() {
        this.a = new HashMap();
    }

    public MultiBackgroundInitializer(ExecutorService executorService) {
        super(executorService);
        this.a = new HashMap();
    }

    public void addInitializer(String str, BackgroundInitializer<?> backgroundInitializer) {
        if (str == null) {
            throw new IllegalArgumentException("Name of child initializer must not be null!");
        }
        if (backgroundInitializer == null) {
            throw new IllegalArgumentException("Child initializer must not be null!");
        }
        synchronized (this) {
            if (isStarted()) {
                throw new IllegalStateException("addInitializer() must not be called after start()!");
            }
            this.a.put(str, backgroundInitializer);
        }
    }

    @Override // org.apache.commons.lang3.concurrent.BackgroundInitializer
    protected int getTaskCount() {
        int taskCount = 1;
        Iterator<BackgroundInitializer<?>> it = this.a.values().iterator();
        while (true) {
            int i = taskCount;
            if (it.hasNext()) {
                taskCount = it.next().getTaskCount() + i;
            } else {
                return i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.lang3.concurrent.BackgroundInitializer
    public MultiBackgroundInitializerResults initialize() {
        HashMap map;
        synchronized (this) {
            map = new HashMap(this.a);
        }
        ExecutorService activeExecutor = getActiveExecutor();
        for (BackgroundInitializer backgroundInitializer : map.values()) {
            if (backgroundInitializer.getExternalExecutor() == null) {
                backgroundInitializer.setExternalExecutor(activeExecutor);
            }
            backgroundInitializer.start();
        }
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            try {
                map2.put(entry.getKey(), ((BackgroundInitializer) entry.getValue()).get());
            } catch (ConcurrentException e) {
                map3.put(entry.getKey(), e);
            }
        }
        return new MultiBackgroundInitializerResults(map, map2, map3);
    }

    public static class MultiBackgroundInitializerResults {
        private final Map<String, BackgroundInitializer<?>> a;
        private final Map<String, Object> b;
        private final Map<String, ConcurrentException> c;

        private MultiBackgroundInitializerResults(Map<String, BackgroundInitializer<?>> map, Map<String, Object> map2, Map<String, ConcurrentException> map3) {
            this.a = map;
            this.b = map2;
            this.c = map3;
        }

        public BackgroundInitializer<?> getInitializer(String str) {
            return a(str);
        }

        public Object getResultObject(String str) {
            a(str);
            return this.b.get(str);
        }

        public boolean isException(String str) {
            a(str);
            return this.c.containsKey(str);
        }

        public ConcurrentException getException(String str) {
            a(str);
            return this.c.get(str);
        }

        public Set<String> initializerNames() {
            return Collections.unmodifiableSet(this.a.keySet());
        }

        public boolean isSuccessful() {
            return this.c.isEmpty();
        }

        private BackgroundInitializer<?> a(String str) {
            BackgroundInitializer<?> backgroundInitializer = this.a.get(str);
            if (backgroundInitializer == null) {
                throw new NoSuchElementException("No child initializer with name " + str);
            }
            return backgroundInitializer;
        }
    }
}
