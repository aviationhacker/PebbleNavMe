package Catalano.Imaging.Filters;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.BlobDetection;
import Catalano.Math.Geometry.PointsCloud;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ExtractBiggestBlob implements IApplyInPlace {
    private boolean a;

    public ExtractBiggestBlob() {
        this.a = true;
    }

    public ExtractBiggestBlob(boolean z) {
        this.a = true;
        this.a = z;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            BlobDetection blobDetection = new BlobDetection();
            ArrayList<IntPoint> points = blobDetection.ProcessImage(fastBitmap).get(blobDetection.getIdBiggestBlob()).getPoints();
            if (this.a) {
                FastBitmap fastBitmap2 = new FastBitmap(fastBitmap.getWidth(), fastBitmap.getHeight(), FastBitmap.ColorSpace.Grayscale);
                for (int i = 0; i < points.size(); i++) {
                    fastBitmap2.setGray(points.get(i), 255);
                }
                fastBitmap.setImage(fastBitmap2);
                return;
            }
            ArrayList<IntPoint> arrayListGetBoundingRectangle = PointsCloud.GetBoundingRectangle(points);
            new Crop(arrayListGetBoundingRectangle.get(0).x - 2, arrayListGetBoundingRectangle.get(0).y - 2, Math.abs(arrayListGetBoundingRectangle.get(0).y - arrayListGetBoundingRectangle.get(1).y) + 5, Math.abs(arrayListGetBoundingRectangle.get(0).x - arrayListGetBoundingRectangle.get(1).x) + 4).ApplyInPlace(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("Extract Biggest Blob only works in grayscale images.");
    }
}
