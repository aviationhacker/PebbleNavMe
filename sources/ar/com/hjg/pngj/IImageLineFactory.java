package ar.com.hjg.pngj;

import ar.com.hjg.pngj.IImageLine;

/* JADX INFO: loaded from: classes.dex */
public interface IImageLineFactory<T extends IImageLine> {
    T createImageLine(ImageInfo imageInfo);
}
