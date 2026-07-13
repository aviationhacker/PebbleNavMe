package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class UnicodeUnescaper extends CharSequenceTranslator {
    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
        if (charSequence.charAt(i) == '\\' && i + 1 < charSequence.length() && charSequence.charAt(i + 1) == 'u') {
            int i2 = 2;
            while (i + i2 < charSequence.length() && charSequence.charAt(i + i2) == 'u') {
                i2++;
            }
            if (i + i2 < charSequence.length() && charSequence.charAt(i + i2) == '+') {
                i2++;
            }
            if (i + i2 + 4 <= charSequence.length()) {
                CharSequence charSequenceSubSequence = charSequence.subSequence(i + i2, i + i2 + 4);
                try {
                    writer.write((char) Integer.parseInt(charSequenceSubSequence.toString(), 16));
                    return i2 + 4;
                } catch (NumberFormatException e) {
                    throw new IllegalArgumentException("Unable to parse unicode value: " + ((Object) charSequenceSubSequence), e);
                }
            }
            throw new IllegalArgumentException("Less than 4 hex digits in unicode value: '" + ((Object) charSequence.subSequence(i, charSequence.length())) + "' due to end of CharSequence");
        }
        return 0;
    }
}
