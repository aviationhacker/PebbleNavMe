package Catalano.Math.Dissimilarities;

/* JADX INFO: loaded from: classes.dex */
public class JaccardDissimilarity implements IDissimilarity<int[]> {
    @Override // Catalano.Math.Dissimilarities.IDissimilarity, Catalano.Math.Distances.IDivergence
    public double Compute(int[] iArr, int[] iArr2) {
        return Dissimilarity.Jaccard(iArr, iArr2);
    }
}
