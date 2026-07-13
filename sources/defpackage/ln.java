package defpackage;

import com.google.common.annotations.GwtCompatible;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
@CheckReturnValue
public final class ln {
    public final String a;
    public final int b;

    private ln(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public static ln a(String str) {
        int i = 16;
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        char cCharAt = str.charAt(0);
        if (str.startsWith("0x") || str.startsWith("0X")) {
            str = str.substring(2);
        } else if (cCharAt == '#') {
            str = str.substring(1);
        } else if (cCharAt == '0' && str.length() > 1) {
            str = str.substring(1);
            i = 8;
        } else {
            i = 10;
        }
        return new ln(str, i);
    }
}
