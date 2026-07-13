package ar.com.hjg.pngj;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import defpackage.ge;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class PngHelperInternal {
    public static final String KEY_LOGGER = "ar.com.pngj";
    public static final Logger LOGGER = Logger.getLogger(KEY_LOGGER);
    public static String charsetLatin1name = "ISO-8859-1";
    public static Charset charsetLatin1 = Charset.forName(charsetLatin1name);
    public static String charsetUTF8name = "UTF-8";
    public static Charset charsetUTF8 = Charset.forName(charsetUTF8name);
    private static ThreadLocal<Boolean> a = new ThreadLocal<Boolean>() { // from class: ar.com.hjg.pngj.PngHelperInternal.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean initialValue() {
            return Boolean.FALSE;
        }
    };

    public static byte[] getPngIdSignature() {
        return new byte[]{-119, 80, 78, 71, 13, 10, Ascii.SUB, 10};
    }

    public static int doubleToInt100000(double d) {
        return (int) ((100000.0d * d) + 0.5d);
    }

    public static double intToDouble100000(int i) {
        return ((double) i) / 100000.0d;
    }

    public static int readByte(InputStream inputStream) {
        try {
            return inputStream.read();
        } catch (IOException e) {
            throw new PngjInputException("error reading byte", e);
        }
    }

    public static int readInt2(InputStream inputStream) {
        try {
            int i = inputStream.read();
            int i2 = inputStream.read();
            if (i == -1 || i2 == -1) {
                return -1;
            }
            return (i << 8) | i2;
        } catch (IOException e) {
            throw new PngjInputException("error reading Int2", e);
        }
    }

    public static int readInt4(InputStream inputStream) {
        try {
            int i = inputStream.read();
            int i2 = inputStream.read();
            int i3 = inputStream.read();
            int i4 = inputStream.read();
            if (i == -1 || i2 == -1 || i3 == -1 || i4 == -1) {
                return -1;
            }
            return (i << 24) | (i2 << 16) | ((i3 << 8) + i4);
        } catch (IOException e) {
            throw new PngjInputException("error reading Int4", e);
        }
    }

    public static int readInt1fromByte(byte[] bArr, int i) {
        return bArr[i] & UnsignedBytes.MAX_VALUE;
    }

    public static int readInt2fromBytes(byte[] bArr, int i) {
        return ((bArr[i] & UnsignedBytes.MAX_VALUE) << 8) | (bArr[i + 1] & UnsignedBytes.MAX_VALUE);
    }

    public static final int readInt4fromBytes(byte[] bArr, int i) {
        return ((bArr[i] & UnsignedBytes.MAX_VALUE) << 24) | ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) << 16) | ((bArr[i + 2] & UnsignedBytes.MAX_VALUE) << 8) | (bArr[i + 3] & UnsignedBytes.MAX_VALUE);
    }

    public static void writeByte(OutputStream outputStream, byte b) {
        try {
            outputStream.write(b);
        } catch (IOException e) {
            throw new PngjOutputException(e);
        }
    }

    public static void writeByte(OutputStream outputStream, byte[] bArr) {
        try {
            outputStream.write(bArr);
        } catch (IOException e) {
            throw new PngjOutputException(e);
        }
    }

    public static void writeInt2(OutputStream outputStream, int i) {
        writeBytes(outputStream, new byte[]{(byte) ((i >> 8) & 255), (byte) (i & 255)});
    }

    public static void writeInt4(OutputStream outputStream, int i) {
        byte[] bArr = new byte[4];
        writeInt4tobytes(i, bArr, 0);
        writeBytes(outputStream, bArr);
    }

    public static void writeInt2tobytes(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) ((i >> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
    }

    public static void writeInt4tobytes(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) ((i >> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
    }

    public static void readBytes(InputStream inputStream, byte[] bArr, int i, int i2) {
        if (i2 != 0) {
            int i3 = 0;
            while (i3 < i2) {
                try {
                    int i4 = inputStream.read(bArr, i + i3, i2 - i3);
                    if (i4 < 1) {
                        throw new PngjInputException("error reading bytes, " + i4 + " !=" + i2);
                    }
                    i3 += i4;
                } catch (IOException e) {
                    throw new PngjInputException("error reading", e);
                }
            }
        }
    }

    public static void skipBytes(InputStream inputStream, long j) {
        long j2;
        while (j > 0) {
            try {
                long jSkip = inputStream.skip(j);
                if (jSkip > 0) {
                    j2 = j - jSkip;
                } else if (jSkip == 0) {
                    if (inputStream.read() != -1) {
                        j2 = j - 1;
                    } else {
                        return;
                    }
                } else {
                    throw new IOException("skip() returned a negative value ???");
                }
                j = j2;
            } catch (IOException e) {
                throw new PngjInputException(e);
            }
        }
    }

    public static void writeBytes(OutputStream outputStream, byte[] bArr) {
        try {
            outputStream.write(bArr);
        } catch (IOException e) {
            throw new PngjOutputException(e);
        }
    }

    public static void writeBytes(OutputStream outputStream, byte[] bArr, int i, int i2) {
        try {
            outputStream.write(bArr, i, i2);
        } catch (IOException e) {
            throw new PngjOutputException(e);
        }
    }

    public static void logdebug(String str) {
        if (isDebug()) {
            System.err.println("logdebug: " + str);
        }
    }

    public static int filterRowNone(int i) {
        return i & 255;
    }

    public static int filterRowSub(int i, int i2) {
        return (i - i2) & 255;
    }

    public static int filterRowUp(int i, int i2) {
        return (i - i2) & 255;
    }

    public static int filterRowAverage(int i, int i2, int i3) {
        return (i - ((i2 + i3) / 2)) & 255;
    }

    public static int filterRowPaeth(int i, int i2, int i3, int i4) {
        return (i - a(i2, i3, i4)) & 255;
    }

    static final int a(int i, int i2, int i3) {
        int i4 = (i + i2) - i3;
        int i5 = i4 >= i ? i4 - i : i - i4;
        int i6 = i4 >= i2 ? i4 - i2 : i2 - i4;
        int i7 = i4 >= i3 ? i4 - i3 : i3 - i4;
        if (i5 > i6 || i5 > i7) {
            return i6 <= i7 ? i2 : i3;
        }
        return i;
    }

    public static void debug(Object obj) {
        a(obj, 1, true);
    }

    public static InputStream istreamFromFile(File file) {
        try {
            return new FileInputStream(file);
        } catch (Exception e) {
            throw new PngjInputException("Could not open " + file, e);
        }
    }

    static OutputStream a(File file, boolean z) {
        return ge.a(file, z);
    }

    static void a(Object obj, int i, boolean z) {
        StackTraceElement stackTraceElement = new Exception().getStackTrace()[i + 1];
        String className = stackTraceElement.getClassName();
        System.err.println(className.substring(className.lastIndexOf(46) + 1) + "." + stackTraceElement.getMethodName() + "(" + stackTraceElement.getLineNumber() + "): " + (obj == null ? null : obj.toString()));
    }

    public static void setDebug(boolean z) {
        a.set(Boolean.valueOf(z));
    }

    public static boolean isDebug() {
        return a.get().booleanValue();
    }

    public static long getDigest(PngReader pngReader) {
        return pngReader.a();
    }

    public static void initCrcForTests(PngReader pngReader) {
        pngReader.prepareSimpleDigestComputation();
    }

    public static long getRawIdatBytes(PngReader pngReader) {
        return pngReader.interlaced ? pngReader.getChunkseq().getDeinterlacer().getTotalRawBytes() : pngReader.imgInfo.getTotalRawBytes();
    }
}
