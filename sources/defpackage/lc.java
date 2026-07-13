package defpackage;

import com.google.common.base.Preconditions;
import com.google.common.hash.AbstractStreamingHashFunction;
import com.google.common.hash.HashCode;
import com.google.common.hash.Hasher;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class lc extends AbstractStreamingHashFunction implements Serializable {
    private final MessageDigest a;
    private final int b;
    private final boolean c;
    private final String d;

    public lc(String str, String str2) {
        this.a = a(str);
        this.b = this.a.getDigestLength();
        this.d = (String) Preconditions.checkNotNull(str2);
        this.c = a();
    }

    lc(String str, int i, String str2) {
        this.d = (String) Preconditions.checkNotNull(str2);
        this.a = a(str);
        int digestLength = this.a.getDigestLength();
        Preconditions.checkArgument(i >= 4 && i <= digestLength, "bytes (%s) must be >= 4 and < %s", Integer.valueOf(i), Integer.valueOf(digestLength));
        this.b = i;
        this.c = a();
    }

    private boolean a() {
        try {
            this.a.clone();
            return true;
        } catch (CloneNotSupportedException e) {
            return false;
        }
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.b * 8;
    }

    public String toString() {
        return this.d;
    }

    private static MessageDigest a(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        if (this.c) {
            try {
                return new a((MessageDigest) this.a.clone(), this.b);
            } catch (CloneNotSupportedException e) {
            }
        }
        return new a(a(this.a.getAlgorithm()), this.b);
    }

    static final class b implements Serializable {
        private static final long serialVersionUID = 0;
        private final String a;
        private final int b;
        private final String c;

        private b(String str, int i, String str2) {
            this.a = str;
            this.b = i;
            this.c = str2;
        }

        private Object readResolve() {
            return new lc(this.a, this.b, this.c);
        }
    }

    Object writeReplace() {
        return new b(this.a.getAlgorithm(), this.b, this.d);
    }

    static final class a extends kw {
        private final MessageDigest a;
        private final int b;
        private boolean c;

        private a(MessageDigest messageDigest, int i) {
            this.a = messageDigest;
            this.b = i;
        }

        @Override // defpackage.kw
        protected void a(byte b) {
            a();
            this.a.update(b);
        }

        @Override // defpackage.kw
        protected void a(byte[] bArr) {
            a();
            this.a.update(bArr);
        }

        @Override // defpackage.kw
        protected void a(byte[] bArr, int i, int i2) {
            a();
            this.a.update(bArr, i, i2);
        }

        private void a() {
            Preconditions.checkState(!this.c, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            a();
            this.c = true;
            if (this.b == this.a.getDigestLength()) {
                return HashCode.a(this.a.digest());
            }
            return HashCode.a(Arrays.copyOf(this.a.digest(), this.b));
        }
    }
}
