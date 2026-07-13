package ar.com.hjg.pngj.pixels;

import ar.com.hjg.pngj.IImageLine;
import ar.com.hjg.pngj.IImageLineFactory;
import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.ImageLineByte;
import java.awt.image.BufferedImage;

/* JADX INFO: loaded from: classes.dex */
public class ImageLineARGBbi implements IImageLine {
    private final BufferedImage a;
    private int b = -1;
    private boolean c;
    private int d;
    private boolean e;
    private byte[] f;
    public final ImageInfo imgInfo;

    public ImageLineARGBbi(ImageInfo imageInfo, BufferedImage bufferedImage, byte[] bArr) {
        this.imgInfo = imageInfo;
        this.a = bufferedImage;
        this.f = bArr;
        this.c = this.a.getColorModel().hasAlpha();
        if (this.c) {
            this.d = this.a.getWidth() * 4;
        } else {
            this.d = this.a.getWidth() * 3;
        }
        this.e = this.a.getSampleModel().getBandOffsets()[0] != 0;
    }

    public static IImageLineFactory<ImageLineByte> getFactory(ImageInfo imageInfo) {
        return new IImageLineFactory<ImageLineByte>() { // from class: ar.com.hjg.pngj.pixels.ImageLineARGBbi.1
            @Override // ar.com.hjg.pngj.IImageLineFactory
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ImageLineByte createImageLine(ImageInfo imageInfo2) {
                return new ImageLineByte(imageInfo2);
            }
        };
    }

    @Override // ar.com.hjg.pngj.IImageLine
    public void readFromPngRaw(byte[] bArr, int i, int i2, int i3) {
        throw new RuntimeException("not implemented");
    }

    @Override // ar.com.hjg.pngj.IImageLine
    public void writeToPngRaw(byte[] bArr) {
        if (this.imgInfo.bytesPerRow != this.d) {
            throw new RuntimeException("??");
        }
        if (this.b < 0 || this.b >= this.imgInfo.rows) {
            throw new RuntimeException("???");
        }
        int i = this.b * this.d;
        int i2 = 1;
        if (this.c) {
            if (this.e) {
                while (i2 <= this.d) {
                    int i3 = i + 1;
                    byte b = this.f[i];
                    int i4 = i3 + 1;
                    byte b2 = this.f[i3];
                    int i5 = i4 + 1;
                    byte b3 = this.f[i4];
                    i = i5 + 1;
                    int i6 = i2 + 1;
                    bArr[i2] = this.f[i5];
                    int i7 = i6 + 1;
                    bArr[i6] = b3;
                    int i8 = i7 + 1;
                    bArr[i7] = b2;
                    i2 = i8 + 1;
                    bArr[i8] = b;
                }
                return;
            }
            while (i2 <= this.d) {
                int i9 = i2 + 1;
                int i10 = i + 1;
                bArr[i2] = this.f[i];
                int i11 = i9 + 1;
                int i12 = i10 + 1;
                bArr[i9] = this.f[i10];
                int i13 = i11 + 1;
                int i14 = i12 + 1;
                bArr[i11] = this.f[i12];
                i2 = i13 + 1;
                i = i14 + 1;
                bArr[i13] = this.f[i14];
            }
            return;
        }
        if (this.e) {
            while (i2 <= this.d) {
                int i15 = i + 1;
                byte b4 = this.f[i];
                int i16 = i15 + 1;
                byte b5 = this.f[i15];
                i = i16 + 1;
                int i17 = i2 + 1;
                bArr[i2] = this.f[i16];
                int i18 = i17 + 1;
                bArr[i17] = b5;
                i2 = i18 + 1;
                bArr[i18] = b4;
            }
            return;
        }
        while (i2 <= this.d) {
            int i19 = i2 + 1;
            int i20 = i + 1;
            bArr[i2] = this.f[i];
            int i21 = i19 + 1;
            int i22 = i20 + 1;
            bArr[i19] = this.f[i20];
            i2 = i21 + 1;
            i = i22 + 1;
            bArr[i21] = this.f[i22];
        }
    }

    @Override // ar.com.hjg.pngj.IImageLine
    public void endReadFromPngRaw() {
        throw new RuntimeException("not implemented");
    }

    public int getRowNumber() {
        return this.b;
    }

    public void setRowNumber(int i) {
        this.b = i;
    }
}
