package org.eclipse.jetty.websocket;

/* JADX INFO: loaded from: classes.dex */
public class ZeroMaskGen implements MaskGen {
    @Override // org.eclipse.jetty.websocket.MaskGen
    public void genMask(byte[] bArr) {
        bArr[3] = 0;
        bArr[2] = 0;
        bArr[1] = 0;
        bArr[0] = 0;
    }
}
