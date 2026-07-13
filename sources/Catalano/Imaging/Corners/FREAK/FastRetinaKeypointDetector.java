package Catalano.Imaging.Corners.FREAK;

import Catalano.Core.IntPoint;
import Catalano.Imaging.Corners.FeaturePoint;
import Catalano.Imaging.Corners.ICornersDetector;
import Catalano.Imaging.Corners.ICornersFeatureDetector;
import Catalano.Imaging.Corners.SusanCornersDetector;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Tools.IntegralImage;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FastRetinaKeypointDetector {
    public ICornersDetector Detector;
    public ICornersFeatureDetector FDetector;
    private FastRetinaKeypointDescriptorType a;
    private float b;
    private int c;
    private IntegralImage d;
    private FastBitmap e;
    private FastRetinaKeypointPattern f;
    private FastRetinaKeypointDescriptor g;

    public enum FastRetinaKeypointDescriptorType {
        None,
        Standard,
        Extended
    }

    public FastRetinaKeypointDescriptor GetDescriptor() {
        if (this.g == null || this.f == null) {
            if (this.f == null) {
                this.f = new FastRetinaKeypointPattern(this.c, this.b);
            }
            this.g = new FastRetinaKeypointDescriptor(this.e, this.d, this.f);
            this.g.setExtended(this.a == FastRetinaKeypointDescriptorType.Extended);
        }
        return this.g;
    }

    public FastRetinaKeypointDetector(ICornersDetector iCornersDetector) {
        this.a = FastRetinaKeypointDescriptorType.Standard;
        this.b = 22.0f;
        this.c = 4;
        this.Detector = iCornersDetector;
    }

    public FastRetinaKeypointDetector(ICornersFeatureDetector iCornersFeatureDetector) {
        this.a = FastRetinaKeypointDescriptorType.Standard;
        this.b = 22.0f;
        this.c = 4;
        this.FDetector = iCornersFeatureDetector;
    }

    public FastRetinaKeypointDetector() {
        this.a = FastRetinaKeypointDescriptorType.Standard;
        this.b = 22.0f;
        this.c = 4;
        this.Detector = new SusanCornersDetector();
    }

    public List<FastRetinaKeypoint> ProcessImage(FastBitmap fastBitmap) {
        int i = 0;
        if (fastBitmap.isGrayscale()) {
            this.e = new FastBitmap(fastBitmap);
        } else {
            this.e = new FastBitmap(fastBitmap);
            this.e.toGrayscale();
        }
        ArrayList arrayList = new ArrayList();
        if (this.Detector != null) {
            List<IntPoint> listProcessImage = this.Detector.ProcessImage(this.e);
            while (true) {
                int i2 = i;
                if (i2 >= listProcessImage.size()) {
                    break;
                }
                arrayList.add(new FastRetinaKeypoint(listProcessImage.get(i2).x, listProcessImage.get(i2).y));
                i = i2 + 1;
            }
        } else {
            List<FeaturePoint> listProcessImage2 = this.FDetector.ProcessImage(this.e);
            while (true) {
                int i3 = i;
                if (i3 >= listProcessImage2.size()) {
                    break;
                }
                arrayList.add(new FastRetinaKeypoint(listProcessImage2.get(i3).x, listProcessImage2.get(i3).y));
                i = i3 + 1;
            }
        }
        this.d = IntegralImage.FromFastBitmap(this.e);
        this.g = null;
        if (this.a != FastRetinaKeypointDescriptorType.None) {
            this.g = GetDescriptor();
            this.g.Compute(arrayList);
        }
        return arrayList;
    }
}
