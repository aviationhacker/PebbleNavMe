package org.eclipse.jetty.io.nio;

import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import org.eclipse.jetty.io.AbstractBuffer;
import org.eclipse.jetty.io.Buffer;

/* JADX INFO: loaded from: classes.dex */
public class RandomAccessFileBuffer extends AbstractBuffer implements Buffer {
    static final /* synthetic */ boolean e;
    final RandomAccessFile b;
    final FileChannel c;
    final int d;

    static {
        e = !RandomAccessFileBuffer.class.desiredAssertionStatus();
    }

    public RandomAccessFileBuffer(File file) {
        super(2, true);
        if (!e && file.length() > 2147483647L) {
            throw new AssertionError();
        }
        this.b = new RandomAccessFile(file, "rw");
        this.c = this.b.getChannel();
        this.d = Integer.MAX_VALUE;
        setGetIndex(0);
        setPutIndex((int) file.length());
    }

    public RandomAccessFileBuffer(File file, int i) {
        super(2, true);
        if (!e && i < file.length()) {
            throw new AssertionError();
        }
        if (!e && file.length() > 2147483647L) {
            throw new AssertionError();
        }
        this.d = i;
        this.b = new RandomAccessFile(file, "rw");
        this.c = this.b.getChannel();
        setGetIndex(0);
        setPutIndex((int) file.length());
    }

    public RandomAccessFileBuffer(File file, int i, int i2) {
        super(i2, true);
        if (!e && i < file.length()) {
            throw new AssertionError();
        }
        if (!e && file.length() > 2147483647L) {
            throw new AssertionError();
        }
        this.d = i;
        this.b = new RandomAccessFile(file, i2 == 2 ? "rw" : "r");
        this.c = this.b.getChannel();
        setGetIndex(0);
        setPutIndex((int) file.length());
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte[] array() {
        return null;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int capacity() {
        return this.d;
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public void clear() {
        try {
            synchronized (this.b) {
                super.clear();
                this.b.setLength(0L);
            }
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public byte peek() {
        byte b;
        synchronized (this.b) {
            try {
                if (this._get != this.b.getFilePointer()) {
                    this.b.seek(this._get);
                }
                b = this.b.readByte();
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
        return b;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte peek(int i) {
        byte b;
        synchronized (this.b) {
            try {
                this.b.seek(i);
                b = this.b.readByte();
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
        return b;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int peek(int i, byte[] bArr, int i2, int i3) {
        int i4;
        synchronized (this.b) {
            try {
                this.b.seek(i);
                i4 = this.b.read(bArr, i2, i3);
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
        return i4;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void poke(int i, byte b) {
        synchronized (this.b) {
            try {
                this.b.seek(i);
                this.b.writeByte(b);
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public int poke(int i, byte[] bArr, int i2, int i3) {
        synchronized (this.b) {
            try {
                this.b.seek(i);
                this.b.write(bArr, i2, i3);
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
        return i3;
    }

    public int writeTo(WritableByteChannel writableByteChannel, int i, int i2) {
        int iTransferTo;
        synchronized (this.b) {
            iTransferTo = (int) this.c.transferTo(i, i2, writableByteChannel);
        }
        return iTransferTo;
    }
}
