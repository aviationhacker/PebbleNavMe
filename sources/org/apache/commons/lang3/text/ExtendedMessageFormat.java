package org.apache.commons.lang3.text;

import java.text.Format;
import java.text.MessageFormat;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.Validate;

/* JADX INFO: loaded from: classes.dex */
public class ExtendedMessageFormat extends MessageFormat {
    private static final long serialVersionUID = -2362048321261811743L;
    private String a;
    private final Map<String, ? extends FormatFactory> b;

    public ExtendedMessageFormat(String str) {
        this(str, Locale.getDefault());
    }

    public ExtendedMessageFormat(String str, Locale locale) {
        this(str, locale, null);
    }

    public ExtendedMessageFormat(String str, Map<String, ? extends FormatFactory> map) {
        this(str, Locale.getDefault(), map);
    }

    public ExtendedMessageFormat(String str, Locale locale, Map<String, ? extends FormatFactory> map) {
        super("");
        setLocale(locale);
        this.b = map;
        applyPattern(str);
    }

    @Override // java.text.MessageFormat
    public String toPattern() {
        return this.a;
    }

    @Override // java.text.MessageFormat
    public final void applyPattern(String str) {
        String strB;
        Format formatA;
        int i = 0;
        if (this.b == null) {
            super.applyPattern(str);
            this.a = super.toPattern();
            return;
        }
        ArrayList<Format> arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList<>();
        StringBuilder sb = new StringBuilder(str.length());
        ParsePosition parsePosition = new ParsePosition(0);
        char[] charArray = str.toCharArray();
        int i2 = 0;
        while (parsePosition.getIndex() < str.length()) {
            switch (charArray[parsePosition.getIndex()]) {
                case '\'':
                    a(str, parsePosition, sb, true);
                    continue;
                case '{':
                    int i3 = i2 + 1;
                    c(str, parsePosition);
                    int index = parsePosition.getIndex();
                    sb.append('{').append(a(str, a(parsePosition)));
                    c(str, parsePosition);
                    if (charArray[parsePosition.getIndex()] == ',') {
                        strB = b(str, a(parsePosition));
                        formatA = a(strB);
                        if (formatA == null) {
                            sb.append(',').append(strB);
                        }
                    } else {
                        strB = null;
                        formatA = null;
                    }
                    arrayList.add(formatA);
                    if (formatA == null) {
                        strB = null;
                    }
                    arrayList2.add(strB);
                    Validate.isTrue(arrayList.size() == i3);
                    Validate.isTrue(arrayList2.size() == i3);
                    if (charArray[parsePosition.getIndex()] != '}') {
                        throw new IllegalArgumentException("Unreadable format element at position " + index);
                    }
                    i2 = i3;
                    break;
                    break;
            }
            sb.append(charArray[parsePosition.getIndex()]);
            a(parsePosition);
        }
        super.applyPattern(sb.toString());
        this.a = a(super.toPattern(), arrayList2);
        if (a(arrayList)) {
            Format[] formats = getFormats();
            for (Format format : arrayList) {
                if (format != null) {
                    formats[i] = format;
                }
                i++;
            }
            super.setFormats(formats);
        }
    }

    @Override // java.text.MessageFormat
    public void setFormat(int i, Format format) {
        throw new UnsupportedOperationException();
    }

    @Override // java.text.MessageFormat
    public void setFormatByArgumentIndex(int i, Format format) {
        throw new UnsupportedOperationException();
    }

    @Override // java.text.MessageFormat
    public void setFormats(Format[] formatArr) {
        throw new UnsupportedOperationException();
    }

    @Override // java.text.MessageFormat
    public void setFormatsByArgumentIndex(Format[] formatArr) {
        throw new UnsupportedOperationException();
    }

    @Override // java.text.MessageFormat
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && super.equals(obj) && !ObjectUtils.notEqual(getClass(), obj.getClass())) {
            ExtendedMessageFormat extendedMessageFormat = (ExtendedMessageFormat) obj;
            return (ObjectUtils.notEqual(this.a, extendedMessageFormat.a) || ObjectUtils.notEqual(this.b, extendedMessageFormat.b)) ? false : true;
        }
        return false;
    }

    @Override // java.text.MessageFormat
    public int hashCode() {
        return (((super.hashCode() * 31) + ObjectUtils.hashCode(this.b)) * 31) + ObjectUtils.hashCode(this.a);
    }

    private Format a(String str) {
        String str2;
        if (this.b == null) {
            return null;
        }
        int iIndexOf = str.indexOf(44);
        if (iIndexOf > 0) {
            String strTrim = str.substring(0, iIndexOf).trim();
            String strTrim2 = str.substring(iIndexOf + 1).trim();
            str = strTrim;
            str2 = strTrim2;
        } else {
            str2 = null;
        }
        FormatFactory formatFactory = this.b.get(str);
        if (formatFactory != null) {
            return formatFactory.getFormat(str, str2, getLocale());
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0041 A[PHI: r0
  0x0041: PHI (r0v6 char) = (r0v5 char), (r0v17 char), (r0v17 char) binds: [B:7:0x002b, B:9:0x0038, B:10:0x003a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a(java.lang.String r10, java.text.ParsePosition r11) {
        /*
            r9 = this;
            r8 = 125(0x7d, float:1.75E-43)
            r7 = 44
            r1 = 1
            r2 = 0
            int r4 = r11.getIndex()
            r9.c(r10, r11)
            java.lang.StringBuffer r5 = new java.lang.StringBuffer
            r5.<init>()
            r0 = r2
        L13:
            if (r0 != 0) goto L63
            int r3 = r11.getIndex()
            int r6 = r10.length()
            if (r3 >= r6) goto L63
            int r0 = r11.getIndex()
            char r0 = r10.charAt(r0)
            boolean r3 = java.lang.Character.isWhitespace(r0)
            if (r3 == 0) goto L41
            r9.c(r10, r11)
            int r0 = r11.getIndex()
            char r0 = r10.charAt(r0)
            if (r0 == r7) goto L41
            if (r0 == r8) goto L41
            r0 = r1
        L3d:
            r9.a(r11)
            goto L13
        L41:
            r3 = r0
            if (r3 == r7) goto L46
            if (r3 != r8) goto L56
        L46:
            int r0 = r5.length()
            if (r0 <= 0) goto L56
            java.lang.String r0 = r5.toString()     // Catch: java.lang.NumberFormatException -> L55
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L55
            return r0
        L55:
            r0 = move-exception
        L56:
            boolean r0 = java.lang.Character.isDigit(r3)
            if (r0 != 0) goto L61
            r0 = r1
        L5d:
            r5.append(r3)
            goto L3d
        L61:
            r0 = r2
            goto L5d
        L63:
            if (r0 == 0) goto L90
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Invalid format argument index at position "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r4)
            java.lang.String r2 = ": "
            java.lang.StringBuilder r1 = r1.append(r2)
            int r2 = r11.getIndex()
            java.lang.String r2 = r10.substring(r4, r2)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L90:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unterminated format element at position "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r4)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.text.ExtendedMessageFormat.a(java.lang.String, java.text.ParsePosition):int");
    }

    private String b(String str, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        c(str, parsePosition);
        int index2 = parsePosition.getIndex();
        int i = 1;
        while (parsePosition.getIndex() < str.length()) {
            switch (str.charAt(parsePosition.getIndex())) {
                case '\'':
                    a(str, parsePosition, false);
                    break;
                case '{':
                    i++;
                    break;
                case '}':
                    i--;
                    if (i == 0) {
                        return str.substring(index2, parsePosition.getIndex());
                    }
                    break;
            }
            a(parsePosition);
        }
        throw new IllegalArgumentException("Unterminated format element at position " + index);
    }

    private String a(String str, ArrayList<String> arrayList) {
        if (a(arrayList)) {
            StringBuilder sb = new StringBuilder(str.length() * 2);
            ParsePosition parsePosition = new ParsePosition(0);
            int i = -1;
            int i2 = 0;
            while (parsePosition.getIndex() < str.length()) {
                char cCharAt = str.charAt(parsePosition.getIndex());
                switch (cCharAt) {
                    case '\'':
                        a(str, parsePosition, sb, false);
                        continue;
                    case '{':
                        int i3 = i2 + 1;
                        if (i3 == 1) {
                            i++;
                            sb.append('{').append(a(str, a(parsePosition)));
                            String str2 = arrayList.get(i);
                            if (str2 != null) {
                                sb.append(',').append(str2);
                            }
                            i2 = i3;
                        } else {
                            i2 = i3;
                            continue;
                        }
                        break;
                    case '}':
                        i2--;
                        break;
                }
                sb.append(cCharAt);
                a(parsePosition);
            }
            return sb.toString();
        }
        return str;
    }

    private void c(String str, ParsePosition parsePosition) {
        char[] charArray = str.toCharArray();
        do {
            int iIsMatch = StrMatcher.splitMatcher().isMatch(charArray, parsePosition.getIndex());
            parsePosition.setIndex(parsePosition.getIndex() + iIsMatch);
            if (iIsMatch <= 0) {
                return;
            }
        } while (parsePosition.getIndex() < str.length());
    }

    private ParsePosition a(ParsePosition parsePosition) {
        parsePosition.setIndex(parsePosition.getIndex() + 1);
        return parsePosition;
    }

    private StringBuilder a(String str, ParsePosition parsePosition, StringBuilder sb, boolean z) {
        int index = parsePosition.getIndex();
        char[] charArray = str.toCharArray();
        if (z && charArray[index] == '\'') {
            a(parsePosition);
            if (sb == null) {
                return null;
            }
            return sb.append('\'');
        }
        int index2 = index;
        for (int index3 = parsePosition.getIndex(); index3 < str.length(); index3++) {
            if (z && str.substring(index3).startsWith("''")) {
                sb.append(charArray, index2, parsePosition.getIndex() - index2).append('\'');
                parsePosition.setIndex("''".length() + index3);
                index2 = parsePosition.getIndex();
            } else {
                switch (charArray[parsePosition.getIndex()]) {
                    case '\'':
                        a(parsePosition);
                        if (sb != null) {
                            return sb.append(charArray, index2, parsePosition.getIndex() - index2);
                        }
                        return null;
                    default:
                        a(parsePosition);
                        break;
                }
            }
        }
        throw new IllegalArgumentException("Unterminated quoted string at position " + index);
    }

    private void a(String str, ParsePosition parsePosition, boolean z) {
        a(str, parsePosition, null, z);
    }

    private boolean a(Collection<?> collection) {
        if (collection == null || collection.size() == 0) {
            return false;
        }
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                return true;
            }
        }
        return false;
    }
}
