package Catalano.Imaging.Tools;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.DistanceTransform;
import Catalano.Math.Distances.Distance;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class NearestNeighborMatrix {
    private Direction a;
    private int b;

    public enum Direction {
        Horizontal,
        Vertical
    }

    public Direction getDirection() {
        return this.a;
    }

    public void setDirection(Direction direction) {
        this.a = direction;
    }

    public int getStartIndex() {
        return this.b;
    }

    public void setStartIndex(int i) {
        this.b = i;
    }

    public NearestNeighborMatrix() {
        this.a = Direction.Vertical;
        this.b = 1;
    }

    public NearestNeighborMatrix(int i) {
        this.a = Direction.Vertical;
        this.b = 1;
        this.b = i;
    }

    public NearestNeighborMatrix(Direction direction) {
        this.a = Direction.Vertical;
        this.b = 1;
        this.a = direction;
    }

    public NearestNeighborMatrix(Direction direction, int i) {
        this.a = Direction.Vertical;
        this.b = 1;
        this.a = direction;
        this.b = i;
    }

    public int[][] ProcessImage(FastBitmap fastBitmap) {
        float[][] fArrCompute = new DistanceTransform().Compute(fastBitmap);
        ArrayList<IntPoint> arrayList = new ArrayList<>();
        int length = fArrCompute.length;
        int length2 = fArrCompute[0].length;
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length2; i2++) {
                if (fArrCompute[i][i2] == 1.0f) {
                    arrayList.add(new IntPoint(i, i2));
                }
            }
        }
        return ProcessImage(fastBitmap, arrayList);
    }

    public int[][] ProcessImage(FastBitmap fastBitmap, ArrayList<IntPoint> arrayList) {
        IntPoint intPoint;
        IntPoint intPoint2;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
        if (fastBitmap.isGrayscale()) {
            if (this.a == Direction.Vertical) {
                int i = this.b;
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 >= width) {
                        break;
                    }
                    for (int i4 = 0; i4 < height; i4++) {
                        if (fastBitmap.getGray(i4, i3) == 255) {
                            iArr[i4][i3] = i;
                        }
                        i++;
                    }
                    i2 = i3 + 1;
                }
                int i5 = 0;
                while (true) {
                    int i6 = i5;
                    if (i6 >= width) {
                        return iArr;
                    }
                    int i7 = 0;
                    while (true) {
                        int i8 = i7;
                        if (i8 < height) {
                            if (fastBitmap.getGray(i8, i6) == 0) {
                                double dSquaredEuclidean = Double.MAX_VALUE;
                                IntPoint intPoint3 = new IntPoint();
                                Iterator<IntPoint> it = arrayList.iterator();
                                while (true) {
                                    intPoint2 = intPoint3;
                                    double d = dSquaredEuclidean;
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    IntPoint next = it.next();
                                    dSquaredEuclidean = Distance.SquaredEuclidean(i8, i6, next.x, next.y);
                                    if (dSquaredEuclidean < d) {
                                        intPoint3 = next;
                                    } else {
                                        intPoint3 = intPoint2;
                                        dSquaredEuclidean = d;
                                    }
                                }
                                iArr[i8][i6] = iArr[intPoint2.x][intPoint2.y];
                            }
                            i7 = i8 + 1;
                        }
                    }
                    i5 = i6 + 1;
                }
            } else {
                int i9 = this.b;
                int i10 = 0;
                while (true) {
                    int i11 = i10;
                    if (i11 >= height) {
                        break;
                    }
                    for (int i12 = 0; i12 < width; i12++) {
                        if (fastBitmap.getGray(i11, i12) == 255) {
                            iArr[i11][i12] = i9;
                        }
                        i9++;
                    }
                    i10 = i11 + 1;
                }
                int i13 = 0;
                while (true) {
                    int i14 = i13;
                    if (i14 >= height) {
                        return iArr;
                    }
                    int i15 = 0;
                    while (true) {
                        int i16 = i15;
                        if (i16 < width) {
                            if (fastBitmap.getGray(i14, i16) == 0) {
                                double dSquaredEuclidean2 = Double.MAX_VALUE;
                                IntPoint intPoint4 = new IntPoint();
                                Iterator<IntPoint> it2 = arrayList.iterator();
                                while (true) {
                                    intPoint = intPoint4;
                                    double d2 = dSquaredEuclidean2;
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    IntPoint next2 = it2.next();
                                    dSquaredEuclidean2 = Distance.SquaredEuclidean(i14, i16, next2.x, next2.y);
                                    if (dSquaredEuclidean2 < d2) {
                                        intPoint4 = next2;
                                    } else {
                                        intPoint4 = intPoint;
                                        dSquaredEuclidean2 = d2;
                                    }
                                }
                                iArr[i14][i16] = iArr[intPoint.x][intPoint.y];
                            }
                            i15 = i16 + 1;
                        }
                    }
                    i13 = i14 + 1;
                }
            }
        } else {
            return (int[][]) null;
        }
    }

    public IntPoint getPoint(int i, int i2, int i3) {
        return new IntPoint((int) Math.floor(r0 / i3), (i - 1) % i2);
    }
}
