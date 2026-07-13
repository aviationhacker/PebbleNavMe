package Catalano.Imaging.Corners;

import Catalano.Imaging.FastBitmap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FastCornersDetector implements ICornersFeatureDetector {
    private int a;
    private boolean b;
    private Algorithm c;

    public enum Algorithm {
        FAST_9,
        FAST_12
    }

    public int getThreshold() {
        return this.a;
    }

    public void setThreshold(int i) {
        this.a = i;
    }

    public boolean isSuppressed() {
        return this.b;
    }

    public void setSuppression(boolean z) {
        this.b = z;
    }

    public Algorithm getAlgorithm() {
        return this.c;
    }

    public void setAlgorithm(Algorithm algorithm) {
        this.c = algorithm;
    }

    public FastCornersDetector() {
        this.a = 20;
        this.b = true;
        this.c = Algorithm.FAST_9;
    }

    public FastCornersDetector(int i) {
        this.a = 20;
        this.b = true;
        this.c = Algorithm.FAST_9;
        this.a = i;
    }

    public FastCornersDetector(Algorithm algorithm) {
        this.a = 20;
        this.b = true;
        this.c = Algorithm.FAST_9;
        this.c = algorithm;
    }

    public FastCornersDetector(int i, boolean z) {
        this.a = 20;
        this.b = true;
        this.c = Algorithm.FAST_9;
        this.a = i;
        this.b = z;
    }

    public FastCornersDetector(int i, boolean z, Algorithm algorithm) {
        this.a = 20;
        this.b = true;
        this.c = Algorithm.FAST_9;
        this.a = i;
        this.b = z;
        this.c = algorithm;
    }

    @Override // Catalano.Imaging.Corners.ICornersFeatureDetector
    public List<FeaturePoint> ProcessImage(FastBitmap fastBitmap) {
        switch (this.c) {
            case FAST_9:
                return new Fast9(this.a, this.b).ProcessImage(fastBitmap);
            case FAST_12:
                return new Fast12(this.a, this.b).ProcessImage(fastBitmap);
            default:
                return null;
        }
    }
}
