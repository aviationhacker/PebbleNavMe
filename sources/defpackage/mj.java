package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Joiner;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Lists;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public class mj {
    private static final Joiner a = Joiner.on("");

    public static ImmutableMap<String, mi> a(CharSequence charSequence) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        int length = charSequence.length();
        int iA = 0;
        while (iA < length) {
            iA += a(Lists.newLinkedList(), charSequence.subSequence(iA, length), (ImmutableMap.Builder<String, mi>) builder);
        }
        return builder.build();
    }

    private static int a(List<CharSequence> list, CharSequence charSequence, ImmutableMap.Builder<String, mi> builder) {
        int iA;
        int length = charSequence.length();
        char cCharAt = 0;
        int i = 0;
        while (i < length) {
            cCharAt = charSequence.charAt(i);
            if (cCharAt == '&' || cCharAt == '?' || cCharAt == '!' || cCharAt == ':' || cCharAt == ',') {
                break;
            }
            i++;
        }
        list.add(0, b(charSequence.subSequence(0, i)));
        if (cCharAt == '!' || cCharAt == '?' || cCharAt == ':' || cCharAt == ',') {
            String strJoin = a.join(list);
            if (strJoin.length() > 0) {
                builder.put(strJoin, mi.a(cCharAt));
            }
        }
        int i2 = i + 1;
        if (cCharAt == '?' || cCharAt == ',') {
            iA = i2;
        } else {
            iA = i2;
            while (iA < length) {
                iA += a(list, charSequence.subSequence(iA, length), builder);
                if (charSequence.charAt(iA) == '?' || charSequence.charAt(iA) == ',') {
                    iA++;
                    break;
                }
            }
        }
        list.remove(0);
        return iA;
    }

    private static CharSequence b(CharSequence charSequence) {
        int length = charSequence.length();
        if (length > 1) {
            char[] cArr = new char[length];
            cArr[0] = charSequence.charAt(length - 1);
            for (int i = 1; i < length; i++) {
                cArr[i] = charSequence.charAt((length - 1) - i);
                if (Character.isSurrogatePair(cArr[i], cArr[i - 1])) {
                    a(cArr, i - 1, i);
                }
            }
            return new String(cArr);
        }
        return charSequence;
    }

    private static void a(char[] cArr, int i, int i2) {
        char c = cArr[i];
        cArr[i] = cArr[i2];
        cArr[i2] = c;
    }
}
