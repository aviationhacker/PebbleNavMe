package com.google.common.escape;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public final class Escapers {
    private static final Escaper a = new CharEscaper() { // from class: com.google.common.escape.Escapers.1
        @Override // com.google.common.escape.CharEscaper, com.google.common.escape.Escaper
        public String escape(String str) {
            return (String) Preconditions.checkNotNull(str);
        }

        @Override // com.google.common.escape.CharEscaper
        protected char[] escape(char c) {
            return null;
        }
    };

    private Escapers() {
    }

    public static Escaper nullEscaper() {
        return a;
    }

    public static Builder builder() {
        return new Builder();
    }

    @Beta
    public static final class Builder {
        private final Map<Character, String> a;
        private char b;
        private char c;
        private String d;

        private Builder() {
            this.a = new HashMap();
            this.b = (char) 0;
            this.c = (char) 65535;
            this.d = null;
        }

        public Builder setSafeRange(char c, char c2) {
            this.b = c;
            this.c = c2;
            return this;
        }

        public Builder setUnsafeReplacement(@Nullable String str) {
            this.d = str;
            return this;
        }

        public Builder addEscape(char c, String str) {
            Preconditions.checkNotNull(str);
            this.a.put(Character.valueOf(c), str);
            return this;
        }

        public Escaper build() {
            return new ArrayBasedCharEscaper(this.a, this.b, this.c) { // from class: com.google.common.escape.Escapers.Builder.1
                private final char[] b;

                {
                    char[] charArray;
                    if (Builder.this.d != null) {
                        charArray = Builder.this.d.toCharArray();
                    } else {
                        charArray = null;
                    }
                    this.b = charArray;
                }

                @Override // com.google.common.escape.ArrayBasedCharEscaper
                protected char[] escapeUnsafe(char c) {
                    return this.b;
                }
            };
        }
    }

    public static String computeReplacement(CharEscaper charEscaper, char c) {
        return a(charEscaper.escape(c));
    }

    public static String computeReplacement(UnicodeEscaper unicodeEscaper, int i) {
        return a(unicodeEscaper.escape(i));
    }

    private static String a(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return new String(cArr);
    }
}
