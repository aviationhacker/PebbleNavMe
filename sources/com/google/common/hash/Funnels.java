package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.io.OutputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@CheckReturnValue
public final class Funnels {
    private Funnels() {
    }

    public static Funnel<byte[]> byteArrayFunnel() {
        return a.INSTANCE;
    }

    enum a implements Funnel<byte[]> {
        INSTANCE;

        @Override // com.google.common.hash.Funnel
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void funnel(byte[] bArr, PrimitiveSink primitiveSink) {
            primitiveSink.putBytes(bArr);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.byteArrayFunnel()";
        }
    }

    public static Funnel<CharSequence> unencodedCharsFunnel() {
        return g.INSTANCE;
    }

    enum g implements Funnel<CharSequence> {
        INSTANCE;

        @Override // com.google.common.hash.Funnel
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void funnel(CharSequence charSequence, PrimitiveSink primitiveSink) {
            primitiveSink.putUnencodedChars(charSequence);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.unencodedCharsFunnel()";
        }
    }

    public static Funnel<CharSequence> stringFunnel(Charset charset) {
        return new f(charset);
    }

    static class f implements Funnel<CharSequence>, Serializable {
        private final Charset a;

        f(Charset charset) {
            this.a = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.hash.Funnel
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void funnel(CharSequence charSequence, PrimitiveSink primitiveSink) {
            primitiveSink.putString(charSequence, this.a);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a.name());
            return new StringBuilder(String.valueOf(strValueOf).length() + 22).append("Funnels.stringFunnel(").append(strValueOf).append(")").toString();
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof f) {
                return this.a.equals(((f) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return f.class.hashCode() ^ this.a.hashCode();
        }

        Object writeReplace() {
            return new a(this.a);
        }

        static class a implements Serializable {
            private static final long serialVersionUID = 0;
            private final String a;

            a(Charset charset) {
                this.a = charset.name();
            }

            private Object readResolve() {
                return Funnels.stringFunnel(Charset.forName(this.a));
            }
        }
    }

    public static Funnel<Integer> integerFunnel() {
        return b.INSTANCE;
    }

    enum b implements Funnel<Integer> {
        INSTANCE;

        @Override // com.google.common.hash.Funnel
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void funnel(Integer num, PrimitiveSink primitiveSink) {
            primitiveSink.putInt(num.intValue());
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.integerFunnel()";
        }
    }

    public static <E> Funnel<Iterable<? extends E>> sequentialFunnel(Funnel<E> funnel) {
        return new d(funnel);
    }

    static class d<E> implements Funnel<Iterable<? extends E>>, Serializable {
        private final Funnel<E> a;

        d(Funnel<E> funnel) {
            this.a = (Funnel) Preconditions.checkNotNull(funnel);
        }

        @Override // com.google.common.hash.Funnel
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void funnel(Iterable<? extends E> iterable, PrimitiveSink primitiveSink) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                this.a.funnel(it.next(), primitiveSink);
            }
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 26).append("Funnels.sequentialFunnel(").append(strValueOf).append(")").toString();
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof d) {
                return this.a.equals(((d) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return d.class.hashCode() ^ this.a.hashCode();
        }
    }

    public static Funnel<Long> longFunnel() {
        return c.INSTANCE;
    }

    enum c implements Funnel<Long> {
        INSTANCE;

        @Override // com.google.common.hash.Funnel
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void funnel(Long l, PrimitiveSink primitiveSink) {
            primitiveSink.putLong(l.longValue());
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.longFunnel()";
        }
    }

    public static OutputStream asOutputStream(PrimitiveSink primitiveSink) {
        return new e(primitiveSink);
    }

    static class e extends OutputStream {
        final PrimitiveSink a;

        e(PrimitiveSink primitiveSink) {
            this.a = (PrimitiveSink) Preconditions.checkNotNull(primitiveSink);
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            this.a.putByte((byte) i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            this.a.putBytes(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            this.a.putBytes(bArr, i, i2);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 24).append("Funnels.asOutputStream(").append(strValueOf).append(")").toString();
        }
    }
}
