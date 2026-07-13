package Catalano.Imaging.Corners.FREAK;

import android.support.v4.media.TransportMediator;
import android.support.v7.app.AppCompatDelegate;
import com.batescorp.pebble.nav.BuildConfig;
import java.util.ArrayList;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class FastRetinaKeypointPattern {
    public static final int Orientations = 256;
    public static final int Points = 43;
    public static final int Scales = 64;
    public static final int Size = 7;
    static int[] a = {HttpStatus.NOT_FOUND_404, 431, 818, 511, 181, 52, 311, 874, 774, 543, 719, 230, HttpStatus.EXPECTATION_FAILED_417, HttpStatus.RESET_CONTENT_205, 11, 560, 149, 265, 39, 306, 165, 857, 250, 8, 61, 15, 55, 717, 44, HttpStatus.PRECONDITION_FAILED_412, 592, 134, 761, 695, 660, 782, 625, 487, 549, 516, 271, 665, 762, 392, 178, 796, 773, 31, 672, 845, 548, 794, 677, 654, 241, 831, 225, 238, 849, 83, 691, 484, 826, 707, 122, 517, 583, 731, 328, 339, 571, 475, 394, 472, 580, 381, 137, 93, 380, 327, 619, 729, 808, 218, 213, 459, 141, 806, 341, 95, 382, 568, 124, 750, 193, 749, 706, 843, 79, 199, 317, 329, 768, 198, 100, 466, 613, 78, 562, 783, 689, 136, 838, 94, 142, 164, 679, 219, 419, 366, 418, HttpStatus.LOCKED_423, 77, 89, 523, 259, 683, 312, 555, 20, 470, 684, 123, 458, 453, 833, 72, 113, 253, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 313, 25, 153, 648, HttpStatus.LENGTH_REQUIRED_411, 607, 618, 128, HttpStatus.USE_PROXY_305, 232, HttpStatus.MOVED_PERMANENTLY_301, 84, 56, 264, 371, 46, HttpStatus.PROXY_AUTHENTICATION_REQUIRED_407, 360, 38, 99, 176, 710, 114, 578, 66, 372, 653, 129, 359, HttpStatus.FAILED_DEPENDENCY_424, 159, 821, 10, 323, 393, 5, 340, 891, 9, 790, 47, 0, 175, 346, 236, 26, 172, 147, 574, 561, 32, 294, 429, 724, 755, 398, 787, 288, 299, 769, 565, 767, 722, 757, 224, 465, 723, 498, 467, 235, TransportMediator.KEYCODE_MEDIA_PAUSE, 802, 446, 233, 544, 482, 800, 318, 16, 532, 801, 441, 554, 173, 60, 530, 713, 469, 30, 212, 630, 899, 170, 266, 799, 88, 49, 512, 399, 23, HttpStatus.INTERNAL_SERVER_ERROR_500, 107, 524, 90, 194, 143, 135, 192, HttpStatus.PARTIAL_CONTENT_206, 345, 148, 71, 119, 101, 563, 870, 158, 254, 214, 276, 464, 332, 725, 188, 385, 24, 476, 40, 231, 620, 171, 258, 67, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 844, 244, 187, 388, 701, 690, 50, 7, 850, 479, 48, 522, 22, BuildConfig.VERSION_CODE, 12, 659, 736, 655, 577, 737, 830, 811, 174, 21, 237, 335, 353, 234, 53, 270, 62, 182, 45, 177, 245, 812, 673, 355, 556, 612, 166, HttpStatus.NO_CONTENT_204, 54, 248, 365, 226, 242, 452, 700, 685, 573, 14, 842, 481, 468, 781, 564, HttpStatus.REQUESTED_RANGE_NOT_SATISFIABLE_416, 179, HttpStatus.METHOD_NOT_ALLOWED_405, 35, 819, 608, 624, 367, 98, 643, 448, 2, 460, 676, 440, 240, TransportMediator.KEYCODE_MEDIA_RECORD, 146, 184, 185, 430, 65, 807, 377, 82, 121, 708, 239, 310, 138, 596, 730, 575, 477, 851, 797, 247, 27, 85, 586, HttpStatus.TEMPORARY_REDIRECT_307, 779, 326, 494, 856, 324, 827, 96, 748, 13, 397, 125, 688, 702, 92, 293, 716, 277, 140, 112, 4, 80, 855, 839, 1, HttpStatus.REQUEST_ENTITY_TOO_LARGE_413, 347, 584, 493, 289, 696, 19, 751, 379, 76, 73, 115, 6, 590, 183, 734, 197, 483, 217, 344, 330, HttpStatus.BAD_REQUEST_400, 186, 243, 587, 220, 780, HttpStatus.OK_200, 793, 246, 824, 41, 735, 579, 81, 703, 322, 760, 720, 139, 480, 490, 91, 814, 813, 163, 152, 488, 763, 263, 425, HttpStatus.GONE_410, 576, 120, 319, 668, 150, 160, 302, 491, 515, 260, 145, 428, 97, 251, 395, 272, 252, 18, 106, 358, 854, 485, 144, 550, 131, 133, 378, 68, 102, 104, 58, 361, 275, 209, 697, 582, 338, 742, 589, 325, HttpStatus.REQUEST_TIMEOUT_408, 229, 28, HttpStatus.NOT_MODIFIED_304, 191, 189, 110, TransportMediator.KEYCODE_MEDIA_PLAY, 486, 211, 547, 533, 70, 215, 670, 249, 36, 581, 389, 605, 331, 518, 442, 822};
    private int b;
    private float c;
    public double step;
    public int[] patternSizes = new int[64];
    public int[] pointsValues = new int[43];
    public a[] descriptionPairs = new a[512];
    public b[] orientationPairs = new b[45];
    public c[] lookupTable = new c[704512];

    public int getOctaves() {
        return this.b;
    }

    public float getScale() {
        return this.c;
    }

    public FastRetinaKeypointPattern(int i, float f) {
        this.b = i;
        this.c = f;
        double dPow = Math.pow(2.0d, ((double) i) / 64.0d);
        this.step = (float) (64.0d / (0.6931471805599453d * ((double) i)));
        int[] iArr = {6, 6, 6, 6, 6, 6, 6, 1};
        double d = (0.6666666666666666d - 0.08333333333333333d) / 21.0d;
        double[] dArr = {0.6666666666666666d, 0.6666666666666666d - (6.0d * d), 0.6666666666666666d - (11.0d * d), 0.6666666666666666d - (15.0d * d), 0.6666666666666666d - (18.0d * d), 0.6666666666666666d - (d * 20.0d), 0.08333333333333333d, 0.0d};
        double[] dArr2 = {dArr[0] / 2.0d, dArr[1] / 2.0d, dArr[2] / 2.0d, dArr[3] / 2.0d, dArr[4] / 2.0d, dArr[5] / 2.0d, dArr[6] / 2.0d, dArr[6] / 2.0d};
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= 64) {
                break;
            }
            this.patternSizes[i3] = 0;
            double dPow2 = Math.pow(dPow, i3);
            int i4 = 0;
            while (true) {
                int i5 = i4;
                if (i5 < 256) {
                    double d2 = (((double) (i5 * 2)) * 3.141592653589793d) / 256.0d;
                    int i6 = 0;
                    int i7 = 0;
                    while (true) {
                        int i8 = i7;
                        if (i8 < 8) {
                            for (int i9 = 0; i9 < iArr[i8]; i9++) {
                                double d3 = ((3.141592653589793d / ((double) iArr[i8])) * ((double) (i8 % 2))) + ((((double) (i9 * 2)) * 3.141592653589793d) / ((double) iArr[i8])) + d2;
                                this.lookupTable[(i3 * 256 * 43) + (i5 * 43) + i6] = new c((float) (dArr[i8] * Math.cos(d3) * dPow2 * ((double) this.c)), (float) (Math.sin(d3) * dArr[i8] * dPow2 * ((double) this.c)), (float) (dArr2[i8] * dPow2 * ((double) this.c)));
                                int iCeil = ((int) Math.ceil((dArr[i8] + dArr2[i8]) * dPow2 * ((double) this.c))) + 1;
                                if (this.patternSizes[i3] < iCeil) {
                                    this.patternSizes[i3] = iCeil;
                                }
                                i6++;
                            }
                            i7 = i8 + 1;
                        }
                    }
                    i4 = i5 + 1;
                }
            }
            i2 = i3 + 1;
        }
        for (int i10 = 0; i10 < 45; i10++) {
            this.orientationPairs[i10] = new b();
        }
        this.orientationPairs[0].a = 0;
        this.orientationPairs[0].b = 3;
        this.orientationPairs[1].a = 1;
        this.orientationPairs[1].b = 4;
        this.orientationPairs[2].a = 2;
        this.orientationPairs[2].b = 5;
        this.orientationPairs[3].a = 0;
        this.orientationPairs[3].b = 2;
        this.orientationPairs[4].a = 1;
        this.orientationPairs[4].b = 3;
        this.orientationPairs[5].a = 2;
        this.orientationPairs[5].b = 4;
        this.orientationPairs[6].a = 3;
        this.orientationPairs[6].b = 5;
        this.orientationPairs[7].a = 4;
        this.orientationPairs[7].b = 0;
        this.orientationPairs[8].a = 5;
        this.orientationPairs[8].b = 1;
        this.orientationPairs[9].a = 6;
        this.orientationPairs[9].b = 9;
        this.orientationPairs[10].a = 7;
        this.orientationPairs[10].b = 10;
        this.orientationPairs[11].a = 8;
        this.orientationPairs[11].b = 11;
        this.orientationPairs[12].a = 6;
        this.orientationPairs[12].b = 8;
        this.orientationPairs[13].a = 7;
        this.orientationPairs[13].b = 9;
        this.orientationPairs[14].a = 8;
        this.orientationPairs[14].b = 10;
        this.orientationPairs[15].a = 9;
        this.orientationPairs[15].b = 11;
        this.orientationPairs[16].a = 10;
        this.orientationPairs[16].b = 6;
        this.orientationPairs[17].a = 11;
        this.orientationPairs[17].b = 7;
        this.orientationPairs[18].a = 12;
        this.orientationPairs[18].b = 15;
        this.orientationPairs[19].a = 13;
        this.orientationPairs[19].b = 16;
        this.orientationPairs[20].a = 14;
        this.orientationPairs[20].b = 17;
        this.orientationPairs[21].a = 12;
        this.orientationPairs[21].b = 14;
        this.orientationPairs[22].a = 13;
        this.orientationPairs[22].b = 15;
        this.orientationPairs[23].a = 14;
        this.orientationPairs[23].b = 16;
        this.orientationPairs[24].a = 15;
        this.orientationPairs[24].b = 17;
        this.orientationPairs[25].a = 16;
        this.orientationPairs[25].b = 12;
        this.orientationPairs[26].a = 17;
        this.orientationPairs[26].b = 13;
        this.orientationPairs[27].a = 18;
        this.orientationPairs[27].b = 21;
        this.orientationPairs[28].a = 19;
        this.orientationPairs[28].b = 22;
        this.orientationPairs[29].a = 20;
        this.orientationPairs[29].b = 23;
        this.orientationPairs[30].a = 18;
        this.orientationPairs[30].b = 20;
        this.orientationPairs[31].a = 19;
        this.orientationPairs[31].b = 21;
        this.orientationPairs[32].a = 20;
        this.orientationPairs[32].b = 22;
        this.orientationPairs[33].a = 21;
        this.orientationPairs[33].b = 23;
        this.orientationPairs[34].a = 22;
        this.orientationPairs[34].b = 18;
        this.orientationPairs[35].a = 23;
        this.orientationPairs[35].b = 19;
        this.orientationPairs[36].a = 24;
        this.orientationPairs[36].b = 27;
        this.orientationPairs[37].a = 25;
        this.orientationPairs[37].b = 28;
        this.orientationPairs[38].a = 26;
        this.orientationPairs[38].b = 29;
        this.orientationPairs[39].a = 30;
        this.orientationPairs[39].b = 33;
        this.orientationPairs[40].a = 31;
        this.orientationPairs[40].b = 34;
        this.orientationPairs[41].a = 32;
        this.orientationPairs[41].b = 35;
        this.orientationPairs[42].a = 36;
        this.orientationPairs[42].b = 39;
        this.orientationPairs[43].a = 37;
        this.orientationPairs[43].b = 40;
        this.orientationPairs[44].a = 38;
        this.orientationPairs[44].b = 41;
        for (int i11 = 0; i11 < this.orientationPairs.length; i11++) {
            float f2 = this.lookupTable[this.orientationPairs[i11].a].a - this.lookupTable[this.orientationPairs[i11].b].a;
            float f3 = this.lookupTable[this.orientationPairs[i11].a].b - this.lookupTable[this.orientationPairs[i11].b].b;
            float f4 = (f2 * f2) + (f3 * f3);
            this.orientationPairs[i11].c = (int) ((((double) (f2 / f4)) * 4096.0d) + 0.5d);
            this.orientationPairs[i11].d = (int) ((((double) (f3 / f4)) * 4096.0d) + 0.5d);
        }
        ArrayList arrayList = new ArrayList();
        int i12 = 1;
        while (true) {
            int i13 = i12;
            if (i13 >= 43) {
                break;
            }
            for (int i14 = 0; i14 < i13; i14++) {
                arrayList.add(new a(i13, i14));
            }
            i12 = i13 + 1;
        }
        for (int i15 = 0; i15 < 512; i15++) {
            this.descriptionPairs[i15] = new a(0, 0);
        }
        int i16 = 0;
        while (true) {
            int i17 = i16;
            if (i17 < this.descriptionPairs.length) {
                this.descriptionPairs[i17] = (a) arrayList.get(a[i17]);
                i16 = i17 + 1;
            } else {
                return;
            }
        }
    }

    class c {
        public float a;
        public float b;
        public float c;

        public c(float f, float f2, float f3) {
            this.a = f;
            this.b = f2;
            this.c = f3;
        }
    }

    class a {
        public int a;
        public int b;

        public a(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    class b {
        public int a = 0;
        public int b = 0;
        public int c;
        public int d;

        public b() {
        }
    }
}
