package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public abstract class ByteSink {
    public abstract OutputStream openStream();

    protected ByteSink() {
    }

    public CharSink asCharSink(Charset charset) {
        return new a(charset);
    }

    public OutputStream openBufferedStream() {
        OutputStream outputStreamOpenStream = openStream();
        return outputStreamOpenStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStreamOpenStream : new BufferedOutputStream(outputStreamOpenStream);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public void write(byte[] bArr) throws X {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(bArr);
        Closer closerCreate = Closer.create();
        try {
            try {
                OutputStream outputStream = (OutputStream) closerCreate.register(openStream());
                outputStream.write(bArr);
                outputStream.flush();
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public long writeFrom(InputStream inputStream) throws X {
        Preconditions.checkNotNull(inputStream);
        Closer closerCreate = Closer.create();
        try {
            try {
                OutputStream outputStream = (OutputStream) closerCreate.register(openStream());
                long jCopy = ByteStreams.copy(inputStream, outputStream);
                outputStream.flush();
                return jCopy;
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    final class a extends CharSink {
        private final Charset b;

        private a(Charset charset) {
            this.b = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.CharSink
        public Writer openStream() {
            return new OutputStreamWriter(ByteSink.this.openStream(), this.b);
        }

        public String toString() {
            String strValueOf = String.valueOf(ByteSink.this.toString());
            String strValueOf2 = String.valueOf(this.b);
            return new StringBuilder(String.valueOf(strValueOf).length() + 13 + String.valueOf(strValueOf2).length()).append(strValueOf).append(".asCharSink(").append(strValueOf2).append(")").toString();
        }
    }
}
