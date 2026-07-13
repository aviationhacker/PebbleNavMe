package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.util.Random;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class SaltAndPepperNoise implements IApplyInPlace {
    private int a;
    private Random b;

    public SaltAndPepperNoise() {
        this.a = 10;
        this.b = new Random();
    }

    public SaltAndPepperNoise(int i) {
        this.a = 10;
        this.b = new Random();
        this.a = Math.max(0, Math.min(100, i));
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i = 0;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int i2 = ((width * height) * this.a) / HttpStatus.OK_200;
        if (fastBitmap.isGrayscale()) {
            while (i < i2) {
                fastBitmap.setGray(this.b.nextInt(height), this.b.nextInt(width), new int[]{0, 255}[this.b.nextInt(2)]);
                i++;
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            while (i < i2) {
                int iNextInt = this.b.nextInt(height);
                int iNextInt2 = this.b.nextInt(width);
                int[] iArr = {0, 255};
                int iNextInt3 = this.b.nextInt(2);
                int iNextInt4 = this.b.nextInt(2);
                if (iNextInt3 == 0) {
                    fastBitmap.setRed(iNextInt, iNextInt2, iArr[iNextInt4]);
                } else if (iNextInt3 == 1) {
                    fastBitmap.setGreen(iNextInt, iNextInt2, iArr[iNextInt4]);
                } else if (iNextInt3 == 2) {
                    fastBitmap.setBlue(iNextInt, iNextInt2, iArr[iNextInt4]);
                }
                i++;
            }
        }
    }
}
