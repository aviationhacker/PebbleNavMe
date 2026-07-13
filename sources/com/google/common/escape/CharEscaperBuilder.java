package com.google.common.escape;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public final class CharEscaperBuilder {
    private int b = -1;
    private final Map<Character, String> a = new HashMap();

    static class a extends CharEscaper {
        private final char[][] a;
        private final int b;

        a(char[][] cArr) {
            this.a = cArr;
            this.b = cArr.length;
        }

        @Override // com.google.common.escape.CharEscaper, com.google.common.escape.Escaper
        public String escape(String str) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt < this.a.length && this.a[cCharAt] != null) {
                    return escapeSlow(str, i);
                }
            }
            return str;
        }

        @Override // com.google.common.escape.CharEscaper
        protected char[] escape(char c) {
            if (c < this.b) {
                return this.a[c];
            }
            return null;
        }
    }

    public CharEscaperBuilder addEscape(char c, String str) {
        this.a.put(Character.valueOf(c), (String) Preconditions.checkNotNull(str));
        if (c > this.b) {
            this.b = c;
        }
        return this;
    }

    public CharEscaperBuilder addEscapes(char[] cArr, String str) {
        Preconditions.checkNotNull(str);
        for (char c : cArr) {
            addEscape(c, str);
        }
        return this;
    }

    public char[][] toArray() {
        char[][] cArr = new char[this.b + 1][];
        for (Map.Entry<Character, String> entry : this.a.entrySet()) {
            cArr[entry.getKey().charValue()] = entry.getValue().toCharArray();
        }
        return cArr;
    }

    public Escaper toEscaper() {
        return new a(toArray());
    }
}
