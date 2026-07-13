package org.eclipse.jetty.websocket;

import android.support.v4.media.TransportMediator;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.util.Map;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class DeflateFrameExtension extends AbstractExtension {
    private static final Logger a = Log.getLogger((Class<?>) DeflateFrameExtension.class);
    private int b;
    private Deflater c;
    private Inflater d;

    public DeflateFrameExtension() {
        super("x-deflate-frame");
        this.b = 8;
    }

    @Override // org.eclipse.jetty.websocket.AbstractExtension, org.eclipse.jetty.websocket.Extension
    public boolean init(Map<String, String> map) {
        if (!map.containsKey("minLength")) {
            map.put("minLength", Integer.toString(this.b));
        }
        if (!super.init(map)) {
            return false;
        }
        this.b = getInitParameter("minLength", this.b);
        this.c = new Deflater();
        this.d = new Inflater();
        return true;
    }

    @Override // org.eclipse.jetty.websocket.AbstractExtension, org.eclipse.jetty.websocket.WebSocketParser.FrameHandler
    public void onFrame(byte b, byte b2, Buffer buffer) {
        if (getConnection().isControl(b2) || !isFlag(b, 1)) {
            super.onFrame(b, b2, buffer);
            return;
        }
        if (buffer.array() == null) {
            buffer = buffer.asMutableBuffer();
        }
        int i = buffer.get() & UnsignedBytes.MAX_VALUE;
        if (i >= 126) {
            int i2 = i == 127 ? 8 : 2;
            i = 0;
            int i3 = i2;
            while (true) {
                int i4 = i3 - 1;
                if (i3 <= 0) {
                    break;
                }
                i = (i * 256) + (buffer.get() & UnsignedBytes.MAX_VALUE);
                i3 = i4;
            }
        }
        this.d.setInput(buffer.array(), buffer.getIndex(), buffer.length());
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(i);
        while (this.d.getRemaining() > 0) {
            try {
                int iInflate = this.d.inflate(byteArrayBuffer.array(), byteArrayBuffer.putIndex(), byteArrayBuffer.space());
                if (iInflate == 0) {
                    throw new DataFormatException("insufficient data");
                }
                byteArrayBuffer.setPutIndex(iInflate + byteArrayBuffer.putIndex());
            } catch (DataFormatException e) {
                a.warn(e);
                getConnection().close(1007, e.toString());
                return;
            }
        }
        super.onFrame(clearFlag(b, 1), b2, byteArrayBuffer);
    }

    @Override // org.eclipse.jetty.websocket.AbstractExtension, org.eclipse.jetty.websocket.WebSocketGenerator
    public void addFrame(byte b, byte b2, byte[] bArr, int i, int i2) {
        int i3 = 3;
        if (getConnection().isControl(b2) || i2 < this.b) {
            super.addFrame(clearFlag(b, 1), b2, bArr, i, i2);
            return;
        }
        this.c.reset();
        this.c.setInput(bArr, i, i2);
        this.c.finish();
        byte[] bArr2 = new byte[i2];
        if (i2 > 65535) {
            bArr2[0] = Ascii.DEL;
            bArr2[1] = 0;
            bArr2[2] = 0;
            bArr2[3] = 0;
            bArr2[4] = 0;
            bArr2[5] = (byte) ((i2 >> 24) & 255);
            bArr2[6] = (byte) ((i2 >> 16) & 255);
            bArr2[7] = (byte) ((i2 >> 8) & 255);
            i3 = 9;
            bArr2[8] = (byte) (i2 & 255);
        } else if (i2 >= 126) {
            bArr2[0] = 126;
            bArr2[1] = (byte) (i2 >> 8);
            bArr2[2] = (byte) (i2 & 255);
        } else {
            bArr2[0] = (byte) (i2 & TransportMediator.KEYCODE_MEDIA_PAUSE);
            i3 = 1;
        }
        int iDeflate = this.c.deflate(bArr2, i3, i2 - i3);
        if (this.c.finished()) {
            super.addFrame(setFlag(b, 1), b2, bArr2, 0, iDeflate + i3);
        } else {
            super.addFrame(clearFlag(b, 1), b2, bArr, i, i2);
        }
    }
}
