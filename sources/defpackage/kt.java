package defpackage;

import com.google.common.base.Preconditions;
import com.google.common.collect.Queues;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes.dex */
public abstract class kt {
    public abstract void a(Object obj, Iterator<ku> it);

    kt() {
    }

    public static kt a() {
        return new b();
    }

    public static kt b() {
        return new a();
    }

    static final class b extends kt {
        private final ThreadLocal<Queue<a>> a;
        private final ThreadLocal<Boolean> b;

        private b() {
            this.a = new ThreadLocal<Queue<a>>() { // from class: kt.b.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // java.lang.ThreadLocal
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Queue<a> initialValue() {
                    return Queues.newArrayDeque();
                }
            };
            this.b = new ThreadLocal<Boolean>() { // from class: kt.b.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // java.lang.ThreadLocal
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Boolean initialValue() {
                    return false;
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.kt
        public void a(Object obj, Iterator<ku> it) {
            Preconditions.checkNotNull(obj);
            Preconditions.checkNotNull(it);
            Queue<a> queue = this.a.get();
            queue.offer(new a(obj, it));
            if (!this.b.get().booleanValue()) {
                this.b.set(true);
                while (true) {
                    try {
                        a aVarPoll = queue.poll();
                        if (aVarPoll == null) {
                            return;
                        }
                        while (aVarPoll.b.hasNext()) {
                            ((ku) aVarPoll.b.next()).a(aVarPoll.a);
                        }
                    } finally {
                        this.b.remove();
                        this.a.remove();
                    }
                }
            }
        }

        static final class a {
            private final Object a;
            private final Iterator<ku> b;

            private a(Object obj, Iterator<ku> it) {
                this.a = obj;
                this.b = it;
            }
        }
    }

    static final class a extends kt {
        private final ConcurrentLinkedQueue<C0043a> a;

        private a() {
            this.a = Queues.newConcurrentLinkedQueue();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.kt
        public void a(Object obj, Iterator<ku> it) {
            Preconditions.checkNotNull(obj);
            while (it.hasNext()) {
                this.a.add(new C0043a(obj, it.next()));
            }
            while (true) {
                C0043a c0043aPoll = this.a.poll();
                if (c0043aPoll == null) {
                    return;
                } else {
                    c0043aPoll.b.a(c0043aPoll.a);
                }
            }
        }

        /* JADX INFO: renamed from: kt$a$a, reason: collision with other inner class name */
        static final class C0043a {
            private final Object a;
            private final ku b;

            private C0043a(Object obj, ku kuVar) {
                this.a = obj;
                this.b = kuVar;
            }
        }
    }
}
