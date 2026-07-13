package ar.com.hjg.pngj.pixels;

import ar.com.hjg.pngj.IImageLineSet;
import ar.com.hjg.pngj.ImageInfo;
import java.awt.image.BufferedImage;

/* JADX INFO: loaded from: classes.dex */
public class ImageLineSetARGBbi implements IImageLineSet<ImageLineARGBbi> {
    BufferedImage a;
    private ImageInfo b;
    private ImageLineARGBbi c;

    public ImageLineSetARGBbi(BufferedImage bufferedImage, ImageInfo imageInfo) {
        this.a = bufferedImage;
        this.b = imageInfo;
        this.c = new ImageLineARGBbi(imageInfo, bufferedImage, this.a.getRaster().getDataBuffer().getData());
    }

    @Override // ar.com.hjg.pngj.IImageLineSet
    public ImageLineARGBbi getImageLine(int i) {
        this.c.setRowNumber(i);
        return this.c;
    }

    @Override // ar.com.hjg.pngj.IImageLineSet
    public boolean hasImageLine(int i) {
        return i >= 0 && i < this.b.rows;
    }

    @Override // ar.com.hjg.pngj.IImageLineSet
    public int size() {
        return 1;
    }
}
