package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class UnicodeEscaper extends CodePointTranslator {
    private final int a;
    private final int b;
    private final boolean c;

    public UnicodeEscaper() {
        this(0, Integer.MAX_VALUE, true);
    }

    private UnicodeEscaper(int i, int i2, boolean z) {
        this.a = i;
        this.b = i2;
        this.c = z;
    }

    public static UnicodeEscaper below(int i) {
        return outsideOf(i, Integer.MAX_VALUE);
    }

    public static UnicodeEscaper above(int i) {
        return outsideOf(0, i);
    }

    public static UnicodeEscaper outsideOf(int i, int i2) {
        return new UnicodeEscaper(i, i2, false);
    }

    public static UnicodeEscaper between(int i, int i2) {
        return new UnicodeEscaper(i, i2, true);
    }

    @Override // org.apache.commons.lang3.text.translate.CodePointTranslator
    public boolean translate(int i, Writer writer) throws IOException {
        if (this.c) {
            if (i < this.a || i > this.b) {
                return false;
            }
        } else if (i >= this.a && i <= this.b) {
            return false;
        }
        if (i > 65535 || i > 4095) {
            writer.write("\\u" + hex(i));
        } else if (i > 255) {
            writer.write("\\u0" + hex(i));
        } else if (i > 15) {
            writer.write("\\u00" + hex(i));
        } else {
            writer.write("\\u000" + hex(i));
        }
        return true;
    }
}
