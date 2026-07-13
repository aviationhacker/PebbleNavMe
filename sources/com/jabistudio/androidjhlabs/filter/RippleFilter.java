package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import com.jabistudio.androidjhlabs.filter.math.ImageMath;
import com.jabistudio.androidjhlabs.filter.math.Noise;

/* JADX INFO: loaded from: classes.dex */
public class RippleFilter extends TransformFilter {
    public static final int NOISE = 3;
    public static final int SAWTOOTH = 1;
    public static final int SINE = 0;
    public static final int TRIANGLE = 2;
    private int e;
    private float a = 5.0f;
    private float b = 0.0f;
    private float d = 16.0f;
    private float c = 16.0f;

    public void setXAmplitude(float f) {
        this.a = f;
    }

    public float getXAmplitude() {
        return this.a;
    }

    public void setXWavelength(float f) {
        this.c = f;
    }

    public float getXWavelength() {
        return this.c;
    }

    public void setYAmplitude(float f) {
        this.b = f;
    }

    public float getYAmplitude() {
        return this.b;
    }

    public void setYWavelength(float f) {
        this.d = f;
    }

    public float getYWavelength() {
        return this.d;
    }

    public void setWaveType(int i) {
        this.e = i;
    }

    public int getWaveType() {
        return this.e;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformSpace(Rect rect) {
        if (this.edgeAction == 0) {
            rect.left -= (int) this.a;
            rect.right += (int) (this.a * 2.0f);
            rect.top -= (int) this.b;
            rect.bottom += (int) (this.b * 2.0f);
        }
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        float fNoise1;
        float fNoise12;
        float f = i2 / this.c;
        float f2 = i / this.d;
        switch (this.e) {
            case 1:
                fNoise1 = ImageMath.mod(f, 1.0f);
                fNoise12 = ImageMath.mod(f2, 1.0f);
                break;
            case 2:
                fNoise1 = ImageMath.triangle(f);
                fNoise12 = ImageMath.triangle(f2);
                break;
            case 3:
                fNoise1 = Noise.noise1(f);
                fNoise12 = Noise.noise1(f2);
                break;
            default:
                fNoise1 = (float) Math.sin(f);
                fNoise12 = (float) Math.sin(f2);
                break;
        }
        fArr[0] = (fNoise1 * this.a) + i;
        fArr[1] = (fNoise12 * this.b) + i2;
    }

    public String toString() {
        return "Distort/Ripple...";
    }
}
