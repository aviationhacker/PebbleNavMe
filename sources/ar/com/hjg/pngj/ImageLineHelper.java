package ar.com.hjg.pngj;

import android.support.v4.internal.view.SupportMenu;
import android.support.v4.media.TransportMediator;
import ar.com.hjg.pngj.chunks.PngChunkPLTE;
import ar.com.hjg.pngj.chunks.PngChunkTRNS;
import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes.dex */
public class ImageLineHelper {
    static int[] a;
    static int[] b;
    static int[] c;
    static int[][] d;

    private static void a() {
        a = new int[2];
        for (int i = 0; i < 2; i++) {
            a[i] = i * 255;
        }
        b = new int[4];
        for (int i2 = 0; i2 < 4; i2++) {
            b[i2] = (i2 * 255) / 3;
        }
        c = new int[16];
        for (int i3 = 0; i3 < 16; i3++) {
            c[i3] = (i3 * 255) / 15;
        }
        d = new int[][]{null, a, b, null, c};
    }

    public static void scaleUp(IImageLineArray iImageLineArray) {
        int i = 0;
        if (!iImageLineArray.getImageInfo().indexed && iImageLineArray.getImageInfo().bitDepth < 8) {
            if (a == null || d == null) {
                a();
            }
            int[] iArr = d[iImageLineArray.getImageInfo().bitDepth];
            if (iImageLineArray instanceof ImageLineInt) {
                ImageLineInt imageLineInt = (ImageLineInt) iImageLineArray;
                while (i < imageLineInt.getSize()) {
                    imageLineInt.scanline[i] = iArr[imageLineInt.scanline[i]];
                    i++;
                }
                return;
            }
            if (iImageLineArray instanceof ImageLineByte) {
                ImageLineByte imageLineByte = (ImageLineByte) iImageLineArray;
                while (i < imageLineByte.getSize()) {
                    imageLineByte.a[i] = (byte) iArr[imageLineByte.a[i]];
                    i++;
                }
                return;
            }
            throw new PngjException("not implemented");
        }
    }

    public static void scaleDown(IImageLineArray iImageLineArray) {
        int i = 0;
        if (!iImageLineArray.getImageInfo().indexed && iImageLineArray.getImageInfo().bitDepth < 8) {
            if (iImageLineArray instanceof ImageLineInt) {
                int i2 = 8 - iImageLineArray.getImageInfo().bitDepth;
                if (iImageLineArray instanceof ImageLineInt) {
                    ImageLineInt imageLineInt = (ImageLineInt) iImageLineArray;
                    while (i < iImageLineArray.getSize()) {
                        imageLineInt.scanline[i] = imageLineInt.scanline[i] >> i2;
                        i++;
                    }
                    return;
                }
                if (iImageLineArray instanceof ImageLineByte) {
                    ImageLineByte imageLineByte = (ImageLineByte) iImageLineArray;
                    while (i < iImageLineArray.getSize()) {
                        imageLineByte.a[i] = (byte) ((imageLineByte.a[i] & UnsignedBytes.MAX_VALUE) >> i2);
                        i++;
                    }
                    return;
                }
                return;
            }
            throw new PngjException("not implemented");
        }
    }

    public static byte scaleUp(int i, byte b2) {
        return i < 8 ? (byte) d[i][b2] : b2;
    }

    public static byte scaleDown(int i, byte b2) {
        return i < 8 ? (byte) (b2 >> (8 - i)) : b2;
    }

    public static int[] palette2rgb(ImageLineInt imageLineInt, PngChunkPLTE pngChunkPLTE, PngChunkTRNS pngChunkTRNS, int[] iArr) {
        return a(imageLineInt, pngChunkPLTE, pngChunkTRNS, iArr, false);
    }

    public static int[] palette2rgba(ImageLineInt imageLineInt, PngChunkPLTE pngChunkPLTE, PngChunkTRNS pngChunkTRNS, int[] iArr) {
        return a(imageLineInt, pngChunkPLTE, pngChunkTRNS, iArr, true);
    }

    public static int[] palette2rgb(ImageLineInt imageLineInt, PngChunkPLTE pngChunkPLTE, int[] iArr) {
        return a(imageLineInt, pngChunkPLTE, null, iArr, false);
    }

    private static int[] a(IImageLine iImageLine, PngChunkPLTE pngChunkPLTE, PngChunkTRNS pngChunkTRNS, int[] iArr, boolean z) {
        boolean z2 = pngChunkTRNS != null;
        int i = z2 ? 4 : 3;
        ImageLineInt imageLineInt = (ImageLineInt) (iImageLine instanceof ImageLineInt ? iImageLine : null);
        ImageLineByte imageLineByte = (ImageLineByte) (iImageLine instanceof ImageLineByte ? iImageLine : null);
        boolean z3 = imageLineByte != null;
        int i2 = imageLineInt != null ? imageLineInt.imgInfo.cols : imageLineByte.imgInfo.cols;
        int i3 = i2 * i;
        if (iArr == null || iArr.length < i3) {
            iArr = new int[i3];
        }
        int length = pngChunkTRNS != null ? pngChunkTRNS.getPalletteAlpha().length : 0;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = z3 ? imageLineByte.a[i4] & UnsignedBytes.MAX_VALUE : imageLineInt.scanline[i4];
            pngChunkPLTE.getEntryRgb(i5, iArr, i4 * i);
            if (z2) {
                iArr[(i4 * i) + 3] = i5 < length ? pngChunkTRNS.getPalletteAlpha()[i5] : 255;
            }
        }
        return iArr;
    }

    public static String infoFirstLastPixels(ImageLineInt imageLineInt) {
        return imageLineInt.imgInfo.channels == 1 ? String.format("first=(%d) last=(%d)", Integer.valueOf(imageLineInt.scanline[0]), Integer.valueOf(imageLineInt.scanline[imageLineInt.scanline.length - 1])) : String.format("first=(%d %d %d) last=(%d %d %d)", Integer.valueOf(imageLineInt.scanline[0]), Integer.valueOf(imageLineInt.scanline[1]), Integer.valueOf(imageLineInt.scanline[2]), Integer.valueOf(imageLineInt.scanline[imageLineInt.scanline.length - imageLineInt.imgInfo.channels]), Integer.valueOf(imageLineInt.scanline[(imageLineInt.scanline.length - imageLineInt.imgInfo.channels) + 1]), Integer.valueOf(imageLineInt.scanline[(imageLineInt.scanline.length - imageLineInt.imgInfo.channels) + 2]));
    }

    public static int getPixelRGB8(IImageLine iImageLine, int i) {
        if (iImageLine instanceof ImageLineInt) {
            int i2 = ((ImageLineInt) iImageLine).imgInfo.channels * i;
            int[] scanline = ((ImageLineInt) iImageLine).getScanline();
            return scanline[i2 + 2] | (scanline[i2] << 16) | (scanline[i2 + 1] << 8);
        }
        if (iImageLine instanceof ImageLineByte) {
            int i3 = ((ImageLineByte) iImageLine).imgInfo.channels * i;
            byte[] scanline2 = ((ImageLineByte) iImageLine).getScanline();
            return (scanline2[i3 + 2] & UnsignedBytes.MAX_VALUE) | ((scanline2[i3] & UnsignedBytes.MAX_VALUE) << 16) | ((scanline2[i3 + 1] & UnsignedBytes.MAX_VALUE) << 8);
        }
        throw new PngjException("Not supported " + iImageLine.getClass());
    }

    public static int getPixelARGB8(IImageLine iImageLine, int i) {
        if (iImageLine instanceof ImageLineInt) {
            int i2 = ((ImageLineInt) iImageLine).imgInfo.channels * i;
            int[] scanline = ((ImageLineInt) iImageLine).getScanline();
            return scanline[i2 + 2] | (scanline[i2 + 3] << 24) | (scanline[i2] << 16) | (scanline[i2 + 1] << 8);
        }
        if (iImageLine instanceof ImageLineByte) {
            int i3 = ((ImageLineByte) iImageLine).imgInfo.channels * i;
            byte[] scanline2 = ((ImageLineByte) iImageLine).getScanline();
            return (scanline2[i3 + 2] & UnsignedBytes.MAX_VALUE) | ((scanline2[i3 + 3] & UnsignedBytes.MAX_VALUE) << 24) | ((scanline2[i3] & UnsignedBytes.MAX_VALUE) << 16) | ((scanline2[i3 + 1] & UnsignedBytes.MAX_VALUE) << 8);
        }
        throw new PngjException("Not supported " + iImageLine.getClass());
    }

    public static void setPixelsRGB8(ImageLineInt imageLineInt, int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < imageLineInt.imgInfo.cols; i2++) {
            int i3 = i + 1;
            imageLineInt.scanline[i] = (iArr[i2] >> 16) & 255;
            int i4 = i3 + 1;
            imageLineInt.scanline[i3] = (iArr[i2] >> 8) & 255;
            i = i4 + 1;
            imageLineInt.scanline[i4] = iArr[i2] & 255;
        }
    }

    public static void setPixelRGB8(ImageLineInt imageLineInt, int i, int i2, int i3, int i4) {
        int i5 = imageLineInt.imgInfo.channels * i;
        int i6 = i5 + 1;
        imageLineInt.scanline[i5] = i2;
        imageLineInt.scanline[i6] = i3;
        imageLineInt.scanline[i6 + 1] = i4;
    }

    public static void setPixelRGB8(ImageLineInt imageLineInt, int i, int i2) {
        setPixelRGB8(imageLineInt, i, (i2 >> 16) & 255, (i2 >> 8) & 255, i2 & 255);
    }

    public static void setPixelsRGBA8(ImageLineInt imageLineInt, int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < imageLineInt.imgInfo.cols; i2++) {
            int i3 = i + 1;
            imageLineInt.scanline[i] = (iArr[i2] >> 16) & 255;
            int i4 = i3 + 1;
            imageLineInt.scanline[i3] = (iArr[i2] >> 8) & 255;
            int i5 = i4 + 1;
            imageLineInt.scanline[i4] = iArr[i2] & 255;
            i = i5 + 1;
            imageLineInt.scanline[i5] = (iArr[i2] >> 24) & 255;
        }
    }

    public static void setPixelRGBA8(ImageLineInt imageLineInt, int i, int i2, int i3, int i4, int i5) {
        int i6 = imageLineInt.imgInfo.channels * i;
        int i7 = i6 + 1;
        imageLineInt.scanline[i6] = i2;
        int i8 = i7 + 1;
        imageLineInt.scanline[i7] = i3;
        imageLineInt.scanline[i8] = i4;
        imageLineInt.scanline[i8 + 1] = i5;
    }

    public static void setPixelRGBA8(ImageLineInt imageLineInt, int i, int i2) {
        setPixelRGBA8(imageLineInt, i, (i2 >> 16) & 255, (i2 >> 8) & 255, i2 & 255, (i2 >> 24) & 255);
    }

    public static void setValD(ImageLineInt imageLineInt, int i, double d2) {
        imageLineInt.scanline[i] = double2int(imageLineInt, d2);
    }

    public static int interpol(int i, int i2, int i3, int i4, double d2, double d3) {
        return (int) ((((((double) i) * (1.0d - d2)) + (((double) i2) * d2)) * (1.0d - d3)) + (((((double) i3) * (1.0d - d2)) + (((double) i4) * d2)) * d3) + 0.5d);
    }

    public static double int2double(ImageLineInt imageLineInt, int i) {
        return imageLineInt.imgInfo.bitDepth == 16 ? ((double) i) / 65535.0d : ((double) i) / 255.0d;
    }

    public static double int2doubleClamped(ImageLineInt imageLineInt, int i) {
        double d2 = imageLineInt.imgInfo.bitDepth == 16 ? ((double) i) / 65535.0d : ((double) i) / 255.0d;
        if (d2 <= 0.0d) {
            return 0.0d;
        }
        if (d2 >= 1.0d) {
            return 1.0d;
        }
        return d2;
    }

    public static int double2int(ImageLineInt imageLineInt, double d2) {
        if (d2 <= 0.0d) {
            d2 = 0.0d;
        } else if (d2 >= 1.0d) {
            d2 = 1.0d;
        }
        return imageLineInt.imgInfo.bitDepth == 16 ? (int) ((65535.0d * d2) + 0.5d) : (int) ((255.0d * d2) + 0.5d);
    }

    public static int double2intClamped(ImageLineInt imageLineInt, double d2) {
        if (d2 <= 0.0d) {
            d2 = 0.0d;
        } else if (d2 >= 1.0d) {
            d2 = 1.0d;
        }
        return imageLineInt.imgInfo.bitDepth == 16 ? (int) ((65535.0d * d2) + 0.5d) : (int) ((255.0d * d2) + 0.5d);
    }

    public static int clampTo_0_255(int i) {
        if (i > 255) {
            return 255;
        }
        if (i < 0) {
            return 0;
        }
        return i;
    }

    public static int clampTo_0_65535(int i) {
        if (i > 65535) {
            return SupportMenu.USER_MASK;
        }
        if (i < 0) {
            return 0;
        }
        return i;
    }

    public static int clampTo_128_127(int i) {
        if (i > 127) {
            return TransportMediator.KEYCODE_MEDIA_PAUSE;
        }
        if (i < -128) {
            return -128;
        }
        return i;
    }

    static int a(int i) {
        if (i == 4) {
            return 240;
        }
        if (i == 2) {
            return 192;
        }
        return 128;
    }
}
