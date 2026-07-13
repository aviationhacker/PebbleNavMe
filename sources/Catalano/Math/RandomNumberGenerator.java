package Catalano.Math;

/* JADX INFO: loaded from: classes.dex */
public interface RandomNumberGenerator {
    int next(int i);

    double nextDouble();

    void nextDoubles(double[] dArr);

    int nextInt();

    int nextInt(int i);

    long nextLong();
}
