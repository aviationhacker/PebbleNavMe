package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Ascii;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.hash.Funnels;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.common.hash.Hasher;
import defpackage.lj;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class ByteSource {
    public abstract InputStream openStream();

    protected ByteSource() {
    }

    public CharSource asCharSource(Charset charset) {
        return new a(charset);
    }

    public InputStream openBufferedStream() {
        InputStream inputStreamOpenStream = openStream();
        return inputStreamOpenStream instanceof BufferedInputStream ? (BufferedInputStream) inputStreamOpenStream : new BufferedInputStream(inputStreamOpenStream);
    }

    public ByteSource slice(long j, long j2) {
        return new e(j, j2);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public boolean isEmpty() throws X {
        Optional<Long> optionalSizeIfKnown = sizeIfKnown();
        if (optionalSizeIfKnown.isPresent() && optionalSizeIfKnown.get().longValue() == 0) {
            return true;
        }
        Closer closerCreate = Closer.create();
        try {
            try {
                boolean z = ((InputStream) closerCreate.register(openStream())).read() == -1;
                closerCreate.close();
                return z;
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } catch (Throwable th2) {
            closerCreate.close();
            throw th2;
        }
    }

    @Beta
    public Optional<Long> sizeIfKnown() {
        return Optional.absent();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public long size() throws X {
        Optional<Long> optionalSizeIfKnown = sizeIfKnown();
        if (optionalSizeIfKnown.isPresent()) {
            return optionalSizeIfKnown.get().longValue();
        }
        Closer closerCreate = Closer.create();
        try {
            return a((InputStream) closerCreate.register(openStream()));
        } catch (IOException e2) {
            closerCreate.close();
            closerCreate = Closer.create();
            try {
                try {
                    return b((InputStream) closerCreate.register(openStream()));
                } catch (Throwable th) {
                    throw closerCreate.rethrow(th);
                }
            } finally {
            }
        } finally {
        }
    }

    private long a(InputStream inputStream) throws IOException {
        long j = 0;
        while (true) {
            long jA = ByteStreams.a(inputStream, 2147483647L);
            if (jA > 0) {
                j += jA;
            } else {
                return j;
            }
        }
    }

    private long b(InputStream inputStream) {
        long j = 0;
        while (true) {
            long j2 = inputStream.read(ByteStreams.a);
            if (j2 != -1) {
                j += j2;
            } else {
                return j;
            }
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public long copyTo(OutputStream outputStream) throws X {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(outputStream);
        Closer closerCreate = Closer.create();
        try {
            try {
                return ByteStreams.copy((InputStream) closerCreate.register(openStream()), outputStream);
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public long copyTo(ByteSink byteSink) throws X {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(byteSink);
        Closer closerCreate = Closer.create();
        try {
            try {
                return ByteStreams.copy((InputStream) closerCreate.register(openStream()), (OutputStream) closerCreate.register(byteSink.openStream()));
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public byte[] read() throws X {
        Closer closerCreate = Closer.create();
        try {
            try {
                return ByteStreams.toByteArray((InputStream) closerCreate.register(openStream()));
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    @Beta
    public <T> T read(ByteProcessor<T> byteProcessor) throws X {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(byteProcessor);
        Closer closerCreate = Closer.create();
        try {
            try {
                return (T) ByteStreams.readBytes((InputStream) closerCreate.register(openStream()), byteProcessor);
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public HashCode hash(HashFunction hashFunction) throws X {
        Hasher hasherNewHasher = hashFunction.newHasher();
        copyTo(Funnels.asOutputStream(hasherNewHasher));
        return hasherNewHasher.hash();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public boolean contentEquals(ByteSource byteSource) throws X {
        int i;
        Preconditions.checkNotNull(byteSource);
        byte[] bArr = new byte[8192];
        byte[] bArr2 = new byte[8192];
        Closer closerCreate = Closer.create();
        try {
            try {
                InputStream inputStream = (InputStream) closerCreate.register(openStream());
                InputStream inputStream2 = (InputStream) closerCreate.register(byteSource.openStream());
                do {
                    i = ByteStreams.read(inputStream, bArr, 0, 8192);
                    if (i != ByteStreams.read(inputStream2, bArr2, 0, 8192) || !Arrays.equals(bArr, bArr2)) {
                        return false;
                    }
                } while (i == 8192);
                return true;
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    public static ByteSource concat(Iterable<? extends ByteSource> iterable) {
        return new c(iterable);
    }

    public static ByteSource concat(Iterator<? extends ByteSource> it) {
        return concat(ImmutableList.copyOf(it));
    }

    public static ByteSource concat(ByteSource... byteSourceArr) {
        return concat(ImmutableList.copyOf(byteSourceArr));
    }

    public static ByteSource wrap(byte[] bArr) {
        return new b(bArr);
    }

    public static ByteSource empty() {
        return d.d;
    }

    final class a extends CharSource {
        private final Charset b;

        private a(Charset charset) {
            this.b = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() {
            return new InputStreamReader(ByteSource.this.openStream(), this.b);
        }

        public String toString() {
            String strValueOf = String.valueOf(ByteSource.this.toString());
            String strValueOf2 = String.valueOf(this.b);
            return new StringBuilder(String.valueOf(strValueOf).length() + 15 + String.valueOf(strValueOf2).length()).append(strValueOf).append(".asCharSource(").append(strValueOf2).append(")").toString();
        }
    }

    final class e extends ByteSource {
        final long a;
        final long b;

        e(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", Long.valueOf(j));
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", Long.valueOf(j2));
            this.a = j;
            this.b = j2;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return a(ByteSource.this.openStream());
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openBufferedStream() {
            return a(ByteSource.this.openBufferedStream());
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: X */
        private InputStream a(InputStream inputStream) throws X, IOException {
            if (this.a > 0) {
                try {
                    if (ByteStreams.a(inputStream, this.a) < this.a) {
                        inputStream.close();
                        return new ByteArrayInputStream(new byte[0]);
                    }
                } catch (Throwable th) {
                    Closer closerCreate = Closer.create();
                    closerCreate.register(inputStream);
                    try {
                        throw closerCreate.rethrow(th);
                    } catch (Throwable th2) {
                        closerCreate.close();
                        throw th2;
                    }
                }
            }
            return ByteStreams.limit(inputStream, this.b);
        }

        @Override // com.google.common.io.ByteSource
        public ByteSource slice(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", Long.valueOf(j));
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", Long.valueOf(j2));
            return ByteSource.this.slice(this.a + j, Math.min(j2, this.b - j));
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() {
            return this.b == 0 || super.isEmpty();
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            Optional<Long> optionalSizeIfKnown = ByteSource.this.sizeIfKnown();
            if (!optionalSizeIfKnown.isPresent()) {
                return Optional.absent();
            }
            long jLongValue = optionalSizeIfKnown.get().longValue();
            return Optional.of(Long.valueOf(Math.min(this.b, jLongValue - Math.min(this.a, jLongValue))));
        }

        public String toString() {
            String strValueOf = String.valueOf(ByteSource.this.toString());
            long j = this.a;
            return new StringBuilder(String.valueOf(strValueOf).length() + 50).append(strValueOf).append(".slice(").append(j).append(", ").append(this.b).append(")").toString();
        }
    }

    static class b extends ByteSource {
        final byte[] a;
        final int b;
        final int c;

        b(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        b(byte[] bArr, int i, int i2) {
            this.a = bArr;
            this.b = i;
            this.c = i2;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return new ByteArrayInputStream(this.a, this.b, this.c);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openBufferedStream() {
            return openStream();
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() {
            return this.c == 0;
        }

        @Override // com.google.common.io.ByteSource
        public long size() {
            return this.c;
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            return Optional.of(Long.valueOf(this.c));
        }

        @Override // com.google.common.io.ByteSource
        public byte[] read() {
            return Arrays.copyOfRange(this.a, this.b, this.b + this.c);
        }

        @Override // com.google.common.io.ByteSource
        public long copyTo(OutputStream outputStream) throws IOException {
            outputStream.write(this.a, this.b, this.c);
            return this.c;
        }

        @Override // com.google.common.io.ByteSource
        public <T> T read(ByteProcessor<T> byteProcessor) {
            byteProcessor.processBytes(this.a, this.b, this.c);
            return byteProcessor.getResult();
        }

        @Override // com.google.common.io.ByteSource
        public HashCode hash(HashFunction hashFunction) {
            return hashFunction.hashBytes(this.a, this.b, this.c);
        }

        @Override // com.google.common.io.ByteSource
        public ByteSource slice(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", Long.valueOf(j));
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", Long.valueOf(j2));
            long jMin = Math.min(j, this.c);
            return new b(this.a, ((int) jMin) + this.b, (int) Math.min(j2, ((long) this.c) - jMin));
        }

        public String toString() {
            String strTruncate = Ascii.truncate(BaseEncoding.base16().encode(this.a, this.b, this.c), 30, "...");
            return new StringBuilder(String.valueOf(strTruncate).length() + 17).append("ByteSource.wrap(").append(strTruncate).append(")").toString();
        }
    }

    static final class d extends b {
        static final d d = new d();

        d() {
            super(new byte[0]);
        }

        @Override // com.google.common.io.ByteSource
        public CharSource asCharSource(Charset charset) {
            Preconditions.checkNotNull(charset);
            return CharSource.empty();
        }

        @Override // com.google.common.io.ByteSource.b, com.google.common.io.ByteSource
        public byte[] read() {
            return this.a;
        }

        @Override // com.google.common.io.ByteSource.b
        public String toString() {
            return "ByteSource.empty()";
        }
    }

    static final class c extends ByteSource {
        final Iterable<? extends ByteSource> a;

        c(Iterable<? extends ByteSource> iterable) {
            this.a = (Iterable) Preconditions.checkNotNull(iterable);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return new lj(this.a.iterator());
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() {
            Iterator<? extends ByteSource> it = this.a.iterator();
            while (it.hasNext()) {
                if (!it.next().isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            long jLongValue = 0;
            Iterator<? extends ByteSource> it = this.a.iterator();
            while (true) {
                long j = jLongValue;
                if (it.hasNext()) {
                    Optional<Long> optionalSizeIfKnown = it.next().sizeIfKnown();
                    if (!optionalSizeIfKnown.isPresent()) {
                        return Optional.absent();
                    }
                    jLongValue = optionalSizeIfKnown.get().longValue() + j;
                } else {
                    return Optional.of(Long.valueOf(j));
                }
            }
        }

        @Override // com.google.common.io.ByteSource
        public long size() {
            long size = 0;
            Iterator<? extends ByteSource> it = this.a.iterator();
            while (true) {
                long j = size;
                if (it.hasNext()) {
                    size = it.next().size() + j;
                } else {
                    return j;
                }
            }
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 19).append("ByteSource.concat(").append(strValueOf).append(")").toString();
        }
    }
}
