package Catalano.Imaging.ActiveContour.Ovuscule;

import Catalano.Core.DoublePoint;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.FastGraphics;
import Catalano.Imaging.Shapes.IntPolygon;

/* JADX INFO: loaded from: classes.dex */
public class OvusculeSnake2DKeeper {
    private static final double d = Math.sqrt(Float.intBitsToFloat(872415231));
    private static final double e = Float.intBitsToFloat(872415231);
    private Double a = null;
    private IOvusculeSnake2D b = null;
    private boolean c = false;

    public void Optimize(IOvusculeSnake2D iOvusculeSnake2D) {
        this.b = iOvusculeSnake2D;
        this.a = null;
        this.c = true;
        OvusculeSnake2DNode[] nodes = iOvusculeSnake2D.getNodes();
        int length = nodes.length;
        OvusculeSnake2DNode[] ovusculeSnake2DNodeArr = new OvusculeSnake2DNode[length];
        for (int i = 0; i < length; i++) {
            ovusculeSnake2DNodeArr[i] = new OvusculeSnake2DNode(nodes[i].x, nodes[i].y, nodes[i].frozen, nodes[i].hidden);
        }
        a(ovusculeSnake2DNodeArr);
    }

    private void a(OvusculeSnake2DNode[] ovusculeSnake2DNodeArr) {
        int length = ovusculeSnake2DNodeArr.length;
        DoublePoint[] doublePointArr = new DoublePoint[length];
        for (int i = 0; i < length; i++) {
            doublePointArr[i] = new DoublePoint(0.0d, 0.0d);
        }
        DoublePoint[] doublePointArrB = b(ovusculeSnake2DNodeArr);
        if (doublePointArrB != null) {
            while (true) {
                double d2 = 0.0d;
                for (int i2 = 0; i2 < length; i2++) {
                    doublePointArr[i2].x = -doublePointArrB[i2].x;
                    doublePointArr[i2].y = -doublePointArrB[i2].y;
                    d2 += (doublePointArrB[i2].x * doublePointArrB[i2].x) + (doublePointArrB[i2].y * doublePointArrB[i2].y);
                }
                if (d2 <= d) {
                    this.b.setNodes(ovusculeSnake2DNodeArr);
                    break;
                }
                double d3 = 0.0d;
                int i3 = length * 2;
                int i4 = 0;
                double d4 = d2;
                while (i4 <= i3) {
                    double dA = a(ovusculeSnake2DNodeArr, doublePointArr);
                    if (dA < 0.0d) {
                        this.b.setNodes(ovusculeSnake2DNodeArr);
                        return;
                    }
                    double d5 = d3 + dA;
                    DoublePoint[] doublePointArrB2 = b(ovusculeSnake2DNodeArr);
                    if (doublePointArrB2 == null) {
                        this.b.setNodes(ovusculeSnake2DNodeArr);
                        return;
                    }
                    double d6 = 0.0d;
                    double d7 = 0.0d;
                    for (int i5 = 0; i5 < length; i5++) {
                        d7 += (doublePointArrB2[i5].x * (doublePointArrB2[i5].x - doublePointArrB[i5].x)) + (doublePointArrB2[i5].y * (doublePointArrB2[i5].y - doublePointArrB[i5].y));
                        d6 += (doublePointArrB2[i5].x * doublePointArrB2[i5].x) + (doublePointArrB2[i5].y * doublePointArrB2[i5].y);
                    }
                    if (d6 <= d) {
                        this.b.setNodes(ovusculeSnake2DNodeArr);
                        return;
                    }
                    double d8 = d7 / d4;
                    double d9 = 0.0d;
                    for (int i6 = 0; i6 < length; i6++) {
                        doublePointArr[i6].x = (doublePointArr[i6].x * d8) - doublePointArrB2[i6].x;
                        doublePointArr[i6].y = (doublePointArr[i6].y * d8) - doublePointArrB2[i6].y;
                        d9 += (doublePointArr[i6].x * doublePointArr[i6].x) + (doublePointArr[i6].y * doublePointArr[i6].y);
                    }
                    if (d9 > d) {
                        i4++;
                        d4 = d6;
                        d3 = d5;
                        doublePointArrB = doublePointArrB2;
                    } else {
                        this.b.setNodes(ovusculeSnake2DNodeArr);
                        return;
                    }
                }
                if (d >= d3) {
                    break;
                }
            }
            this.b.setNodes(ovusculeSnake2DNodeArr);
        }
    }

    private Double a(OvusculeSnake2DNode[] ovusculeSnake2DNodeArr, double d2, DoublePoint[] doublePointArr) {
        int length = ovusculeSnake2DNodeArr.length;
        OvusculeSnake2DNode[] ovusculeSnake2DNodeArr2 = new OvusculeSnake2DNode[length];
        for (int i = 0; i < length; i++) {
            ovusculeSnake2DNodeArr2[i] = new OvusculeSnake2DNode(ovusculeSnake2DNodeArr[i].x, ovusculeSnake2DNodeArr[i].y);
            ovusculeSnake2DNodeArr2[i].x += doublePointArr[i].x * d2;
            ovusculeSnake2DNodeArr2[i].y += doublePointArr[i].y * d2;
        }
        this.b.setNodes(ovusculeSnake2DNodeArr2);
        if (this.c) {
            return new Double(this.b.energy());
        }
        return null;
    }

    private DoublePoint[] b(OvusculeSnake2DNode[] ovusculeSnake2DNodeArr) {
        int length = ovusculeSnake2DNodeArr.length;
        this.b.setNodes(ovusculeSnake2DNodeArr);
        if (!this.c) {
            return null;
        }
        DoublePoint[] energyGradient = this.b.getEnergyGradient();
        if (energyGradient != null) {
            DoublePoint[] doublePointArr = new DoublePoint[length];
            for (int i = 0; i < length; i++) {
                if (ovusculeSnake2DNodeArr[i].frozen) {
                    doublePointArr[i] = new DoublePoint(0.0d, 0.0d);
                } else {
                    doublePointArr[i] = new DoublePoint(energyGradient[i].x, energyGradient[i].y);
                }
            }
            return doublePointArr;
        }
        OvusculeSnake2DNode[] ovusculeSnake2DNodeArr2 = new OvusculeSnake2DNode[length];
        DoublePoint[] doublePointArr2 = new DoublePoint[length];
        for (int i2 = 0; i2 < length; i2++) {
            ovusculeSnake2DNodeArr2[i2] = new OvusculeSnake2DNode(ovusculeSnake2DNodeArr[i2].x, ovusculeSnake2DNodeArr[i2].y);
            doublePointArr2[i2] = new DoublePoint(0.0d, 0.0d);
        }
        for (int i3 = 0; i3 < length; i3++) {
            if (!ovusculeSnake2DNodeArr[i3].frozen) {
                ovusculeSnake2DNodeArr2[i3].x = ovusculeSnake2DNodeArr[i3].x - d;
                this.b.setNodes(ovusculeSnake2DNodeArr2);
                if (!this.c) {
                    return null;
                }
                double dEnergy = this.b.energy();
                ovusculeSnake2DNodeArr2[i3].x = ovusculeSnake2DNodeArr[i3].x + d;
                this.b.setNodes(ovusculeSnake2DNodeArr2);
                if (!this.c) {
                    return null;
                }
                double dEnergy2 = this.b.energy();
                doublePointArr2[i3].x = ((dEnergy2 - dEnergy) * 0.5d) / d;
                ovusculeSnake2DNodeArr2[i3].x = ovusculeSnake2DNodeArr[i3].x;
                ovusculeSnake2DNodeArr2[i3].y = ovusculeSnake2DNodeArr[i3].y - d;
                this.b.setNodes(ovusculeSnake2DNodeArr2);
                if (!this.c) {
                    return null;
                }
                double dEnergy3 = this.b.energy();
                ovusculeSnake2DNodeArr2[i3].y = ovusculeSnake2DNodeArr[i3].y + d;
                this.b.setNodes(ovusculeSnake2DNodeArr2);
                if (!this.c) {
                    return null;
                }
                double dEnergy4 = this.b.energy();
                doublePointArr2[i3].y = ((dEnergy4 - dEnergy3) * 0.5d) / d;
                ovusculeSnake2DNodeArr2[i3].y = ovusculeSnake2DNodeArr[i3].y;
            }
        }
        this.b.setNodes(ovusculeSnake2DNodeArr);
        return doublePointArr2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:201:0x0512, code lost:
    
        r18 = 0.0d;
        r20 = 0.0d;
        r22 = r16;
        r24 = r14;
        r16 = r8;
        r10 = r6;
        r12 = r8;
        r14 = r8;
        r8 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0533, code lost:
    
        if (r28 >= java.lang.Math.abs(r18)) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0535, code lost:
    
        r36 = (r10 - r8) * (r16 - r12);
        r38 = (r10 - r6) * (r16 - r14);
        r26 = ((r16 - r14) * r38) - ((r16 - r12) * r36);
        r36 = (r38 - r36) * 2.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0555, code lost:
    
        if (0.0d >= r36) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0557, code lost:
    
        r26 = -r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x055c, code lost:
    
        r36 = java.lang.Math.abs(r36);
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0570, code lost:
    
        if (java.lang.Math.abs(r18 * (0.5d * r36)) <= java.lang.Math.abs(r26)) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0578, code lost:
    
        if (r26 <= ((r24 - r16) * r36)) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0580, code lost:
    
        if (((r22 - r16) * r36) > r26) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0584, code lost:
    
        if (r32 > r16) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x0586, code lost:
    
        r18 = r24 - r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x0588, code lost:
    
        r42 = r18;
        r18 = 0.38196601125010515d * r18;
        r20 = r42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x0595, code lost:
    
        r42 = r20;
        r20 = r18;
        r18 = r42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x05a1, code lost:
    
        if (r28 > java.lang.Math.abs(r20)) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x05a3, code lost:
    
        r26 = r16 + r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x05a5, code lost:
    
        r29 = a(r47, r26, r48);
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x05b1, code lost:
    
        if (r29 != null) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x05b3, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x05b6, code lost:
    
        if (r6 >= r0) goto L325;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x05b8, code lost:
    
        r47[r6].x += r48[r6].x * r16;
        r47[r6].y += r48[r6].y * r16;
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x05d5, code lost:
    
        r18 = r22 - r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x05d8, code lost:
    
        r18 = r26 / r36;
        r26 = r16 + r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x05e0, code lost:
    
        if ((r26 - r24) < r34) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x05e6, code lost:
    
        if ((r22 - r26) >= r34) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x05ea, code lost:
    
        if (r16 > r32) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x05ec, code lost:
    
        r18 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x05ef, code lost:
    
        r18 = -r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x05f7, code lost:
    
        if (r32 > r16) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x05f9, code lost:
    
        r18 = r24 - r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x05fb, code lost:
    
        r20 = 0.38196601125010515d * r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0603, code lost:
    
        r18 = r22 - r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x060a, code lost:
    
        if (0.0d > r20) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x060c, code lost:
    
        r26 = r16 + r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x060f, code lost:
    
        r28 = -r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0615, code lost:
    
        return -1.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0623, code lost:
    
        if (r46.a.compareTo(r29) >= 0) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0625, code lost:
    
        r28 = r46.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x062b, code lost:
    
        r46.a = r28;
        r28 = r29.doubleValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x0637, code lost:
    
        if (r28 > r10) goto L309;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x063d, code lost:
    
        if (r46.c != false) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x063f, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x0642, code lost:
    
        if (r6 >= r0) goto L324;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x0644, code lost:
    
        r47[r6].x += r48[r6].x * r26;
        r47[r6].y += r48[r6].y * r26;
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0661, code lost:
    
        r28 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x0664, code lost:
    
        return -1.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x066a, code lost:
    
        if (r16 > r26) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x066c, code lost:
    
        r24 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x066e, code lost:
    
        r8 = r6;
        r14 = r12;
        r12 = r16;
        r6 = r10;
        r10 = r28;
        r16 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x0679, code lost:
    
        r22 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x067e, code lost:
    
        if (r26 >= r16) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0680, code lost:
    
        r24 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x0684, code lost:
    
        if (r28 <= r6) goto L311;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x0688, code lost:
    
        if (r12 != r16) goto L317;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x068a, code lost:
    
        r8 = r6;
        r14 = r12;
        r12 = r26;
        r6 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x0692, code lost:
    
        r22 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0697, code lost:
    
        if (r28 <= r8) goto L313;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x069b, code lost:
    
        if (r14 == r16) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x069f, code lost:
    
        if (r14 != r12) goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x06a1, code lost:
    
        r8 = r28;
        r14 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:?, code lost:
    
        return java.lang.Math.abs(r16) * java.lang.Math.sqrt(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0215, code lost:
    
        if (r16 >= r14) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0217, code lost:
    
        r18 = 0.0d;
        r20 = 0.0d;
        r22 = r14;
        r24 = r16;
        r16 = r8;
        r10 = r6;
        r12 = r8;
        r14 = r8;
        r8 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0225, code lost:
    
        r32 = 0.5d * (r24 + r22);
        r28 = Catalano.Imaging.ActiveContour.Ovuscule.OvusculeSnake2DKeeper.e + (Catalano.Imaging.ActiveContour.Ovuscule.OvusculeSnake2DKeeper.d * java.lang.Math.abs(r16));
        r34 = 2.0d * r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x024b, code lost:
    
        if (java.lang.Math.abs(r16 - r32) > (r34 - (0.5d * (r22 - r24)))) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x024d, code lost:
    
        r8 = 0.0d;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0252, code lost:
    
        if (r6 >= r0) goto L326;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0254, code lost:
    
        r47[r6].x += r48[r6].x * r16;
        r47[r6].y += r48[r6].y * r16;
        r8 = r8 + ((r48[r6].x * r48[r6].x) + (r48[r6].y * r48[r6].y));
        r6 = r6 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private double a(Catalano.Imaging.ActiveContour.Ovuscule.OvusculeSnake2DNode[] r47, Catalano.Core.DoublePoint[] r48) {
        /*
            Method dump skipped, instruction units count: 1730
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Catalano.Imaging.ActiveContour.Ovuscule.OvusculeSnake2DKeeper.a(Catalano.Imaging.ActiveContour.Ovuscule.OvusculeSnake2DNode[], Catalano.Core.DoublePoint[]):double");
    }

    private void a(IOvusculeSnake2D iOvusculeSnake2D) {
        this.b = iOvusculeSnake2D;
        this.a = null;
        this.c = true;
        OvusculeSnake2DNode[] nodes = iOvusculeSnake2D.getNodes();
        int length = nodes.length;
        OvusculeSnake2DNode[] ovusculeSnake2DNodeArr = new OvusculeSnake2DNode[length];
        for (int i = 0; i < length; i++) {
            ovusculeSnake2DNodeArr[i] = new OvusculeSnake2DNode(nodes[i].x, nodes[i].y, nodes[i].frozen, nodes[i].hidden);
        }
    }

    public void DrawOvuscule(FastBitmap fastBitmap, IOvusculeSnake2D iOvusculeSnake2D, int i, int i2, int i3) {
        a(iOvusculeSnake2D);
        OvusculeSnake2DScale[] scales = iOvusculeSnake2D.getScales();
        FastGraphics fastGraphics = new FastGraphics(fastBitmap);
        fastGraphics.setColor(255, 0, 0);
        int length = scales.length;
        for (int i4 = 0; i4 < length; i4++) {
            int[] iArr = scales[i4].a;
            int[] iArr2 = scales[i4].b;
            IntPolygon intPolygon = new IntPolygon();
            int i5 = scales[i4].c;
            for (int i6 = 0; i6 < i5; i6++) {
                intPolygon.addPoint(iArr2[i6], iArr[i6]);
            }
            fastGraphics.DrawPolygon(intPolygon);
        }
    }
}
