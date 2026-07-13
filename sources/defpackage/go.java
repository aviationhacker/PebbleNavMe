package defpackage;

import com.google.android.gms.internal.zzrx;
import com.google.android.gms.internal.zzrz;
import com.google.android.gms.internal.zzse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class go implements Cloneable {
    private zzrz<?, ?> a;
    private Object b;
    private List<gp> c = new ArrayList();

    private byte[] c() throws zzrx.zza {
        byte[] bArr = new byte[a()];
        a(zzrx.zzC(bArr));
        return bArr;
    }

    public int a() {
        int iA = 0;
        if (this.b != null) {
            return this.a.a(this.b);
        }
        Iterator<gp> it = this.c.iterator();
        while (true) {
            int i = iA;
            if (!it.hasNext()) {
                return i;
            }
            iA = it.next().a() + i;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T a(zzrz<?, T> zzrzVar) {
        if (this.b == null) {
            this.a = zzrzVar;
            this.b = zzrzVar.a(this.c);
            this.c = null;
        } else if (this.a != zzrzVar) {
            throw new IllegalStateException("Tried to getExtension with a differernt Extension.");
        }
        return (T) this.b;
    }

    public void a(zzrx zzrxVar) throws zzrx.zza {
        if (this.b != null) {
            this.a.a(this.b, zzrxVar);
            return;
        }
        Iterator<gp> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().a(zzrxVar);
        }
    }

    public void a(gp gpVar) {
        this.c.add(gpVar);
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final go clone() {
        go goVar = new go();
        try {
            goVar.a = this.a;
            if (this.c == null) {
                goVar.c = null;
            } else {
                goVar.c.addAll(this.c);
            }
            if (this.b != null) {
                if (this.b instanceof zzse) {
                    goVar.b = ((zzse) this.b).clone();
                } else if (this.b instanceof byte[]) {
                    goVar.b = ((byte[]) this.b).clone();
                } else if (this.b instanceof byte[][]) {
                    byte[][] bArr = (byte[][]) this.b;
                    byte[][] bArr2 = new byte[bArr.length][];
                    goVar.b = bArr2;
                    for (int i = 0; i < bArr.length; i++) {
                        bArr2[i] = (byte[]) bArr[i].clone();
                    }
                } else if (this.b instanceof boolean[]) {
                    goVar.b = ((boolean[]) this.b).clone();
                } else if (this.b instanceof int[]) {
                    goVar.b = ((int[]) this.b).clone();
                } else if (this.b instanceof long[]) {
                    goVar.b = ((long[]) this.b).clone();
                } else if (this.b instanceof float[]) {
                    goVar.b = ((float[]) this.b).clone();
                } else if (this.b instanceof double[]) {
                    goVar.b = ((double[]) this.b).clone();
                } else if (this.b instanceof zzse[]) {
                    zzse[] zzseVarArr = (zzse[]) this.b;
                    zzse[] zzseVarArr2 = new zzse[zzseVarArr.length];
                    goVar.b = zzseVarArr2;
                    for (int i2 = 0; i2 < zzseVarArr.length; i2++) {
                        zzseVarArr2[i2] = zzseVarArr[i2].clone();
                    }
                }
            }
            return goVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof go)) {
            return false;
        }
        go goVar = (go) obj;
        if (this.b != null && goVar.b != null) {
            if (this.a == goVar.a) {
                return !this.a.zzbil.isArray() ? this.b.equals(goVar.b) : this.b instanceof byte[] ? Arrays.equals((byte[]) this.b, (byte[]) goVar.b) : this.b instanceof int[] ? Arrays.equals((int[]) this.b, (int[]) goVar.b) : this.b instanceof long[] ? Arrays.equals((long[]) this.b, (long[]) goVar.b) : this.b instanceof float[] ? Arrays.equals((float[]) this.b, (float[]) goVar.b) : this.b instanceof double[] ? Arrays.equals((double[]) this.b, (double[]) goVar.b) : this.b instanceof boolean[] ? Arrays.equals((boolean[]) this.b, (boolean[]) goVar.b) : Arrays.deepEquals((Object[]) this.b, (Object[]) goVar.b);
            }
            return false;
        }
        if (this.c != null && goVar.c != null) {
            return this.c.equals(goVar.c);
        }
        try {
            return Arrays.equals(c(), goVar.c());
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public int hashCode() {
        try {
            return Arrays.hashCode(c()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}
