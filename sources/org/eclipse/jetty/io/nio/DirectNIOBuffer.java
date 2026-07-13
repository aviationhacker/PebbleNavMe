package org.eclipse.jetty.io.nio;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import org.eclipse.jetty.io.AbstractBuffer;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class DirectNIOBuffer extends AbstractBuffer implements NIOBuffer {
    private static final Logger b = Log.getLogger((Class<?>) DirectNIOBuffer.class);
    protected final ByteBuffer _buf;
    private ReadableByteChannel c;
    private InputStream d;
    private WritableByteChannel e;
    private OutputStream f;

    public DirectNIOBuffer(int i) {
        super(2, false);
        this._buf = ByteBuffer.allocateDirect(i);
        this._buf.position(0);
        this._buf.limit(this._buf.capacity());
    }

    public DirectNIOBuffer(ByteBuffer byteBuffer, boolean z) {
        super(z ? 0 : 2, false);
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException();
        }
        this._buf = byteBuffer;
        setGetIndex(byteBuffer.position());
        setPutIndex(byteBuffer.limit());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DirectNIOBuffer(File file) throws Throwable {
        FileInputStream fileInputStream;
        super(1, false);
        FileChannel fileChannel = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                FileChannel channel = fileInputStream2.getChannel();
                try {
                    this._buf = channel.map(FileChannel.MapMode.READ_ONLY, 0L, file.length());
                    setGetIndex(0);
                    setPutIndex((int) file.length());
                    this._access = 0;
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException e) {
                            b.ignore(e);
                        }
                    }
                    IO.close(fileInputStream2);
                } catch (Throwable th) {
                    fileInputStream = fileInputStream2;
                    th = th;
                    fileChannel = channel;
                    if (fileChannel != null) {
                        try {
                            fileChannel.close();
                        } catch (IOException e2) {
                            b.ignore(e2);
                        }
                    }
                    IO.close(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    @Override // org.eclipse.jetty.io.nio.NIOBuffer
    public boolean isDirect() {
        return true;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte[] array() {
        return null;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int capacity() {
        return this._buf.capacity();
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte peek(int i) {
        return this._buf.get(i);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int peek(int i, byte[] bArr, int i2, int i3) {
        int iCapacity;
        if (i + i3 > capacity()) {
            iCapacity = capacity() - i;
            if (iCapacity == 0) {
                return -1;
            }
        } else {
            iCapacity = i3;
        }
        if (iCapacity < 0) {
            return -1;
        }
        try {
            this._buf.position(i);
            this._buf.get(bArr, i2, iCapacity);
            this._buf.position(0);
            return iCapacity;
        } catch (Throwable th) {
            this._buf.position(0);
            throw th;
        }
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void poke(int i, byte b2) {
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        if (i < 0) {
            throw new IllegalArgumentException("index<0: " + i + "<0");
        }
        if (i > capacity()) {
            throw new IllegalArgumentException("index>capacity(): " + i + ">" + capacity());
        }
        this._buf.put(i, b2);
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public int poke(int i, Buffer buffer) {
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        byte[] bArrArray = buffer.array();
        if (bArrArray != null) {
            return poke(i, bArrArray, buffer.getIndex(), buffer.length());
        }
        Buffer buffer2 = buffer.buffer();
        if (buffer2 instanceof DirectNIOBuffer) {
            ByteBuffer byteBuffer = ((DirectNIOBuffer) buffer2)._buf;
            ByteBuffer byteBufferDuplicate = byteBuffer == this._buf ? this._buf.duplicate() : byteBuffer;
            try {
                this._buf.position(i);
                int iRemaining = this._buf.remaining();
                int length = buffer.length();
                if (length <= iRemaining) {
                    iRemaining = length;
                }
                byteBufferDuplicate.position(buffer.getIndex());
                byteBufferDuplicate.limit(buffer.getIndex() + iRemaining);
                this._buf.put(byteBufferDuplicate);
                return iRemaining;
            } finally {
                this._buf.position(0);
                byteBufferDuplicate.limit(byteBufferDuplicate.capacity());
                byteBufferDuplicate.position(0);
            }
        }
        return super.poke(i, buffer);
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public int poke(int i, byte[] bArr, int i2, int i3) {
        int iCapacity;
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        if (i < 0) {
            throw new IllegalArgumentException("index<0: " + i + "<0");
        }
        if (i + i3 > capacity()) {
            iCapacity = capacity() - i;
            if (iCapacity < 0) {
                throw new IllegalArgumentException("index>capacity(): " + i + ">" + capacity());
            }
        } else {
            iCapacity = i3;
        }
        try {
            this._buf.position(i);
            int iRemaining = this._buf.remaining();
            if (iCapacity <= iRemaining) {
                iRemaining = iCapacity;
            }
            if (iRemaining > 0) {
                this._buf.put(bArr, i2, iRemaining);
            }
            return iRemaining;
        } finally {
            this._buf.position(0);
        }
    }

    @Override // org.eclipse.jetty.io.nio.NIOBuffer
    public ByteBuffer getByteBuffer() {
        return this._buf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0046, code lost:
    
        r9.c = null;
        r9.d = r10;
     */
    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int readFrom(java.io.InputStream r10, int r11) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.io.nio.DirectNIOBuffer.readFrom(java.io.InputStream, int):int");
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public void writeTo(OutputStream outputStream) {
        int i;
        if (this.e == null || !this.e.isOpen() || outputStream != this.f) {
            this.e = Channels.newChannel(outputStream);
            this.f = outputStream;
        }
        synchronized (this._buf) {
            int i2 = 0;
            while (hasContent() && this.e.isOpen()) {
                try {
                    try {
                        this._buf.position(getIndex());
                        this._buf.limit(putIndex());
                        int iWrite = this.e.write(this._buf);
                        if (iWrite < 0) {
                            break;
                        }
                        if (iWrite > 0) {
                            skip(iWrite);
                            i = 0;
                        } else {
                            i = i2 + 1;
                            if (i2 > 1) {
                                break;
                            }
                        }
                        i2 = i;
                    } catch (IOException e) {
                        this.e = null;
                        this.f = null;
                        throw e;
                    }
                } finally {
                    if (this.e != null && !this.e.isOpen()) {
                        this.e = null;
                        this.f = null;
                    }
                    this._buf.position(0);
                    this._buf.limit(this._buf.capacity());
                }
            }
        }
    }
}
