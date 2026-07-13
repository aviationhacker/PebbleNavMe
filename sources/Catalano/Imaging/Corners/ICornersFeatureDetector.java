package Catalano.Imaging.Corners;

import Catalano.Imaging.FastBitmap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ICornersFeatureDetector {
    List<FeaturePoint> ProcessImage(FastBitmap fastBitmap);
}
