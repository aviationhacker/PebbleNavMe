package Catalano.Math.Dissimilarities;

/* JADX INFO: loaded from: classes.dex */
public class KulsinskDissimilarity implements IDissimilarity<int[]> {
    @Override // Catalano.Math.Dissimilarities.IDissimilarity, Catalano.Math.Distances.IDivergence
    public double Compute(int[] iArr, int[] iArr2) {
        return Dissimilarity.Kulsinsk(iArr, iArr2);
    }
}
