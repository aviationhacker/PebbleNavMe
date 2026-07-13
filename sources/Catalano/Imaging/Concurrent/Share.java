package Catalano.Imaging.Concurrent;

import Catalano.Imaging.FastBitmap;

/* JADX INFO: loaded from: classes.dex */
public class Share {
    public int endHeight;
    public int endWidth;
    public FastBitmap fastBitmap;
    public boolean lastThread;
    public int startX;
    public int startY;

    public Share(FastBitmap fastBitmap, int i, int i2) {
        this.lastThread = false;
        this.fastBitmap = fastBitmap;
        this.startX = i;
        this.endHeight = i2;
    }

    public Share(FastBitmap fastBitmap, int i, int i2, boolean z) {
        this.lastThread = false;
        this.fastBitmap = fastBitmap;
        this.startX = i;
        this.endHeight = i2;
        this.lastThread = z;
    }

    public Share(FastBitmap fastBitmap, int i, int i2, int i3, int i4) {
        this.lastThread = false;
        this.fastBitmap = fastBitmap;
        this.startX = i;
        this.startY = i2;
        this.endHeight = i4;
        this.endWidth = i3;
    }

    public Share(FastBitmap fastBitmap, int i, int i2, int i3, int i4, boolean z) {
        this.lastThread = false;
        this.fastBitmap = fastBitmap;
        this.startX = i;
        this.startY = i2;
        this.endHeight = i4;
        this.endWidth = i3;
        this.lastThread = z;
    }
}
