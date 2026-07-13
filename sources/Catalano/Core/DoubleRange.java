package Catalano.Core;

import java.io.Serializable;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class DoubleRange implements Serializable {
    double a;
    double b;

    public DoubleRange() {
    }

    public DoubleRange(double d, double d2) {
        this.a = d;
        this.b = d2;
    }

    public double getMin() {
        return this.a;
    }

    public void setMin(double d) {
        this.a = d;
    }

    public double getMax() {
        return this.b;
    }

    public void setMax(double d) {
        this.b = d;
    }

    public double length() {
        return this.b - this.a;
    }

    public boolean isInside(double d) {
        return d >= this.a && d <= this.b;
    }

    public boolean IsOverlapping(DoubleRange doubleRange) {
        return isInside(doubleRange.a) || isInside(doubleRange.b) || doubleRange.isInside(this.a) || doubleRange.isInside(this.b);
    }

    public IntRange toIntRange() {
        return new IntRange((int) this.a, (int) this.b);
    }

    public FloatRange toFloatRange() {
        return new FloatRange((float) this.a, (float) this.b);
    }

    public boolean equals(Object obj) {
        if (!obj.getClass().isAssignableFrom(DoubleRange.class)) {
            return false;
        }
        DoubleRange doubleRange = (DoubleRange) obj;
        return this.a == doubleRange.getMin() && this.b == doubleRange.getMax();
    }

    public int hashCode() {
        int iDoubleToLongBits = ((int) (Double.doubleToLongBits(this.a) ^ (Double.doubleToLongBits(this.a) >>> 32))) + HttpStatus.USE_PROXY_305;
        return iDoubleToLongBits + (iDoubleToLongBits * 61) + ((int) (Double.doubleToLongBits(this.b) ^ (Double.doubleToLongBits(this.b) >>> 32)));
    }

    public String toString() {
        return "Minimum: " + this.a + " Maximum: " + this.b;
    }
}
