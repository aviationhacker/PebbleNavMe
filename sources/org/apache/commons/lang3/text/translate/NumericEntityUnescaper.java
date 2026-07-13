package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
public class NumericEntityUnescaper extends CharSequenceTranslator {
    private final EnumSet<OPTION> a;

    public enum OPTION {
        semiColonRequired,
        semiColonOptional,
        errorIfNoSemiColon
    }

    public NumericEntityUnescaper(OPTION... optionArr) {
        if (optionArr.length > 0) {
            this.a = EnumSet.copyOf((Collection) Arrays.asList(optionArr));
        } else {
            this.a = EnumSet.copyOf((Collection) Arrays.asList(OPTION.semiColonRequired));
        }
    }

    public boolean isSet(OPTION option) {
        if (this.a == null) {
            return false;
        }
        return this.a.contains(option);
    }

    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
        int i2;
        boolean z;
        int i3;
        int length = charSequence.length();
        if (charSequence.charAt(i) != '&' || i >= length - 2 || charSequence.charAt(i + 1) != '#') {
            return 0;
        }
        int i4 = i + 2;
        char cCharAt = charSequence.charAt(i4);
        if (cCharAt == 'x' || cCharAt == 'X') {
            int i5 = i4 + 1;
            if (i5 == length) {
                return 0;
            }
            i2 = i5;
            z = true;
        } else {
            i2 = i4;
            z = false;
        }
        int i6 = i2;
        while (i6 < length && ((charSequence.charAt(i6) >= '0' && charSequence.charAt(i6) <= '9') || ((charSequence.charAt(i6) >= 'a' && charSequence.charAt(i6) <= 'f') || (charSequence.charAt(i6) >= 'A' && charSequence.charAt(i6) <= 'F')))) {
            i6++;
        }
        boolean z2 = i6 != length && charSequence.charAt(i6) == ';';
        if (!z2) {
            if (isSet(OPTION.semiColonRequired)) {
                return 0;
            }
            if (isSet(OPTION.errorIfNoSemiColon)) {
                throw new IllegalArgumentException("Semi-colon required at end of numeric entity");
            }
        }
        try {
            if (z) {
                i3 = Integer.parseInt(charSequence.subSequence(i2, i6).toString(), 16);
            } else {
                i3 = Integer.parseInt(charSequence.subSequence(i2, i6).toString(), 10);
            }
            if (i3 > 65535) {
                char[] chars = Character.toChars(i3);
                writer.write(chars[0]);
                writer.write(chars[1]);
            } else {
                writer.write(i3);
            }
            return (z ? 1 : 0) + (i6 - i2) + 2 + (z2 ? 1 : 0);
        } catch (NumberFormatException e) {
            return 0;
        }
    }
}
