package defpackage;

import com.google.android.gms.internal.zzrx;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class gp {
    final int a;
    public final byte[] b;

    public gp(int i, byte[] bArr) {
        this.a = i;
        this.b = bArr;
    }

    int a() {
        return 0 + zzrx.zzlO(this.a) + this.b.length;
    }

    void a(zzrx zzrxVar) throws zzrx.zza {
        zzrxVar.zzlN(this.a);
        zzrxVar.zzF(this.b);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof gp)) {
            return false;
        }
        gp gpVar = (gp) obj;
        return this.a == gpVar.a && Arrays.equals(this.b, gpVar.b);
    }

    public int hashCode() {
        return ((this.a + 527) * 31) + Arrays.hashCode(this.b);
    }
}
