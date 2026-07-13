package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Ordering;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public final class kq extends Ordering<Object> implements Serializable {
    public static final kq a = new kq();
    private static final long serialVersionUID = 0;

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return obj.toString().compareTo(obj2.toString());
    }

    private Object readResolve() {
        return a;
    }

    public String toString() {
        return "Ordering.usingToString()";
    }

    private kq() {
    }
}
