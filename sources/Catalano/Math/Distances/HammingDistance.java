package Catalano.Math.Distances;

/* JADX INFO: loaded from: classes.dex */
public class HammingDistance implements IDistance<String> {
    @Override // Catalano.Math.Distances.IDistance, Catalano.Math.Distances.IDivergence
    public double Compute(String str, String str2) {
        return Distance.Hamming(str, str2);
    }
}
