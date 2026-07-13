package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class LittleEndianDataInputStream extends FilterInputStream implements DataInput {
    public LittleEndianDataInputStream(InputStream inputStream) {
        super((InputStream) Preconditions.checkNotNull(inputStream));
    }

    @Override // java.io.DataInput
    public String readLine() {
        throw new UnsupportedOperationException("readLine is not supported");
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        ByteStreams.readFully(this, bArr);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i, int i2) throws IOException {
        ByteStreams.readFully(this, bArr, i, i2);
    }

    @Override // java.io.DataInput
    public int skipBytes(int i) {
        return (int) this.in.skip(i);
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() throws IOException {
        int i = this.in.read();
        if (i < 0) {
            throw new EOFException();
        }
        return i;
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        return Ints.fromBytes((byte) 0, (byte) 0, a(), a());
    }

    @Override // java.io.DataInput
    public int readInt() throws IOException {
        byte bA = a();
        byte bA2 = a();
        return Ints.fromBytes(a(), a(), bA2, bA);
    }

    @Override // java.io.DataInput
    public long readLong() throws IOException {
        byte bA = a();
        byte bA2 = a();
        byte bA3 = a();
        byte bA4 = a();
        byte bA5 = a();
        byte bA6 = a();
        return Longs.fromBytes(a(), a(), bA6, bA5, bA4, bA3, bA2, bA);
    }

    @Override // java.io.DataInput
    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public String readUTF() {
        return new DataInputStream(this.in).readUTF();
    }

    @Override // java.io.DataInput
    public short readShort() {
        return (short) readUnsignedShort();
    }

    @Override // java.io.DataInput
    public char readChar() {
        return (char) readUnsignedShort();
    }

    @Override // java.io.DataInput
    public byte readByte() {
        return (byte) readUnsignedByte();
    }

    @Override // java.io.DataInput
    public boolean readBoolean() {
        return readUnsignedByte() != 0;
    }

    private byte a() throws IOException {
        int i = this.in.read();
        if (-1 == i) {
            throw new EOFException();
        }
        return (byte) i;
    }
}
