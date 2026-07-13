package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible(emulated = true)
public abstract class TreeTraverser<T> {
    public abstract Iterable<T> children(T t);

    public final FluentIterable<T> preOrderTraversal(final T t) {
        Preconditions.checkNotNull(t);
        return new FluentIterable<T>() { // from class: com.google.common.collect.TreeTraverser.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Iterable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public UnmodifiableIterator<T> iterator() {
                return TreeTraverser.this.a(t);
            }
        };
    }

    UnmodifiableIterator<T> a(T t) {
        return new d(t);
    }

    final class d extends UnmodifiableIterator<T> {
        private final Deque<Iterator<T>> b = new ArrayDeque();

        d(T t) {
            this.b.addLast(Iterators.singletonIterator(Preconditions.checkNotNull(t)));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.b.isEmpty();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.util.Iterator
        public T next() {
            Iterator<T> last = this.b.getLast();
            T t = (T) Preconditions.checkNotNull(last.next());
            if (!last.hasNext()) {
                this.b.removeLast();
            }
            Iterator<T> it = TreeTraverser.this.children(t).iterator();
            if (it.hasNext()) {
                this.b.addLast(it);
            }
            return t;
        }
    }

    public final FluentIterable<T> postOrderTraversal(final T t) {
        Preconditions.checkNotNull(t);
        return new FluentIterable<T>() { // from class: com.google.common.collect.TreeTraverser.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Iterable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public UnmodifiableIterator<T> iterator() {
                return TreeTraverser.this.b(t);
            }
        };
    }

    UnmodifiableIterator<T> b(T t) {
        return new b(t);
    }

    static final class c<T> {
        final T a;
        final Iterator<T> b;

        c(T t, Iterator<T> it) {
            this.a = (T) Preconditions.checkNotNull(t);
            this.b = (Iterator) Preconditions.checkNotNull(it);
        }
    }

    final class b extends AbstractIterator<T> {
        private final ArrayDeque<c<T>> b = new ArrayDeque<>();

        b(T t) {
            this.b.addLast(a(t));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractIterator
        public T computeNext() {
            while (!this.b.isEmpty()) {
                c<T> last = this.b.getLast();
                if (last.b.hasNext()) {
                    this.b.addLast(a(last.b.next()));
                } else {
                    this.b.removeLast();
                    return last.a;
                }
            }
            return endOfData();
        }

        private c<T> a(T t) {
            return new c<>(t, TreeTraverser.this.children(t).iterator());
        }
    }

    public final FluentIterable<T> breadthFirstTraversal(final T t) {
        Preconditions.checkNotNull(t);
        return new FluentIterable<T>() { // from class: com.google.common.collect.TreeTraverser.3
            @Override // java.lang.Iterable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public UnmodifiableIterator<T> iterator() {
                return new a(t);
            }
        };
    }

    final class a extends UnmodifiableIterator<T> implements PeekingIterator<T> {
        private final Queue<T> b = new ArrayDeque();

        a(T t) {
            this.b.add(t);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.b.isEmpty();
        }

        @Override // com.google.common.collect.PeekingIterator
        public T peek() {
            return this.b.element();
        }

        @Override // java.util.Iterator, com.google.common.collect.PeekingIterator
        public T next() {
            T tRemove = this.b.remove();
            Iterables.addAll(this.b, TreeTraverser.this.children(tRemove));
            return tRemove;
        }
    }
}
