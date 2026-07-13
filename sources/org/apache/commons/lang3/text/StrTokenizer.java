package org.apache.commons.lang3.text;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.commons.lang3.ArrayUtils;

/* JADX INFO: loaded from: classes.dex */
public class StrTokenizer implements Cloneable, ListIterator<String> {
    private static final StrTokenizer a = new StrTokenizer();
    private static final StrTokenizer b;
    private char[] c;
    private String[] d;
    private int e;
    private StrMatcher f;
    private StrMatcher g;
    private StrMatcher h;
    private StrMatcher i;
    private boolean j;
    private boolean k;

    static {
        a.setDelimiterMatcher(StrMatcher.commaMatcher());
        a.setQuoteMatcher(StrMatcher.doubleQuoteMatcher());
        a.setIgnoredMatcher(StrMatcher.noneMatcher());
        a.setTrimmerMatcher(StrMatcher.trimMatcher());
        a.setEmptyTokenAsNull(false);
        a.setIgnoreEmptyTokens(false);
        b = new StrTokenizer();
        b.setDelimiterMatcher(StrMatcher.tabMatcher());
        b.setQuoteMatcher(StrMatcher.doubleQuoteMatcher());
        b.setIgnoredMatcher(StrMatcher.noneMatcher());
        b.setTrimmerMatcher(StrMatcher.trimMatcher());
        b.setEmptyTokenAsNull(false);
        b.setIgnoreEmptyTokens(false);
    }

    private static StrTokenizer b() {
        return (StrTokenizer) a.clone();
    }

    public static StrTokenizer getCSVInstance() {
        return b();
    }

    public static StrTokenizer getCSVInstance(String str) {
        StrTokenizer strTokenizerB = b();
        strTokenizerB.reset(str);
        return strTokenizerB;
    }

    public static StrTokenizer getCSVInstance(char[] cArr) {
        StrTokenizer strTokenizerB = b();
        strTokenizerB.reset(cArr);
        return strTokenizerB;
    }

    private static StrTokenizer c() {
        return (StrTokenizer) b.clone();
    }

    public static StrTokenizer getTSVInstance() {
        return c();
    }

    public static StrTokenizer getTSVInstance(String str) {
        StrTokenizer strTokenizerC = c();
        strTokenizerC.reset(str);
        return strTokenizerC;
    }

    public static StrTokenizer getTSVInstance(char[] cArr) {
        StrTokenizer strTokenizerC = c();
        strTokenizerC.reset(cArr);
        return strTokenizerC;
    }

    public StrTokenizer() {
        this.f = StrMatcher.splitMatcher();
        this.g = StrMatcher.noneMatcher();
        this.h = StrMatcher.noneMatcher();
        this.i = StrMatcher.noneMatcher();
        this.j = false;
        this.k = true;
        this.c = null;
    }

    public StrTokenizer(String str) {
        this.f = StrMatcher.splitMatcher();
        this.g = StrMatcher.noneMatcher();
        this.h = StrMatcher.noneMatcher();
        this.i = StrMatcher.noneMatcher();
        this.j = false;
        this.k = true;
        if (str != null) {
            this.c = str.toCharArray();
        } else {
            this.c = null;
        }
    }

    public StrTokenizer(String str, char c) {
        this(str);
        setDelimiterChar(c);
    }

    public StrTokenizer(String str, String str2) {
        this(str);
        setDelimiterString(str2);
    }

    public StrTokenizer(String str, StrMatcher strMatcher) {
        this(str);
        setDelimiterMatcher(strMatcher);
    }

    public StrTokenizer(String str, char c, char c2) {
        this(str, c);
        setQuoteChar(c2);
    }

    public StrTokenizer(String str, StrMatcher strMatcher, StrMatcher strMatcher2) {
        this(str, strMatcher);
        setQuoteMatcher(strMatcher2);
    }

    public StrTokenizer(char[] cArr) {
        this.f = StrMatcher.splitMatcher();
        this.g = StrMatcher.noneMatcher();
        this.h = StrMatcher.noneMatcher();
        this.i = StrMatcher.noneMatcher();
        this.j = false;
        this.k = true;
        this.c = ArrayUtils.clone(cArr);
    }

    public StrTokenizer(char[] cArr, char c) {
        this(cArr);
        setDelimiterChar(c);
    }

    public StrTokenizer(char[] cArr, String str) {
        this(cArr);
        setDelimiterString(str);
    }

    public StrTokenizer(char[] cArr, StrMatcher strMatcher) {
        this(cArr);
        setDelimiterMatcher(strMatcher);
    }

    public StrTokenizer(char[] cArr, char c, char c2) {
        this(cArr, c);
        setQuoteChar(c2);
    }

    public StrTokenizer(char[] cArr, StrMatcher strMatcher, StrMatcher strMatcher2) {
        this(cArr, strMatcher);
        setQuoteMatcher(strMatcher2);
    }

    public int size() {
        d();
        return this.d.length;
    }

    public String nextToken() {
        if (!hasNext()) {
            return null;
        }
        String[] strArr = this.d;
        int i = this.e;
        this.e = i + 1;
        return strArr[i];
    }

    public String previousToken() {
        if (!hasPrevious()) {
            return null;
        }
        String[] strArr = this.d;
        int i = this.e - 1;
        this.e = i;
        return strArr[i];
    }

    public String[] getTokenArray() {
        d();
        return (String[]) this.d.clone();
    }

    public List<String> getTokenList() {
        d();
        ArrayList arrayList = new ArrayList(this.d.length);
        for (String str : this.d) {
            arrayList.add(str);
        }
        return arrayList;
    }

    public StrTokenizer reset() {
        this.e = 0;
        this.d = null;
        return this;
    }

    public StrTokenizer reset(String str) {
        reset();
        if (str != null) {
            this.c = str.toCharArray();
        } else {
            this.c = null;
        }
        return this;
    }

    public StrTokenizer reset(char[] cArr) {
        reset();
        this.c = ArrayUtils.clone(cArr);
        return this;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        d();
        return this.e < this.d.length;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public String next() {
        if (hasNext()) {
            String[] strArr = this.d;
            int i = this.e;
            this.e = i + 1;
            return strArr[i];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.e;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        d();
        return this.e > 0;
    }

    @Override // java.util.ListIterator
    public String previous() {
        if (hasPrevious()) {
            String[] strArr = this.d;
            int i = this.e - 1;
            this.e = i;
            return strArr[i];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.e - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove() is unsupported");
    }

    @Override // java.util.ListIterator
    public void set(String str) {
        throw new UnsupportedOperationException("set() is unsupported");
    }

    @Override // java.util.ListIterator
    public void add(String str) {
        throw new UnsupportedOperationException("add() is unsupported");
    }

    private void d() {
        if (this.d == null) {
            if (this.c == null) {
                List<String> list = tokenize(null, 0, 0);
                this.d = (String[]) list.toArray(new String[list.size()]);
            } else {
                List<String> list2 = tokenize(this.c, 0, this.c.length);
                this.d = (String[]) list2.toArray(new String[list2.size()]);
            }
        }
    }

    protected List<String> tokenize(char[] cArr, int i, int i2) {
        if (cArr == null || i2 == 0) {
            return Collections.emptyList();
        }
        StrBuilder strBuilder = new StrBuilder();
        ArrayList arrayList = new ArrayList();
        int iA = i;
        while (iA >= 0 && iA < i2) {
            iA = a(cArr, iA, i2, strBuilder, arrayList);
            if (iA >= i2) {
                a(arrayList, "");
            }
        }
        return arrayList;
    }

    private void a(List<String> list, String str) {
        if (str == null || str.length() == 0) {
            if (!isIgnoreEmptyTokens()) {
                if (isEmptyTokenAsNull()) {
                    str = null;
                }
            } else {
                return;
            }
        }
        list.add(str);
    }

    private int a(char[] cArr, int i, int i2, StrBuilder strBuilder, List<String> list) {
        int iMax;
        int i3 = i;
        while (i3 < i2 && (iMax = Math.max(getIgnoredMatcher().isMatch(cArr, i3, i3, i2), getTrimmerMatcher().isMatch(cArr, i3, i3, i2))) != 0 && getDelimiterMatcher().isMatch(cArr, i3, i3, i2) <= 0 && getQuoteMatcher().isMatch(cArr, i3, i3, i2) <= 0) {
            i3 += iMax;
        }
        if (i3 >= i2) {
            a(list, "");
            return -1;
        }
        int iIsMatch = getDelimiterMatcher().isMatch(cArr, i3, i3, i2);
        if (iIsMatch > 0) {
            a(list, "");
            return iIsMatch + i3;
        }
        int iIsMatch2 = getQuoteMatcher().isMatch(cArr, i3, i3, i2);
        if (iIsMatch2 > 0) {
            return a(cArr, i3 + iIsMatch2, i2, strBuilder, list, i3, iIsMatch2);
        }
        return a(cArr, i3, i2, strBuilder, list, 0, 0);
    }

    private int a(char[] cArr, int i, int i2, StrBuilder strBuilder, List<String> list, int i3, int i4) {
        strBuilder.clear();
        int size = 0;
        boolean z = i4 > 0;
        int i5 = i;
        while (i5 < i2) {
            if (z) {
                if (a(cArr, i5, i2, i3, i4)) {
                    if (a(cArr, i5 + i4, i2, i3, i4)) {
                        strBuilder.append(cArr, i5, i4);
                        i5 += i4 * 2;
                        size = strBuilder.size();
                    } else {
                        i5 += i4;
                        z = false;
                    }
                } else {
                    strBuilder.append(cArr[i5]);
                    size = strBuilder.size();
                    i5++;
                }
            } else {
                int iIsMatch = getDelimiterMatcher().isMatch(cArr, i5, i, i2);
                if (iIsMatch > 0) {
                    a(list, strBuilder.substring(0, size));
                    return iIsMatch + i5;
                }
                if (i4 > 0 && a(cArr, i5, i2, i3, i4)) {
                    i5 += i4;
                    z = true;
                } else {
                    int iIsMatch2 = getIgnoredMatcher().isMatch(cArr, i5, i, i2);
                    if (iIsMatch2 > 0) {
                        i5 += iIsMatch2;
                    } else {
                        int iIsMatch3 = getTrimmerMatcher().isMatch(cArr, i5, i, i2);
                        if (iIsMatch3 > 0) {
                            strBuilder.append(cArr, i5, iIsMatch3);
                            i5 += iIsMatch3;
                        } else {
                            strBuilder.append(cArr[i5]);
                            size = strBuilder.size();
                            i5++;
                        }
                    }
                }
            }
        }
        a(list, strBuilder.substring(0, size));
        return -1;
    }

    private boolean a(char[] cArr, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            if (i + i5 >= i2 || cArr[i + i5] != cArr[i3 + i5]) {
                return false;
            }
        }
        return true;
    }

    public StrMatcher getDelimiterMatcher() {
        return this.f;
    }

    public StrTokenizer setDelimiterMatcher(StrMatcher strMatcher) {
        if (strMatcher == null) {
            this.f = StrMatcher.noneMatcher();
        } else {
            this.f = strMatcher;
        }
        return this;
    }

    public StrTokenizer setDelimiterChar(char c) {
        return setDelimiterMatcher(StrMatcher.charMatcher(c));
    }

    public StrTokenizer setDelimiterString(String str) {
        return setDelimiterMatcher(StrMatcher.stringMatcher(str));
    }

    public StrMatcher getQuoteMatcher() {
        return this.g;
    }

    public StrTokenizer setQuoteMatcher(StrMatcher strMatcher) {
        if (strMatcher != null) {
            this.g = strMatcher;
        }
        return this;
    }

    public StrTokenizer setQuoteChar(char c) {
        return setQuoteMatcher(StrMatcher.charMatcher(c));
    }

    public StrMatcher getIgnoredMatcher() {
        return this.h;
    }

    public StrTokenizer setIgnoredMatcher(StrMatcher strMatcher) {
        if (strMatcher != null) {
            this.h = strMatcher;
        }
        return this;
    }

    public StrTokenizer setIgnoredChar(char c) {
        return setIgnoredMatcher(StrMatcher.charMatcher(c));
    }

    public StrMatcher getTrimmerMatcher() {
        return this.i;
    }

    public StrTokenizer setTrimmerMatcher(StrMatcher strMatcher) {
        if (strMatcher != null) {
            this.i = strMatcher;
        }
        return this;
    }

    public boolean isEmptyTokenAsNull() {
        return this.j;
    }

    public StrTokenizer setEmptyTokenAsNull(boolean z) {
        this.j = z;
        return this;
    }

    public boolean isIgnoreEmptyTokens() {
        return this.k;
    }

    public StrTokenizer setIgnoreEmptyTokens(boolean z) {
        this.k = z;
        return this;
    }

    public String getContent() {
        if (this.c == null) {
            return null;
        }
        return new String(this.c);
    }

    public Object clone() {
        try {
            return a();
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    Object a() {
        StrTokenizer strTokenizer = (StrTokenizer) super.clone();
        if (strTokenizer.c != null) {
            strTokenizer.c = (char[]) strTokenizer.c.clone();
        }
        strTokenizer.reset();
        return strTokenizer;
    }

    public String toString() {
        return this.d == null ? "StrTokenizer[not tokenized yet]" : "StrTokenizer" + getTokenList();
    }
}
