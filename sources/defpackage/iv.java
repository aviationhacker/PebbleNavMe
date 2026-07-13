package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.primitives.Ints;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class iv {
    private static int a = Ints.MAX_POWER_OF_TWO;

    public static int a(int i) {
        return 461845907 * Integer.rotateLeft((-862048943) * i, 15);
    }

    public static int a(@Nullable Object obj) {
        return a(obj == null ? 0 : obj.hashCode());
    }

    public static int a(int i, double d) {
        int iMax = Math.max(i, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax > ((int) (((double) iHighestOneBit) * d))) {
            int i2 = iHighestOneBit << 1;
            if (i2 <= 0) {
                return a;
            }
            return i2;
        }
        return iHighestOneBit;
    }

    public static boolean a(int i, int i2, double d) {
        return ((double) i) > ((double) i2) * d && i2 < a;
    }
}
