package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class CharSequenceTranslator {
    public abstract int translate(CharSequence charSequence, int i, Writer writer);

    public final String translate(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        try {
            StringWriter stringWriter = new StringWriter(charSequence.length() * 2);
            translate(charSequence, stringWriter);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public final void translate(CharSequence charSequence, Writer writer) throws IOException {
        if (writer == null) {
            throw new IllegalArgumentException("The Writer must not be null");
        }
        if (charSequence != null) {
            int iCodePointCount = Character.codePointCount(charSequence, 0, charSequence.length());
            int iCharCount = 0;
            while (iCharCount < iCodePointCount) {
                int iTranslate = translate(charSequence, iCharCount, writer);
                if (iTranslate == 0) {
                    writer.write(Character.toChars(Character.codePointAt(charSequence, iCharCount)));
                } else {
                    for (int i = 0; i < iTranslate; i++) {
                        if (iCharCount < iCodePointCount - 2) {
                            iCharCount += Character.charCount(Character.codePointAt(charSequence, iCharCount));
                        } else {
                            iCharCount++;
                        }
                    }
                    iCharCount--;
                }
                iCharCount++;
            }
        }
    }

    public final CharSequenceTranslator with(CharSequenceTranslator... charSequenceTranslatorArr) {
        CharSequenceTranslator[] charSequenceTranslatorArr2 = new CharSequenceTranslator[charSequenceTranslatorArr.length + 1];
        charSequenceTranslatorArr2[0] = this;
        System.arraycopy(charSequenceTranslatorArr, 0, charSequenceTranslatorArr2, 1, charSequenceTranslatorArr.length);
        return new AggregateTranslator(charSequenceTranslatorArr2);
    }

    public static String hex(int i) {
        return Integer.toHexString(i).toUpperCase(Locale.ENGLISH);
    }
}
