package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSetMultimap;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public class ij extends ImmutableSetMultimap<Object, Object> {
    public static final ij a = new ij();
    private static final long serialVersionUID = 0;

    private ij() {
        super(ImmutableMap.of(), 0, null);
    }

    private Object readResolve() {
        return a;
    }
}
