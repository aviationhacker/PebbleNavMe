package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
@CheckReturnValue
public enum CaseFormat {
    LOWER_HYPHEN(CharMatcher.is('-'), "-") { // from class: com.google.common.base.CaseFormat.1
        @Override // com.google.common.base.CaseFormat
        String a(String str) {
            return Ascii.toLowerCase(str);
        }

        @Override // com.google.common.base.CaseFormat
        String a(CaseFormat caseFormat, String str) {
            if (caseFormat == LOWER_UNDERSCORE) {
                return str.replace('-', '_');
            }
            if (caseFormat == UPPER_UNDERSCORE) {
                return Ascii.toUpperCase(str.replace('-', '_'));
            }
            return super.a(caseFormat, str);
        }
    },
    LOWER_UNDERSCORE(CharMatcher.is('_'), "_") { // from class: com.google.common.base.CaseFormat.2
        @Override // com.google.common.base.CaseFormat
        String a(String str) {
            return Ascii.toLowerCase(str);
        }

        @Override // com.google.common.base.CaseFormat
        String a(CaseFormat caseFormat, String str) {
            if (caseFormat == LOWER_HYPHEN) {
                return str.replace('_', '-');
            }
            if (caseFormat == UPPER_UNDERSCORE) {
                return Ascii.toUpperCase(str);
            }
            return super.a(caseFormat, str);
        }
    },
    LOWER_CAMEL(CharMatcher.inRange('A', 'Z'), "") { // from class: com.google.common.base.CaseFormat.3
        @Override // com.google.common.base.CaseFormat
        String a(String str) {
            return CaseFormat.d(str);
        }
    },
    UPPER_CAMEL(CharMatcher.inRange('A', 'Z'), "") { // from class: com.google.common.base.CaseFormat.4
        @Override // com.google.common.base.CaseFormat
        String a(String str) {
            return CaseFormat.d(str);
        }
    },
    UPPER_UNDERSCORE(CharMatcher.is('_'), "_") { // from class: com.google.common.base.CaseFormat.5
        @Override // com.google.common.base.CaseFormat
        String a(String str) {
            return Ascii.toUpperCase(str);
        }

        @Override // com.google.common.base.CaseFormat
        String a(CaseFormat caseFormat, String str) {
            if (caseFormat == LOWER_HYPHEN) {
                return Ascii.toLowerCase(str.replace('_', '-'));
            }
            if (caseFormat == LOWER_UNDERSCORE) {
                return Ascii.toLowerCase(str);
            }
            return super.a(caseFormat, str);
        }
    };

    private final CharMatcher a;
    private final String b;

    abstract String a(String str);

    CaseFormat(CharMatcher charMatcher, String str) {
        this.a = charMatcher;
        this.b = str;
    }

    public final String to(CaseFormat caseFormat, String str) {
        Preconditions.checkNotNull(caseFormat);
        Preconditions.checkNotNull(str);
        return caseFormat == this ? str : a(caseFormat, str);
    }

    String a(CaseFormat caseFormat, String str) {
        int length = 0;
        StringBuilder sb = null;
        int iIndexIn = -1;
        while (true) {
            iIndexIn = this.a.indexIn(str, iIndexIn + 1);
            if (iIndexIn == -1) {
                break;
            }
            if (length == 0) {
                sb = new StringBuilder(str.length() + (this.b.length() * 4));
                sb.append(caseFormat.c(str.substring(length, iIndexIn)));
            } else {
                sb.append(caseFormat.a(str.substring(length, iIndexIn)));
            }
            sb.append(caseFormat.b);
            length = this.b.length() + iIndexIn;
        }
        return length == 0 ? caseFormat.c(str) : sb.append(caseFormat.a(str.substring(length))).toString();
    }

    @Beta
    public Converter<String, String> converterTo(CaseFormat caseFormat) {
        return new a(this, caseFormat);
    }

    static final class a extends Converter<String, String> implements Serializable {
        private static final long serialVersionUID = 0;
        private final CaseFormat a;
        private final CaseFormat b;

        a(CaseFormat caseFormat, CaseFormat caseFormat2) {
            this.a = (CaseFormat) Preconditions.checkNotNull(caseFormat);
            this.b = (CaseFormat) Preconditions.checkNotNull(caseFormat2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String doForward(String str) {
            return this.a.to(this.b, str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public String doBackward(String str) {
            return this.b.to(this.a, str);
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b.equals(aVar.b);
        }

        public int hashCode() {
            return this.a.hashCode() ^ this.b.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            return new StringBuilder(String.valueOf(strValueOf).length() + 14 + String.valueOf(strValueOf2).length()).append(strValueOf).append(".converterTo(").append(strValueOf2).append(")").toString();
        }
    }

    private String c(String str) {
        return this == LOWER_CAMEL ? Ascii.toLowerCase(str) : a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str) {
        return str.isEmpty() ? str : new StringBuilder(str.length()).append(Ascii.toUpperCase(str.charAt(0))).append(Ascii.toLowerCase(str.substring(1))).toString();
    }
}
