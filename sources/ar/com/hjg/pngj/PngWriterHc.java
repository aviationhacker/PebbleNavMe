package ar.com.hjg.pngj;

import ar.com.hjg.pngj.pixels.PixelsWriter;
import ar.com.hjg.pngj.pixels.PixelsWriterMultiple;
import java.io.File;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class PngWriterHc extends PngWriter {
    public PngWriterHc(File file, ImageInfo imageInfo, boolean z) {
        super(file, imageInfo, z);
        setFilterType(FilterType.FILTER_SUPER_ADAPTIVE);
    }

    public PngWriterHc(File file, ImageInfo imageInfo) {
        super(file, imageInfo);
    }

    public PngWriterHc(OutputStream outputStream, ImageInfo imageInfo) {
        super(outputStream, imageInfo);
    }

    @Override // ar.com.hjg.pngj.PngWriter
    protected PixelsWriter createPixelsWriter(ImageInfo imageInfo) {
        return new PixelsWriterMultiple(imageInfo);
    }

    public PixelsWriterMultiple getPixelWriterMultiple() {
        return (PixelsWriterMultiple) this.pixelsWriter;
    }
}
