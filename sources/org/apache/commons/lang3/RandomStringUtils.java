package org.apache.commons.lang3;

import android.support.v4.media.TransportMediator;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class RandomStringUtils {
    private static final Random a = new Random();

    public static String random(int i) {
        return random(i, false, false);
    }

    public static String randomAscii(int i) {
        return random(i, 32, TransportMediator.KEYCODE_MEDIA_PAUSE, false, false);
    }

    public static String randomAlphabetic(int i) {
        return random(i, true, false);
    }

    public static String randomAlphanumeric(int i) {
        return random(i, true, true);
    }

    public static String randomNumeric(int i) {
        return random(i, false, true);
    }

    public static String random(int i, boolean z, boolean z2) {
        return random(i, 0, 0, z, z2);
    }

    public static String random(int i, int i2, int i3, boolean z, boolean z2) {
        return random(i, i2, i3, z, z2, null, a);
    }

    public static String random(int i, int i2, int i3, boolean z, boolean z2, char... cArr) {
        return random(i, i2, i3, z, z2, cArr, a);
    }

    public static String random(int i, int i2, int i3, boolean z, boolean z2, char[] cArr, Random random) {
        char cNextInt;
        if (i == 0) {
            return "";
        }
        if (i < 0) {
            throw new IllegalArgumentException("Requested random string length " + i + " is less than 0.");
        }
        if (i2 == 0 && i3 == 0) {
            i3 = 123;
            i2 = 32;
            if (!z && !z2) {
                i2 = 0;
                i3 = Integer.MAX_VALUE;
            }
        }
        char[] cArr2 = new char[i];
        int i4 = i3 - i2;
        while (true) {
            int i5 = i - 1;
            if (i != 0) {
                if (cArr == null) {
                    cNextInt = (char) (random.nextInt(i4) + i2);
                } else {
                    cNextInt = cArr[random.nextInt(i4) + i2];
                }
                if ((z && Character.isLetter(cNextInt)) || ((z2 && Character.isDigit(cNextInt)) || (!z && !z2))) {
                    if (cNextInt >= 56320 && cNextInt <= 57343) {
                        if (i5 == 0) {
                            i5++;
                        } else {
                            cArr2[i5] = cNextInt;
                            i5--;
                            cArr2[i5] = (char) (random.nextInt(128) + 55296);
                        }
                    } else if (cNextInt >= 55296 && cNextInt <= 56191) {
                        if (i5 == 0) {
                            i5++;
                        } else {
                            cArr2[i5] = (char) (random.nextInt(128) + 56320);
                            i5--;
                            cArr2[i5] = cNextInt;
                        }
                    } else if (cNextInt >= 56192 && cNextInt <= 56319) {
                        i5++;
                    } else {
                        cArr2[i5] = cNextInt;
                    }
                } else {
                    i5++;
                }
                i = i5;
            } else {
                return new String(cArr2);
            }
        }
    }

    public static String random(int i, String str) {
        return str == null ? random(i, 0, 0, false, false, null, a) : random(i, str.toCharArray());
    }

    public static String random(int i, char... cArr) {
        return cArr == null ? random(i, 0, 0, false, false, null, a) : random(i, 0, cArr.length, false, false, cArr, a);
    }
}
