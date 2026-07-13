package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;
import java.util.BitSet;
import java.util.Deque;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible(emulated = true)
public abstract class BinaryTreeTraverser<T> extends TreeTraverser<T> {
    public abstract Optional<T> leftChild(T t);

    public abstract Optional<T> rightChild(T t);

    @Override // com.google.common.collect.TreeTraverser
    public final Iterable<T> children(final T t) {
        Preconditions.checkNotNull(t);
        return new FluentIterable<T>() { // from class: com.google.common.collect.BinaryTreeTraverser.1
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return new AbstractIterator<T>() { // from class: com.google.common.collect.BinaryTreeTraverser.1.1
                    boolean a;
                    boolean b;

                    /* JADX INFO: Access modifiers changed from: protected */
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // com.google.common.collect.AbstractIterator
                    public T computeNext() {
                        if (!this.a) {
                            this.a = true;
                            Optional optionalLeftChild = BinaryTreeTraverser.this.leftChild(t);
                            if (optionalLeftChild.isPresent()) {
                                return (T) optionalLeftChild.get();
                            }
                        }
                        if (!this.b) {
                            this.b = true;
                            Optional optionalRightChild = BinaryTreeTraverser.this.rightChild(t);
                            if (optionalRightChild.isPresent()) {
                                return (T) optionalRightChild.get();
                            }
                        }
                        return endOfData();
                    }
                };
            }
        };
    }

    public final FluentIterable<T> inOrderTraversal(final T t) {
        Preconditions.checkNotNull(t);
        return new FluentIterable<T>() { // from class: com.google.common.collect.BinaryTreeTraverser.2
            @Override // java.lang.Iterable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public UnmodifiableIterator<T> iterator() {
                return new a(t);
            }
        };
    }

    final class a extends AbstractIterator<T> {
        private final Deque<T> b = new ArrayDeque();
        private final BitSet c = new BitSet();

        a(T t) {
            this.b.addLast(t);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractIterator
        public T computeNext() {
            while (!this.b.isEmpty()) {
                T last = this.b.getLast();
                if (this.c.get(this.b.size() - 1)) {
                    this.b.removeLast();
                    this.c.clear(this.b.size());
                    BinaryTreeTraverser.b(this.b, BinaryTreeTraverser.this.rightChild(last));
                    return last;
                }
                this.c.set(this.b.size() - 1);
                BinaryTreeTraverser.b(this.b, BinaryTreeTraverser.this.leftChild(last));
            }
            return endOfData();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void b(Deque<T> deque, Optional<T> optional) {
        if (optional.isPresent()) {
            deque.addLast(optional.get());
        }
    }
}
