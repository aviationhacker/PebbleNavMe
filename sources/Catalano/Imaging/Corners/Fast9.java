package Catalano.Imaging.Corners;

import Catalano.Imaging.FastBitmap;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Fast9 implements ICornersFeatureDetector {
    private int a;
    private boolean b;

    public int getThreshold() {
        return this.a;
    }

    public void setThreshold(int i) {
        this.a = i;
    }

    public boolean isSuppressed() {
        return this.b;
    }

    public void setSuppression(boolean z) {
        this.b = z;
    }

    public Fast9() {
        this.a = 20;
        this.b = true;
    }

    public Fast9(int i) {
        this.a = 20;
        this.b = true;
        this.a = i;
    }

    public Fast9(int i, boolean z) {
        this.a = 20;
        this.b = true;
        this.a = i;
        this.b = z;
    }

    @Override // Catalano.Imaging.Corners.ICornersFeatureDetector
    public List<FeaturePoint> ProcessImage(FastBitmap fastBitmap) {
        FastBitmap fastBitmap2;
        if (fastBitmap.isGrayscale()) {
            fastBitmap2 = fastBitmap;
        } else {
            fastBitmap2 = new FastBitmap(fastBitmap);
            fastBitmap2.toGrayscale();
        }
        if (isSuppressed()) {
            return a(fastBitmap.getWidth(), fastBitmap.getHeight(), a(fastBitmap2, this.a));
        }
        return a(fastBitmap2, this.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<Catalano.Imaging.Corners.FeaturePoint> a(Catalano.Imaging.FastBitmap r13, int r14) {
        /*
            Method dump skipped, instruction units count: 9792
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Catalano.Imaging.Corners.Fast9.a(Catalano.Imaging.FastBitmap, int):java.util.List");
    }

    private int a(FastBitmap fastBitmap, int i, int i2) {
        int i3 = this.a;
        int i4 = 255;
        int i5 = 255 + i3;
        while (true) {
            int i6 = i5 / 2;
            if (a(fastBitmap, i, i2, i6)) {
                i3 = i6;
            } else {
                i4 = i6;
            }
            if (i3 == i4 - 1 || i3 == i4) {
                break;
            }
            i5 = i3 + i4;
        }
        return i3;
    }

    private boolean a(FastBitmap fastBitmap, int i, int i2, int i3) {
        int gray = fastBitmap.getGray(i, i2) + i3;
        int gray2 = fastBitmap.getGray(i, i2) - i3;
        if (fastBitmap.getGray(i + 3, i2) > gray) {
            if (fastBitmap.getGray(i + 3, i2 + 1) > gray) {
                if (fastBitmap.getGray(i + 2, i2 + 2) > gray) {
                    if (fastBitmap.getGray(i + 1, i2 + 3) > gray) {
                        if (fastBitmap.getGray(i, i2 + 3) > gray) {
                            if (fastBitmap.getGray(i - 1, i2 + 3) > gray) {
                                return fastBitmap.getGray(i + (-2), i2 + 2) > gray ? fastBitmap.getGray(i + (-3), i2 + 1) > gray ? fastBitmap.getGray(i + (-3), i2) > gray || fastBitmap.getGray(i + 3, i2 + (-1)) > gray : fastBitmap.getGray(i + (-3), i2 + 1) < gray2 ? fastBitmap.getGray(i + 2, i2 + (-2)) > gray ? fastBitmap.getGray(i + 3, i2 + (-1)) > gray : fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2 : fastBitmap.getGray(i + 2, i2 + (-2)) > gray && fastBitmap.getGray(i + 3, i2 + (-1)) > gray : fastBitmap.getGray(i + (-2), i2 + 2) < gray2 ? fastBitmap.getGray(i + 3, i2 + (-1)) > gray ? fastBitmap.getGray(i + 1, i2 + (-3)) > gray ? fastBitmap.getGray(i + 2, i2 + (-2)) > gray : fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 : fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 : fastBitmap.getGray(i + 1, i2 + (-3)) > gray ? fastBitmap.getGray(i + 2, i2 + (-2)) > gray && fastBitmap.getGray(i + 3, i2 + (-1)) > gray : fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2;
                            }
                            if (fastBitmap.getGray(i - 1, i2 + 3) < gray2) {
                                if (fastBitmap.getGray(i + 2, i2 - 2) > gray) {
                                    if (fastBitmap.getGray(i, i2 - 3) <= gray) {
                                        return fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2;
                                    }
                                    if (fastBitmap.getGray(i + 1, i2 - 3) <= gray) {
                                        return false;
                                    }
                                    if (fastBitmap.getGray(i + 3, i2 - 1) <= gray) {
                                        return fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray;
                                    }
                                    return true;
                                }
                                if (fastBitmap.getGray(i + 2, i2 - 2) >= gray2) {
                                    return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2;
                                }
                                if (fastBitmap.getGray(i - 3, i2 + 1) < gray2 && fastBitmap.getGray(i - 3, i2) < gray2 && fastBitmap.getGray(i - 3, i2 - 1) < gray2 && fastBitmap.getGray(i - 2, i2 - 2) < gray2 && fastBitmap.getGray(i - 1, i2 - 3) < gray2 && fastBitmap.getGray(i, i2 - 3) < gray2 && fastBitmap.getGray(i + 1, i2 - 3) < gray2) {
                                    return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 || fastBitmap.getGray(i + 3, i2 + (-1)) < gray2;
                                }
                                return false;
                            }
                            if (fastBitmap.getGray(i, i2 - 3) > gray) {
                                if (fastBitmap.getGray(i + 1, i2 - 3) > gray && fastBitmap.getGray(i + 2, i2 - 2) > gray) {
                                    if (fastBitmap.getGray(i + 3, i2 - 1) <= gray) {
                                        return fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray;
                                    }
                                    return true;
                                }
                                return false;
                            }
                            if (fastBitmap.getGray(i, i2 - 3) < gray2 && fastBitmap.getGray(i - 3, i2 + 1) < gray2 && fastBitmap.getGray(i - 3, i2) < gray2 && fastBitmap.getGray(i - 3, i2 - 1) < gray2 && fastBitmap.getGray(i - 2, i2 - 2) < gray2 && fastBitmap.getGray(i - 1, i2 - 3) < gray2 && fastBitmap.getGray(i + 1, i2 - 3) < gray2 && fastBitmap.getGray(i + 2, i2 - 2) < gray2) {
                                return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 || fastBitmap.getGray(i + 3, i2 + (-1)) < gray2;
                            }
                            return false;
                        }
                        if (fastBitmap.getGray(i, i2 + 3) < gray2) {
                            if (fastBitmap.getGray(i + 1, i2 - 3) > gray) {
                                if (fastBitmap.getGray(i - 1, i2 - 3) <= gray) {
                                    return fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2;
                                }
                                if (fastBitmap.getGray(i, i2 - 3) <= gray) {
                                    return false;
                                }
                                if (fastBitmap.getGray(i + 2, i2 - 2) <= gray) {
                                    return fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray;
                                }
                                if (fastBitmap.getGray(i + 3, i2 - 1) <= gray) {
                                    return fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray;
                                }
                                return true;
                            }
                            if (fastBitmap.getGray(i + 1, i2 - 3) >= gray2) {
                                return fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2;
                            }
                            if (fastBitmap.getGray(i - 3, i2 + 1) < gray2 && fastBitmap.getGray(i - 3, i2) < gray2 && fastBitmap.getGray(i - 3, i2 - 1) < gray2 && fastBitmap.getGray(i - 2, i2 - 2) < gray2 && fastBitmap.getGray(i - 1, i2 - 3) < gray2 && fastBitmap.getGray(i, i2 - 3) < gray2) {
                                return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 ? fastBitmap.getGray(i + (-1), i2 + 3) < gray2 || fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 : fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2;
                            }
                            return false;
                        }
                        if (fastBitmap.getGray(i - 1, i2 - 3) > gray) {
                            if (fastBitmap.getGray(i, i2 - 3) > gray && fastBitmap.getGray(i + 1, i2 - 3) > gray) {
                                if (fastBitmap.getGray(i + 2, i2 - 2) <= gray) {
                                    return fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray;
                                }
                                if (fastBitmap.getGray(i + 3, i2 - 1) <= gray) {
                                    return fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray;
                                }
                                return true;
                            }
                            return false;
                        }
                        if (fastBitmap.getGray(i - 1, i2 - 3) < gray2 && fastBitmap.getGray(i - 3, i2 + 1) < gray2 && fastBitmap.getGray(i - 3, i2) < gray2 && fastBitmap.getGray(i - 3, i2 - 1) < gray2 && fastBitmap.getGray(i - 2, i2 - 2) < gray2 && fastBitmap.getGray(i, i2 - 3) < gray2 && fastBitmap.getGray(i + 1, i2 - 3) < gray2) {
                            return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 ? fastBitmap.getGray(i + (-1), i2 + 3) < gray2 || fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 : fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2;
                        }
                        return false;
                    }
                    if (fastBitmap.getGray(i + 1, i2 + 3) < gray2) {
                        if (fastBitmap.getGray(i - 2, i2 - 2) > gray) {
                            if (fastBitmap.getGray(i - 1, i2 - 3) > gray && fastBitmap.getGray(i, i2 - 3) > gray) {
                                if (fastBitmap.getGray(i + 1, i2 - 3) <= gray) {
                                    return fastBitmap.getGray(i, i2 + 3) > gray && fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray;
                                }
                                if (fastBitmap.getGray(i + 2, i2 - 2) <= gray) {
                                    return fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray;
                                }
                                if (fastBitmap.getGray(i + 3, i2 - 1) <= gray) {
                                    return fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray;
                                }
                                return true;
                            }
                            return false;
                        }
                        if (fastBitmap.getGray(i - 2, i2 - 2) < gray2 && fastBitmap.getGray(i - 3, i2 + 1) < gray2 && fastBitmap.getGray(i - 3, i2) < gray2 && fastBitmap.getGray(i - 3, i2 - 1) < gray2 && fastBitmap.getGray(i - 1, i2 - 3) < gray2) {
                            if (fastBitmap.getGray(i - 2, i2 + 2) >= gray2) {
                                return fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2;
                            }
                            if (fastBitmap.getGray(i - 1, i2 + 3) >= gray2) {
                                return fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2;
                            }
                            if (fastBitmap.getGray(i, i2 + 3) >= gray2) {
                                return fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2;
                            }
                            return true;
                        }
                        return false;
                    }
                    if (fastBitmap.getGray(i - 2, i2 - 2) > gray) {
                        if (fastBitmap.getGray(i - 1, i2 - 3) > gray && fastBitmap.getGray(i, i2 - 3) > gray) {
                            if (fastBitmap.getGray(i + 1, i2 - 3) <= gray) {
                                return fastBitmap.getGray(i, i2 + 3) > gray && fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray;
                            }
                            if (fastBitmap.getGray(i + 2, i2 - 2) <= gray) {
                                return fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray;
                            }
                            if (fastBitmap.getGray(i + 3, i2 - 1) <= gray) {
                                return fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray;
                            }
                            return true;
                        }
                        return false;
                    }
                    if (fastBitmap.getGray(i - 2, i2 - 2) < gray2 && fastBitmap.getGray(i - 3, i2 + 1) < gray2 && fastBitmap.getGray(i - 3, i2) < gray2 && fastBitmap.getGray(i - 3, i2 - 1) < gray2 && fastBitmap.getGray(i - 1, i2 - 3) < gray2 && fastBitmap.getGray(i, i2 - 3) < gray2) {
                        return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 ? fastBitmap.getGray(i + (-1), i2 + 3) < gray2 ? fastBitmap.getGray(i, i2 + 3) < gray2 || fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 : fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 : fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2;
                    }
                    return false;
                }
                if (fastBitmap.getGray(i + 2, i2 + 2) < gray2) {
                    if (fastBitmap.getGray(i - 3, i2 - 1) > gray) {
                        if (fastBitmap.getGray(i - 2, i2 - 2) > gray && fastBitmap.getGray(i - 1, i2 - 3) > gray) {
                            if (fastBitmap.getGray(i, i2 - 3) <= gray) {
                                return fastBitmap.getGray(i + 1, i2 + 3) > gray && fastBitmap.getGray(i, i2 + 3) > gray && fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray;
                            }
                            if (fastBitmap.getGray(i + 1, i2 - 3) <= gray) {
                                return fastBitmap.getGray(i, i2 + 3) > gray && fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray;
                            }
                            if (fastBitmap.getGray(i + 2, i2 - 2) <= gray) {
                                return fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray;
                            }
                            if (fastBitmap.getGray(i + 3, i2 - 1) <= gray) {
                                return fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray;
                            }
                            return true;
                        }
                        return false;
                    }
                    if (fastBitmap.getGray(i - 3, i2 - 1) < gray2 && fastBitmap.getGray(i - 3, i2 + 1) < gray2 && fastBitmap.getGray(i - 3, i2) < gray2 && fastBitmap.getGray(i - 2, i2 - 2) < gray2) {
                        if (fastBitmap.getGray(i - 2, i2 + 2) >= gray2) {
                            return fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2;
                        }
                        if (fastBitmap.getGray(i - 1, i2 + 3) >= gray2) {
                            return fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2;
                        }
                        if (fastBitmap.getGray(i, i2 + 3) >= gray2) {
                            return fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2;
                        }
                        if (fastBitmap.getGray(i + 1, i2 + 3) >= gray2) {
                            return fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2;
                        }
                        return true;
                    }
                    return false;
                }
                if (fastBitmap.getGray(i - 3, i2 - 1) > gray) {
                    if (fastBitmap.getGray(i - 2, i2 - 2) > gray && fastBitmap.getGray(i - 1, i2 - 3) > gray) {
                        if (fastBitmap.getGray(i, i2 - 3) <= gray) {
                            return fastBitmap.getGray(i + 1, i2 + 3) > gray && fastBitmap.getGray(i, i2 + 3) > gray && fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray;
                        }
                        if (fastBitmap.getGray(i + 1, i2 - 3) <= gray) {
                            return fastBitmap.getGray(i, i2 + 3) > gray && fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray;
                        }
                        if (fastBitmap.getGray(i + 2, i2 - 2) <= gray) {
                            return fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray;
                        }
                        if (fastBitmap.getGray(i + 3, i2 - 1) <= gray) {
                            return fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray;
                        }
                        return true;
                    }
                    return false;
                }
                if (fastBitmap.getGray(i - 3, i2 - 1) < gray2 && fastBitmap.getGray(i - 3, i2 + 1) < gray2 && fastBitmap.getGray(i - 3, i2) < gray2 && fastBitmap.getGray(i - 2, i2 - 2) < gray2 && fastBitmap.getGray(i - 1, i2 - 3) < gray2) {
                    return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 ? fastBitmap.getGray(i + (-1), i2 + 3) < gray2 ? fastBitmap.getGray(i, i2 + 3) < gray2 ? fastBitmap.getGray(i + 1, i2 + 3) < gray2 || fastBitmap.getGray(i, i2 + (-3)) < gray2 : fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 : fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 : fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2;
                }
                return false;
            }
            if (fastBitmap.getGray(i + 3, i2 + 1) < gray2) {
                if (fastBitmap.getGray(i - 3, i2) > gray) {
                    if (fastBitmap.getGray(i - 3, i2 - 1) > gray && fastBitmap.getGray(i - 2, i2 - 2) > gray) {
                        if (fastBitmap.getGray(i - 1, i2 - 3) <= gray) {
                            return fastBitmap.getGray(i + 2, i2 + 2) > gray && fastBitmap.getGray(i + 1, i2 + 3) > gray && fastBitmap.getGray(i, i2 + 3) > gray && fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray;
                        }
                        if (fastBitmap.getGray(i, i2 - 3) <= gray) {
                            return fastBitmap.getGray(i + 1, i2 + 3) > gray && fastBitmap.getGray(i, i2 + 3) > gray && fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray;
                        }
                        if (fastBitmap.getGray(i + 1, i2 - 3) <= gray) {
                            return fastBitmap.getGray(i, i2 + 3) > gray && fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray;
                        }
                        if (fastBitmap.getGray(i + 2, i2 - 2) <= gray) {
                            return fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray;
                        }
                        if (fastBitmap.getGray(i + 3, i2 - 1) <= gray) {
                            return fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray;
                        }
                        return true;
                    }
                    return false;
                }
                if (fastBitmap.getGray(i - 3, i2) < gray2 && fastBitmap.getGray(i - 3, i2 + 1) < gray2 && fastBitmap.getGray(i - 3, i2 - 1) < gray2) {
                    if (fastBitmap.getGray(i - 2, i2 + 2) >= gray2) {
                        return fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2;
                    }
                    if (fastBitmap.getGray(i - 1, i2 + 3) >= gray2) {
                        return fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2;
                    }
                    if (fastBitmap.getGray(i, i2 + 3) >= gray2) {
                        return fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2;
                    }
                    if (fastBitmap.getGray(i + 1, i2 + 3) >= gray2) {
                        return fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2;
                    }
                    if (fastBitmap.getGray(i + 2, i2 + 2) >= gray2) {
                        return fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2;
                    }
                    return true;
                }
                return false;
            }
            if (fastBitmap.getGray(i - 3, i2) > gray) {
                if (fastBitmap.getGray(i - 3, i2 - 1) > gray && fastBitmap.getGray(i - 2, i2 - 2) > gray) {
                    if (fastBitmap.getGray(i - 1, i2 - 3) <= gray) {
                        return fastBitmap.getGray(i + 2, i2 + 2) > gray && fastBitmap.getGray(i + 1, i2 + 3) > gray && fastBitmap.getGray(i, i2 + 3) > gray && fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray;
                    }
                    if (fastBitmap.getGray(i, i2 - 3) <= gray) {
                        return fastBitmap.getGray(i + 1, i2 + 3) > gray && fastBitmap.getGray(i, i2 + 3) > gray && fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray;
                    }
                    if (fastBitmap.getGray(i + 1, i2 - 3) <= gray) {
                        return fastBitmap.getGray(i, i2 + 3) > gray && fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray;
                    }
                    if (fastBitmap.getGray(i + 2, i2 - 2) <= gray) {
                        return fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray;
                    }
                    if (fastBitmap.getGray(i + 3, i2 - 1) <= gray) {
                        return fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray;
                    }
                    return true;
                }
                return false;
            }
            if (fastBitmap.getGray(i - 3, i2) < gray2 && fastBitmap.getGray(i - 3, i2 + 1) < gray2 && fastBitmap.getGray(i - 3, i2 - 1) < gray2 && fastBitmap.getGray(i - 2, i2 - 2) < gray2) {
                return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 ? fastBitmap.getGray(i + (-1), i2 + 3) < gray2 ? fastBitmap.getGray(i, i2 + 3) < gray2 ? fastBitmap.getGray(i + 1, i2 + 3) < gray2 ? fastBitmap.getGray(i + 2, i2 + 2) < gray2 || fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 : fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 : fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 : fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 : fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2;
            }
            return false;
        }
        if (fastBitmap.getGray(i + 3, i2) < gray2) {
            if (fastBitmap.getGray(i + 3, i2 + 1) > gray) {
                if (fastBitmap.getGray(i - 3, i2) > gray) {
                    if (fastBitmap.getGray(i - 3, i2 + 1) > gray && fastBitmap.getGray(i - 3, i2 - 1) > gray) {
                        if (fastBitmap.getGray(i - 2, i2 + 2) <= gray) {
                            return fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray && fastBitmap.getGray(i + 3, i2 + (-1)) > gray;
                        }
                        if (fastBitmap.getGray(i - 1, i2 + 3) <= gray) {
                            return fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray;
                        }
                        if (fastBitmap.getGray(i, i2 + 3) <= gray) {
                            return fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray;
                        }
                        if (fastBitmap.getGray(i + 1, i2 + 3) <= gray) {
                            return fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray;
                        }
                        if (fastBitmap.getGray(i + 2, i2 + 2) <= gray) {
                            return fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray;
                        }
                        return true;
                    }
                    return false;
                }
                if (fastBitmap.getGray(i - 3, i2) < gray2 && fastBitmap.getGray(i - 3, i2 - 1) < gray2 && fastBitmap.getGray(i - 2, i2 - 2) < gray2) {
                    if (fastBitmap.getGray(i - 1, i2 - 3) >= gray2) {
                        return fastBitmap.getGray(i + 2, i2 + 2) < gray2 && fastBitmap.getGray(i + 1, i2 + 3) < gray2 && fastBitmap.getGray(i, i2 + 3) < gray2 && fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2;
                    }
                    if (fastBitmap.getGray(i, i2 - 3) >= gray2) {
                        return fastBitmap.getGray(i + 1, i2 + 3) < gray2 && fastBitmap.getGray(i, i2 + 3) < gray2 && fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2;
                    }
                    if (fastBitmap.getGray(i + 1, i2 - 3) >= gray2) {
                        return fastBitmap.getGray(i, i2 + 3) < gray2 && fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2;
                    }
                    if (fastBitmap.getGray(i + 2, i2 - 2) >= gray2) {
                        return fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2;
                    }
                    if (fastBitmap.getGray(i + 3, i2 - 1) >= gray2) {
                        return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2;
                    }
                    return true;
                }
                return false;
            }
            if (fastBitmap.getGray(i + 3, i2 + 1) < gray2) {
                if (fastBitmap.getGray(i + 2, i2 + 2) > gray) {
                    if (fastBitmap.getGray(i - 3, i2 - 1) > gray) {
                        if (fastBitmap.getGray(i - 3, i2 + 1) > gray && fastBitmap.getGray(i - 3, i2) > gray && fastBitmap.getGray(i - 2, i2 - 2) > gray) {
                            if (fastBitmap.getGray(i - 2, i2 + 2) <= gray) {
                                return fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray && fastBitmap.getGray(i + 3, i2 + (-1)) > gray;
                            }
                            if (fastBitmap.getGray(i - 1, i2 + 3) <= gray) {
                                return fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray;
                            }
                            if (fastBitmap.getGray(i, i2 + 3) <= gray) {
                                return fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray;
                            }
                            if (fastBitmap.getGray(i + 1, i2 + 3) <= gray) {
                                return fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray;
                            }
                            return true;
                        }
                        return false;
                    }
                    if (fastBitmap.getGray(i - 3, i2 - 1) < gray2 && fastBitmap.getGray(i - 2, i2 - 2) < gray2 && fastBitmap.getGray(i - 1, i2 - 3) < gray2) {
                        if (fastBitmap.getGray(i, i2 - 3) >= gray2) {
                            return fastBitmap.getGray(i + 1, i2 + 3) < gray2 && fastBitmap.getGray(i, i2 + 3) < gray2 && fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2;
                        }
                        if (fastBitmap.getGray(i + 1, i2 - 3) >= gray2) {
                            return fastBitmap.getGray(i, i2 + 3) < gray2 && fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2;
                        }
                        if (fastBitmap.getGray(i + 2, i2 - 2) >= gray2) {
                            return fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2;
                        }
                        if (fastBitmap.getGray(i + 3, i2 - 1) >= gray2) {
                            return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2;
                        }
                        return true;
                    }
                    return false;
                }
                if (fastBitmap.getGray(i + 2, i2 + 2) < gray2) {
                    if (fastBitmap.getGray(i + 1, i2 + 3) > gray) {
                        if (fastBitmap.getGray(i - 2, i2 - 2) > gray) {
                            if (fastBitmap.getGray(i - 3, i2 + 1) > gray && fastBitmap.getGray(i - 3, i2) > gray && fastBitmap.getGray(i - 3, i2 - 1) > gray && fastBitmap.getGray(i - 1, i2 - 3) > gray) {
                                if (fastBitmap.getGray(i - 2, i2 + 2) <= gray) {
                                    return fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray && fastBitmap.getGray(i + 3, i2 + (-1)) > gray;
                                }
                                if (fastBitmap.getGray(i - 1, i2 + 3) <= gray) {
                                    return fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray;
                                }
                                if (fastBitmap.getGray(i, i2 + 3) <= gray) {
                                    return fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray;
                                }
                                return true;
                            }
                            return false;
                        }
                        if (fastBitmap.getGray(i - 2, i2 - 2) < gray2 && fastBitmap.getGray(i - 1, i2 - 3) < gray2 && fastBitmap.getGray(i, i2 - 3) < gray2) {
                            if (fastBitmap.getGray(i + 1, i2 - 3) >= gray2) {
                                return fastBitmap.getGray(i, i2 + 3) < gray2 && fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2;
                            }
                            if (fastBitmap.getGray(i + 2, i2 - 2) >= gray2) {
                                return fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2;
                            }
                            if (fastBitmap.getGray(i + 3, i2 - 1) >= gray2) {
                                return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2;
                            }
                            return true;
                        }
                        return false;
                    }
                    if (fastBitmap.getGray(i + 1, i2 + 3) < gray2) {
                        if (fastBitmap.getGray(i, i2 + 3) > gray) {
                            if (fastBitmap.getGray(i + 1, i2 - 3) > gray) {
                                if (fastBitmap.getGray(i - 3, i2 + 1) > gray && fastBitmap.getGray(i - 3, i2) > gray && fastBitmap.getGray(i - 3, i2 - 1) > gray && fastBitmap.getGray(i - 2, i2 - 2) > gray && fastBitmap.getGray(i - 1, i2 - 3) > gray && fastBitmap.getGray(i, i2 - 3) > gray) {
                                    return fastBitmap.getGray(i + (-2), i2 + 2) > gray ? fastBitmap.getGray(i + (-1), i2 + 3) > gray || fastBitmap.getGray(i + 2, i2 + (-2)) > gray : fastBitmap.getGray(i + 2, i2 + (-2)) > gray && fastBitmap.getGray(i + 3, i2 + (-1)) > gray;
                                }
                                return false;
                            }
                            if (fastBitmap.getGray(i + 1, i2 - 3) >= gray2) {
                                return fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray;
                            }
                            if (fastBitmap.getGray(i - 1, i2 - 3) > gray) {
                                return fastBitmap.getGray(i + (-1), i2 + 3) > gray && fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray;
                            }
                            if (fastBitmap.getGray(i - 1, i2 - 3) < gray2 && fastBitmap.getGray(i, i2 - 3) < gray2) {
                                if (fastBitmap.getGray(i + 2, i2 - 2) >= gray2) {
                                    return fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2;
                                }
                                if (fastBitmap.getGray(i + 3, i2 - 1) >= gray2) {
                                    return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2;
                                }
                                return true;
                            }
                            return false;
                        }
                        if (fastBitmap.getGray(i, i2 + 3) < gray2) {
                            if (fastBitmap.getGray(i - 1, i2 + 3) > gray) {
                                if (fastBitmap.getGray(i + 2, i2 - 2) > gray) {
                                    if (fastBitmap.getGray(i - 3, i2 + 1) > gray && fastBitmap.getGray(i - 3, i2) > gray && fastBitmap.getGray(i - 3, i2 - 1) > gray && fastBitmap.getGray(i - 2, i2 - 2) > gray && fastBitmap.getGray(i - 1, i2 - 3) > gray && fastBitmap.getGray(i, i2 - 3) > gray && fastBitmap.getGray(i + 1, i2 - 3) > gray) {
                                        return fastBitmap.getGray(i + (-2), i2 + 2) > gray || fastBitmap.getGray(i + 3, i2 + (-1)) > gray;
                                    }
                                    return false;
                                }
                                if (fastBitmap.getGray(i + 2, i2 - 2) >= gray2) {
                                    return fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray;
                                }
                                if (fastBitmap.getGray(i, i2 - 3) > gray) {
                                    return fastBitmap.getGray(i + (-2), i2 + 2) > gray && fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray;
                                }
                                if (fastBitmap.getGray(i, i2 - 3) < gray2 && fastBitmap.getGray(i + 1, i2 - 3) < gray2) {
                                    if (fastBitmap.getGray(i + 3, i2 - 1) >= gray2) {
                                        return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2;
                                    }
                                    return true;
                                }
                                return false;
                            }
                            if (fastBitmap.getGray(i - 1, i2 + 3) < gray2) {
                                return fastBitmap.getGray(i + (-2), i2 + 2) > gray ? fastBitmap.getGray(i + 3, i2 + (-1)) < gray2 ? fastBitmap.getGray(i + 1, i2 + (-3)) > gray ? fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray : fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 : fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray : fastBitmap.getGray(i + (-2), i2 + 2) < gray2 ? fastBitmap.getGray(i + (-3), i2 + 1) > gray ? fastBitmap.getGray(i + 2, i2 + (-2)) > gray ? fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 3, i2 + (-1)) > gray : fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2 : fastBitmap.getGray(i + (-3), i2 + 1) < gray2 ? fastBitmap.getGray(i + (-3), i2) < gray2 || fastBitmap.getGray(i + 3, i2 + (-1)) < gray2 : fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2 : fastBitmap.getGray(i + 1, i2 + (-3)) > gray ? fastBitmap.getGray(i + (-3), i2 + 1) > gray && fastBitmap.getGray(i + (-3), i2) > gray && fastBitmap.getGray(i + (-3), i2 + (-1)) > gray && fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray && fastBitmap.getGray(i + 3, i2 + (-1)) > gray : fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2;
                            }
                            if (fastBitmap.getGray(i, i2 - 3) > gray) {
                                if (fastBitmap.getGray(i - 3, i2 + 1) > gray && fastBitmap.getGray(i - 3, i2) > gray && fastBitmap.getGray(i - 3, i2 - 1) > gray && fastBitmap.getGray(i - 2, i2 - 2) > gray && fastBitmap.getGray(i - 1, i2 - 3) > gray && fastBitmap.getGray(i + 1, i2 - 3) > gray && fastBitmap.getGray(i + 2, i2 - 2) > gray) {
                                    return fastBitmap.getGray(i + (-2), i2 + 2) > gray || fastBitmap.getGray(i + 3, i2 + (-1)) > gray;
                                }
                                return false;
                            }
                            if (fastBitmap.getGray(i, i2 - 3) < gray2 && fastBitmap.getGray(i + 1, i2 - 3) < gray2 && fastBitmap.getGray(i + 2, i2 - 2) < gray2) {
                                if (fastBitmap.getGray(i + 3, i2 - 1) >= gray2) {
                                    return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2;
                                }
                                return true;
                            }
                            return false;
                        }
                        if (fastBitmap.getGray(i - 1, i2 - 3) > gray) {
                            if (fastBitmap.getGray(i - 3, i2 + 1) > gray && fastBitmap.getGray(i - 3, i2) > gray && fastBitmap.getGray(i - 3, i2 - 1) > gray && fastBitmap.getGray(i - 2, i2 - 2) > gray && fastBitmap.getGray(i, i2 - 3) > gray && fastBitmap.getGray(i + 1, i2 - 3) > gray) {
                                return fastBitmap.getGray(i + (-2), i2 + 2) > gray ? fastBitmap.getGray(i + (-1), i2 + 3) > gray || fastBitmap.getGray(i + 2, i2 + (-2)) > gray : fastBitmap.getGray(i + 2, i2 + (-2)) > gray && fastBitmap.getGray(i + 3, i2 + (-1)) > gray;
                            }
                            return false;
                        }
                        if (fastBitmap.getGray(i - 1, i2 - 3) < gray2 && fastBitmap.getGray(i, i2 - 3) < gray2 && fastBitmap.getGray(i + 1, i2 - 3) < gray2) {
                            if (fastBitmap.getGray(i + 2, i2 - 2) >= gray2) {
                                return fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2;
                            }
                            if (fastBitmap.getGray(i + 3, i2 - 1) >= gray2) {
                                return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2 && fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2;
                            }
                            return true;
                        }
                        return false;
                    }
                    if (fastBitmap.getGray(i - 2, i2 - 2) > gray) {
                        if (fastBitmap.getGray(i - 3, i2 + 1) > gray && fastBitmap.getGray(i - 3, i2) > gray && fastBitmap.getGray(i - 3, i2 - 1) > gray && fastBitmap.getGray(i - 1, i2 - 3) > gray && fastBitmap.getGray(i, i2 - 3) > gray) {
                            return fastBitmap.getGray(i + (-2), i2 + 2) > gray ? fastBitmap.getGray(i + (-1), i2 + 3) > gray ? fastBitmap.getGray(i, i2 + 3) > gray || fastBitmap.getGray(i + 1, i2 + (-3)) > gray : fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray : fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray && fastBitmap.getGray(i + 3, i2 + (-1)) > gray;
                        }
                        return false;
                    }
                    if (fastBitmap.getGray(i - 2, i2 - 2) < gray2 && fastBitmap.getGray(i - 1, i2 - 3) < gray2 && fastBitmap.getGray(i, i2 - 3) < gray2) {
                        if (fastBitmap.getGray(i + 1, i2 - 3) >= gray2) {
                            return fastBitmap.getGray(i, i2 + 3) < gray2 && fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2;
                        }
                        if (fastBitmap.getGray(i + 2, i2 - 2) >= gray2) {
                            return fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2;
                        }
                        if (fastBitmap.getGray(i + 3, i2 - 1) >= gray2) {
                            return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2 && fastBitmap.getGray(i + (-3), i2 + (-1)) < gray2;
                        }
                        return true;
                    }
                    return false;
                }
                if (fastBitmap.getGray(i - 3, i2 - 1) > gray) {
                    if (fastBitmap.getGray(i - 3, i2 + 1) > gray && fastBitmap.getGray(i - 3, i2) > gray && fastBitmap.getGray(i - 2, i2 - 2) > gray && fastBitmap.getGray(i - 1, i2 - 3) > gray) {
                        return fastBitmap.getGray(i + (-2), i2 + 2) > gray ? fastBitmap.getGray(i + (-1), i2 + 3) > gray ? fastBitmap.getGray(i, i2 + 3) > gray ? fastBitmap.getGray(i + 1, i2 + 3) > gray || fastBitmap.getGray(i, i2 + (-3)) > gray : fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray : fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray : fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray && fastBitmap.getGray(i + 3, i2 + (-1)) > gray;
                    }
                    return false;
                }
                if (fastBitmap.getGray(i - 3, i2 - 1) < gray2 && fastBitmap.getGray(i - 2, i2 - 2) < gray2 && fastBitmap.getGray(i - 1, i2 - 3) < gray2) {
                    if (fastBitmap.getGray(i, i2 - 3) >= gray2) {
                        return fastBitmap.getGray(i + 1, i2 + 3) < gray2 && fastBitmap.getGray(i, i2 + 3) < gray2 && fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2;
                    }
                    if (fastBitmap.getGray(i + 1, i2 - 3) >= gray2) {
                        return fastBitmap.getGray(i, i2 + 3) < gray2 && fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2;
                    }
                    if (fastBitmap.getGray(i + 2, i2 - 2) >= gray2) {
                        return fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2;
                    }
                    if (fastBitmap.getGray(i + 3, i2 - 1) >= gray2) {
                        return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2 && fastBitmap.getGray(i + (-3), i2) < gray2;
                    }
                    return true;
                }
                return false;
            }
            if (fastBitmap.getGray(i - 3, i2) > gray) {
                if (fastBitmap.getGray(i - 3, i2 + 1) > gray && fastBitmap.getGray(i - 3, i2 - 1) > gray && fastBitmap.getGray(i - 2, i2 - 2) > gray) {
                    return fastBitmap.getGray(i + (-2), i2 + 2) > gray ? fastBitmap.getGray(i + (-1), i2 + 3) > gray ? fastBitmap.getGray(i, i2 + 3) > gray ? fastBitmap.getGray(i + 1, i2 + 3) > gray ? fastBitmap.getGray(i + 2, i2 + 2) > gray || fastBitmap.getGray(i + (-1), i2 + (-3)) > gray : fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray : fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray : fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray : fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray && fastBitmap.getGray(i + 3, i2 + (-1)) > gray;
                }
                return false;
            }
            if (fastBitmap.getGray(i - 3, i2) < gray2 && fastBitmap.getGray(i - 3, i2 - 1) < gray2 && fastBitmap.getGray(i - 2, i2 - 2) < gray2) {
                if (fastBitmap.getGray(i - 1, i2 - 3) >= gray2) {
                    return fastBitmap.getGray(i + 2, i2 + 2) < gray2 && fastBitmap.getGray(i + 1, i2 + 3) < gray2 && fastBitmap.getGray(i, i2 + 3) < gray2 && fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2;
                }
                if (fastBitmap.getGray(i, i2 - 3) >= gray2) {
                    return fastBitmap.getGray(i + 1, i2 + 3) < gray2 && fastBitmap.getGray(i, i2 + 3) < gray2 && fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2;
                }
                if (fastBitmap.getGray(i + 1, i2 - 3) >= gray2) {
                    return fastBitmap.getGray(i, i2 + 3) < gray2 && fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2;
                }
                if (fastBitmap.getGray(i + 2, i2 - 2) >= gray2) {
                    return fastBitmap.getGray(i + (-1), i2 + 3) < gray2 && fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2;
                }
                if (fastBitmap.getGray(i + 3, i2 - 1) >= gray2) {
                    return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 && fastBitmap.getGray(i + (-3), i2 + 1) < gray2;
                }
                return true;
            }
            return false;
        }
        if (fastBitmap.getGray(i - 3, i2 + 1) > gray) {
            if (fastBitmap.getGray(i - 3, i2) > gray && fastBitmap.getGray(i - 3, i2 - 1) > gray) {
                return fastBitmap.getGray(i + (-2), i2 + 2) > gray ? fastBitmap.getGray(i + (-1), i2 + 3) > gray ? fastBitmap.getGray(i, i2 + 3) > gray ? fastBitmap.getGray(i + 1, i2 + 3) > gray ? fastBitmap.getGray(i + 2, i2 + 2) > gray ? fastBitmap.getGray(i + 3, i2 + 1) > gray || fastBitmap.getGray(i + (-2), i2 + (-2)) > gray : fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray : fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray : fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray : fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray : fastBitmap.getGray(i + (-2), i2 + (-2)) > gray && fastBitmap.getGray(i + (-1), i2 + (-3)) > gray && fastBitmap.getGray(i, i2 + (-3)) > gray && fastBitmap.getGray(i + 1, i2 + (-3)) > gray && fastBitmap.getGray(i + 2, i2 + (-2)) > gray && fastBitmap.getGray(i + 3, i2 + (-1)) > gray;
            }
            return false;
        }
        if (fastBitmap.getGray(i - 3, i2 + 1) < gray2 && fastBitmap.getGray(i - 3, i2) < gray2 && fastBitmap.getGray(i - 3, i2 - 1) < gray2) {
            return fastBitmap.getGray(i + (-2), i2 + 2) < gray2 ? fastBitmap.getGray(i + (-1), i2 + 3) < gray2 ? fastBitmap.getGray(i, i2 + 3) < gray2 ? fastBitmap.getGray(i + 1, i2 + 3) < gray2 ? fastBitmap.getGray(i + 2, i2 + 2) < gray2 ? fastBitmap.getGray(i + 3, i2 + 1) < gray2 || fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 : fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 : fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 : fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 : fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 : fastBitmap.getGray(i + (-2), i2 + (-2)) < gray2 && fastBitmap.getGray(i + (-1), i2 + (-3)) < gray2 && fastBitmap.getGray(i, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 1, i2 + (-3)) < gray2 && fastBitmap.getGray(i + 2, i2 + (-2)) < gray2 && fastBitmap.getGray(i + 3, i2 + (-1)) < gray2;
        }
        return false;
    }

    private static List<FeaturePoint> a(int i, int i2, List<FeaturePoint> list) {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, i);
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < list.size(); i3++) {
            FeaturePoint featurePoint = list.get(i3);
            iArr[featurePoint.x][featurePoint.y] = featurePoint.score;
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            FeaturePoint featurePoint2 = list.get(i4);
            int i5 = featurePoint2.x;
            int i6 = featurePoint2.y;
            int i7 = featurePoint2.score;
            if (i7 >= iArr[i5 - 1][i6 + 1] && i7 >= iArr[i5 - 1][i6] && i7 >= iArr[i5 - 1][i6 - 1] && i7 >= iArr[i5][i6 + 1] && i7 >= iArr[i5][i6 - 1] && i7 >= iArr[i5 + 1][i6 + 1] && i7 >= iArr[i5 + 1][i6] && i7 >= iArr[i5 + 1][i6 - 1]) {
                arrayList.add(featurePoint2);
            }
        }
        return arrayList;
    }
}
