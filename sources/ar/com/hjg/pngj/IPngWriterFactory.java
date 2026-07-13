package ar.com.hjg.pngj;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public interface IPngWriterFactory {
    PngWriter createPngWriter(OutputStream outputStream, ImageInfo imageInfo);
}
