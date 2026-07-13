package Catalano.Imaging.Corners.FREAK;

import Catalano.Core.IntPoint;

/* JADX INFO: loaded from: classes.dex */
public class FastRetinaKeypoint {
    private byte[] a;
    public double orientation;
    public double scale;
    public double x;
    public double y;

    public double getOrientation() {
        return this.orientation;
    }

    public void setOrientation(double d) {
        this.orientation = d;
    }

    public double getScale() {
        return this.scale;
    }

    public void setScale(double d) {
        this.scale = d;
    }

    public byte[] getDescriptor() {
        return this.a;
    }

    public void setDescriptor(byte[] bArr) {
        this.a = bArr;
    }

    public FastRetinaKeypoint(double d, double d2) {
        this.x = d;
        this.y = d2;
    }

    public String toBinary() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.a.length; i++) {
            for (int i2 = 0; i2 < 8; i2++) {
                sb.append((this.a[i] & (1 << i2)) != 0 ? "1" : "0");
            }
        }
        return sb.toString();
    }

    public String toHex() {
        StringBuilder sb = new StringBuilder(this.a.length * 2);
        for (int i = 0; i < this.a.length; i++) {
            sb.append(String.format("%02X ", Byte.valueOf(this.a[i])));
        }
        return sb.toString();
    }

    public IntPoint toIntPoint() {
        return new IntPoint(this.x, this.y);
    }

    public boolean equals(Object obj) {
        byte[] bArr = ((FastRetinaKeypoint) obj).a;
        for (int i = 0; i < bArr.length; i++) {
            if (this.a[i] != bArr[i]) {
                return false;
            }
        }
        return true;
    }
}
