package org.eclipse.jetty.io;

import org.eclipse.jetty.io.Buffer;

/* JADX INFO: loaded from: classes.dex */
public class View extends AbstractBuffer {
    Buffer b;

    public View(Buffer buffer, int i, int i2, int i3, int i4) {
        super(2, !buffer.isImmutable());
        this.b = buffer.buffer();
        setPutIndex(i3);
        setGetIndex(i2);
        setMarkIndex(i);
        this._access = i4;
    }

    public View(Buffer buffer) {
        super(2, !buffer.isImmutable());
        this.b = buffer.buffer();
        setPutIndex(buffer.putIndex());
        setGetIndex(buffer.getIndex());
        setMarkIndex(buffer.markIndex());
        this._access = buffer.isReadOnly() ? 1 : 2;
    }

    public View() {
        super(2, true);
    }

    public void update(Buffer buffer) {
        this._access = 2;
        this.b = buffer.buffer();
        setGetIndex(0);
        setPutIndex(buffer.putIndex());
        setGetIndex(buffer.getIndex());
        setMarkIndex(buffer.markIndex());
        this._access = buffer.isReadOnly() ? 1 : 2;
    }

    public void update(int i, int i2) {
        int i3 = this._access;
        this._access = 2;
        setGetIndex(0);
        setPutIndex(i2);
        setGetIndex(i);
        setMarkIndex(-1);
        this._access = i3;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte[] array() {
        return this.b.array();
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public Buffer buffer() {
        return this.b.buffer();
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int capacity() {
        return this.b.capacity();
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public void clear() {
        setMarkIndex(-1);
        setGetIndex(0);
        setPutIndex(this.b.getIndex());
        setGetIndex(this.b.getIndex());
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public void compact() {
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer
    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof Buffer) && obj.equals(this)) || super.equals(obj);
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public boolean isReadOnly() {
        return this.b.isReadOnly();
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public boolean isVolatile() {
        return true;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte peek(int i) {
        return this.b.peek(i);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int peek(int i, byte[] bArr, int i2, int i3) {
        return this.b.peek(i, bArr, i2, i3);
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public Buffer peek(int i, int i2) {
        return this.b.peek(i, i2);
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public int poke(int i, Buffer buffer) {
        return this.b.poke(i, buffer);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void poke(int i, byte b) {
        this.b.poke(i, b);
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public int poke(int i, byte[] bArr, int i2, int i3) {
        return this.b.poke(i, bArr, i2, i3);
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer
    public String toString() {
        return this.b == null ? "INVALID" : super.toString();
    }

    public static class CaseInsensitive extends View implements Buffer.CaseInsensitve {
        public CaseInsensitive() {
        }

        public CaseInsensitive(Buffer buffer, int i, int i2, int i3, int i4) {
            super(buffer, i, i2, i3, i4);
        }

        public CaseInsensitive(Buffer buffer) {
            super(buffer);
        }

        @Override // org.eclipse.jetty.io.View, org.eclipse.jetty.io.AbstractBuffer
        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof Buffer) && ((Buffer) obj).equalsIgnoreCase(this)) || super.equals(obj);
        }
    }
}
