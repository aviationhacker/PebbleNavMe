package com.google.android.gms.internal;

import android.support.v4.media.TransportMediator;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* JADX INFO: loaded from: classes.dex */
public final class zzrx {
    private final ByteBuffer a;

    public static class zza extends IOException {
        zza(int i, int i2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + i + " limit " + i2 + ").");
        }
    }

    private zzrx(ByteBuffer byteBuffer) {
        this.a = byteBuffer;
        this.a.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzrx(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    private static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int i2 = i;
        int iA = length;
        while (true) {
            if (i2 < length) {
                char cCharAt = charSequence.charAt(i2);
                if (cCharAt >= 2048) {
                    iA += a(charSequence, i2);
                    break;
                }
                i2++;
                iA = ((127 - cCharAt) >>> 31) + iA;
            } else {
                break;
            }
        }
        if (iA < length) {
            throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) iA) + 4294967296L));
        }
        return iA;
    }

    private static int a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = i;
        while (i3 < length) {
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt < 2048) {
                i2 += (127 - cCharAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, i3) < 65536) {
                        throw new IllegalArgumentException("Unpaired surrogate at index " + i3);
                    }
                    i3++;
                }
            }
            i3++;
        }
        return i2;
    }

    private static int a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int length = charSequence.length();
        int i4 = 0;
        int i5 = i + i2;
        while (i4 < length && i4 + i < i5) {
            char cCharAt = charSequence.charAt(i4);
            if (cCharAt >= 128) {
                break;
            }
            bArr[i + i4] = (byte) cCharAt;
            i4++;
        }
        if (i4 == length) {
            return i + length;
        }
        int i6 = i + i4;
        while (i4 < length) {
            char cCharAt2 = charSequence.charAt(i4);
            if (cCharAt2 < 128 && i6 < i5) {
                i3 = i6 + 1;
                bArr[i6] = (byte) cCharAt2;
            } else if (cCharAt2 < 2048 && i6 <= i5 - 2) {
                int i7 = i6 + 1;
                bArr[i6] = (byte) ((cCharAt2 >>> 6) | 960);
                i3 = i7 + 1;
                bArr[i7] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i6 > i5 - 3) {
                    if (i6 > i5 - 4) {
                        if (55296 > cCharAt2 || cCharAt2 > 57343 || (i4 + 1 != charSequence.length() && Character.isSurrogatePair(cCharAt2, charSequence.charAt(i4 + 1)))) {
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i6);
                        }
                        throw new IllegalArgumentException("Unpaired surrogate at index " + i4);
                    }
                    if (i4 + 1 != charSequence.length()) {
                        i4++;
                        char cCharAt3 = charSequence.charAt(i4);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            int i8 = i6 + 1;
                            bArr[i6] = (byte) ((codePoint >>> 18) | 240);
                            int i9 = i8 + 1;
                            bArr[i8] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i10 = i9 + 1;
                            bArr[i9] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i3 = i10 + 1;
                            bArr[i10] = (byte) ((codePoint & 63) | 128);
                        }
                    }
                    throw new IllegalArgumentException("Unpaired surrogate at index " + (i4 - 1));
                }
                int i11 = i6 + 1;
                bArr[i6] = (byte) ((cCharAt2 >>> '\f') | 480);
                int i12 = i11 + 1;
                bArr[i11] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                i3 = i12 + 1;
                bArr[i12] = (byte) ((cCharAt2 & '?') | 128);
            }
            i4++;
            i6 = i3;
        }
        return i6;
    }

    private static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        if (!byteBuffer.hasArray()) {
            b(charSequence, byteBuffer);
            return;
        }
        try {
            byteBuffer.position(a(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e);
            throw bufferOverflowException;
        }
    }

    private static void b(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt < 128) {
                byteBuffer.put((byte) cCharAt);
            } else if (cCharAt < 2048) {
                byteBuffer.put((byte) ((cCharAt >>> 6) | 960));
                byteBuffer.put((byte) ((cCharAt & '?') | 128));
            } else {
                if (cCharAt >= 55296 && 57343 >= cCharAt) {
                    if (i + 1 != charSequence.length()) {
                        i++;
                        char cCharAt2 = charSequence.charAt(i);
                        if (Character.isSurrogatePair(cCharAt, cCharAt2)) {
                            int codePoint = Character.toCodePoint(cCharAt, cCharAt2);
                            byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                            byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                            byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                            byteBuffer.put((byte) ((codePoint & 63) | 128));
                        }
                    }
                    throw new IllegalArgumentException("Unpaired surrogate at index " + (i - 1));
                }
                byteBuffer.put((byte) ((cCharAt >>> '\f') | 480));
                byteBuffer.put((byte) (((cCharAt >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((cCharAt & '?') | 128));
            }
            i++;
        }
    }

    public static int zzA(int i, int i2) {
        return zzlM(i) + zzlJ(i2);
    }

    public static int zzB(int i, int i2) {
        return zzlM(i) + zzlK(i2);
    }

    public static zzrx zzC(byte[] bArr) {
        return zzb(bArr, 0, bArr.length);
    }

    public static int zzE(byte[] bArr) {
        return zzlO(bArr.length) + bArr.length;
    }

    public static int zzaa(long j) {
        return zzad(j);
    }

    public static int zzab(long j) {
        return zzad(zzaf(j));
    }

    public static int zzad(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (Long.MIN_VALUE & j) == 0 ? 9 : 10;
    }

    public static long zzaf(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public static int zzav(boolean z) {
        return 1;
    }

    public static int zzb(int i, double d) {
        return zzlM(i) + zzk(d);
    }

    public static int zzb(int i, zzse zzseVar) {
        return (zzlM(i) * 2) + zzd(zzseVar);
    }

    public static int zzb(int i, byte[] bArr) {
        return zzlM(i) + zzE(bArr);
    }

    public static zzrx zzb(byte[] bArr, int i, int i2) {
        return new zzrx(bArr, i, i2);
    }

    public static int zzc(int i, float f) {
        return zzlM(i) + zzj(f);
    }

    public static int zzc(int i, zzse zzseVar) {
        return zzlM(i) + zze(zzseVar);
    }

    public static int zzc(int i, boolean z) {
        return zzlM(i) + zzav(z);
    }

    public static int zzd(int i, long j) {
        return zzlM(i) + zzaa(j);
    }

    public static int zzd(zzse zzseVar) {
        return zzseVar.zzFR();
    }

    public static int zze(int i, long j) {
        return zzlM(i) + zzab(j);
    }

    public static int zze(zzse zzseVar) {
        int iZzFR = zzseVar.zzFR();
        return iZzFR + zzlO(iZzFR);
    }

    public static int zzfA(String str) {
        int iA = a(str);
        return iA + zzlO(iA);
    }

    public static int zzj(float f) {
        return 4;
    }

    public static int zzk(double d) {
        return 8;
    }

    public static int zzlJ(int i) {
        if (i >= 0) {
            return zzlO(i);
        }
        return 10;
    }

    public static int zzlK(int i) {
        return zzlO(zzlQ(i));
    }

    public static int zzlM(int i) {
        return zzlO(zzsh.a(i, 0));
    }

    public static int zzlO(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return ((-268435456) & i) == 0 ? 4 : 5;
    }

    public static int zzlQ(int i) {
        return (i << 1) ^ (i >> 31);
    }

    public static int zzn(int i, String str) {
        return zzlM(i) + zzfA(str);
    }

    public void zzC(int i, int i2) throws zza {
        zzlN(zzsh.a(i, i2));
    }

    public void zzD(byte[] bArr) throws zza {
        zzlN(bArr.length);
        zzF(bArr);
    }

    public void zzF(byte[] bArr) throws zza {
        zzc(bArr, 0, bArr.length);
    }

    public int zzFD() {
        return this.a.remaining();
    }

    public void zzFE() {
        if (zzFD() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public void zzY(long j) throws zza {
        zzac(j);
    }

    public void zzZ(long j) throws zza {
        zzac(zzaf(j));
    }

    public void zza(int i, double d) throws zza {
        zzC(i, 1);
        zzj(d);
    }

    public void zza(int i, zzse zzseVar) throws zza {
        zzC(i, 2);
        zzc(zzseVar);
    }

    public void zza(int i, byte[] bArr) throws zza {
        zzC(i, 2);
        zzD(bArr);
    }

    public void zzac(long j) throws zza {
        while (((-128) & j) != 0) {
            zzlL((((int) j) & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
            j >>>= 7;
        }
        zzlL((int) j);
    }

    public void zzae(long j) throws zza {
        if (this.a.remaining() < 8) {
            throw new zza(this.a.position(), this.a.limit());
        }
        this.a.putLong(j);
    }

    public void zzau(boolean z) throws zza {
        zzlL(z ? 1 : 0);
    }

    public void zzb(byte b) throws zza {
        if (!this.a.hasRemaining()) {
            throw new zza(this.a.position(), this.a.limit());
        }
        this.a.put(b);
    }

    public void zzb(int i, float f) throws zza {
        zzC(i, 5);
        zzi(f);
    }

    public void zzb(int i, long j) throws zza {
        zzC(i, 0);
        zzY(j);
    }

    public void zzb(int i, String str) throws zza {
        zzC(i, 2);
        zzfz(str);
    }

    public void zzb(int i, boolean z) throws zza {
        zzC(i, 0);
        zzau(z);
    }

    public void zzb(zzse zzseVar) {
        zzseVar.zza(this);
    }

    public void zzc(int i, long j) throws zza {
        zzC(i, 0);
        zzZ(j);
    }

    public void zzc(zzse zzseVar) throws zza {
        zzlN(zzseVar.zzFQ());
        zzseVar.zza(this);
    }

    public void zzc(byte[] bArr, int i, int i2) throws zza {
        if (this.a.remaining() < i2) {
            throw new zza(this.a.position(), this.a.limit());
        }
        this.a.put(bArr, i, i2);
    }

    public void zzfz(String str) throws zza {
        try {
            int iZzlO = zzlO(str.length());
            if (iZzlO != zzlO(str.length() * 3)) {
                zzlN(a(str));
                a(str, this.a);
                return;
            }
            int iPosition = this.a.position();
            if (this.a.remaining() < iZzlO) {
                throw new zza(iZzlO + iPosition, this.a.limit());
            }
            this.a.position(iPosition + iZzlO);
            a(str, this.a);
            int iPosition2 = this.a.position();
            this.a.position(iPosition);
            zzlN((iPosition2 - iPosition) - iZzlO);
            this.a.position(iPosition2);
        } catch (BufferOverflowException e) {
            zza zzaVar = new zza(this.a.position(), this.a.limit());
            zzaVar.initCause(e);
            throw zzaVar;
        }
    }

    public void zzi(float f) throws zza {
        zzlP(Float.floatToIntBits(f));
    }

    public void zzj(double d) throws zza {
        zzae(Double.doubleToLongBits(d));
    }

    public void zzlH(int i) throws zza {
        if (i >= 0) {
            zzlN(i);
        } else {
            zzac(i);
        }
    }

    public void zzlI(int i) throws zza {
        zzlN(zzlQ(i));
    }

    public void zzlL(int i) throws zza {
        zzb((byte) i);
    }

    public void zzlN(int i) throws zza {
        while ((i & (-128)) != 0) {
            zzlL((i & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
            i >>>= 7;
        }
        zzlL(i);
    }

    public void zzlP(int i) throws zza {
        if (this.a.remaining() < 4) {
            throw new zza(this.a.position(), this.a.limit());
        }
        this.a.putInt(i);
    }

    public void zzy(int i, int i2) throws zza {
        zzC(i, 0);
        zzlH(i2);
    }

    public void zzz(int i, int i2) throws zza {
        zzC(i, 0);
        zzlI(i2);
    }
}
