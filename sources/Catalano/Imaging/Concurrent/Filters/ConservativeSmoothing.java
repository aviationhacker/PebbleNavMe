package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class ConservativeSmoothing implements IApplyInPlace {
    private int a = 1;
    private FastBitmap b;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(1, i);
    }

    public ConservativeSmoothing() {
    }

    public ConservativeSmoothing(int i) {
        setRadius(i);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        this.b = new FastBitmap(fastBitmap);
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        Thread[] threadArr = new Thread[iAvailableProcessors];
        int height = fastBitmap.getHeight() / iAvailableProcessors;
        int i = iAvailableProcessors - 1;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        while (i2 < iAvailableProcessors) {
            if (i2 == i) {
                z = true;
            }
            int i4 = i3 + height;
            threadArr[i2] = new Thread(new a(new Share(fastBitmap, i3, i4, z)));
            threadArr[i2].start();
            i2++;
            i3 = i4;
        }
        for (int i5 = 0; i5 < iAvailableProcessors; i5++) {
            try {
                threadArr[i5].join();
            } catch (InterruptedException e) {
                e.printStackTrace();
                return;
            }
        }
    }

    class a implements Runnable {
        private Share b;

        public a(Share share) {
            this.b = share;
        }

        @Override // java.lang.Runnable
        public void run() {
            int iA = a(ConservativeSmoothing.this.a);
            int i = ConservativeSmoothing.this.a;
            if (this.b.lastThread) {
                i = 0;
                this.b.endHeight = this.b.fastBitmap.getHeight();
            }
            int i2 = i;
            if (this.b.fastBitmap.isGrayscale()) {
                for (int i3 = this.b.startX; i3 < this.b.endHeight; i3++) {
                    for (int i4 = 0; i4 < this.b.fastBitmap.getWidth(); i4++) {
                        int i5 = 0;
                        int i6 = 0;
                        int i7 = 255;
                        while (i6 < iA) {
                            int i8 = i3 + (i6 - ConservativeSmoothing.this.a);
                            int i9 = i5;
                            int gray = i7;
                            int gray2 = i9;
                            for (int i10 = 0; i10 < iA; i10++) {
                                int i11 = (i10 - ConservativeSmoothing.this.a) + i4;
                                if (i8 >= 0 && i8 < this.b.endHeight + i2 && i11 >= 0 && i11 < this.b.fastBitmap.getWidth() && i6 != i10) {
                                    if (ConservativeSmoothing.this.b.getGray(i8, i11) > gray2) {
                                        gray2 = ConservativeSmoothing.this.b.getGray(i8, i11);
                                    }
                                    if (ConservativeSmoothing.this.b.getGray(i8, i11) < gray) {
                                        gray = ConservativeSmoothing.this.b.getGray(i8, i11);
                                    }
                                }
                            }
                            i6++;
                            int i12 = gray2;
                            i7 = gray;
                            i5 = i12;
                        }
                        int gray3 = ConservativeSmoothing.this.b.getGray(i3, i4);
                        if (gray3 <= i5) {
                            i5 = gray3;
                        }
                        if (i5 >= i7) {
                            i7 = i5;
                        }
                        this.b.fastBitmap.setGray(i3, i4, i7);
                    }
                }
                return;
            }
            for (int i13 = this.b.startX; i13 < this.b.endHeight; i13++) {
                for (int i14 = 0; i14 < this.b.fastBitmap.getWidth(); i14++) {
                    int i15 = 255;
                    int i16 = 0;
                    int i17 = 0;
                    int i18 = 0;
                    int i19 = 255;
                    int i20 = 0;
                    int i21 = 255;
                    while (i16 < iA) {
                        int i22 = i13 + (i16 - ConservativeSmoothing.this.a);
                        int i23 = 0;
                        int i24 = i20;
                        int red = i18;
                        int blue = i15;
                        int red2 = i19;
                        int green = i17;
                        int green2 = i21;
                        int blue2 = i24;
                        while (i23 < iA) {
                            int i25 = (i23 - ConservativeSmoothing.this.a) + i14;
                            if (i22 >= 0 && i22 < this.b.endHeight + i2 && i25 >= 0 && i25 < this.b.fastBitmap.getWidth() && i16 != i23) {
                                if (ConservativeSmoothing.this.b.getRed(i22, i25) > red) {
                                    red = ConservativeSmoothing.this.b.getRed(i22, i25);
                                }
                                if (ConservativeSmoothing.this.b.getGreen(i22, i25) > green) {
                                    green = ConservativeSmoothing.this.b.getGreen(i22, i25);
                                }
                                if (ConservativeSmoothing.this.b.getBlue(i22, i25) > blue2) {
                                    blue2 = ConservativeSmoothing.this.b.getBlue(i22, i25);
                                }
                                if (ConservativeSmoothing.this.b.getRed(i22, i25) < red2) {
                                    red2 = ConservativeSmoothing.this.b.getRed(i22, i25);
                                }
                                if (ConservativeSmoothing.this.b.getGreen(i22, i25) < green2) {
                                    green2 = ConservativeSmoothing.this.b.getGreen(i22, i25);
                                }
                                if (ConservativeSmoothing.this.b.getBlue(i22, i25) < blue) {
                                    blue = ConservativeSmoothing.this.b.getBlue(i22, i25);
                                }
                            }
                            i23++;
                            red2 = red2;
                            blue = blue;
                        }
                        i16++;
                        int i26 = blue2;
                        i21 = green2;
                        i17 = green;
                        i19 = red2;
                        i15 = blue;
                        i18 = red;
                        i20 = i26;
                    }
                    int red3 = ConservativeSmoothing.this.b.getRed(i13, i14);
                    int green3 = ConservativeSmoothing.this.b.getGreen(i13, i14);
                    int blue3 = ConservativeSmoothing.this.b.getBlue(i13, i14);
                    if (red3 <= i18) {
                        i18 = red3;
                    }
                    if (green3 <= i17) {
                        i17 = green3;
                    }
                    if (blue3 <= i20) {
                        i20 = blue3;
                    }
                    if (i18 >= i19) {
                        i19 = i18;
                    }
                    if (i17 >= i21) {
                        i21 = i17;
                    }
                    if (i20 >= i15) {
                        i15 = i20;
                    }
                    this.b.fastBitmap.setRGB(i13, i14, i19, i21, i15);
                }
            }
        }

        private int a(int i) {
            return (i * 2) + 1;
        }
    }
}
