package ar.com.hjg.pngj;

import java.io.File;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class PngReaderByte extends PngReader {
    public PngReaderByte(File file) {
        super(file);
        setLineSetFactory(ImageLineSetDefault.getFactoryByte());
    }

    public PngReaderByte(InputStream inputStream) {
        super(inputStream);
        setLineSetFactory(ImageLineSetDefault.getFactoryByte());
    }

    public ImageLineByte readRowByte() {
        return (ImageLineByte) readRow();
    }
}
