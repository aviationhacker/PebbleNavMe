package Catalano.Imaging.Filters;

import Catalano.Core.IntPoint;
import Catalano.Imaging.Color;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public class FloodFill implements IApplyInPlace {
    IntPoint a;
    private Algorithm b;
    private Color c;
    private int d;

    public enum Algorithm {
        FourWay,
        EightWay
    }

    public FloodFill(int i, int i2, Color color) {
        this.b = Algorithm.FourWay;
        this.a = new IntPoint(i, i2);
        this.c = color;
    }

    public FloodFill(int i, int i2, int i3, int i4, int i5) {
        this.b = Algorithm.FourWay;
        this.a = new IntPoint(i, i2);
        this.c = new Color(i3, i4, i5);
    }

    public FloodFill(int i, int i2, int i3, int i4, int i5, Algorithm algorithm) {
        this.b = Algorithm.FourWay;
        this.a = new IntPoint(i, i2);
        this.c = new Color(i3, i4, i5);
        this.b = algorithm;
    }

    public FloodFill(IntPoint intPoint, int i, int i2, int i3) {
        this.b = Algorithm.FourWay;
        this.a = intPoint;
        this.c = new Color(i, i2, i3);
    }

    public FloodFill(IntPoint intPoint, Color color) {
        this.b = Algorithm.FourWay;
        this.a = intPoint;
        this.c = color;
    }

    public FloodFill(IntPoint intPoint, int i, int i2, int i3, Algorithm algorithm) {
        this.b = Algorithm.FourWay;
        this.a = intPoint;
        this.c = new Color(i, i2, i3);
        this.b = algorithm;
    }

    public FloodFill(int i, int i2, int i3) {
        this.b = Algorithm.FourWay;
        this.a = new IntPoint(i, i2);
        this.d = i3;
    }

    public FloodFill(int i, int i2, int i3, Algorithm algorithm) {
        this.b = Algorithm.FourWay;
        this.a = new IntPoint(i, i2);
        this.b = algorithm;
    }

    public FloodFill(IntPoint intPoint, int i) {
        this.b = Algorithm.FourWay;
        this.a = intPoint;
        this.d = i;
    }

    public FloodFill(IntPoint intPoint, int i, Algorithm algorithm) {
        this.b = Algorithm.FourWay;
        this.a = intPoint;
        this.d = i;
        this.b = algorithm;
    }

    public Algorithm getAlgorithm() {
        return this.b;
    }

    public void setAlgorithm(Algorithm algorithm) {
        this.b = algorithm;
    }

    public void setRGB(int i, int i2, int i3) {
        this.c = new Color(i, i2, i3);
    }

    public IntPoint getPoint() {
        return this.a;
    }

    public void setPoint(int i, int i2) {
        this.a = new IntPoint(i, i2);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            LinkedList linkedList = new LinkedList();
            Color color = new Color(fastBitmap.getRGB(this.a));
            switch (this.b) {
                case FourWay:
                    if (!Color.isEqual(color, this.c)) {
                        linkedList.addFirst(new IntPoint(this.a));
                        while (linkedList.size() > 0) {
                            IntPoint intPoint = (IntPoint) linkedList.removeLast();
                            if (!Color.isEqual(new Color(fastBitmap.getRGB(intPoint)), this.c)) {
                                int i = intPoint.x;
                                int i2 = intPoint.y;
                                fastBitmap.setRGB(i, i2, this.c);
                                if (i2 - 1 > 0) {
                                    linkedList.addFirst(new IntPoint(i, i2 - 1));
                                }
                                if (i2 + 1 < width) {
                                    linkedList.addFirst(new IntPoint(i, i2 + 1));
                                }
                                if (i + 1 < height) {
                                    linkedList.addFirst(new IntPoint(i + 1, i2));
                                }
                                if (i - 1 > 0) {
                                    linkedList.addFirst(new IntPoint(i - 1, i2));
                                }
                            }
                        }
                        return;
                    }
                    return;
                case EightWay:
                    if (!Color.isEqual(color, this.c)) {
                        linkedList.addFirst(new IntPoint(this.a));
                        while (linkedList.size() > 0) {
                            IntPoint intPoint2 = (IntPoint) linkedList.removeFirst();
                            if (Color.isEqual(color, this.c)) {
                                int i3 = intPoint2.x;
                                int i4 = intPoint2.y;
                                fastBitmap.setRGB(i3, i4, this.c);
                                if (i3 - 1 > 0 && i4 - 1 > 0) {
                                    linkedList.addFirst(new IntPoint(i3 - 1, i4 - 1));
                                }
                                if (i3 - 1 > 0) {
                                    linkedList.addFirst(new IntPoint(i3 - 1, i4));
                                }
                                if (i3 + 1 < height && i4 + 1 < width) {
                                    linkedList.addFirst(new IntPoint(i3 + 1, i4 + 1));
                                }
                                if (i4 - 1 > 0) {
                                    linkedList.addFirst(new IntPoint(i3, i4 - 1));
                                }
                                if (i4 + 1 < width) {
                                    linkedList.addFirst(new IntPoint(i3, i4 + 1));
                                }
                                if (i3 + 1 < height && i4 - 1 > 0) {
                                    linkedList.addFirst(new IntPoint(i3 + 1, i4 - 1));
                                }
                                if (i3 + 1 < height) {
                                    linkedList.addFirst(new IntPoint(i3 + 1, i4));
                                }
                                if (i3 + 1 < height && i4 + 1 < width) {
                                    linkedList.addFirst(new IntPoint(i3 + 1, i4 + 1));
                                }
                            }
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
        if (fastBitmap.isGrayscale()) {
            int width2 = fastBitmap.getWidth();
            int height2 = fastBitmap.getHeight();
            LinkedList linkedList2 = new LinkedList();
            int gray = fastBitmap.getGray(this.a);
            int i5 = this.d;
            switch (this.b) {
                case FourWay:
                    if (gray != i5) {
                        linkedList2.addFirst(new IntPoint(this.a));
                        while (linkedList2.size() > 0) {
                            IntPoint intPoint3 = (IntPoint) linkedList2.removeLast();
                            if (fastBitmap.getGray(intPoint3.x, intPoint3.y) == gray) {
                                int i6 = intPoint3.x;
                                int i7 = intPoint3.y;
                                fastBitmap.setGray(i6, i7, this.d);
                                if (i7 - 1 > 0) {
                                    linkedList2.addFirst(new IntPoint(i6, i7 - 1));
                                }
                                if (i7 + 1 < width2) {
                                    linkedList2.addFirst(new IntPoint(i6, i7 + 1));
                                }
                                if (i6 + 1 < height2) {
                                    linkedList2.addFirst(new IntPoint(i6 + 1, i7));
                                }
                                if (i6 - 1 > 0) {
                                    linkedList2.addFirst(new IntPoint(i6 - 1, i7));
                                }
                            }
                        }
                        return;
                    }
                    return;
                case EightWay:
                    if (gray != i5) {
                        linkedList2.addFirst(new IntPoint(this.a));
                        while (linkedList2.size() > 0) {
                            IntPoint intPoint4 = (IntPoint) linkedList2.removeFirst();
                            if (fastBitmap.getGray(intPoint4.x, intPoint4.y) == gray) {
                                int i8 = intPoint4.x;
                                int i9 = intPoint4.y;
                                fastBitmap.setGray(i8, i9, this.d);
                                if (i8 - 1 > 0 && i9 - 1 > 0) {
                                    linkedList2.addFirst(new IntPoint(i8 - 1, i9 - 1));
                                }
                                if (i8 - 1 > 0) {
                                    linkedList2.addFirst(new IntPoint(i8 - 1, i9));
                                }
                                if (i8 + 1 < height2 && i9 + 1 < width2) {
                                    linkedList2.addFirst(new IntPoint(i8 + 1, i9 + 1));
                                }
                                if (i9 - 1 > 0) {
                                    linkedList2.addFirst(new IntPoint(i8, i9 - 1));
                                }
                                if (i9 + 1 < width2) {
                                    linkedList2.addFirst(new IntPoint(i8, i9 + 1));
                                }
                                if (i8 + 1 < height2 && i9 - 1 > 0) {
                                    linkedList2.addFirst(new IntPoint(i8 + 1, i9 - 1));
                                }
                                if (i8 + 1 < height2) {
                                    linkedList2.addFirst(new IntPoint(i8 + 1, i9));
                                }
                                if (i8 + 1 < height2 && i9 + 1 < width2) {
                                    linkedList2.addFirst(new IntPoint(i8 + 1, i9 + 1));
                                }
                            }
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
        throw new IllegalArgumentException("Flood fill only works in RGB and grayscale images.");
    }
}
