package Catalano.Core;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class IntRange implements Serializable {
    int a;
    int b;

    public IntRange() {
    }

    public IntRange(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public int getMin() {
        return this.a;
    }

    public void setMin(int i) {
        this.a = i;
    }

    public int getMax() {
        return this.b;
    }

    public void setMax(int i) {
        this.b = i;
    }

    public double length() {
        return this.b - this.a;
    }

    public boolean isInside(int i) {
        return i >= this.a && i <= this.b;
    }

    public boolean IsOverlapping(IntRange intRange) {
        return isInside(intRange.a) || isInside(intRange.b) || intRange.isInside(this.a) || intRange.isInside(this.b);
    }

    public FloatRange toFloatRange() {
        return new FloatRange(this.a, this.b);
    }

    public DoubleRange toDoubleRange() {
        return new DoubleRange(this.a, this.b);
    }

    public boolean equals(Object obj) {
        if (!obj.getClass().isAssignableFrom(IntRange.class)) {
            return false;
        }
        IntRange intRange = (IntRange) obj;
        return this.a == intRange.getMin() && this.b == intRange.getMax();
    }

    public int hashCode() {
        return ((this.a + 355) * 71) + this.b;
    }

    public String toString() {
        return "Minimum: " + this.a + " Maximum: " + this.b;
    }
}
