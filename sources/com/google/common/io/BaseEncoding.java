package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.RoundingMode;
import java.util.Arrays;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible(emulated = true)
public abstract class BaseEncoding {
    private static final BaseEncoding a = new c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');
    private static final BaseEncoding b = new c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');
    private static final BaseEncoding c = new e("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
    private static final BaseEncoding d = new e("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
    private static final BaseEncoding e = new b("base16()", "0123456789ABCDEF");

    abstract int a(int i);

    abstract int a(byte[] bArr, CharSequence charSequence);

    abstract CharMatcher a();

    abstract void a(Appendable appendable, byte[] bArr, int i, int i2);

    abstract int b(int i);

    @GwtIncompatible("Reader,InputStream")
    public abstract InputStream decodingStream(Reader reader);

    @GwtIncompatible("Writer,OutputStream")
    public abstract OutputStream encodingStream(Writer writer);

    @CheckReturnValue
    public abstract BaseEncoding lowerCase();

    @CheckReturnValue
    public abstract BaseEncoding omitPadding();

    @CheckReturnValue
    public abstract BaseEncoding upperCase();

    @CheckReturnValue
    public abstract BaseEncoding withPadChar(char c2);

    @CheckReturnValue
    public abstract BaseEncoding withSeparator(String str, int i);

    BaseEncoding() {
    }

    public static final class DecodingException extends IOException {
        DecodingException(String str) {
            super(str);
        }
    }

    public String encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length);
    }

    public final String encode(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        StringBuilder sb = new StringBuilder(a(i2));
        try {
            a(sb, bArr, i, i2);
            return sb.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    @GwtIncompatible("ByteSink,CharSink")
    public final ByteSink encodingSink(final CharSink charSink) {
        Preconditions.checkNotNull(charSink);
        return new ByteSink() { // from class: com.google.common.io.BaseEncoding.1
            @Override // com.google.common.io.ByteSink
            public OutputStream openStream() {
                return BaseEncoding.this.encodingStream(charSink.openStream());
            }
        };
    }

    private static byte[] a(byte[] bArr, int i) {
        if (i != bArr.length) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, i);
            return bArr2;
        }
        return bArr;
    }

    public final byte[] decode(CharSequence charSequence) {
        try {
            return a(charSequence);
        } catch (DecodingException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    final byte[] a(CharSequence charSequence) {
        String strTrimTrailingFrom = a().trimTrailingFrom(charSequence);
        byte[] bArr = new byte[b(strTrimTrailingFrom.length())];
        return a(bArr, a(bArr, strTrimTrailingFrom));
    }

    @GwtIncompatible("ByteSource,CharSource")
    public final ByteSource decodingSource(final CharSource charSource) {
        Preconditions.checkNotNull(charSource);
        return new ByteSource() { // from class: com.google.common.io.BaseEncoding.2
            @Override // com.google.common.io.ByteSource
            public InputStream openStream() {
                return BaseEncoding.this.decodingStream(charSource.openStream());
            }
        };
    }

    public static BaseEncoding base64() {
        return a;
    }

    public static BaseEncoding base64Url() {
        return b;
    }

    public static BaseEncoding base32() {
        return c;
    }

    public static BaseEncoding base32Hex() {
        return d;
    }

    public static BaseEncoding base16() {
        return e;
    }

    static final class a extends CharMatcher {
        final int a;
        final int b;
        final int c;
        final int d;
        private final String e;
        private final char[] f;
        private final byte[] g;
        private final boolean[] h;

        a(String str, char[] cArr) {
            this.e = (String) Preconditions.checkNotNull(str);
            this.f = (char[]) Preconditions.checkNotNull(cArr);
            try {
                this.b = IntMath.log2(cArr.length, RoundingMode.UNNECESSARY);
                int iMin = Math.min(8, Integer.lowestOneBit(this.b));
                this.c = 8 / iMin;
                this.d = this.b / iMin;
                this.a = cArr.length - 1;
                byte[] bArr = new byte[128];
                Arrays.fill(bArr, (byte) -1);
                for (int i = 0; i < cArr.length; i++) {
                    char c = cArr[i];
                    Preconditions.checkArgument(CharMatcher.ASCII.matches(c), "Non-ASCII character: %s", Character.valueOf(c));
                    Preconditions.checkArgument(bArr[c] == -1, "Duplicate character: %s", Character.valueOf(c));
                    bArr[c] = (byte) i;
                }
                this.g = bArr;
                boolean[] zArr = new boolean[this.c];
                for (int i2 = 0; i2 < this.d; i2++) {
                    zArr[IntMath.divide(i2 * 8, this.b, RoundingMode.CEILING)] = true;
                }
                this.h = zArr;
            } catch (ArithmeticException e) {
                throw new IllegalArgumentException(new StringBuilder(35).append("Illegal alphabet length ").append(cArr.length).toString(), e);
            }
        }

        char a(int i) {
            return this.f[i];
        }

        boolean b(int i) {
            return this.h[i % this.c];
        }

        int b(char c) throws DecodingException {
            Object objValueOf;
            if (c > 127 || this.g[c] == -1) {
                if (CharMatcher.INVISIBLE.matches(c)) {
                    String strValueOf = String.valueOf(Integer.toHexString(c));
                    objValueOf = strValueOf.length() != 0 ? "0x".concat(strValueOf) : new String("0x");
                } else {
                    objValueOf = Character.valueOf(c);
                }
                String strValueOf2 = String.valueOf(objValueOf);
                throw new DecodingException(new StringBuilder(String.valueOf(strValueOf2).length() + 24).append("Unrecognized character: ").append(strValueOf2).toString());
            }
            return this.g[c];
        }

        private boolean d() {
            for (char c : this.f) {
                if (Ascii.isLowerCase(c)) {
                    return true;
                }
            }
            return false;
        }

        private boolean e() {
            for (char c : this.f) {
                if (Ascii.isUpperCase(c)) {
                    return true;
                }
            }
            return false;
        }

        a b() {
            if (d()) {
                Preconditions.checkState(!e(), "Cannot call upperCase() on a mixed-case alphabet");
                char[] cArr = new char[this.f.length];
                for (int i = 0; i < this.f.length; i++) {
                    cArr[i] = Ascii.toUpperCase(this.f[i]);
                }
                return new a(String.valueOf(this.e).concat(".upperCase()"), cArr);
            }
            return this;
        }

        a c() {
            if (e()) {
                Preconditions.checkState(!d(), "Cannot call lowerCase() on a mixed-case alphabet");
                char[] cArr = new char[this.f.length];
                for (int i = 0; i < this.f.length; i++) {
                    cArr[i] = Ascii.toLowerCase(this.f[i]);
                }
                return new a(String.valueOf(this.e).concat(".lowerCase()"), cArr);
            }
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return CharMatcher.ASCII.matches(c) && this.g[c] != -1;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return this.e;
        }
    }

    static class e extends BaseEncoding {
        private transient BaseEncoding a;
        final a b;

        @Nullable
        final Character c;
        private transient BaseEncoding d;

        e(String str, String str2, @Nullable Character ch) {
            this(new a(str, str2.toCharArray()), ch);
        }

        e(a aVar, @Nullable Character ch) {
            this.b = (a) Preconditions.checkNotNull(aVar);
            Preconditions.checkArgument(ch == null || !aVar.matches(ch.charValue()), "Padding character %s was already in alphabet", ch);
            this.c = ch;
        }

        @Override // com.google.common.io.BaseEncoding
        CharMatcher a() {
            return this.c == null ? CharMatcher.NONE : CharMatcher.is(this.c.charValue());
        }

        @Override // com.google.common.io.BaseEncoding
        int a(int i) {
            return this.b.c * IntMath.divide(i, this.b.d, RoundingMode.CEILING);
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible("Writer,OutputStream")
        public OutputStream encodingStream(final Writer writer) {
            Preconditions.checkNotNull(writer);
            return new OutputStream() { // from class: com.google.common.io.BaseEncoding.e.1
                int a = 0;
                int b = 0;
                int c = 0;

                @Override // java.io.OutputStream
                public void write(int i) throws IOException {
                    this.a <<= 8;
                    this.a |= i & 255;
                    this.b += 8;
                    while (this.b >= e.this.b.b) {
                        writer.write(e.this.b.a((this.a >> (this.b - e.this.b.b)) & e.this.b.a));
                        this.c++;
                        this.b -= e.this.b.b;
                    }
                }

                @Override // java.io.OutputStream, java.io.Flushable
                public void flush() throws IOException {
                    writer.flush();
                }

                @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    if (this.b > 0) {
                        writer.write(e.this.b.a((this.a << (e.this.b.b - this.b)) & e.this.b.a));
                        this.c++;
                        if (e.this.c != null) {
                            while (this.c % e.this.b.c != 0) {
                                writer.write(e.this.c.charValue());
                                this.c++;
                            }
                        }
                    }
                    writer.close();
                }
            };
        }

        @Override // com.google.common.io.BaseEncoding
        void a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = 0;
            while (i3 < i2) {
                b(appendable, bArr, i + i3, Math.min(this.b.d, i2 - i3));
                i3 += this.b.d;
            }
        }

        void b(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            Preconditions.checkArgument(i2 <= this.b.d);
            long j = 0;
            for (int i3 = 0; i3 < i2; i3++) {
                j = (j | ((long) (bArr[i + i3] & UnsignedBytes.MAX_VALUE))) << 8;
            }
            int i4 = ((i2 + 1) * 8) - this.b.b;
            int i5 = 0;
            while (i5 < i2 * 8) {
                appendable.append(this.b.a(((int) (j >>> (i4 - i5))) & this.b.a));
                i5 += this.b.b;
            }
            if (this.c != null) {
                while (i5 < this.b.d * 8) {
                    appendable.append(this.c.charValue());
                    i5 += this.b.b;
                }
            }
        }

        @Override // com.google.common.io.BaseEncoding
        int b(int i) {
            return (int) (((((long) this.b.b) * ((long) i)) + 7) / 8);
        }

        @Override // com.google.common.io.BaseEncoding
        int a(byte[] bArr, CharSequence charSequence) throws DecodingException {
            Preconditions.checkNotNull(bArr);
            String strTrimTrailingFrom = a().trimTrailingFrom(charSequence);
            if (!this.b.b(strTrimTrailingFrom.length())) {
                throw new DecodingException(new StringBuilder(32).append("Invalid input length ").append(strTrimTrailingFrom.length()).toString());
            }
            int i = 0;
            int i2 = 0;
            while (i2 < strTrimTrailingFrom.length()) {
                long j = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < this.b.c; i4++) {
                    long jB = j << this.b.b;
                    if (i2 + i4 < strTrimTrailingFrom.length()) {
                        jB |= (long) this.b.b(strTrimTrailingFrom.charAt(i3 + i2));
                        i3++;
                    }
                    j = jB;
                }
                int i5 = (this.b.d * 8) - (i3 * this.b.b);
                int i6 = (this.b.d - 1) * 8;
                while (i6 >= i5) {
                    bArr[i] = (byte) ((j >>> i6) & 255);
                    i6 -= 8;
                    i++;
                }
                i2 += this.b.c;
            }
            return i;
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible("Reader,InputStream")
        public InputStream decodingStream(final Reader reader) {
            Preconditions.checkNotNull(reader);
            return new InputStream() { // from class: com.google.common.io.BaseEncoding.e.2
                int a = 0;
                int b = 0;
                int c = 0;
                boolean d = false;
                final CharMatcher e;

                {
                    this.e = e.this.a();
                }

                /* JADX WARN: Code restructure failed: missing block: B:20:0x0078, code lost:
                
                    throw new com.google.common.io.BaseEncoding.DecodingException(new java.lang.StringBuilder(41).append("Padding cannot start at index ").append(r5.c).toString());
                 */
                @Override // java.io.InputStream
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public int read() throws java.io.IOException {
                    /*
                        Method dump skipped, instruction units count: 222
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.common.io.BaseEncoding.e.AnonymousClass2.read():int");
                }

                @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    reader.close();
                }
            };
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding omitPadding() {
            return this.c == null ? this : a(this.b, (Character) null);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withPadChar(char c) {
            if (8 % this.b.b != 0) {
                return (this.c == null || this.c.charValue() != c) ? a(this.b, Character.valueOf(c)) : this;
            }
            return this;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withSeparator(String str, int i) {
            Preconditions.checkArgument(a().or(this.b).matchesNoneOf(str), "Separator (%s) cannot contain alphabet or padding characters", str);
            return new d(this, str, i);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding upperCase() {
            BaseEncoding baseEncodingA = this.a;
            if (baseEncodingA == null) {
                a aVarB = this.b.b();
                baseEncodingA = aVarB == this.b ? this : a(aVarB, this.c);
                this.a = baseEncodingA;
            }
            return baseEncodingA;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding lowerCase() {
            BaseEncoding baseEncodingA = this.d;
            if (baseEncodingA == null) {
                a aVarC = this.b.c();
                baseEncodingA = aVarC == this.b ? this : a(aVarC, this.c);
                this.d = baseEncodingA;
            }
            return baseEncodingA;
        }

        BaseEncoding a(a aVar, @Nullable Character ch) {
            return new e(aVar, ch);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.b.toString());
            if (8 % this.b.b != 0) {
                if (this.c == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar(").append(this.c).append(')');
                }
            }
            return sb.toString();
        }
    }

    static final class b extends e {
        final char[] a;

        b(String str, String str2) {
            this(new a(str, str2.toCharArray()));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private b(a aVar) {
            super(aVar, null);
            this.a = new char[512];
            Preconditions.checkArgument(aVar.f.length == 16);
            for (int i = 0; i < 256; i++) {
                this.a[i] = aVar.a(i >>> 4);
                this.a[i | 256] = aVar.a(i & 15);
            }
        }

        @Override // com.google.common.io.BaseEncoding.e, com.google.common.io.BaseEncoding
        void a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = bArr[i + i3] & UnsignedBytes.MAX_VALUE;
                appendable.append(this.a[i4]);
                appendable.append(this.a[i4 | 256]);
            }
        }

        @Override // com.google.common.io.BaseEncoding.e, com.google.common.io.BaseEncoding
        int a(byte[] bArr, CharSequence charSequence) throws DecodingException {
            int i = 0;
            Preconditions.checkNotNull(bArr);
            if (charSequence.length() % 2 == 1) {
                throw new DecodingException(new StringBuilder(32).append("Invalid input length ").append(charSequence.length()).toString());
            }
            int i2 = 0;
            while (i < charSequence.length()) {
                bArr[i2] = (byte) (this.b.b(charSequence.charAt(i + 1)) | (this.b.b(charSequence.charAt(i)) << 4));
                i += 2;
                i2++;
            }
            return i2;
        }

        @Override // com.google.common.io.BaseEncoding.e
        BaseEncoding a(a aVar, @Nullable Character ch) {
            return new b(aVar);
        }
    }

    static final class c extends e {
        c(String str, String str2, @Nullable Character ch) {
            this(new a(str, str2.toCharArray()), ch);
        }

        private c(a aVar, @Nullable Character ch) {
            super(aVar, ch);
            Preconditions.checkArgument(aVar.f.length == 64);
        }

        @Override // com.google.common.io.BaseEncoding.e, com.google.common.io.BaseEncoding
        void a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = i;
            for (int i4 = i2; i4 >= 3; i4 -= 3) {
                int i5 = i3 + 1;
                int i6 = i5 + 1;
                int i7 = ((bArr[i5] & UnsignedBytes.MAX_VALUE) << 8) | ((bArr[i3] & UnsignedBytes.MAX_VALUE) << 16);
                i3 = i6 + 1;
                int i8 = i7 | (bArr[i6] & UnsignedBytes.MAX_VALUE);
                appendable.append(this.b.a(i8 >>> 18));
                appendable.append(this.b.a((i8 >>> 12) & 63));
                appendable.append(this.b.a((i8 >>> 6) & 63));
                appendable.append(this.b.a(i8 & 63));
            }
            if (i3 < i + i2) {
                b(appendable, bArr, i3, (i + i2) - i3);
            }
        }

        @Override // com.google.common.io.BaseEncoding.e, com.google.common.io.BaseEncoding
        int a(byte[] bArr, CharSequence charSequence) throws DecodingException {
            int i = 0;
            Preconditions.checkNotNull(bArr);
            String strTrimTrailingFrom = a().trimTrailingFrom(charSequence);
            if (!this.b.b(strTrimTrailingFrom.length())) {
                throw new DecodingException(new StringBuilder(32).append("Invalid input length ").append(strTrimTrailingFrom.length()).toString());
            }
            int i2 = 0;
            while (i < strTrimTrailingFrom.length()) {
                int i3 = i + 1;
                int iB = this.b.b(strTrimTrailingFrom.charAt(i)) << 18;
                i = i3 + 1;
                int iB2 = iB | (this.b.b(strTrimTrailingFrom.charAt(i3)) << 12);
                int i4 = i2 + 1;
                bArr[i2] = (byte) (iB2 >>> 16);
                if (i < strTrimTrailingFrom.length()) {
                    int i5 = i + 1;
                    int iB3 = iB2 | (this.b.b(strTrimTrailingFrom.charAt(i)) << 6);
                    int i6 = i4 + 1;
                    bArr[i4] = (byte) ((iB3 >>> 8) & 255);
                    if (i5 < strTrimTrailingFrom.length()) {
                        i = i5 + 1;
                        int iB4 = iB3 | this.b.b(strTrimTrailingFrom.charAt(i5));
                        i2 = i6 + 1;
                        bArr[i6] = (byte) (iB4 & 255);
                    } else {
                        i = i5;
                        i2 = i6;
                    }
                } else {
                    i2 = i4;
                }
            }
            return i2;
        }

        @Override // com.google.common.io.BaseEncoding.e
        BaseEncoding a(a aVar, @Nullable Character ch) {
            return new c(aVar, ch);
        }
    }

    @GwtIncompatible("Reader")
    static Reader a(final Reader reader, final CharMatcher charMatcher) {
        Preconditions.checkNotNull(reader);
        Preconditions.checkNotNull(charMatcher);
        return new Reader() { // from class: com.google.common.io.BaseEncoding.3
            @Override // java.io.Reader
            public int read() throws IOException {
                int i;
                do {
                    i = reader.read();
                    if (i == -1) {
                        break;
                    }
                } while (charMatcher.matches((char) i));
                return i;
            }

            @Override // java.io.Reader
            public int read(char[] cArr, int i, int i2) {
                throw new UnsupportedOperationException();
            }

            @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                reader.close();
            }
        };
    }

    static Appendable a(final Appendable appendable, final String str, final int i) {
        Preconditions.checkNotNull(appendable);
        Preconditions.checkNotNull(str);
        Preconditions.checkArgument(i > 0);
        return new Appendable() { // from class: com.google.common.io.BaseEncoding.4
            int a;

            {
                this.a = i;
            }

            @Override // java.lang.Appendable
            public Appendable append(char c2) throws IOException {
                if (this.a == 0) {
                    appendable.append(str);
                    this.a = i;
                }
                appendable.append(c2);
                this.a--;
                return this;
            }

            @Override // java.lang.Appendable
            public Appendable append(CharSequence charSequence, int i2, int i3) {
                throw new UnsupportedOperationException();
            }

            @Override // java.lang.Appendable
            public Appendable append(CharSequence charSequence) {
                throw new UnsupportedOperationException();
            }
        };
    }

    @GwtIncompatible("Writer")
    static Writer a(final Writer writer, String str, int i) {
        final Appendable appendableA = a((Appendable) writer, str, i);
        return new Writer() { // from class: com.google.common.io.BaseEncoding.5
            @Override // java.io.Writer
            public void write(int i2) throws IOException {
                appendableA.append((char) i2);
            }

            @Override // java.io.Writer
            public void write(char[] cArr, int i2, int i3) {
                throw new UnsupportedOperationException();
            }

            @Override // java.io.Writer, java.io.Flushable
            public void flush() throws IOException {
                writer.flush();
            }

            @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                writer.close();
            }
        };
    }

    static final class d extends BaseEncoding {
        private final BaseEncoding a;
        private final String b;
        private final int c;
        private final CharMatcher d;

        d(BaseEncoding baseEncoding, String str, int i) {
            this.a = (BaseEncoding) Preconditions.checkNotNull(baseEncoding);
            this.b = (String) Preconditions.checkNotNull(str);
            this.c = i;
            Preconditions.checkArgument(i > 0, "Cannot add a separator after every %s chars", Integer.valueOf(i));
            this.d = CharMatcher.anyOf(str).precomputed();
        }

        @Override // com.google.common.io.BaseEncoding
        CharMatcher a() {
            return this.a.a();
        }

        @Override // com.google.common.io.BaseEncoding
        int a(int i) {
            int iA = this.a.a(i);
            return iA + (this.b.length() * IntMath.divide(Math.max(0, iA - 1), this.c, RoundingMode.FLOOR));
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible("Writer,OutputStream")
        public OutputStream encodingStream(Writer writer) {
            return this.a.encodingStream(a(writer, this.b, this.c));
        }

        @Override // com.google.common.io.BaseEncoding
        void a(Appendable appendable, byte[] bArr, int i, int i2) {
            this.a.a(a(appendable, this.b, this.c), bArr, i, i2);
        }

        @Override // com.google.common.io.BaseEncoding
        int b(int i) {
            return this.a.b(i);
        }

        @Override // com.google.common.io.BaseEncoding
        int a(byte[] bArr, CharSequence charSequence) {
            return this.a.a(bArr, this.d.removeFrom(charSequence));
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible("Reader,InputStream")
        public InputStream decodingStream(Reader reader) {
            return this.a.decodingStream(a(reader, this.d));
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding omitPadding() {
            return this.a.omitPadding().withSeparator(this.b, this.c);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withPadChar(char c) {
            return this.a.withPadChar(c).withSeparator(this.b, this.c);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withSeparator(String str, int i) {
            throw new UnsupportedOperationException("Already have a separator");
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding upperCase() {
            return this.a.upperCase().withSeparator(this.b, this.c);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding lowerCase() {
            return this.a.lowerCase().withSeparator(this.b, this.c);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a.toString());
            String str = this.b;
            return new StringBuilder(String.valueOf(strValueOf).length() + 31 + String.valueOf(str).length()).append(strValueOf).append(".withSeparator(\"").append(str).append("\", ").append(this.c).append(")").toString();
        }
    }
}
