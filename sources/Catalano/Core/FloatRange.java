package Catalano.Core;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class FloatRange implements Serializable {
    float a;
    float b;

    public FloatRange() {
    }

    public FloatRange(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    public float getMin() {
        return this.a;
    }

    public void setMin(float f) {
        this.a = f;
    }

    public float getMax() {
        return this.b;
    }

    public void setMax(float f) {
        this.b = f;
    }

    public float length() {
        return this.b - this.a;
    }

    public boolean isInside(float f) {
        return f >= this.a && f <= this.b;
    }

    public boolean IsOverlapping(FloatRange floatRange) {
        return isInside(floatRange.a) || isInside(floatRange.b) || floatRange.isInside(this.a) || floatRange.isInside(this.b);
    }

    public IntRange toIntRange() {
        return new IntRange((int) this.a, (int) this.b);
    }

    public DoubleRange toDoubleRange() {
        return new DoubleRange(this.a, this.b);
    }

    public boolean equals(Object obj) {
        if (!obj.getClass().isAssignableFrom(FloatRange.class)) {
            return false;
        }
        FloatRange floatRange = (FloatRange) obj;
        return this.a == floatRange.getMin() && this.b == floatRange.getMax();
    }

    public int hashCode() {
        int iFloatToIntBits = Float.floatToIntBits(this.a) + 57;
        return iFloatToIntBits + (iFloatToIntBits * 19) + Float.floatToIntBits(this.b);
    }

    public String toString() {
        return "Minimum: " + this.a + " Maximum: " + this.b;
    }
}
