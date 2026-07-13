package defpackage;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class ks {
    private static final ThreadLocal<char[]> a = new ThreadLocal<char[]>() { // from class: ks.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public char[] initialValue() {
            return new char[1024];
        }
    };

    public static char[] a() {
        return a.get();
    }
}
