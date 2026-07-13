package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;

/* JADX INFO: loaded from: classes.dex */
public class MaitraMoments {
    public double[] Compute(FastBitmap fastBitmap) {
        double[] dArrCompute = new HuMoments().Compute(fastBitmap);
        return new double[]{Math.sqrt(dArrCompute[1]) / dArrCompute[0], (ImageMoments.getNormalizedCentralMoment(fastBitmap, 0, 0) * dArrCompute[2]) / (dArrCompute[1] * dArrCompute[0]), dArrCompute[3] / dArrCompute[2], Math.sqrt(dArrCompute[4]) / dArrCompute[3], dArrCompute[5] / (dArrCompute[3] * dArrCompute[0]), dArrCompute[6] / dArrCompute[4]};
    }
}
