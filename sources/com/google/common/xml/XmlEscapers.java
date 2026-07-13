package com.google.common.xml;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.escape.Escaper;
import com.google.common.escape.Escapers;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jetty.util.Utf8Appendable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public class XmlEscapers {
    private static final Escaper a;
    private static final Escaper b;
    private static final Escaper c;

    private XmlEscapers() {
    }

    public static Escaper xmlContentEscaper() {
        return b;
    }

    public static Escaper xmlAttributeEscaper() {
        return c;
    }

    static {
        Escapers.Builder builder = Escapers.builder();
        builder.setSafeRange((char) 0, Utf8Appendable.REPLACEMENT);
        builder.setUnsafeReplacement("�");
        for (char c2 = 0; c2 <= 31; c2 = (char) (c2 + 1)) {
            if (c2 != '\t' && c2 != '\n' && c2 != '\r') {
                builder.addEscape(c2, "�");
            }
        }
        builder.addEscape('&', "&amp;");
        builder.addEscape('<', "&lt;");
        builder.addEscape('>', "&gt;");
        b = builder.build();
        builder.addEscape('\'', "&apos;");
        builder.addEscape('\"', "&quot;");
        a = builder.build();
        builder.addEscape('\t', "&#x9;");
        builder.addEscape('\n', "&#xA;");
        builder.addEscape(CharUtils.CR, "&#xD;");
        c = builder.build();
    }
}
