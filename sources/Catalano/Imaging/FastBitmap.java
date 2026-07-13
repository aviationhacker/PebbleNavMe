package Catalano.Imaging;

import Catalano.Core.IntPoint;
import Catalano.Imaging.Filters.Grayscale;
import android.graphics.Bitmap;
import android.support.v4.view.ViewCompat;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class FastBitmap {
    Bitmap a;
    int[] b;
    private CoordinateSystem c;
    private boolean d;
    private int e;
    private int f;
    private int g;

    public enum ColorSpace {
        Grayscale,
        RGB
    }

    public enum CoordinateSystem {
        Cartesian,
        Matrix
    }

    public FastBitmap() {
        this.d = false;
    }

    public FastBitmap(FastBitmap fastBitmap) {
        this.d = false;
        this.a = fastBitmap.toBitmap();
        setCoordinateSystem(fastBitmap.getCoordinateSystem());
        a();
        if (fastBitmap.isRGB()) {
            this.d = false;
        } else {
            this.d = true;
        }
    }

    public FastBitmap(Bitmap bitmap) {
        this.d = false;
        this.a = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        setCoordinateSystem(CoordinateSystem.Matrix);
        a();
    }

    public FastBitmap(int i, int i2) {
        this.d = false;
        this.a = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        setCoordinateSystem(CoordinateSystem.Matrix);
        a();
    }

    public FastBitmap(int i, int i2, ColorSpace colorSpace) {
        this.d = false;
        this.a = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        setCoordinateSystem(CoordinateSystem.Matrix);
        a();
        if (colorSpace == ColorSpace.Grayscale) {
            this.d = true;
        }
    }

    public FastBitmap(int[][] iArr) {
        this.d = false;
        this.a = Bitmap.createBitmap(iArr[0].length, iArr.length, Bitmap.Config.ARGB_8888);
        this.d = true;
        setCoordinateSystem(CoordinateSystem.Matrix);
        a();
        matrixToImage(iArr);
    }

    public FastBitmap(int[][][] iArr) {
        this.d = false;
        this.a = Bitmap.createBitmap(iArr[0][0].length, iArr[0].length, Bitmap.Config.ARGB_8888);
        this.d = false;
        setCoordinateSystem(CoordinateSystem.Matrix);
        a();
        matrixToImage(iArr);
    }

    public void Clear() {
        for (int i = 0; i < this.b.length; i++) {
            this.b[i] = 0;
        }
    }

    private void a() {
        this.b = new int[this.a.getWidth() * this.a.getHeight()];
        this.a.getPixels(this.b, 0, getWidth(), 0, 0, this.a.getWidth(), this.a.getHeight());
    }

    public int getHeight() {
        return this.a.getHeight();
    }

    public int getWidth() {
        return this.a.getWidth();
    }

    public int getSize() {
        return this.b.length;
    }

    public int[] getData() {
        return this.b;
    }

    public void setData(int[] iArr) {
        this.b = iArr;
    }

    public ColorSpace getColorSpace() {
        return this.d ? ColorSpace.Grayscale : ColorSpace.RGB;
    }

    public CoordinateSystem getCoordinateSystem() {
        return this.c;
    }

    public void setCoordinateSystem(CoordinateSystem coordinateSystem) {
        this.c = coordinateSystem;
        if (coordinateSystem == CoordinateSystem.Matrix) {
            this.f = getWidth();
            this.g = 1;
        } else {
            this.f = 1;
            this.g = getWidth();
        }
    }

    public int[][] toMatrixGrayAsInt() {
        int height = getHeight();
        int width = getWidth();
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
        int i = 0;
        int i2 = 0;
        while (i < height) {
            int i3 = i2;
            int i4 = 0;
            while (i4 < width) {
                iArr[i][i4] = getGray(i3);
                i4++;
                i3++;
            }
            i++;
            i2 = i3;
        }
        return iArr;
    }

    public double[][] toMatrixGrayAsDouble() {
        int height = getHeight();
        int width = getWidth();
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, height, width);
        int i = 0;
        int i2 = 0;
        while (i < height) {
            int i3 = i2;
            int i4 = 0;
            while (i4 < width) {
                dArr[i][i4] = getGray(i3);
                i4++;
                i3++;
            }
            i++;
            i2 = i3;
        }
        return dArr;
    }

    public float[][] toMatrixGrayAsFloat() {
        int height = getHeight();
        int width = getWidth();
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, height, width);
        int i = 0;
        int i2 = 0;
        while (i < height) {
            int i3 = i2;
            int i4 = 0;
            while (i4 < width) {
                fArr[i][i4] = getGray(i3);
                i4++;
                i3++;
            }
            i++;
            i2 = i3;
        }
        return fArr;
    }

    public int[][][] toMatrixRGBAsInt() {
        int height = getHeight();
        int width = getWidth();
        int[][][] iArr = (int[][][]) Array.newInstance((Class<?>) Integer.TYPE, height, width, 3);
        int i = 0;
        int i2 = 0;
        while (i < height) {
            int i3 = i2;
            for (int i4 = 0; i4 < width; i4++) {
                iArr[i][i4][0] = getRed(i3);
                iArr[i][i4][1] = getGreen(i3);
                iArr[i][i4][2] = getBlue(i3);
                i3++;
            }
            i++;
            i2 = i3;
        }
        return iArr;
    }

    public double[][][] toMatrixRGBAsDouble() {
        int height = getHeight();
        int width = getWidth();
        double[][][] dArr = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, height, width, 3);
        int i = 0;
        int i2 = 0;
        while (i < height) {
            int i3 = i2;
            for (int i4 = 0; i4 < width; i4++) {
                dArr[i][i4][0] = getRed(i3);
                dArr[i][i4][1] = getGreen(i3);
                dArr[i][i4][2] = getBlue(i3);
                i3++;
            }
            i++;
            i2 = i3;
        }
        return dArr;
    }

    public float[][][] toMatrixRGBAsFloat() {
        int height = getHeight();
        int width = getWidth();
        float[][][] fArr = (float[][][]) Array.newInstance((Class<?>) Float.TYPE, height, width, 3);
        int i = 0;
        int i2 = 0;
        while (i < height) {
            int i3 = i2;
            for (int i4 = 0; i4 < width; i4++) {
                fArr[i][i4][0] = getRed(i3);
                fArr[i][i4][1] = getGreen(i3);
                fArr[i][i4][2] = getBlue(i3);
                i3++;
            }
            i++;
            i2 = i3;
        }
        return fArr;
    }

    public void matrixToImage(int[][] iArr) {
        int i = 0;
        for (int[] iArr2 : iArr) {
            int i2 = 0;
            while (i2 < iArr[0].length) {
                setGray(i, iArr2[i2]);
                i2++;
                i++;
            }
        }
    }

    public void matrixToImage(float[][] fArr) {
        int i = 0;
        for (float[] fArr2 : fArr) {
            int i2 = 0;
            while (i2 < fArr[0].length) {
                setGray(i, (int) fArr2[i2]);
                i2++;
                i++;
            }
        }
    }

    public void matrixToImage(double[][] dArr) {
        int i = 0;
        for (double[] dArr2 : dArr) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                setGray(i, (int) dArr2[i2]);
                i2++;
                i++;
            }
        }
    }

    public void matrixToImage(int[][][] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = 0;
            while (i3 < iArr[0].length) {
                setRGB(i, iArr[i2][i3][0], iArr[i2][i3][1], iArr[i2][i3][2]);
                i3++;
                i++;
            }
        }
    }

    public void matrixToImage(float[][][] fArr) {
        int i = 0;
        for (int i2 = 0; i2 < fArr.length; i2++) {
            int i3 = 0;
            while (i3 < fArr[0].length) {
                setRGB(i, (int) fArr[i2][i3][0], (int) fArr[i2][i3][1], (int) fArr[i2][i3][2]);
                i3++;
                i++;
            }
        }
    }

    public void matrixToImage(double[][][] dArr) {
        int i = 0;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            int i3 = 0;
            while (i3 < dArr[0].length) {
                setRGB(i, (int) dArr[i2][i3][0], (int) dArr[i2][i3][1], (int) dArr[i2][i3][2]);
                i3++;
                i++;
            }
        }
    }

    public int[] getRGB(int i) {
        return new int[]{(this.b[i] >> 16) & 255, (this.b[i] >> 8) & 255, this.b[i] & 255};
    }

    public int[] getRGB(int i, int i2) {
        return new int[]{(this.b[(getWidth() * i) + i2] >> 16) & 255, (this.b[(getWidth() * i) + i2] >> 8) & 255, this.b[(getWidth() * i) + i2] & 255};
    }

    public int[] getRGB(IntPoint intPoint) {
        return getRGB(intPoint.x, intPoint.y);
    }

    public void setRGB(int i, int i2, int i3, int i4, int i5) {
        this.b[(this.f * i) + (this.g * i2)] = (-16777216) | (i3 << 16) | (i4 << 8) | i5;
    }

    public void setRGB(IntPoint intPoint, int i, int i2, int i3) {
        setRGB(intPoint.x, intPoint.y, i, i2, i3);
    }

    public void setRGB(int i, int i2, int[] iArr) {
        this.b[(this.f * i) + (this.g * i2)] = (-16777216) | (iArr[0] << 16) | (iArr[1] << 8) | iArr[2];
    }

    public void setRGB(IntPoint intPoint, int[] iArr) {
        this.b[(intPoint.x * getWidth()) + intPoint.y] = (-16777216) | (iArr[0] << 16) | (iArr[1] << 8) | iArr[2];
    }

    public void setRGB(int i, int i2, Color color) {
        this.b[(getWidth() * i) + i2] = (-16777216) | (color.r << 16) | (color.g << 8) | color.b;
    }

    public void setRGB(IntPoint intPoint, Color color) {
        this.b[(intPoint.x * getWidth()) + intPoint.y] = (-16777216) | (color.r << 16) | (color.g << 8) | color.b;
    }

    public void setRGB(int i, Color color) {
        this.b[i] = (-16777216) | (color.r << 16) | (color.g << 8) | color.b;
    }

    public void setRGB(int i, int i2, int i3, int i4) {
        this.b[i] = (-16777216) | (i2 << 16) | (i3 << 8) | i4;
    }

    public void setRGB(int i, int[] iArr) {
        this.b[i] = (-16777216) | (iArr[0] << 16) | (iArr[1] << 8) | iArr[2];
    }

    public int getGray(int i, int i2) {
        return this.b[(this.f * i) + (this.g * i2)] & 255;
    }

    public int getGray(IntPoint intPoint) {
        return getGray(intPoint.x, intPoint.y);
    }

    public int getGray(int i) {
        return this.b[i] & 255;
    }

    public void setGray(int i, int i2) {
        this.b[i] = (-16777216) | (i2 << 16) | (i2 << 8) | i2;
    }

    public void setGray(int i, int i2, int i3) {
        this.b[(this.f * i) + (this.g * i2)] = (-16777216) | (i3 << 16) | (i3 << 8) | i3;
    }

    public void setGray(IntPoint intPoint, int i) {
        setGray(intPoint.x, intPoint.y, i);
    }

    public int getRed(int i, int i2) {
        return (this.b[(this.f * i) + (this.g * i2)] >> 16) & 255;
    }

    public int getRed(IntPoint intPoint) {
        return getRed(intPoint.x, intPoint.y);
    }

    public int getRed(int i) {
        return (this.b[i] >> 16) & 255;
    }

    public void setRed(int i, int i2) {
        int i3 = (this.b[i] >> 8) & 255;
        this.b[i] = (i3 << 8) | (-16777216) | (i2 << 16) | (this.b[i] & 255);
    }

    public void setRed(int i, int i2, int i3) {
        int i4 = (this.b[(this.f * i) + (this.g * i2)] >> 8) & 255;
        this.b[(this.f * i) + (this.g * i2)] = (i4 << 8) | (-16777216) | (i3 << 16) | (this.b[(this.f * i) + (this.g * i2)] & 255);
    }

    public void setRed(IntPoint intPoint, int i) {
        setRed(intPoint.x, intPoint.y, i);
    }

    public int getGreen(int i, int i2) {
        return (this.b[(this.f * i) + (this.g * i2)] >> 8) & 255;
    }

    public int getGreen(IntPoint intPoint) {
        return getGreen(intPoint.x, intPoint.y);
    }

    public int getGreen(int i) {
        return (this.b[i] >> 8) & 255;
    }

    public void setGreen(int i, int i2) {
        int i3 = (this.b[i] >> 16) & 255;
        this.b[i] = (i3 << 16) | ViewCompat.MEASURED_STATE_MASK | (i2 << 8) | (this.b[i] & 255);
    }

    public void setGreen(int i, int i2, int i3) {
        int i4 = (this.b[(this.f * i) + (this.g * i2)] >> 16) & 255;
        this.b[(this.f * i) + (this.g * i2)] = (i4 << 16) | ViewCompat.MEASURED_STATE_MASK | (i3 << 8) | (this.b[(this.f * i) + (this.g * i2)] & 255);
    }

    public void setGreen(IntPoint intPoint, int i) {
        setGreen(intPoint.x, intPoint.y, i);
    }

    public int getBlue(int i, int i2) {
        return this.b[(this.f * i) + (this.g * i2)] & 255;
    }

    public int getBlue(IntPoint intPoint) {
        return getBlue(intPoint.x, intPoint.y);
    }

    public int getBlue(int i) {
        return this.b[i] & 255;
    }

    public void setBlue(int i, int i2) {
        this.b[i] = (((this.b[i] >> 16) & 255) << 16) | ViewCompat.MEASURED_STATE_MASK | (((this.b[i] >> 8) & 255) << 8) | i2;
    }

    public void setBlue(int i, int i2, int i3) {
        this.b[(this.f * i) + (this.g * i2)] = (((this.b[(this.f * i) + (this.g * i2)] >> 16) & 255) << 16) | ViewCompat.MEASURED_STATE_MASK | (((this.b[(this.f * i) + (this.g * i2)] >> 8) & 255) << 8) | i3;
    }

    public void setBlue(IntPoint intPoint, int i) {
        setBlue(intPoint.x, intPoint.y, i);
    }

    public int clampValues(int i, int i2, int i3) {
        if (i < i2) {
            return i2;
        }
        return i > i3 ? i3 : i;
    }

    public void setImage(Bitmap bitmap) {
        this.a = bitmap;
        this.e = this.a.getWidth();
        setCoordinateSystem(CoordinateSystem.Matrix);
        this.b = new int[this.a.getHeight() * this.a.getWidth()];
        this.a.getPixels(this.b, 0, getWidth(), 0, 0, this.a.getWidth(), this.a.getHeight());
    }

    public void setImage(FastBitmap fastBitmap) {
        this.a = fastBitmap.toBitmap();
        this.e = this.a.getWidth();
        setCoordinateSystem(fastBitmap.getCoordinateSystem());
        this.b = new int[this.a.getHeight() * this.a.getWidth()];
        this.a.getPixels(this.b, 0, getWidth(), 0, 0, this.a.getWidth(), this.a.getHeight());
        if (fastBitmap.isRGB()) {
            this.d = false;
        } else {
            this.d = true;
        }
    }

    public boolean isRGB() {
        return !this.d;
    }

    public boolean isGrayscale() {
        return this.d;
    }

    public void toRGB() {
        this.d = false;
    }

    public void toGrayscale() {
        new Grayscale().applyInPlace(this);
    }

    public void indicateGrayscale(boolean z) {
        this.d = z;
    }

    public Bitmap toBitmap() {
        if (isRGB()) {
            this.a.setPixels(this.b, 0, Math.max(this.f, this.g), 0, 0, this.a.getWidth(), this.a.getHeight());
        } else {
            int width = getWidth() * getHeight();
            for (int i = 0; i < width; i++) {
                int i2 = this.b[i] & 255;
                this.b[i] = i2 | (-16777216) | (i2 << 16) | (i2 << 8);
            }
            this.a.setPixels(this.b, 0, Math.max(this.f, this.g), 0, 0, this.a.getWidth(), this.a.getHeight());
        }
        return this.a;
    }

    public void recycle() {
        this.a.recycle();
    }
}
