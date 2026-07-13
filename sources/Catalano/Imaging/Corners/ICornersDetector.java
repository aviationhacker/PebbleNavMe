package Catalano.Imaging.Corners;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ICornersDetector {
    List<IntPoint> ProcessImage(FastBitmap fastBitmap);
}
