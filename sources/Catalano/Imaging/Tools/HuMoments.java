package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;

/* JADX INFO: loaded from: classes.dex */
public class HuMoments {
    public double[] Compute(FastBitmap fastBitmap) {
        double normalizedCentralMoment = ImageMoments.getNormalizedCentralMoment(fastBitmap, 2, 0);
        double normalizedCentralMoment2 = ImageMoments.getNormalizedCentralMoment(fastBitmap, 0, 2);
        double normalizedCentralMoment3 = ImageMoments.getNormalizedCentralMoment(fastBitmap, 3, 0);
        double normalizedCentralMoment4 = ImageMoments.getNormalizedCentralMoment(fastBitmap, 1, 2);
        double normalizedCentralMoment5 = ImageMoments.getNormalizedCentralMoment(fastBitmap, 2, 1);
        double normalizedCentralMoment6 = ImageMoments.getNormalizedCentralMoment(fastBitmap, 0, 3);
        double normalizedCentralMoment7 = ImageMoments.getNormalizedCentralMoment(fastBitmap, 1, 1);
        return new double[]{normalizedCentralMoment + normalizedCentralMoment2, Math.pow(normalizedCentralMoment - 2.0d, 2.0d) + Math.pow(2.0d * normalizedCentralMoment7, 2.0d), Math.pow(normalizedCentralMoment3 - (3.0d * normalizedCentralMoment4), 2.0d) + Math.pow((3.0d * normalizedCentralMoment5) - normalizedCentralMoment6, 2.0d), Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d) + Math.pow(normalizedCentralMoment4 + normalizedCentralMoment6, 2.0d), ((normalizedCentralMoment3 - (3.0d * normalizedCentralMoment4)) * (normalizedCentralMoment3 + normalizedCentralMoment4) * (Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d) - (3.0d * Math.pow(normalizedCentralMoment5 + normalizedCentralMoment6, 2.0d)))) + (((3.0d * normalizedCentralMoment5) - normalizedCentralMoment6) * (normalizedCentralMoment5 + normalizedCentralMoment6) * ((3.0d * Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d)) - Math.pow(normalizedCentralMoment5 + normalizedCentralMoment6, 2.0d))), ((normalizedCentralMoment - normalizedCentralMoment2) * (Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d) - Math.pow(normalizedCentralMoment5 + normalizedCentralMoment6, 2.0d))) + (4.0d * normalizedCentralMoment7 * (normalizedCentralMoment3 + normalizedCentralMoment4) * (normalizedCentralMoment5 + normalizedCentralMoment6)), (((3.0d * normalizedCentralMoment5) - normalizedCentralMoment6) * (normalizedCentralMoment3 + normalizedCentralMoment4) * (Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d) - (3.0d * Math.pow(normalizedCentralMoment5 + normalizedCentralMoment6, 2.0d)))) + ((normalizedCentralMoment3 - (3.0d * normalizedCentralMoment4)) * (normalizedCentralMoment5 + normalizedCentralMoment6) * ((3.0d * Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d)) - Math.pow(normalizedCentralMoment5 + normalizedCentralMoment6, 2.0d))), (normalizedCentralMoment7 * (Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d) - Math.pow(normalizedCentralMoment6 + normalizedCentralMoment5, 2.0d))) - (((normalizedCentralMoment - normalizedCentralMoment2) * (normalizedCentralMoment3 + normalizedCentralMoment4)) * (normalizedCentralMoment6 + normalizedCentralMoment5))};
    }

    public static double getHuMoment(FastBitmap fastBitmap, int i) {
        int iMin = Math.min(8, Math.max(1, i));
        double normalizedCentralMoment = ImageMoments.getNormalizedCentralMoment(fastBitmap, 2, 0);
        double normalizedCentralMoment2 = ImageMoments.getNormalizedCentralMoment(fastBitmap, 0, 2);
        double normalizedCentralMoment3 = ImageMoments.getNormalizedCentralMoment(fastBitmap, 3, 0);
        double normalizedCentralMoment4 = ImageMoments.getNormalizedCentralMoment(fastBitmap, 1, 2);
        double normalizedCentralMoment5 = ImageMoments.getNormalizedCentralMoment(fastBitmap, 2, 1);
        double normalizedCentralMoment6 = ImageMoments.getNormalizedCentralMoment(fastBitmap, 0, 3);
        double normalizedCentralMoment7 = ImageMoments.getNormalizedCentralMoment(fastBitmap, 1, 1);
        switch (iMin) {
            case 1:
                return normalizedCentralMoment + normalizedCentralMoment2;
            case 2:
                return Math.pow(normalizedCentralMoment - 2.0d, 2.0d) + Math.pow(2.0d * normalizedCentralMoment7, 2.0d);
            case 3:
                return Math.pow(normalizedCentralMoment3 - (3.0d * normalizedCentralMoment4), 2.0d) + Math.pow((3.0d * normalizedCentralMoment5) - normalizedCentralMoment6, 2.0d);
            case 4:
                return Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d) + Math.pow(normalizedCentralMoment4 + normalizedCentralMoment6, 2.0d);
            case 5:
                return ((normalizedCentralMoment3 - (3.0d * normalizedCentralMoment4)) * (normalizedCentralMoment3 + normalizedCentralMoment4) * (Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d) - (3.0d * Math.pow(normalizedCentralMoment5 + normalizedCentralMoment6, 2.0d)))) + (((3.0d * normalizedCentralMoment5) - normalizedCentralMoment6) * (normalizedCentralMoment5 + normalizedCentralMoment6) * ((3.0d * Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d)) - Math.pow(normalizedCentralMoment5 + normalizedCentralMoment6, 2.0d)));
            case 6:
                return ((normalizedCentralMoment - normalizedCentralMoment2) * (Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d) - Math.pow(normalizedCentralMoment5 + normalizedCentralMoment6, 2.0d))) + (4.0d * normalizedCentralMoment7 * (normalizedCentralMoment3 + normalizedCentralMoment4) * (normalizedCentralMoment5 + normalizedCentralMoment6));
            case 7:
                return (((3.0d * normalizedCentralMoment5) - normalizedCentralMoment6) * (normalizedCentralMoment3 + normalizedCentralMoment4) * (Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d) - (3.0d * Math.pow(normalizedCentralMoment5 + normalizedCentralMoment6, 2.0d)))) + ((normalizedCentralMoment3 - (3.0d * normalizedCentralMoment4)) * (normalizedCentralMoment5 + normalizedCentralMoment6) * ((3.0d * Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d)) - Math.pow(normalizedCentralMoment5 + normalizedCentralMoment6, 2.0d)));
            case 8:
                return ((Math.pow(normalizedCentralMoment3 + normalizedCentralMoment4, 2.0d) - Math.pow(normalizedCentralMoment6 + normalizedCentralMoment5, 2.0d)) * normalizedCentralMoment7) - (((normalizedCentralMoment - normalizedCentralMoment2) * (normalizedCentralMoment3 + normalizedCentralMoment4)) * (normalizedCentralMoment6 + normalizedCentralMoment5));
            default:
                throw new IllegalArgumentException("Invalid number for Hu moment.");
        }
    }
}
