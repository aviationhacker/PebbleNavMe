package org.eclipse.jetty.websocket;

/* JADX INFO: loaded from: classes.dex */
public class FixedMaskGen implements MaskGen {
    private final byte[] a;

    public FixedMaskGen() {
        this(new byte[]{-1, -1, -1, -1});
    }

    public FixedMaskGen(byte[] bArr) {
        this.a = new byte[4];
        System.arraycopy(bArr, 0, this.a, 0, 4);
    }

    @Override // org.eclipse.jetty.websocket.MaskGen
    public void genMask(byte[] bArr) {
        System.arraycopy(this.a, 0, bArr, 0, 4);
    }
}
