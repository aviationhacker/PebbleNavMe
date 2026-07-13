package Catalano.Math;

/* JADX INFO: loaded from: classes.dex */
public class Random {
    private RandomNumberGenerator a;

    public Random() {
        this(new UniversalGenerator());
    }

    public Random(long j) {
        this(new UniversalGenerator(j));
    }

    public Random(RandomNumberGenerator randomNumberGenerator) {
        this.a = randomNumberGenerator;
    }

    public double nextDouble() {
        return this.a.nextDouble();
    }

    public void nextDoubles(double[] dArr) {
        this.a.nextDoubles(dArr);
    }

    public double nextDouble(double d, double d2) {
        if (d < 0.0d) {
            if (nextInt(2) == 0) {
                return -nextDouble(0.0d, -d);
            }
            return nextDouble(0.0d, d2);
        }
        return ((d2 - d) * nextDouble()) + d;
    }

    public void nextDoubles(double[] dArr, double d, double d2) {
        this.a.nextDoubles(dArr);
        double d3 = d2 - d;
        int length = dArr.length;
        for (int i = 0; i < length; i++) {
            dArr[i] = (dArr[i] * d3) + d;
        }
    }

    public int nextInt() {
        return this.a.nextInt();
    }

    public int nextInt(int i) {
        return this.a.nextInt(i);
    }

    public long nextLong() {
        return this.a.nextLong();
    }

    public int[] permutate(int i) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = i2;
        }
        permutate(iArr);
        return iArr;
    }

    public void permutate(int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            int iNextInt = nextInt(iArr.length - i) + i;
            int i2 = iArr[i];
            iArr[i] = iArr[iNextInt];
            iArr[iNextInt] = i2;
        }
    }

    public void permutate(float[] fArr) {
        for (int i = 0; i < fArr.length; i++) {
            int iNextInt = nextInt(fArr.length - i) + i;
            float f = fArr[i];
            fArr[i] = fArr[iNextInt];
            fArr[iNextInt] = f;
        }
    }

    public void permutate(double[] dArr) {
        for (int i = 0; i < dArr.length; i++) {
            int iNextInt = nextInt(dArr.length - i) + i;
            double d = dArr[i];
            dArr[i] = dArr[iNextInt];
            dArr[iNextInt] = d;
        }
    }

    public void permutate(Object[] objArr) {
        for (int i = 0; i < objArr.length; i++) {
            int iNextInt = nextInt(objArr.length - i) + i;
            Object obj = objArr[i];
            objArr[i] = objArr[iNextInt];
            objArr[iNextInt] = obj;
        }
    }
}
