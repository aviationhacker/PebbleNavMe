package ar.com.hjg.pngj;

import ar.com.hjg.pngj.IImageLine;

/* JADX INFO: loaded from: classes.dex */
public interface IImageLineSet<T extends IImageLine> {
    T getImageLine(int i);

    boolean hasImageLine(int i);

    int size();
}
