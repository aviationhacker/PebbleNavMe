package com.google.android.gms.common.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class zzv {
    private final String a;

    private zzv(String str) {
        this.a = str;
    }

    public static zzv zzcq(String str) {
        return new zzv(str);
    }

    CharSequence a(Object obj) {
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final String zza(Iterable<?> iterable) {
        return zza(new StringBuilder(), iterable).toString();
    }

    public final StringBuilder zza(StringBuilder sb, Iterable<?> iterable) {
        Iterator<?> it = iterable.iterator();
        if (it.hasNext()) {
            sb.append(a(it.next()));
            while (it.hasNext()) {
                sb.append(this.a);
                sb.append(a(it.next()));
            }
        }
        return sb;
    }
}
