package Catalano.Math.Distances;

/* JADX INFO: loaded from: classes.dex */
public class MinkowskiDistance implements IDistance<double[]> {
    private double a = 1.0d;

    public double getOrder() {
        return this.a;
    }

    public void setOrder(double d) {
        if (d == 0.0d) {
            throw new IllegalArgumentException("P must be different from 0.");
        }
        this.a = d;
    }

    public MinkowskiDistance() {
    }

    public MinkowskiDistance(double d) {
        setOrder(d);
    }

    @Override // Catalano.Math.Distances.IDistance, Catalano.Math.Distances.IDivergence
    public double Compute(double[] dArr, double[] dArr2) {
        return Distance.Minkowski(dArr, dArr2, this.a);
    }
}
