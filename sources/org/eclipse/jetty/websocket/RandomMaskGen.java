package org.eclipse.jetty.websocket;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class RandomMaskGen implements MaskGen {
    private final Random a;

    public RandomMaskGen() {
        this(new Random());
    }

    public RandomMaskGen(Random random) {
        this.a = random;
    }

    @Override // org.eclipse.jetty.websocket.MaskGen
    public void genMask(byte[] bArr) {
        this.a.nextBytes(bArr);
    }
}
