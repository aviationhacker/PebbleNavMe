package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class OctalUnescaper extends CharSequenceTranslator {
    private static int a = 377;

    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
        if (charSequence.charAt(i) != '\\' || i >= charSequence.length() - 1 || !Character.isDigit(charSequence.charAt(i + 1))) {
            return 0;
        }
        int i2 = i + 1;
        int i3 = i + 2;
        while (true) {
            if (i3 >= charSequence.length() || !Character.isDigit(charSequence.charAt(i3))) {
                break;
            }
            i3++;
            if (Integer.parseInt(charSequence.subSequence(i2, i3).toString(), 10) > a) {
                i3--;
                break;
            }
        }
        writer.write(Integer.parseInt(charSequence.subSequence(i2, i3).toString(), 8));
        return (i3 + 1) - i2;
    }
}
