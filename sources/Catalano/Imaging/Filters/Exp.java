package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Math.Approximation;
import android.support.v4.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class Exp implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        double dLog = 255.0d / Math.log(255.0d);
        if (fastBitmap.isGrayscale()) {
            int[] data = fastBitmap.getData();
            for (int i = 0; i < data.length; i++) {
                double dHighprecision_Exp = Approximation.Highprecision_Exp(((double) (data[i] & 255)) / dLog);
                if (dHighprecision_Exp < 0.0d) {
                    dHighprecision_Exp = 0.0d;
                }
                if (dHighprecision_Exp > 255.0d) {
                    dHighprecision_Exp = 255.0d;
                }
                data[i] = ((int) dHighprecision_Exp) | (-16777216) | (((int) dHighprecision_Exp) << 16) | (((int) dHighprecision_Exp) << 8);
            }
        }
        if (fastBitmap.isRGB()) {
            int[] data2 = fastBitmap.getData();
            for (int i2 = 0; i2 < data2.length; i2++) {
                double d = (data2[i2] >> 16) & 255;
                double d2 = (data2[i2] >> 8) & 255;
                double d3 = data2[i2] & 255;
                double dHighprecision_Exp2 = Approximation.Highprecision_Exp(d / dLog);
                double dHighprecision_Exp3 = Approximation.Highprecision_Exp(d2 / dLog);
                double dHighprecision_Exp4 = Approximation.Highprecision_Exp(d3 / dLog);
                if (dHighprecision_Exp2 < 0.0d) {
                    dHighprecision_Exp2 = 0.0d;
                }
                if (dHighprecision_Exp2 > 255.0d) {
                    dHighprecision_Exp2 = 255.0d;
                }
                if (dHighprecision_Exp3 < 0.0d) {
                    dHighprecision_Exp3 = 0.0d;
                }
                if (dHighprecision_Exp3 > 255.0d) {
                    dHighprecision_Exp3 = 255.0d;
                }
                if (dHighprecision_Exp4 < 0.0d) {
                    dHighprecision_Exp4 = 0.0d;
                }
                if (dHighprecision_Exp4 > 255.0d) {
                    dHighprecision_Exp4 = 255.0d;
                }
                data2[i2] = ((int) dHighprecision_Exp4) | (((int) dHighprecision_Exp3) << 8) | (((int) dHighprecision_Exp2) << 16) | ViewCompat.MEASURED_STATE_MASK;
            }
        }
    }
}
