package org.eclipse.jetty.util;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class Utf8Appendable {
    public static final char REPLACEMENT = 65533;
    protected final Appendable _appendable;
    protected int _state = 0;
    private int c;
    protected static final Logger LOG = Log.getLogger((Class<?>) Utf8Appendable.class);
    private static final byte[] a = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 10, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 3, 3, Ascii.VT, 6, 6, 6, 5, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8};
    private static final byte[] b = {0, Ascii.FF, Ascii.CAN, 36, 60, 96, 84, Ascii.FF, Ascii.FF, Ascii.FF, 48, 72, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, 0, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, 0, Ascii.FF, 0, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.CAN, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.CAN, Ascii.FF, Ascii.CAN, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.CAN, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.CAN, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.CAN, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, 36, Ascii.FF, 36, Ascii.FF, Ascii.FF, Ascii.FF, 36, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, 36, Ascii.FF, 36, Ascii.FF, Ascii.FF, Ascii.FF, 36, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF};

    public abstract int length();

    public Utf8Appendable(Appendable appendable) {
        this._appendable = appendable;
    }

    protected void reset() {
        this._state = 0;
    }

    public void append(byte b2) {
        try {
            appendByte(b2);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void append(byte[] bArr, int i, int i2) {
        int i3 = i + i2;
        while (i < i3) {
            try {
                appendByte(bArr[i]);
                i++;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public boolean append(byte[] bArr, int i, int i2, int i3) {
        int i4 = i + i2;
        while (i < i4) {
            try {
                if (length() > i3) {
                    return false;
                }
                appendByte(bArr[i]);
                i++;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return true;
    }

    protected void appendByte(byte b2) throws IOException {
        if (b2 > 0 && this._state == 0) {
            this._appendable.append((char) (b2 & UnsignedBytes.MAX_VALUE));
            return;
        }
        int i = b2 & UnsignedBytes.MAX_VALUE;
        byte b3 = a[i];
        this.c = this._state == 0 ? i & (255 >> b3) : (i & 63) | (this.c << 6);
        byte b4 = b[b3 + this._state];
        switch (b4) {
            case 0:
                this._state = b4;
                if (this.c < 55296) {
                    this._appendable.append((char) this.c);
                    return;
                }
                for (char c : Character.toChars(this.c)) {
                    this._appendable.append(c);
                }
                return;
            case 12:
                String str = "byte " + TypeUtil.toHexString(b2) + " in state " + (this._state / 12);
                this.c = 0;
                this._state = 0;
                this._appendable.append(REPLACEMENT);
                throw new NotUtf8Exception(str);
            default:
                this._state = b4;
                return;
        }
    }

    public boolean isUtf8SequenceComplete() {
        return this._state == 0;
    }

    public static class NotUtf8Exception extends IllegalArgumentException {
        public NotUtf8Exception(String str) {
            super("Not valid UTF8! " + str);
        }
    }

    protected void checkState() {
        if (!isUtf8SequenceComplete()) {
            this.c = 0;
            this._state = 0;
            try {
                this._appendable.append(REPLACEMENT);
                throw new NotUtf8Exception("incomplete UTF8 sequence");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public String toReplacedString() {
        if (!isUtf8SequenceComplete()) {
            this.c = 0;
            this._state = 0;
            try {
                this._appendable.append(REPLACEMENT);
                NotUtf8Exception notUtf8Exception = new NotUtf8Exception("incomplete UTF8 sequence");
                LOG.warn(notUtf8Exception.toString(), new Object[0]);
                LOG.debug(notUtf8Exception);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return this._appendable.toString();
    }
}
