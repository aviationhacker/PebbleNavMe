package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjException;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;

/* JADX INFO: loaded from: classes.dex */
public class ChunkHelper {
    public static final String IDAT = "IDAT";
    public static final String IEND = "IEND";
    public static final String IHDR = "IHDR";
    public static final String PLTE = "PLTE";
    public static final String bKGD = "bKGD";
    public static final String cHRM = "cHRM";
    public static final String gAMA = "gAMA";
    public static final String hIST = "hIST";
    public static final String iCCP = "iCCP";
    public static final String iTXt = "iTXt";
    public static final String pHYs = "pHYs";
    public static final String sBIT = "sBIT";
    public static final String sPLT = "sPLT";
    public static final String sRGB = "sRGB";
    public static final String tEXt = "tEXt";
    public static final String tIME = "tIME";
    public static final String tRNS = "tRNS";
    public static final String zTXt = "zTXt";
    public static final byte[] b_IHDR = toBytes("IHDR");
    public static final byte[] b_PLTE = toBytes("PLTE");
    public static final byte[] b_IDAT = toBytes("IDAT");
    public static final byte[] b_IEND = toBytes("IEND");
    private static byte[] a = new byte[4096];

    ChunkHelper() {
    }

    public static byte[] toBytes(String str) {
        try {
            return str.getBytes(PngHelperInternal.charsetLatin1name);
        } catch (UnsupportedEncodingException e) {
            throw new PngBadCharsetException(e);
        }
    }

    public static String toString(byte[] bArr) {
        try {
            return new String(bArr, PngHelperInternal.charsetLatin1name);
        } catch (UnsupportedEncodingException e) {
            throw new PngBadCharsetException(e);
        }
    }

    public static String toString(byte[] bArr, int i, int i2) {
        try {
            return new String(bArr, i, i2, PngHelperInternal.charsetLatin1name);
        } catch (UnsupportedEncodingException e) {
            throw new PngBadCharsetException(e);
        }
    }

    public static byte[] toBytesUTF8(String str) {
        try {
            return str.getBytes(PngHelperInternal.charsetUTF8name);
        } catch (UnsupportedEncodingException e) {
            throw new PngBadCharsetException(e);
        }
    }

    public static String toStringUTF8(byte[] bArr) {
        try {
            return new String(bArr, PngHelperInternal.charsetUTF8name);
        } catch (UnsupportedEncodingException e) {
            throw new PngBadCharsetException(e);
        }
    }

    public static String toStringUTF8(byte[] bArr, int i, int i2) {
        try {
            return new String(bArr, i, i2, PngHelperInternal.charsetUTF8name);
        } catch (UnsupportedEncodingException e) {
            throw new PngBadCharsetException(e);
        }
    }

    public static boolean isCritical(String str) {
        return Character.isUpperCase(str.charAt(0));
    }

    public static boolean isPublic(String str) {
        return Character.isUpperCase(str.charAt(1));
    }

    public static boolean isSafeToCopy(String str) {
        return !Character.isUpperCase(str.charAt(3));
    }

    public static boolean isUnknown(PngChunk pngChunk) {
        return pngChunk instanceof PngChunkUNKNOWN;
    }

    public static int posNullByte(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] == 0) {
                return i;
            }
        }
        return -1;
    }

    public static boolean shouldLoad(String str, ChunkLoadBehaviour chunkLoadBehaviour) {
        if (isCritical(str)) {
            return true;
        }
        switch (chunkLoadBehaviour) {
        }
        return true;
    }

    public static final byte[] compressBytes(byte[] bArr, boolean z) {
        return compressBytes(bArr, 0, bArr.length, z);
    }

    public static byte[] compressBytes(byte[] bArr, int i, int i2, boolean z) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i, i2);
            InputStream inflaterInputStream = z ? byteArrayInputStream : new InflaterInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            OutputStream deflaterOutputStream = z ? new DeflaterOutputStream(byteArrayOutputStream) : byteArrayOutputStream;
            a(inflaterInputStream, deflaterOutputStream);
            inflaterInputStream.close();
            deflaterOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new PngjException(e);
        }
    }

    private static void a(InputStream inputStream, OutputStream outputStream) {
        synchronized (a) {
            while (true) {
                int i = inputStream.read(a);
                if (i > 0) {
                    outputStream.write(a, 0, i);
                }
            }
        }
    }

    public static List<PngChunk> filterList(List<PngChunk> list, ChunkPredicate chunkPredicate) {
        ArrayList arrayList = new ArrayList();
        for (PngChunk pngChunk : list) {
            if (chunkPredicate.match(pngChunk)) {
                arrayList.add(pngChunk);
            }
        }
        return arrayList;
    }

    public static int trimList(List<PngChunk> list, ChunkPredicate chunkPredicate) {
        Iterator<PngChunk> it = list.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                if (chunkPredicate.match(it.next())) {
                    it.remove();
                    i = i2 + 1;
                } else {
                    i = i2;
                }
            } else {
                return i2;
            }
        }
    }

    public static final boolean equivalent(PngChunk pngChunk, PngChunk pngChunk2) {
        if (pngChunk == pngChunk2) {
            return true;
        }
        if (pngChunk == null || pngChunk2 == null || !pngChunk.id.equals(pngChunk2.id)) {
            return false;
        }
        if (!pngChunk.crit && pngChunk.getClass() == pngChunk2.getClass()) {
            if (!pngChunk2.allowsMultiple()) {
                return true;
            }
            if (pngChunk instanceof PngChunkTextVar) {
                return ((PngChunkTextVar) pngChunk).getKey().equals(((PngChunkTextVar) pngChunk2).getKey());
            }
            if (pngChunk instanceof PngChunkSPLT) {
                return ((PngChunkSPLT) pngChunk).getPalName().equals(((PngChunkSPLT) pngChunk2).getPalName());
            }
            return false;
        }
        return false;
    }

    public static boolean isText(PngChunk pngChunk) {
        return pngChunk instanceof PngChunkTextVar;
    }
}
