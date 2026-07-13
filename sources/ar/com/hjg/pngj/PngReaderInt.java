package ar.com.hjg.pngj;

import java.io.File;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class PngReaderInt extends PngReader {
    public PngReaderInt(File file) {
        super(file);
    }

    public PngReaderInt(InputStream inputStream) {
        super(inputStream);
    }

    public ImageLineInt readRowInt() {
        IImageLine row = readRow();
        if (row instanceof ImageLineInt) {
            return (ImageLineInt) row;
        }
        throw new PngjException("This is not a ImageLineInt : " + row.getClass());
    }
}
