package Catalano.Math.Geometry;

import Catalano.Core.IntPoint;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class FlatAnglesOptimizer implements IShapeOptimizer {
    private float a;

    public FlatAnglesOptimizer() {
        this.a = 160.0f;
    }

    public FlatAnglesOptimizer(float f) {
        this.a = 160.0f;
        this.a = f;
    }

    public float getMaxAngleToKeep() {
        return this.a;
    }

    public void setMaxAngleToKeep(float f) {
        this.a = Math.min(180.0f, Math.max(140.0f, f));
    }

    @Override // Catalano.Math.Geometry.IShapeOptimizer
    public ArrayList<IntPoint> OptimizeShape(ArrayList<IntPoint> arrayList) {
        int i;
        int i2;
        ArrayList<IntPoint> arrayList2 = new ArrayList<>();
        if (arrayList.size() <= 3) {
            arrayList2.addAll(arrayList);
        } else {
            arrayList2.add(arrayList.get(0));
            arrayList2.add(arrayList.get(1));
            int size = arrayList.size();
            int i3 = 2;
            int i4 = 2;
            while (i3 < size) {
                arrayList2.add(arrayList.get(i3));
                int i5 = i4 + 1;
                if (GeometryTools.GetAngleBetweenVectors(arrayList2.get(i5 - 2), arrayList2.get(i5 - 3), arrayList2.get(i5 - 1)) <= this.a || (i5 <= 3 && i3 >= size - 1)) {
                    i2 = i5;
                } else {
                    arrayList2.remove(i5 - 2);
                    i2 = i5 - 1;
                }
                i3++;
                i4 = i2;
            }
            if (i4 > 3) {
                if (GeometryTools.GetAngleBetweenVectors(arrayList2.get(i4 - 1), arrayList2.get(i4 - 2), arrayList2.get(0)) > this.a) {
                    arrayList2.remove(i4 - 1);
                    i = i4 - 1;
                } else {
                    i = i4;
                }
                if (i > 3 && GeometryTools.GetAngleBetweenVectors(arrayList2.get(0), arrayList2.get(i - 1), arrayList2.get(1)) > this.a) {
                    arrayList2.remove(0);
                }
            }
        }
        return arrayList2;
    }
}
