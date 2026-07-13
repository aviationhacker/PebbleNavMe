package org.eclipse.jetty.http;

import java.io.IOException;
import java.io.InterruptedIOException;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.BufferUtil;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class HttpGenerator extends AbstractGenerator {
    private static final Logger a = Log.getLogger((Class<?>) HttpGenerator.class);
    private static final a[] b = new a[508];
    private static final byte[] c;
    private static final byte[] d;
    private static final byte[] e;
    private static final byte[] f;
    private static final byte[] g;
    private static final byte[] h;
    private static final byte[] i;
    private static byte[] j;
    protected boolean _bypass;
    private boolean k;
    private boolean l;
    private boolean m;

    static {
        int length = HttpVersions.HTTP_1_1_BUFFER.length();
        for (int i2 = 0; i2 < b.length; i2++) {
            HttpStatus.Code code = HttpStatus.getCode(i2);
            if (code != null) {
                String message = code.getMessage();
                byte[] bArr = new byte[length + 5 + message.length() + 2];
                HttpVersions.HTTP_1_1_BUFFER.peek(0, bArr, 0, length);
                bArr[length + 0] = 32;
                bArr[length + 1] = (byte) ((i2 / 100) + 48);
                bArr[length + 2] = (byte) (((i2 % 100) / 10) + 48);
                bArr[length + 3] = (byte) ((i2 % 10) + 48);
                bArr[length + 4] = 32;
                for (int i3 = 0; i3 < message.length(); i3++) {
                    bArr[length + 5 + i3] = (byte) message.charAt(i3);
                }
                bArr[length + 5 + message.length()] = 13;
                bArr[length + 6 + message.length()] = 10;
                b[i2] = new a();
                b[i2].a = new ByteArrayBuffer(bArr, length + 5, (bArr.length - length) - 7, 0);
                b[i2].b = new ByteArrayBuffer(bArr, 0, length + 5, 0);
                b[i2].c = new ByteArrayBuffer(bArr, 0, bArr.length, 0);
            }
        }
        c = new byte[]{48, 13, 10, 13, 10};
        d = StringUtil.getBytes("Content-Length: 0\r\n");
        e = StringUtil.getBytes("Connection: keep-alive\r\n");
        f = StringUtil.getBytes("Connection: close\r\n");
        g = StringUtil.getBytes("Connection: ");
        h = StringUtil.getBytes("\r\n");
        i = StringUtil.getBytes("Transfer-Encoding: chunked\r\n");
        j = StringUtil.getBytes("Server: Jetty(7.0.x)\r\n");
    }

    static class a {
        Buffer a;
        Buffer b;
        Buffer c;

        private a() {
        }
    }

    public static Buffer getReasonBuffer(int i2) {
        a aVar = i2 < b.length ? b[i2] : null;
        if (aVar != null) {
            return aVar.a;
        }
        return null;
    }

    public static void setServerVersion(String str) {
        j = StringUtil.getBytes("Server: Jetty(" + str + ")\r\n");
    }

    public HttpGenerator(Buffers buffers, EndPoint endPoint) {
        super(buffers, endPoint);
        this._bypass = false;
        this.k = false;
        this.l = false;
        this.m = false;
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator, org.eclipse.jetty.http.Generator
    public void reset() {
        if (this._persistent != null && !this._persistent.booleanValue() && this._endp != null && !this._endp.isOutputShutdown()) {
            try {
                this._endp.shutdownOutput();
            } catch (IOException e2) {
                a.ignore(e2);
            }
        }
        super.reset();
        if (this._buffer != null) {
            this._buffer.clear();
        }
        if (this._header != null) {
            this._header.clear();
        }
        if (this._content != null) {
            this._content = null;
        }
        this._bypass = false;
        this.k = false;
        this.l = false;
        this.m = false;
        this._method = null;
        this._uri = null;
        this._noContent = false;
    }

    @Override // org.eclipse.jetty.http.Generator
    public void addContent(Buffer buffer, boolean z) throws IOException {
        if (this._noContent) {
            throw new IllegalStateException("NO CONTENT");
        }
        if (this._last || this._state == 4) {
            a.warn("Ignoring extra content {}", buffer);
            buffer.clear();
            return;
        }
        this._last = z;
        if ((this._content != null && this._content.length() > 0) || this.m) {
            if (this._endp.isOutputShutdown()) {
                throw new EofException();
            }
            flushBuffer();
            if (this._content != null && this._content.length() > 0) {
                if (this.m) {
                    Buffer buffer2 = this._buffers.getBuffer(this._content.length() + 12 + buffer.length());
                    buffer2.put(this._content);
                    buffer2.put(HttpTokens.CRLF);
                    BufferUtil.putHexInt(buffer2, buffer.length());
                    buffer2.put(HttpTokens.CRLF);
                    buffer2.put(buffer);
                    buffer = buffer2;
                } else {
                    Buffer buffer3 = this._buffers.getBuffer(this._content.length() + buffer.length());
                    buffer3.put(this._content);
                    buffer3.put(buffer);
                    buffer = buffer3;
                }
            }
        }
        this._content = buffer;
        this._contentWritten += (long) buffer.length();
        if (this._head) {
            buffer.clear();
            this._content = null;
            return;
        }
        if (this._endp != null && ((this._buffer == null || this._buffer.length() == 0) && this._content.length() > 0 && (this._last || (isCommitted() && this._content.length() > 1024)))) {
            this._bypass = true;
            return;
        }
        if (!this.m) {
            if (this._buffer == null) {
                this._buffer = this._buffers.getBuffer();
            }
            this._content.skip(this._buffer.put(this._content));
            if (this._content.length() == 0) {
                this._content = null;
            }
        }
    }

    public void sendResponse(Buffer buffer) {
        if (this._noContent || this._state != 0 || ((this._content != null && this._content.length() > 0) || this.m || this._head)) {
            throw new IllegalStateException();
        }
        this._last = true;
        this._content = buffer;
        this._bypass = true;
        this._state = 3;
        long length = buffer.length();
        this._contentWritten = length;
        this._contentLength = length;
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator
    public int prepareUncheckedAddContent() throws IOException {
        if (this._noContent || this._last || this._state == 4) {
            return -1;
        }
        Buffer buffer = this._content;
        if ((buffer != null && buffer.length() > 0) || this.m) {
            flushBuffer();
            if ((buffer != null && buffer.length() > 0) || this.m) {
                throw new IllegalStateException("FULL");
            }
        }
        if (this._buffer == null) {
            this._buffer = this._buffers.getBuffer();
        }
        this._contentWritten -= (long) this._buffer.length();
        if (this._head) {
            return Integer.MAX_VALUE;
        }
        return this._buffer.space() - (this._contentLength == -2 ? 12 : 0);
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator, org.eclipse.jetty.http.Generator
    public boolean isBufferFull() {
        return super.isBufferFull() || this.m || this._bypass || (this._contentLength == -2 && this._buffer != null && this._buffer.space() < 12);
    }

    public void send1xx(int i2) throws EofException, InterruptedIOException {
        if (this._state == 0) {
            if (i2 < 100 || i2 > 199) {
                throw new IllegalArgumentException("!1xx");
            }
            a aVar = b[i2];
            if (aVar == null) {
                throw new IllegalArgumentException(i2 + "?");
            }
            if (this._header == null) {
                this._header = this._buffers.getHeader();
            }
            this._header.put(aVar.c);
            this._header.put(HttpTokens.CRLF);
            while (this._header.length() > 0) {
                try {
                    int iFlush = this._endp.flush(this._header);
                    if (iFlush < 0) {
                        throw new EofException();
                    }
                    if (iFlush == 0) {
                        Thread.sleep(100L);
                    }
                } catch (InterruptedException e2) {
                    a.debug(e2);
                    throw new InterruptedIOException(e2.toString());
                }
            }
        }
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator
    public boolean isRequest() {
        return this._method != null;
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator
    public boolean isResponse() {
        return this._method == null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0427 A[Catch: ArrayIndexOutOfBoundsException -> 0x009d, TryCatch #0 {ArrayIndexOutOfBoundsException -> 0x009d, blocks: (B:20:0x0046, B:22:0x004c, B:24:0x005d, B:29:0x00bf, B:31:0x00f9, B:32:0x00fb, B:33:0x0107, B:35:0x010f, B:37:0x0115, B:40:0x014c, B:42:0x0154, B:45:0x015e, B:88:0x02e5, B:89:0x02e9, B:90:0x02ec, B:92:0x02f7, B:94:0x030b, B:96:0x0311, B:99:0x031e, B:100:0x0329, B:102:0x0335, B:103:0x033b, B:104:0x0347, B:107:0x0354, B:109:0x035a, B:110:0x0361, B:111:0x0365, B:113:0x036a, B:114:0x036f, B:166:0x0477, B:115:0x037a, B:117:0x0387, B:119:0x038a, B:121:0x0398, B:122:0x039c, B:124:0x03a1, B:125:0x03a6, B:126:0x03ab, B:142:0x03f9, B:127:0x03ae, B:129:0x03b5, B:130:0x03be, B:132:0x03c9, B:134:0x03cf, B:136:0x03d9, B:137:0x03e0, B:139:0x03e8, B:141:0x03ef, B:144:0x0401, B:145:0x0406, B:146:0x040c, B:148:0x0416, B:150:0x041c, B:151:0x0427, B:153:0x042e, B:154:0x0437, B:156:0x0441, B:158:0x0447, B:160:0x0451, B:161:0x045b, B:163:0x0463, B:165:0x046a, B:167:0x047e, B:169:0x0484, B:171:0x0495, B:172:0x049a, B:173:0x049d, B:176:0x04a9, B:178:0x04b0, B:180:0x04bc, B:246:0x0651, B:247:0x0658, B:248:0x0659, B:181:0x04c3, B:183:0x04cd, B:184:0x04d7, B:186:0x04dd, B:189:0x04e9, B:191:0x04f1, B:193:0x04fc, B:250:0x0666, B:252:0x0671, B:254:0x06a7, B:195:0x0530, B:197:0x0538, B:199:0x053e, B:200:0x0547, B:201:0x0557, B:203:0x0561, B:205:0x0567, B:207:0x056f, B:209:0x0577, B:211:0x057f, B:212:0x0587, B:214:0x058d, B:216:0x0597, B:218:0x059d, B:221:0x05a9, B:223:0x05af, B:224:0x05e0, B:226:0x05ea, B:229:0x05f4, B:231:0x05fe, B:233:0x0608, B:236:0x061a, B:238:0x0620, B:240:0x0628, B:242:0x0630, B:244:0x0638, B:245:0x0643, B:46:0x0164, B:47:0x0167, B:49:0x016f, B:50:0x0185, B:52:0x018b, B:55:0x0194, B:56:0x019c, B:58:0x01a5, B:60:0x01af, B:62:0x0202, B:63:0x0234, B:64:0x023d, B:66:0x0245, B:68:0x024d, B:70:0x025d, B:71:0x0264, B:73:0x026c, B:81:0x02bc, B:83:0x02c4, B:85:0x02cc, B:87:0x02dc, B:76:0x0282, B:77:0x028e, B:79:0x0294, B:80:0x029e), top: B:258:0x0046 }] */
    @Override // org.eclipse.jetty.http.AbstractGenerator, org.eclipse.jetty.http.Generator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void completeHeader(org.eclipse.jetty.http.HttpFields r19, boolean r20) throws org.eclipse.jetty.io.EofException {
        /*
            Method dump skipped, instruction units count: 1810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.HttpGenerator.completeHeader(org.eclipse.jetty.http.HttpFields, boolean):void");
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator, org.eclipse.jetty.http.Generator
    public void complete() throws IOException {
        if (this._state != 4) {
            super.complete();
            if (this._state < 3) {
                this._state = 3;
                if (this._contentLength == -2) {
                    this.l = true;
                }
            }
            flushBuffer();
        }
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator, org.eclipse.jetty.http.Generator
    public int flushBuffer() throws IOException {
        try {
            if (this._state == 0) {
                throw new IllegalStateException("State==HEADER");
            }
            b();
            if (this._endp == null) {
                if (this.k && this._buffer != null) {
                    this._buffer.put(HttpTokens.CRLF);
                }
                if (this.l && this._buffer != null && !this._head) {
                    this._buffer.put(c);
                }
                this.k = false;
                this.l = false;
                return 0;
            }
            int iFlush = -1;
            int iA = a();
            int i2 = 0;
            while (true) {
                switch (iA) {
                    case 0:
                        if (this._header != null) {
                            this._header.clear();
                        }
                        this._bypass = false;
                        this.m = false;
                        if (this._buffer != null) {
                            this._buffer.clear();
                            if (this._contentLength == -2) {
                                this._buffer.setPutIndex(12);
                                this._buffer.setGetIndex(12);
                                if (this._content != null && this._content.length() < this._buffer.space() && this._state != 3) {
                                    this._buffer.put(this._content);
                                    this._content.clear();
                                    this._content = null;
                                }
                            }
                        }
                        if (!this.k && !this.l && (this._content == null || this._content.length() == 0)) {
                            if (this._state == 3) {
                                this._state = 4;
                            }
                            if (this._state == 4 && this._persistent != null && !this._persistent.booleanValue() && this._status != 100 && this._method == null) {
                                this._endp.shutdownOutput();
                                iFlush = 0;
                                break;
                            }
                        } else {
                            b();
                        }
                        iFlush = 0;
                        break;
                    case 1:
                        iFlush = this._endp.flush(this._content);
                        break;
                    case 2:
                        iFlush = this._endp.flush(this._buffer);
                        break;
                    case 3:
                        iFlush = this._endp.flush(this._buffer, this._content, null);
                        break;
                    case 4:
                        iFlush = this._endp.flush(this._header);
                        break;
                    case 5:
                        iFlush = this._endp.flush(this._header, this._content, null);
                        break;
                    case 6:
                        iFlush = this._endp.flush(this._header, this._buffer, null);
                        break;
                    case 7:
                        throw new IllegalStateException();
                }
                if (iFlush > 0) {
                    i2 += iFlush;
                }
                int iA2 = a();
                if (iFlush > 0 || (iA2 != 0 && iA == 0)) {
                    iA = iA2;
                }
            }
            return i2;
        } catch (IOException e2) {
            a.ignore(e2);
            if (e2 instanceof EofException) {
                throw e2;
            }
            throw new EofException(e2);
        }
    }

    private int a() {
        int i2 = 0;
        int i3 = ((this._header == null || this._header.length() <= 0) ? 0 : 4) | ((this._buffer == null || this._buffer.length() <= 0) ? 0 : 2);
        if (this._bypass && this._content != null && this._content.length() > 0) {
            i2 = 1;
        }
        return i3 | i2;
    }

    private void b() {
        int length;
        if (!this.m) {
            if (!this._bypass && this._content != null && this._content.length() > 0 && this._buffer != null && this._buffer.space() > 0) {
                this._content.skip(this._buffer.put(this._content));
                if (this._content.length() == 0) {
                    this._content = null;
                }
            }
            if (this._contentLength == -2) {
                if (this._bypass && ((this._buffer == null || this._buffer.length() == 0) && this._content != null)) {
                    int length2 = this._content.length();
                    this.m = true;
                    if (this._header == null) {
                        this._header = this._buffers.getHeader();
                    }
                    if (this.k) {
                        if (this._header.length() > 0) {
                            throw new IllegalStateException("EOC");
                        }
                        this._header.put(HttpTokens.CRLF);
                        this.k = false;
                    }
                    BufferUtil.putHexInt(this._header, length2);
                    this._header.put(HttpTokens.CRLF);
                    this.k = true;
                } else if (this._buffer != null && (length = this._buffer.length()) > 0) {
                    this.m = true;
                    if (this._buffer.getIndex() == 12) {
                        this._buffer.poke(this._buffer.getIndex() - 2, HttpTokens.CRLF, 0, 2);
                        this._buffer.setGetIndex(this._buffer.getIndex() - 2);
                        BufferUtil.prependHexInt(this._buffer, length);
                        if (this.k) {
                            this._buffer.poke(this._buffer.getIndex() - 2, HttpTokens.CRLF, 0, 2);
                            this._buffer.setGetIndex(this._buffer.getIndex() - 2);
                            this.k = false;
                        }
                    } else {
                        if (this._header == null) {
                            this._header = this._buffers.getHeader();
                        }
                        if (this.k) {
                            if (this._header.length() > 0) {
                                throw new IllegalStateException("EOC");
                            }
                            this._header.put(HttpTokens.CRLF);
                            this.k = false;
                        }
                        BufferUtil.putHexInt(this._header, length);
                        this._header.put(HttpTokens.CRLF);
                    }
                    if (this._buffer.space() >= 2) {
                        this._buffer.put(HttpTokens.CRLF);
                    } else {
                        this.k = true;
                    }
                }
                if (this.l && (this._content == null || this._content.length() == 0)) {
                    if (this._header == null && this._buffer == null) {
                        this._header = this._buffers.getHeader();
                    }
                    if (this.k) {
                        if (this._buffer == null && this._header != null && this._header.space() >= HttpTokens.CRLF.length) {
                            this._header.put(HttpTokens.CRLF);
                            this.k = false;
                        } else if (this._buffer != null && this._buffer.space() >= HttpTokens.CRLF.length) {
                            this._buffer.put(HttpTokens.CRLF);
                            this.k = false;
                        }
                    }
                    if (!this.k && this.l) {
                        if (this._buffer == null && this._header != null && this._header.space() >= c.length) {
                            if (!this._head) {
                                this._header.put(c);
                                this.m = true;
                            }
                            this.l = false;
                        } else if (this._buffer != null && this._buffer.space() >= c.length) {
                            if (!this._head) {
                                this._buffer.put(c);
                                this.m = true;
                            }
                            this.l = false;
                        }
                    }
                }
            }
        }
        if (this._content != null && this._content.length() == 0) {
            this._content = null;
        }
    }

    public int getBytesBuffered() {
        return (this._header == null ? 0 : this._header.length()) + (this._buffer == null ? 0 : this._buffer.length()) + (this._content != null ? this._content.length() : 0);
    }

    public boolean isEmpty() {
        return (this._header == null || this._header.length() == 0) && (this._buffer == null || this._buffer.length() == 0) && (this._content == null || this._content.length() == 0);
    }

    public String toString() {
        Buffer buffer = this._header;
        Buffer buffer2 = this._buffer;
        Buffer buffer3 = this._content;
        Object[] objArr = new Object[5];
        objArr[0] = getClass().getSimpleName();
        objArr[1] = Integer.valueOf(this._state);
        objArr[2] = Integer.valueOf(buffer == null ? -1 : buffer.length());
        objArr[3] = Integer.valueOf(buffer2 == null ? -1 : buffer2.length());
        objArr[4] = Integer.valueOf(buffer3 != null ? buffer3.length() : -1);
        return String.format("%s{s=%d,h=%d,b=%d,c=%d}", objArr);
    }
}
