package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.CharMatcher;
import com.google.common.base.Enums;
import com.google.common.base.Optional;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class gu {
    public static long a() {
        return System.nanoTime();
    }

    public static CharMatcher a(CharMatcher charMatcher) {
        return charMatcher.a();
    }

    public static <T extends Enum<T>> Optional<T> a(Class<T> cls, String str) {
        WeakReference<? extends Enum<?>> weakReference = Enums.a(cls).get(str);
        return weakReference == null ? Optional.absent() : Optional.of(cls.cast(weakReference.get()));
    }
}
