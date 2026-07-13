package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public class ii extends ImmutableListMultimap<Object, Object> {
    public static final ii a = new ii();
    private static final long serialVersionUID = 0;

    private ii() {
        super(ImmutableMap.of(), 0);
    }

    private Object readResolve() {
        return a;
    }
}
