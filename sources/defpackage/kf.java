package defpackage;

import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public interface kf<T> extends Iterable<T> {
    Comparator<? super T> comparator();
}
