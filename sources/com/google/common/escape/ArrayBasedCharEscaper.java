package com.google.common.escape;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public abstract class ArrayBasedCharEscaper extends CharEscaper {
    private final char[][] a;
    private final int b;
    private final char c;
    private final char d;

    protected abstract char[] escapeUnsafe(char c);

    protected ArrayBasedCharEscaper(Map<Character, String> map, char c, char c2) {
        this(ArrayBasedEscaperMap.create(map), c, c2);
    }

    protected ArrayBasedCharEscaper(ArrayBasedEscaperMap arrayBasedEscaperMap, char c, char c2) {
        Preconditions.checkNotNull(arrayBasedEscaperMap);
        this.a = arrayBasedEscaperMap.a();
        this.b = this.a.length;
        if (c2 < c) {
            c2 = 0;
            c = 65535;
        }
        this.c = c;
        this.d = c2;
    }

    @Override // com.google.common.escape.CharEscaper, com.google.common.escape.Escaper
    public final String escape(String str) {
        Preconditions.checkNotNull(str);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < this.b && this.a[cCharAt] != null) || cCharAt > this.d || cCharAt < this.c) {
                return escapeSlow(str, i);
            }
        }
        return str;
    }

    @Override // com.google.common.escape.CharEscaper
    protected final char[] escape(char c) {
        char[] cArr;
        if (c >= this.b || (cArr = this.a[c]) == null) {
            if (c >= this.c && c <= this.d) {
                return null;
            }
            return escapeUnsafe(c);
        }
        return cArr;
    }
}
