package defpackage;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public enum mi {
    PRIVATE(':', ','),
    ICANN('!', '?');

    private final char c;
    private final char d;

    mi(char c, char c2) {
        this.c = c;
        this.d = c2;
    }

    char a() {
        return this.d;
    }

    char b() {
        return this.c;
    }

    static mi a(char c) {
        for (mi miVar : values()) {
            if (miVar.b() == c || miVar.a() == c) {
                return miVar;
            }
        }
        throw new IllegalArgumentException(new StringBuilder(38).append("No enum corresponding to given code: ").append(c).toString());
    }
}
