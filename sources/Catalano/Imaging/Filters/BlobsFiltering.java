package Catalano.Imaging.Filters;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.Blob;
import Catalano.Imaging.Tools.BlobDetection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BlobsFiltering implements IApplyInPlace {
    private Filter a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;

    public enum Filter {
        Area,
        Size
    }

    public Filter getFilter() {
        return this.a;
    }

    public void setFilter(Filter filter) {
        this.a = filter;
    }

    public int getMinWidth() {
        return this.f;
    }

    public void setMinWidth(int i) {
        this.f = i;
    }

    public int getMaxWidth() {
        return this.g;
    }

    public void setMaxWidth(int i) {
        this.g = i;
    }

    public int getMinHeight() {
        return this.d;
    }

    public void setMinHeight(int i) {
        this.d = i;
    }

    public int getMaxHeight() {
        return this.e;
    }

    public void setMaxHeight(int i) {
        this.e = i;
    }

    public int getMaxArea() {
        return this.c;
    }

    public void setMaxArea(int i) {
        this.c = Math.max(0, i);
    }

    public int getMinArea() {
        return this.b;
    }

    public void setMinArea(int i) {
        this.b = Math.max(0, i);
    }

    public BlobsFiltering() {
        this.a = Filter.Area;
        this.b = 0;
        this.c = Integer.MAX_VALUE;
        this.d = 0;
        this.e = Integer.MAX_VALUE;
        this.f = 0;
        this.g = Integer.MAX_VALUE;
    }

    public BlobsFiltering(int i, int i2) {
        this.a = Filter.Area;
        this.b = 0;
        this.c = Integer.MAX_VALUE;
        this.d = 0;
        this.e = Integer.MAX_VALUE;
        this.f = 0;
        this.g = Integer.MAX_VALUE;
        this.b = Math.max(0, i);
        this.c = Math.max(0, i2);
    }

    public BlobsFiltering(int i, int i2, int i3, int i4) {
        this.a = Filter.Area;
        this.b = 0;
        this.c = Integer.MAX_VALUE;
        this.d = 0;
        this.e = Integer.MAX_VALUE;
        this.f = 0;
        this.g = Integer.MAX_VALUE;
        this.f = i;
        this.g = i2;
        this.d = i3;
        this.e = i4;
        this.a = Filter.Size;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        List<Blob> listProcessImage = new BlobDetection().ProcessImage(fastBitmap);
        switch (this.a) {
            case Area:
                for (int i = 0; i < listProcessImage.size(); i++) {
                    int area = listProcessImage.get(i).getArea();
                    if (area > this.b && area <= this.c) {
                        for (IntPoint intPoint : listProcessImage.get(i).getPoints()) {
                            fastBitmap.setGray(intPoint.x, intPoint.y, 0);
                        }
                    }
                }
                break;
            case Size:
                for (int i2 = 0; i2 < listProcessImage.size(); i2++) {
                    int width = listProcessImage.get(i2).getWidth();
                    int height = listProcessImage.get(i2).getHeight();
                    if (width > this.f && width <= this.g && height > this.d && height <= this.e) {
                        for (IntPoint intPoint2 : listProcessImage.get(i2).getPoints()) {
                            fastBitmap.setGray(intPoint2.x, intPoint2.y, 0);
                        }
                    }
                }
                break;
        }
    }
}
