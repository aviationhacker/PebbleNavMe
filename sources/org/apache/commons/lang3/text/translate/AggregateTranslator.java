package org.apache.commons.lang3.text.translate;

import java.io.Writer;
import org.apache.commons.lang3.ArrayUtils;

/* JADX INFO: loaded from: classes.dex */
public class AggregateTranslator extends CharSequenceTranslator {
    private final CharSequenceTranslator[] a;

    public AggregateTranslator(CharSequenceTranslator... charSequenceTranslatorArr) {
        this.a = (CharSequenceTranslator[]) ArrayUtils.clone(charSequenceTranslatorArr);
    }

    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i, Writer writer) {
        for (CharSequenceTranslator charSequenceTranslator : this.a) {
            int iTranslate = charSequenceTranslator.translate(charSequence, i, writer);
            if (iTranslate != 0) {
                return iTranslate;
            }
        }
        return 0;
    }
}
