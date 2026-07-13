package Catalano.Imaging.Tools;

/* JADX INFO: loaded from: classes.dex */
public final class Interpolation {
    private Interpolation() {
    }

    public static double BiCubicKernel(double d) {
        if (d < 0.0d) {
            d = -d;
        }
        if (d <= 1.0d) {
            return (((1.5d * d) - 2.5d) * d * d) + 1.0d;
        }
        if (d < 2.0d) {
            return ((((((-0.5d) * d) + 2.5d) * d) - 4.0d) * d) + 2.0d;
        }
        return 0.0d;
    }
}
