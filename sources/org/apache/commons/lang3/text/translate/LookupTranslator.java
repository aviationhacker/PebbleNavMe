package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class LookupTranslator extends CharSequenceTranslator {
    private final HashMap<CharSequence, CharSequence> a = new HashMap<>();
    private final int b;
    private final int c;

    public LookupTranslator(CharSequence[]... charSequenceArr) {
        int i;
        int i2 = Integer.MAX_VALUE;
        if (charSequenceArr != null) {
            int length = charSequenceArr.length;
            int i3 = 0;
            i = 0;
            int i4 = Integer.MAX_VALUE;
            while (i3 < length) {
                CharSequence[] charSequenceArr2 = charSequenceArr[i3];
                this.a.put(charSequenceArr2[0], charSequenceArr2[1]);
                int length2 = charSequenceArr2[0].length();
                i4 = length2 < i4 ? length2 : i4;
                if (length2 <= i) {
                    length2 = i;
                }
                i3++;
                i = length2;
            }
            i2 = i4;
        } else {
            i = 0;
        }
        this.b = i2;
        this.c = i;
    }

    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
        int length = this.c;
        if (this.c + i > charSequence.length()) {
            length = charSequence.length() - i;
        }
        while (true) {
            int i2 = length;
            if (i2 >= this.b) {
                CharSequence charSequence2 = this.a.get(charSequence.subSequence(i, i + i2));
                if (charSequence2 == null) {
                    length = i2 - 1;
                } else {
                    writer.write(charSequence2.toString());
                    return i2;
                }
            } else {
                return 0;
            }
        }
    }
}
