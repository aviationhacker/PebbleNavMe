package defpackage;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.CharMatcher;
import java.util.BitSet;

/* JADX INFO: loaded from: classes.dex */
@GwtIncompatible("no precomputation is done in GWT")
public final class gw extends CharMatcher.u {
    private final char[] a;
    private final boolean b;
    private final long c;

    private gw(char[] cArr, long j, boolean z, String str) {
        super(str);
        this.a = cArr;
        this.c = j;
        this.b = z;
    }

    static int a(int i) {
        return 461845907 * Integer.rotateLeft((-862048943) * i, 15);
    }

    private boolean c(int i) {
        return 1 == ((this.c >> i) & 1);
    }

    @VisibleForTesting
    static int b(int i) {
        if (i == 1) {
            return 2;
        }
        int iHighestOneBit = Integer.highestOneBit(i - 1);
        do {
            iHighestOneBit <<= 1;
        } while (((double) iHighestOneBit) * 0.5d < i);
        return iHighestOneBit;
    }

    public static CharMatcher a(BitSet bitSet, String str) {
        int i;
        long j = 0;
        int iCardinality = bitSet.cardinality();
        boolean z = bitSet.get(0);
        char[] cArr = new char[b(iCardinality)];
        int length = cArr.length - 1;
        int iNextSetBit = bitSet.nextSetBit(0);
        while (true) {
            int i2 = iNextSetBit;
            if (i2 != -1) {
                j |= 1 << i2;
                int iA = a(i2);
                while (true) {
                    i = iA & length;
                    if (cArr[i] == 0) {
                        break;
                    }
                    iA = i + 1;
                }
                cArr[i] = (char) i2;
                iNextSetBit = bitSet.nextSetBit(i2 + 1);
            } else {
                return new gw(cArr, j, z, str);
            }
        }
    }

    @Override // com.google.common.base.CharMatcher
    public boolean matches(char c) {
        if (c == 0) {
            return this.b;
        }
        if (!c(c)) {
            return false;
        }
        int length = this.a.length - 1;
        int iA = a((int) c) & length;
        int i = iA;
        while (this.a[i] != 0) {
            if (this.a[i] == c) {
                return true;
            }
            i = (i + 1) & length;
            if (i == iA) {
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.base.CharMatcher
    public void a(BitSet bitSet) {
        if (this.b) {
            bitSet.set(0);
        }
        for (char c : this.a) {
            if (c != 0) {
                bitSet.set(c);
            }
        }
    }
}
