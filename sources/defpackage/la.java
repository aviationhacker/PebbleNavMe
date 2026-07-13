package defpackage;

import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.hash.AbstractStreamingHashFunction;
import com.google.common.hash.HashCode;
import com.google.common.hash.Hasher;
import java.io.Serializable;
import java.util.zip.Checksum;

/* JADX INFO: loaded from: classes.dex */
public final class la extends AbstractStreamingHashFunction implements Serializable {
    private static final long serialVersionUID = 0;
    private final Supplier<? extends Checksum> a;
    private final int b;
    private final String c;

    public la(Supplier<? extends Checksum> supplier, int i, String str) {
        this.a = (Supplier) Preconditions.checkNotNull(supplier);
        Preconditions.checkArgument(i == 32 || i == 64, "bits (%s) must be either 32 or 64", Integer.valueOf(i));
        this.b = i;
        this.c = (String) Preconditions.checkNotNull(str);
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.b;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new a(this.a.get());
    }

    public String toString() {
        return this.c;
    }

    final class a extends kw {
        private final Checksum b;

        private a(Checksum checksum) {
            this.b = (Checksum) Preconditions.checkNotNull(checksum);
        }

        @Override // defpackage.kw
        protected void a(byte b) {
            this.b.update(b);
        }

        @Override // defpackage.kw
        protected void a(byte[] bArr, int i, int i2) {
            this.b.update(bArr, i, i2);
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            long value = this.b.getValue();
            return la.this.b == 32 ? HashCode.fromInt((int) value) : HashCode.fromLong(value);
        }
    }
}
