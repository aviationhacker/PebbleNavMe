package org.eclipse.jetty.websocket;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FragmentExtension extends AbstractExtension {
    private int a;
    private int b;

    public FragmentExtension() {
        super("fragment");
        this.a = -1;
        this.b = 1;
    }

    @Override // org.eclipse.jetty.websocket.AbstractExtension, org.eclipse.jetty.websocket.Extension
    public boolean init(Map<String, String> map) {
        if (!super.init(map)) {
            return false;
        }
        this.a = getInitParameter("maxLength", this.a);
        this.b = getInitParameter("minFragments", this.b);
        return true;
    }

    @Override // org.eclipse.jetty.websocket.AbstractExtension, org.eclipse.jetty.websocket.WebSocketGenerator
    public void addFrame(byte b, byte b2, byte[] bArr, int i, int i2) {
        if (getConnection().isControl(b2)) {
            super.addFrame(b, b2, bArr, i, i2);
            return;
        }
        int i3 = 1;
        int i4 = i;
        byte bContinuationOpcode = b2;
        while (this.a > 0 && i2 > this.a) {
            super.addFrame((byte) ((getConnection().finMask() ^ (-1)) & b), bContinuationOpcode, bArr, i4, this.a);
            i2 -= this.a;
            i4 += this.a;
            bContinuationOpcode = getConnection().continuationOpcode();
            i3++;
        }
        while (i3 < this.b) {
            int i5 = i2 / 2;
            super.addFrame((byte) (b & 7), bContinuationOpcode, bArr, i4, i5);
            i2 -= i5;
            i4 += i5;
            bContinuationOpcode = getConnection().continuationOpcode();
            i3++;
        }
        super.addFrame((byte) (getConnection().finMask() | b), bContinuationOpcode, bArr, i4, i2);
    }
}
