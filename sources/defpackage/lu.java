package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class lu<V, C> extends ls<V, C> {
    protected lu() {
    }

    public abstract class a extends ls<V, C>.a {
        private List<Optional<V>> c;

        protected abstract C a(List<Optional<V>> list);

        protected a(ImmutableCollection<? extends ListenableFuture<? extends V>> immutableCollection, boolean z) {
            super(immutableCollection, z, true);
            this.c = immutableCollection.isEmpty() ? ImmutableList.of() : Lists.newArrayListWithCapacity(immutableCollection.size());
            for (int i = 0; i < immutableCollection.size(); i++) {
                this.c.add(null);
            }
        }

        @Override // ls.a
        final void a(boolean z, int i, @Nullable V v) {
            List<Optional<V>> list = this.c;
            if (list != null) {
                list.set(i, Optional.fromNullable(v));
            } else {
                Preconditions.checkState(z || lu.this.isCancelled(), "Future was done before all dependencies completed");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ls.a
        final void b() {
            List<Optional<V>> list = this.c;
            if (list != null) {
                lu.this.set(a(list));
            } else {
                Preconditions.checkState(lu.this.isDone());
            }
        }

        @Override // ls.a
        void a() {
            super.a();
            this.c = null;
        }
    }
}
