package Catalano.Math.Dissimilarities;

import Catalano.Math.Distances.IDistance;

/* JADX INFO: loaded from: classes.dex */
public class DiceDissimilarity implements IDistance<int[]> {
    @Override // Catalano.Math.Distances.IDistance, Catalano.Math.Distances.IDivergence
    public double Compute(int[] iArr, int[] iArr2) {
        return Dissimilarity.Dice(iArr, iArr2);
    }
}
