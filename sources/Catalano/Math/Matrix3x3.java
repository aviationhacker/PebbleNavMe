package Catalano.Math;

/* JADX INFO: loaded from: classes.dex */
public class Matrix3x3 {
    public float V00;
    public float V01;
    public float V02;
    public float V10;
    public float V11;
    public float V12;
    public float V20;
    public float V21;
    public float V22;

    public Matrix3x3() {
        this.V02 = 0.0f;
        this.V01 = 0.0f;
        this.V00 = 0.0f;
        this.V12 = 0.0f;
        this.V11 = 0.0f;
        this.V10 = 0.0f;
        this.V22 = 0.0f;
        this.V21 = 0.0f;
        this.V22 = 0.0f;
    }

    public Matrix3x3(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        this.V00 = f;
        this.V01 = f2;
        this.V02 = f3;
        this.V10 = f4;
        this.V11 = f5;
        this.V12 = f6;
        this.V20 = f7;
        this.V21 = f8;
        this.V22 = f9;
    }

    public static Matrix3x3 Identity() {
        return new Matrix3x3(1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f);
    }

    public float Determinant() {
        return ((((((this.V00 * this.V11) * this.V22) + ((this.V01 * this.V12) * this.V20)) + ((this.V02 * this.V10) * this.V21)) - ((this.V00 * this.V12) * this.V21)) - ((this.V01 * this.V10) * this.V22)) - ((this.V02 * this.V11) * this.V20);
    }

    public float[] toArray() {
        return new float[]{this.V00, this.V01, this.V02, this.V10, this.V11, this.V12, this.V20, this.V21, this.V22};
    }

    public static Matrix3x3 CreateRotationY(float f) {
        Matrix3x3 matrix3x3 = new Matrix3x3();
        float fCos = (float) Math.cos(f);
        float fSin = (float) Math.sin(f);
        matrix3x3.V22 = fCos;
        matrix3x3.V00 = fCos;
        matrix3x3.V02 = fSin;
        matrix3x3.V20 = -fSin;
        matrix3x3.V11 = 1.0f;
        return matrix3x3;
    }

    public static Matrix3x3 CreateRotationX(float f) {
        Matrix3x3 matrix3x3 = new Matrix3x3();
        float fCos = (float) Math.cos(f);
        float fSin = (float) Math.sin(f);
        matrix3x3.V22 = fCos;
        matrix3x3.V11 = fCos;
        matrix3x3.V12 = -fSin;
        matrix3x3.V21 = fSin;
        matrix3x3.V00 = 1.0f;
        return matrix3x3;
    }

    public static Matrix3x3 CreateRotationZ(float f) {
        Matrix3x3 matrix3x3 = new Matrix3x3();
        float fCos = (float) Math.cos(f);
        float fSin = (float) Math.sin(f);
        matrix3x3.V11 = fCos;
        matrix3x3.V00 = fCos;
        matrix3x3.V01 = -fSin;
        matrix3x3.V10 = fSin;
        matrix3x3.V22 = 1.0f;
        return matrix3x3;
    }

    public static Matrix3x3 CreateFromYawPitchRoll(float f, float f2, float f3) {
        Matrix3x3 matrix3x3Multiply = Multiply(CreateRotationY(f), CreateRotationX(f2));
        matrix3x3Multiply.Multiply(CreateRotationZ(f3));
        return matrix3x3Multiply;
    }

    public float[] ExtractYawPitchRoll() {
        return new float[]{(float) Math.atan2(this.V02, this.V22), (float) Math.asin(-this.V12), (float) Math.atan2(this.V10, this.V11)};
    }

    public static Matrix3x3 CreateFromRows(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        Matrix3x3 matrix3x3 = new Matrix3x3();
        matrix3x3.V00 = vector3.x;
        matrix3x3.V01 = vector3.y;
        matrix3x3.V02 = vector3.z;
        matrix3x3.V10 = vector32.x;
        matrix3x3.V11 = vector32.y;
        matrix3x3.V12 = vector32.z;
        matrix3x3.V20 = vector33.x;
        matrix3x3.V21 = vector33.y;
        matrix3x3.V22 = vector33.z;
        return matrix3x3;
    }

    public static Matrix3x3 CreateFromColumns(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        Matrix3x3 matrix3x3 = new Matrix3x3();
        matrix3x3.V00 = vector3.x;
        matrix3x3.V10 = vector3.y;
        matrix3x3.V20 = vector3.z;
        matrix3x3.V01 = vector32.x;
        matrix3x3.V11 = vector32.y;
        matrix3x3.V21 = vector32.z;
        matrix3x3.V02 = vector33.x;
        matrix3x3.V12 = vector33.y;
        matrix3x3.V22 = vector33.z;
        return matrix3x3;
    }

    public static Matrix3x3 CreateDiagonal(Vector3 vector3) {
        Matrix3x3 matrix3x3 = new Matrix3x3();
        matrix3x3.V00 = vector3.x;
        matrix3x3.V11 = vector3.y;
        matrix3x3.V22 = vector3.z;
        return matrix3x3;
    }

    public void Multiply(Matrix3x3 matrix3x3) {
        this.V00 = (this.V00 * matrix3x3.V00) + (this.V01 * matrix3x3.V10) + (this.V02 * matrix3x3.V20);
        this.V01 = (this.V00 * matrix3x3.V01) + (this.V01 * matrix3x3.V11) + (this.V02 * matrix3x3.V21);
        this.V02 = (this.V00 * matrix3x3.V02) + (this.V01 * matrix3x3.V12) + (this.V02 * matrix3x3.V22);
        this.V10 = (this.V10 * matrix3x3.V00) + (this.V11 * matrix3x3.V10) + (this.V12 * matrix3x3.V20);
        this.V11 = (this.V10 * matrix3x3.V01) + (this.V11 * matrix3x3.V11) + (this.V12 * matrix3x3.V21);
        this.V12 = (this.V10 * matrix3x3.V02) + (this.V11 * matrix3x3.V12) + (this.V12 * matrix3x3.V22);
        this.V20 = (this.V20 * matrix3x3.V00) + (this.V21 * matrix3x3.V10) + (this.V22 * matrix3x3.V20);
        this.V21 = (this.V20 * matrix3x3.V01) + (this.V21 * matrix3x3.V11) + (this.V22 * matrix3x3.V21);
        this.V22 = (this.V20 * matrix3x3.V02) + (this.V21 * matrix3x3.V12) + (this.V22 * matrix3x3.V22);
    }

    public static Matrix3x3 Multiply(Matrix3x3 matrix3x3, Matrix3x3 matrix3x32) {
        Matrix3x3 matrix3x33 = new Matrix3x3();
        matrix3x33.V00 = (matrix3x3.V00 * matrix3x32.V00) + (matrix3x3.V01 * matrix3x32.V10) + (matrix3x3.V02 * matrix3x32.V20);
        matrix3x33.V01 = (matrix3x3.V00 * matrix3x32.V01) + (matrix3x3.V01 * matrix3x32.V11) + (matrix3x3.V02 * matrix3x32.V21);
        matrix3x33.V02 = (matrix3x3.V00 * matrix3x32.V02) + (matrix3x3.V01 * matrix3x32.V12) + (matrix3x3.V02 * matrix3x32.V22);
        matrix3x33.V10 = (matrix3x3.V10 * matrix3x32.V00) + (matrix3x3.V11 * matrix3x32.V10) + (matrix3x3.V12 * matrix3x32.V20);
        matrix3x33.V11 = (matrix3x3.V10 * matrix3x32.V01) + (matrix3x3.V11 * matrix3x32.V11) + (matrix3x3.V12 * matrix3x32.V21);
        matrix3x33.V12 = (matrix3x3.V10 * matrix3x32.V02) + (matrix3x3.V11 * matrix3x32.V12) + (matrix3x3.V12 * matrix3x32.V22);
        matrix3x33.V20 = (matrix3x3.V20 * matrix3x32.V00) + (matrix3x3.V21 * matrix3x32.V10) + (matrix3x3.V22 * matrix3x32.V20);
        matrix3x33.V21 = (matrix3x3.V20 * matrix3x32.V01) + (matrix3x3.V21 * matrix3x32.V11) + (matrix3x3.V22 * matrix3x32.V21);
        matrix3x33.V22 = (matrix3x3.V20 * matrix3x32.V02) + (matrix3x3.V21 * matrix3x32.V12) + (matrix3x3.V22 * matrix3x32.V22);
        return matrix3x33;
    }

    public void Add(Matrix3x3 matrix3x3) {
        this.V00 += matrix3x3.V00;
        this.V01 += matrix3x3.V01;
        this.V02 += matrix3x3.V02;
        this.V10 += matrix3x3.V10;
        this.V11 += matrix3x3.V11;
        this.V12 += matrix3x3.V12;
        this.V20 += matrix3x3.V20;
        this.V21 += matrix3x3.V21;
        this.V22 += matrix3x3.V22;
    }

    public static Matrix3x3 Add(Matrix3x3 matrix3x3, Matrix3x3 matrix3x32) {
        Matrix3x3 matrix3x33 = new Matrix3x3();
        matrix3x33.V00 = matrix3x3.V00 + matrix3x32.V00;
        matrix3x33.V01 = matrix3x3.V01 + matrix3x32.V01;
        matrix3x33.V02 = matrix3x3.V02 + matrix3x32.V02;
        matrix3x33.V10 = matrix3x3.V10 + matrix3x32.V10;
        matrix3x33.V11 = matrix3x3.V11 + matrix3x32.V11;
        matrix3x33.V12 = matrix3x3.V12 + matrix3x32.V12;
        matrix3x33.V20 = matrix3x3.V20 + matrix3x32.V20;
        matrix3x33.V21 = matrix3x3.V21 + matrix3x32.V21;
        matrix3x33.V22 = matrix3x3.V22 + matrix3x32.V22;
        return matrix3x33;
    }

    public void Subtract(Matrix3x3 matrix3x3) {
        this.V00 -= matrix3x3.V00;
        this.V01 -= matrix3x3.V01;
        this.V02 -= matrix3x3.V02;
        this.V10 -= matrix3x3.V10;
        this.V11 -= matrix3x3.V11;
        this.V12 -= matrix3x3.V12;
        this.V20 -= matrix3x3.V20;
        this.V21 -= matrix3x3.V21;
        this.V22 -= matrix3x3.V22;
    }

    public static Matrix3x3 Subtract(Matrix3x3 matrix3x3, Matrix3x3 matrix3x32) {
        Matrix3x3 matrix3x33 = new Matrix3x3();
        matrix3x33.V00 = matrix3x3.V00 - matrix3x32.V00;
        matrix3x33.V01 = matrix3x3.V01 - matrix3x32.V01;
        matrix3x33.V02 = matrix3x3.V02 - matrix3x32.V02;
        matrix3x33.V10 = matrix3x3.V10 - matrix3x32.V10;
        matrix3x33.V11 = matrix3x3.V11 - matrix3x32.V11;
        matrix3x33.V12 = matrix3x3.V12 - matrix3x32.V12;
        matrix3x33.V20 = matrix3x3.V20 - matrix3x32.V20;
        matrix3x33.V21 = matrix3x3.V21 - matrix3x32.V21;
        matrix3x33.V22 = matrix3x3.V22 - matrix3x32.V22;
        return matrix3x33;
    }
}
