package Catalano.Core.Concurrent;

import defpackage.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public class MulticoreExecutor {
    private static final int a = Runtime.getRuntime().availableProcessors();
    private static ThreadPoolExecutor b;

    static {
        b = null;
        if (a > 1) {
            b = (ThreadPoolExecutor) Executors.newFixedThreadPool(a, new a());
        }
    }

    public static int getThreadPoolSize() {
        return a;
    }

    public static <T> List<T> run(Collection<? extends Callable<T>> collection) {
        ArrayList arrayList = new ArrayList();
        if (b == null) {
            Iterator<? extends Callable<T>> it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().call());
            }
        } else if (b.getActiveCount() < a) {
            Iterator<Future<T>> it2 = b.invokeAll(collection).iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().get());
            }
        } else {
            Iterator<? extends Callable<T>> it3 = collection.iterator();
            while (it3.hasNext()) {
                arrayList.add(it3.next().call());
            }
        }
        return arrayList;
    }

    public static void shutdown() {
        if (b != null) {
            b.shutdown();
        }
    }
}
