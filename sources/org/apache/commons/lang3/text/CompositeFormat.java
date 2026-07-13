package org.apache.commons.lang3.text;

import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;

/* JADX INFO: loaded from: classes.dex */
public class CompositeFormat extends Format {
    private static final long serialVersionUID = -4329119827877627683L;
    private final Format a;
    private final Format b;

    public CompositeFormat(Format format, Format format2) {
        this.a = format;
        this.b = format2;
    }

    @Override // java.text.Format
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        return this.b.format(obj, stringBuffer, fieldPosition);
    }

    @Override // java.text.Format
    public Object parseObject(String str, ParsePosition parsePosition) {
        return this.a.parseObject(str, parsePosition);
    }

    public Format getParser() {
        return this.a;
    }

    public Format getFormatter() {
        return this.b;
    }

    public String reformat(String str) {
        return format(parseObject(str));
    }
}
