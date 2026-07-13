package defpackage;

import com.google.common.annotations.GwtCompatible;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class lz {
    public static boolean a(@Nullable Throwable th, Class<? extends Throwable> cls) {
        return cls.isInstance(th);
    }
}
