package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.Lists;
import java.util.Collections;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public class ia<T> extends AbstractIterator<T> {
    private final Queue<T> a;

    public ia(T... tArr) {
        this.a = Lists.newLinkedList();
        Collections.addAll(this.a, tArr);
    }

    public ia(Queue<T> queue) {
        this.a = (Queue) Preconditions.checkNotNull(queue);
    }

    @Override // com.google.common.collect.AbstractIterator
    public T computeNext() {
        return this.a.isEmpty() ? endOfData() : this.a.remove();
    }
}
