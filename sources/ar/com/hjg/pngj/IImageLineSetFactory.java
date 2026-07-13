package ar.com.hjg.pngj;

import ar.com.hjg.pngj.IImageLine;

/* JADX INFO: loaded from: classes.dex */
public interface IImageLineSetFactory<T extends IImageLine> {
    IImageLineSet<T> create(ImageInfo imageInfo, boolean z, int i, int i2, int i3);
}
