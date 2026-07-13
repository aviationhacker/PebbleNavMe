package defpackage;

import com.google.common.annotations.GwtCompatible;
import defpackage.hb;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
final class ha extends hb implements gy, Serializable {
    private static final long serialVersionUID = 7249069246863182397L;

    @Override // defpackage.hb
    final long a(long j, long j2) {
        return j + j2;
    }

    @Override // defpackage.gy
    public void a(long j) {
        int length;
        hb.a aVar;
        boolean zA = true;
        hb.a[] aVarArr = this.d;
        if (aVarArr == null) {
            long j2 = this.e;
            if (b(j2, j2 + j)) {
                return;
            }
        }
        int[] iArr = a.get();
        if (iArr != null && aVarArr != null && (length = aVarArr.length) >= 1 && (aVar = aVarArr[(length - 1) & iArr[0]]) != null) {
            long j3 = aVar.a;
            zA = aVar.a(j3, j3 + j);
            if (zA) {
                return;
            }
        }
        a(j, iArr, zA);
    }

    @Override // defpackage.gy
    public void a() {
        a(1L);
    }

    @Override // defpackage.gy
    public long b() {
        long j = this.e;
        hb.a[] aVarArr = this.d;
        if (aVarArr != null) {
            for (hb.a aVar : aVarArr) {
                if (aVar != null) {
                    j += aVar.a;
                }
            }
        }
        return j;
    }

    public String toString() {
        return Long.toString(b());
    }

    @Override // java.lang.Number
    public long longValue() {
        return b();
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) b();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return b();
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return b();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(b());
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f = 0;
        this.d = null;
        this.e = objectInputStream.readLong();
    }
}
