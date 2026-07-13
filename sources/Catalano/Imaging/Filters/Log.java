package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import android.support.v4.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class Log implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        double dLog = 255.0d / Math.log(255.0d);
        if (fastBitmap.isGrayscale()) {
            int[] data = fastBitmap.getData();
            for (int i = 0; i < data.length; i++) {
                int iLog = data[i] & 255;
                if (iLog != 0) {
                    iLog = (int) (Math.log(iLog) * dLog);
                }
                if (iLog < 0) {
                    iLog = 0;
                }
                if (iLog > 255) {
                    iLog = 255;
                }
                data[i] = iLog | (iLog << 16) | ViewCompat.MEASURED_STATE_MASK | (iLog << 8);
            }
        }
        if (fastBitmap.isRGB()) {
            int[] data2 = fastBitmap.getData();
            for (int i2 = 0; i2 < data2.length; i2++) {
                int iLog2 = (data2[i2] >> 16) & 255;
                int iLog3 = (data2[i2] >> 8) & 255;
                int iLog4 = data2[i2] & 255;
                if (iLog2 != 0) {
                    iLog2 = (int) (Math.log(iLog2) * dLog);
                }
                if (iLog3 != 0) {
                    iLog3 = (int) (Math.log(iLog3) * dLog);
                }
                if (iLog4 != 0) {
                    iLog4 = (int) (Math.log(iLog4) * dLog);
                }
                if (iLog2 < 0) {
                    iLog2 = 0;
                }
                if (iLog2 > 255) {
                    iLog2 = 255;
                }
                if (iLog3 < 0) {
                    iLog3 = 0;
                }
                if (iLog3 > 255) {
                    iLog3 = 255;
                }
                if (iLog4 < 0) {
                    iLog4 = 0;
                }
                if (iLog4 > 255) {
                    iLog4 = 255;
                }
                data2[i2] = iLog4 | (iLog3 << 8) | (iLog2 << 16) | ViewCompat.MEASURED_STATE_MASK;
            }
        }
    }
}
