package Catalano.Imaging.Filters;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ExtractBoundary implements IApplyInPlace {
    private Algorithm a;
    private ArrayList<IntPoint> b;

    public enum Algorithm {
        Erosion,
        Dilatation
    }

    public ExtractBoundary() {
        this.a = Algorithm.Erosion;
    }

    public ExtractBoundary(Algorithm algorithm) {
        this.a = Algorithm.Erosion;
        this.a = algorithm;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        if (this.a == Algorithm.Erosion) {
            new BinaryErosion().applyInPlace(fastBitmap2);
        } else {
            new BinaryDilatation().applyInPlace(fastBitmap2);
        }
        new Difference(fastBitmap).applyInPlace(fastBitmap2);
        fastBitmap.setImage(fastBitmap2);
    }

    public ArrayList<IntPoint> ProcessImage(FastBitmap fastBitmap) {
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        if (this.b == null) {
            applyInPlace(fastBitmap2);
        }
        int width = fastBitmap2.getWidth();
        int height = fastBitmap2.getHeight();
        this.b = new ArrayList<>();
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                if (fastBitmap2.getGray(i, i2) == 255) {
                    this.b.add(new IntPoint(i, i2));
                }
            }
        }
        return this.b;
    }
}
