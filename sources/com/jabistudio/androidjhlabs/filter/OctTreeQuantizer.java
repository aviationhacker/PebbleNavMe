package com.jabistudio.androidjhlabs.filter;

import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class OctTreeQuantizer implements Quantizer {
    private a b;
    private int c;
    private int d;
    private Vector[] f;
    private int a = 0;
    private int e = 0;

    class a {
        int a;
        int b;
        a c;
        a[] d = new a[8];
        boolean e;
        int f;
        int g;
        int h;
        int i;
        int j;

        a() {
        }
    }

    public OctTreeQuantizer() {
        setup(256);
        this.f = new Vector[6];
        for (int i = 0; i < 6; i++) {
            this.f[i] = new Vector();
        }
        this.b = new a();
    }

    @Override // com.jabistudio.androidjhlabs.filter.Quantizer
    public void setup(int i) {
        this.d = i;
        this.c = Math.max(512, i * 2);
    }

    @Override // com.jabistudio.androidjhlabs.filter.Quantizer
    public void addPixels(int[] iArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            a(iArr[i3 + i]);
            if (this.e > this.c) {
                b(this.c);
            }
        }
    }

    @Override // com.jabistudio.androidjhlabs.filter.Quantizer
    public int getIndexForColor(int i) {
        int i2 = (i >> 16) & 255;
        int i3 = (i >> 8) & 255;
        int i4 = i & 255;
        int i5 = 0;
        a aVar = this.b;
        while (i5 <= 5) {
            int i6 = 128 >> i5;
            int i7 = (i2 & i6) != 0 ? 4 : 0;
            if ((i3 & i6) != 0) {
                i7 += 2;
            }
            if ((i6 & i4) != 0) {
                i7++;
            }
            a aVar2 = aVar.d[i7];
            if (aVar2 == null) {
                return aVar.j;
            }
            if (!aVar2.e) {
                i5++;
                aVar = aVar2;
            } else {
                return aVar2.j;
            }
        }
        System.out.println("getIndexForColor failed");
        return 0;
    }

    private void a(int i) {
        int i2 = (i >> 16) & 255;
        int i3 = (i >> 8) & 255;
        int i4 = i & 255;
        int i5 = 0;
        a aVar = this.b;
        while (i5 <= 5) {
            int i6 = 128 >> i5;
            int i7 = (i2 & i6) != 0 ? 4 : 0;
            if ((i3 & i6) != 0) {
                i7 += 2;
            }
            if ((i6 & i4) != 0) {
                i7++;
            }
            a aVar2 = aVar.d[i7];
            if (aVar2 == null) {
                aVar.a++;
                aVar2 = new a();
                aVar2.c = aVar;
                aVar.d[i7] = aVar2;
                aVar.e = false;
                this.a++;
                this.f[i5].addElement(aVar2);
                if (i5 == 5) {
                    aVar2.e = true;
                    aVar2.f = 1;
                    aVar2.g = i2;
                    aVar2.h = i3;
                    aVar2.i = i4;
                    aVar2.b = i5;
                    this.e++;
                    return;
                }
            } else if (aVar2.e) {
                aVar2.f++;
                aVar2.g += i2;
                aVar2.h += i3;
                aVar2.i += i4;
                return;
            }
            i5++;
            aVar = aVar2;
        }
        System.out.println("insertColor failed");
    }

    private void b(int i) {
        for (int i2 = 4; i2 >= 0; i2--) {
            Vector vector = this.f[i2];
            if (vector != null && vector.size() > 0) {
                for (int i3 = 0; i3 < vector.size(); i3++) {
                    a aVar = (a) vector.elementAt(i3);
                    if (aVar.a > 0) {
                        for (int i4 = 0; i4 < 8; i4++) {
                            a aVar2 = aVar.d[i4];
                            if (aVar2 != null) {
                                if (!aVar2.e) {
                                    System.out.println("not a leaf!");
                                }
                                aVar.f += aVar2.f;
                                aVar.g += aVar2.g;
                                aVar.h += aVar2.h;
                                aVar.i += aVar2.i;
                                aVar.d[i4] = null;
                                aVar.a--;
                                this.e--;
                                this.a--;
                                this.f[i2 + 1].removeElement(aVar2);
                            }
                        }
                        aVar.e = true;
                        this.e++;
                        if (this.e <= i) {
                            return;
                        }
                    }
                }
            }
        }
        System.out.println("Unable to reduce the OctTree");
    }

    @Override // com.jabistudio.androidjhlabs.filter.Quantizer
    public int[] buildColorTable() {
        int[] iArr = new int[this.e];
        a(this.b, iArr, 0);
        return iArr;
    }

    public void buildColorTable(int[] iArr, int[] iArr2) {
        this.d = iArr2.length;
        for (int i : iArr) {
            a(i);
            if (this.e > this.c) {
                b(this.c);
            }
        }
        if (this.e > this.d) {
            b(this.d);
        }
        a(this.b, iArr2, 0);
    }

    private int a(a aVar, int[] iArr, int i) {
        if (this.e > this.d) {
            b(this.d);
        }
        if (aVar.e) {
            int i2 = aVar.f;
            iArr[i] = (aVar.i / i2) | (-16777216) | ((aVar.g / i2) << 16) | ((aVar.h / i2) << 8);
            int i3 = i + 1;
            aVar.j = i;
            return i3;
        }
        int iA = i;
        for (int i4 = 0; i4 < 8; i4++) {
            if (aVar.d[i4] != null) {
                aVar.j = iA;
                iA = a(aVar.d[i4], iArr, iA);
            }
        }
        return iA;
    }
}
