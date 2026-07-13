package ar.com.hjg.pngj;

import ar.com.hjg.pngj.IImageLine;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImageLineSetDefault<T extends IImageLine> implements IImageLineSet<T> {
    private final boolean a;
    private final int b;
    private final int c;
    protected int currentRow = -1;
    private final int d;
    protected T imageLine;
    protected List<T> imageLines;
    protected final ImageInfo imgInfo;

    protected abstract T createImageLine();

    public ImageLineSetDefault(ImageInfo imageInfo, boolean z, int i, int i2, int i3) {
        this.imgInfo = imageInfo;
        this.a = z;
        if (z) {
            this.b = 1;
            this.c = 0;
            this.d = 1;
        } else {
            this.b = imageInfo.rows;
            this.c = 0;
            this.d = 1;
        }
        a();
    }

    private void a() {
        if (this.a) {
            this.imageLine = (T) createImageLine();
            return;
        }
        this.imageLines = new ArrayList();
        for (int i = 0; i < this.b; i++) {
            this.imageLines.add((T) createImageLine());
        }
    }

    @Override // ar.com.hjg.pngj.IImageLineSet
    public T getImageLine(int i) {
        this.currentRow = i;
        return this.a ? this.imageLine : this.imageLines.get(imageRowToMatrixRowStrict(i));
    }

    @Override // ar.com.hjg.pngj.IImageLineSet
    public boolean hasImageLine(int i) {
        return this.a ? this.currentRow == i : imageRowToMatrixRowStrict(i) >= 0;
    }

    @Override // ar.com.hjg.pngj.IImageLineSet
    public int size() {
        return this.b;
    }

    public int imageRowToMatrixRowStrict(int i) {
        int i2 = i - this.c;
        int i3 = (i2 < 0 || i2 % this.d != 0) ? -1 : i2 / this.d;
        if (i3 < this.b) {
            return i3;
        }
        return -1;
    }

    public int matrixRowToImageRow(int i) {
        return (this.d * i) + this.c;
    }

    public int imageRowToMatrixRow(int i) {
        int i2 = (i - this.c) / this.d;
        if (i2 < 0) {
            return 0;
        }
        return i2 >= this.b ? this.b - 1 : i2;
    }

    public static IImageLineSetFactory<ImageLineInt> getFactoryInt() {
        return new IImageLineSetFactory<ImageLineInt>() { // from class: ar.com.hjg.pngj.ImageLineSetDefault.1
            @Override // ar.com.hjg.pngj.IImageLineSetFactory
            public IImageLineSet<ImageLineInt> create(ImageInfo imageInfo, boolean z, int i, int i2, int i3) {
                return new ImageLineSetDefault<ImageLineInt>(imageInfo, z, i, i2, i3) { // from class: ar.com.hjg.pngj.ImageLineSetDefault.1.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // ar.com.hjg.pngj.ImageLineSetDefault
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public ImageLineInt createImageLine() {
                        return new ImageLineInt(this.imgInfo);
                    }
                };
            }
        };
    }

    public static IImageLineSetFactory<ImageLineByte> getFactoryByte() {
        return new IImageLineSetFactory<ImageLineByte>() { // from class: ar.com.hjg.pngj.ImageLineSetDefault.2
            @Override // ar.com.hjg.pngj.IImageLineSetFactory
            public IImageLineSet<ImageLineByte> create(ImageInfo imageInfo, boolean z, int i, int i2, int i3) {
                return new ImageLineSetDefault<ImageLineByte>(imageInfo, z, i, i2, i3) { // from class: ar.com.hjg.pngj.ImageLineSetDefault.2.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // ar.com.hjg.pngj.ImageLineSetDefault
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public ImageLineByte createImageLine() {
                        return new ImageLineByte(this.imgInfo);
                    }
                };
            }
        };
    }
}
