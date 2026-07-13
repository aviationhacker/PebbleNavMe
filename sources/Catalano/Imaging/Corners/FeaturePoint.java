package Catalano.Imaging.Corners;

import Catalano.Core.IntPoint;

/* JADX INFO: loaded from: classes.dex */
public class FeaturePoint implements Comparable<FeaturePoint> {
    public int score;
    public int x;
    public int y;

    public FeaturePoint() {
    }

    public FeaturePoint(int i, int i2) {
        this.x = i;
        this.y = i2;
    }

    public FeaturePoint(int i, int i2, int i3) {
        this.x = i;
        this.y = i2;
        this.score = i3;
    }

    public IntPoint toIntPoint() {
        return new IntPoint(this.x, this.y);
    }

    @Override // java.lang.Comparable
    public int compareTo(FeaturePoint featurePoint) {
        if (featurePoint.score < this.score) {
            return 1;
        }
        return featurePoint.score == this.score ? 0 : -1;
    }
}
