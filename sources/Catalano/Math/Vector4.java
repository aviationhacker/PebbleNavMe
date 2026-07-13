package Catalano.Math;

/* JADX INFO: loaded from: classes.dex */
public class Vector4 {
    public float w;
    public float x;
    public float y;
    public float z;

    public Vector4() {
    }

    public Vector4(float f, float f2, float f3, float f4) {
        this.x = f;
        this.y = f2;
        this.z = f3;
        this.w = f4;
    }

    public Vector4(float f) {
        this.w = f;
        this.z = f;
        this.y = f;
        this.x = f;
    }

    public float getMax() {
        float f = this.x > this.y ? this.x : this.y;
        float f2 = this.z > this.w ? this.z : this.w;
        return f > f2 ? f : f2;
    }

    public float getMin() {
        float f = this.x < this.y ? this.x : this.y;
        float f2 = this.z < this.w ? this.z : this.w;
        return f < f2 ? f : f2;
    }

    public int getMaxIndex() {
        float f;
        int i;
        float f2;
        int i2;
        if (this.x >= this.y) {
            f = this.x;
            i = 0;
        } else {
            f = this.y;
            i = 1;
        }
        if (this.z >= this.w) {
            f2 = this.z;
            i2 = 2;
        } else {
            f2 = this.w;
            i2 = 3;
        }
        return f >= f2 ? i : i2;
    }

    public int getMinIndex() {
        float f;
        int i;
        float f2;
        int i2;
        if (this.x <= this.y) {
            f = this.x;
            i = 0;
        } else {
            f = this.y;
            i = 1;
        }
        if (this.z <= this.w) {
            f2 = this.z;
            i2 = 2;
        } else {
            f2 = this.w;
            i2 = 3;
        }
        return f <= f2 ? i : i2;
    }

    public float Norm() {
        return (float) Math.sqrt((this.x * this.x) + (this.y * this.y) + (this.z * this.z) + (this.w * this.w));
    }

    public float Square() {
        return (this.x * this.x) + (this.y * this.y) + (this.z * this.z) + (this.w * this.w);
    }

    public float[] toArray() {
        return new float[]{this.x, this.y, this.z, this.w};
    }

    public static Vector4 Add(Vector4 vector4, Vector4 vector42) {
        return new Vector4(vector4.x + vector42.x, vector4.y + vector42.y, vector4.z + vector42.z, vector4.w + vector42.w);
    }

    public static Vector4 Add(Vector4 vector4, float f) {
        return new Vector4(vector4.x + f, vector4.y + f, vector4.z + f, vector4.w + f);
    }

    public static Vector4 Subtract(Vector4 vector4, Vector4 vector42) {
        return new Vector4(vector4.x - vector42.x, vector4.y - vector42.y, vector4.z - vector42.z, vector4.w - vector42.w);
    }

    public static Vector4 Subtract(Vector4 vector4, float f) {
        return new Vector4(vector4.x - f, vector4.y - f, vector4.z - f, vector4.w - f);
    }

    public static Vector4 Multiply(Vector4 vector4, Vector4 vector42) {
        return new Vector4(vector4.x * vector42.x, vector4.y * vector42.y, vector4.z * vector42.z, vector4.w * vector42.w);
    }

    public static Vector4 Multiply(Vector4 vector4, float f) {
        return new Vector4(vector4.x * f, vector4.y * f, vector4.z * f, vector4.w * f);
    }

    public static Vector4 Divide(Vector4 vector4, Vector4 vector42) {
        return new Vector4(vector4.x / vector42.x, vector4.y / vector42.y, vector4.z / vector42.z, vector4.w / vector42.w);
    }

    public static Vector4 Divide(Vector4 vector4, float f) {
        return new Vector4(vector4.x / f, vector4.y / f, vector4.z / f, vector4.w / f);
    }

    public float Normalize() {
        float fSqrt = (float) Math.sqrt((this.x * this.x) + (this.y * this.y) + (this.z * this.z) + (this.w * this.w));
        float f = 1.0f / fSqrt;
        this.x *= f;
        this.y *= f;
        this.z *= f;
        this.w = f * this.w;
        return fSqrt;
    }

    public Vector4 Inverse() {
        return new Vector4(this.x == 0.0f ? 0.0f : 1.0f / this.z, this.y == 0.0f ? 0.0f : 1.0f / this.y, this.y == 0.0f ? 0.0f : 1.0f / this.y, this.w != 0.0f ? 1.0f / this.w : 0.0f);
    }

    public Vector4 Abs() {
        return new Vector4(Math.abs(this.x), Math.abs(this.y), Math.abs(this.z), Math.abs(this.w));
    }

    public static float Dot(Vector4 vector4, Vector4 vector42) {
        return (vector4.x * vector42.x) + (vector4.y * vector42.y) + (vector4.z * vector42.z) + (vector4.w * vector42.w);
    }

    public Vector3 toVector3() {
        return new Vector3(this.x / this.w, this.y / this.w, this.z / this.w);
    }

    public boolean equals(Object obj) {
        if (obj.getClass().isAssignableFrom(Vector3.class)) {
            Vector4 vector4 = (Vector4) obj;
            if (this.x == vector4.x && this.y == vector4.y && this.z == vector4.z && this.w == vector4.w) {
                return true;
            }
        }
        return false;
    }
}
