package Catalano.Math;

/* JADX INFO: loaded from: classes.dex */
public class Vector3 {
    public float x;
    public float y;
    public float z;

    public Vector3() {
    }

    public Vector3(float f, float f2, float f3) {
        this.x = f;
        this.y = f2;
        this.z = f3;
    }

    public Vector3(float f) {
        this.z = f;
        this.y = f;
        this.x = f;
    }

    public float getMax() {
        return this.x > this.y ? this.x > this.z ? this.x : this.z : this.y > this.z ? this.y : this.z;
    }

    public float getMin() {
        return this.x < this.y ? this.x < this.z ? this.x : this.z : this.y < this.z ? this.y : this.z;
    }

    public int getMaxIndex() {
        return this.x >= this.y ? this.x >= this.z ? 0 : 2 : this.y >= this.z ? 1 : 2;
    }

    public int getMinIndex() {
        return this.x <= this.y ? this.x <= this.z ? 0 : 2 : this.y <= this.z ? 1 : 2;
    }

    public float Norm() {
        return (float) Math.sqrt((this.x * this.x) + (this.y * this.y) + (this.z * this.z));
    }

    public float Square() {
        return (this.x * this.x) + (this.y * this.y) + (this.z * this.z);
    }

    public float[] toArray() {
        return new float[]{this.x, this.y, this.z};
    }

    public static Vector3 Add(Vector3 vector3, Vector3 vector32) {
        return new Vector3(vector3.x + vector32.x, vector3.y + vector32.y, vector3.z + vector32.z);
    }

    public static Vector3 Add(Vector3 vector3, float f) {
        return new Vector3(vector3.x + f, vector3.y + f, vector3.z + f);
    }

    public static Vector3 Subtract(Vector3 vector3, Vector3 vector32) {
        return new Vector3(vector3.x - vector32.x, vector3.y - vector32.y, vector3.z - vector32.z);
    }

    public static Vector3 Subtract(Vector3 vector3, float f) {
        return new Vector3(vector3.x - f, vector3.y - f, vector3.z - f);
    }

    public static Vector3 Multiply(Vector3 vector3, Vector3 vector32) {
        return new Vector3(vector3.x * vector32.x, vector3.y * vector32.y, vector3.z * vector32.z);
    }

    public static Vector3 Multiply(Vector3 vector3, float f) {
        return new Vector3(vector3.x * f, vector3.y * f, vector3.z * f);
    }

    public static Vector3 Divide(Vector3 vector3, Vector3 vector32) {
        return new Vector3(vector3.x / vector32.x, vector3.y / vector32.y, vector3.z / vector32.z);
    }

    public static Vector3 Divide(Vector3 vector3, float f) {
        return new Vector3(vector3.x / f, vector3.y / f, vector3.z / f);
    }

    public float Normalize() {
        float fSqrt = (float) Math.sqrt((this.x * this.x) + (this.y * this.y) + (this.z * this.z));
        float f = 1.0f / fSqrt;
        this.x *= f;
        this.y *= f;
        this.z = f * this.z;
        return fSqrt;
    }

    public Vector3 Inverse() {
        return new Vector3(this.x == 0.0f ? 0.0f : 1.0f / this.z, this.y == 0.0f ? 0.0f : 1.0f / this.y, this.z != 0.0f ? 1.0f / this.z : 0.0f);
    }

    public Vector3 Abs() {
        return new Vector3(Math.abs(this.x), Math.abs(this.y), Math.abs(this.z));
    }

    public static Vector3 Cross(Vector3 vector3, Vector3 vector32) {
        return new Vector3((vector3.y * vector32.z) - (vector3.z * vector32.y), (vector3.z * vector32.x) - (vector3.x * vector32.z), (vector3.x * vector32.y) - (vector3.y * vector32.x));
    }

    public static float Dot(Vector3 vector3, Vector3 vector32) {
        return (vector3.x * vector32.x) + (vector3.y * vector32.y) + (vector3.z * vector32.z);
    }

    public Vector4 toVector4() {
        return new Vector4(this.x, this.y, this.z, 1.0f);
    }

    public boolean equals(Object obj) {
        if (obj.getClass().isAssignableFrom(Vector3.class)) {
            Vector3 vector3 = (Vector3) obj;
            if (this.x == vector3.x && this.y == vector3.y && this.z == vector3.z) {
                return true;
            }
        }
        return false;
    }
}
