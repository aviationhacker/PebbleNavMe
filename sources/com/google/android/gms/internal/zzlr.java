package com.google.android.gms.internal;

import android.os.Binder;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzlr<T> {
    private static final Object a = new Object();
    private static a b = null;
    private static int c = 0;
    private static String d = "com.google.android.providers.gsf.permission.READ_GSERVICES";
    private T e = null;
    protected final String zzue;
    protected final T zzuf;

    interface a {
        Boolean a(String str, Boolean bool);

        Float a(String str, Float f);

        Integer a(String str, Integer num);

        Long a(String str, Long l);

        String a(String str, String str2);
    }

    protected zzlr(String str, T t) {
        this.zzue = str;
        this.zzuf = t;
    }

    public static boolean isInitialized() {
        return b != null;
    }

    public static zzlr<Float> zza(String str, Float f) {
        return new zzlr<Float>(str, f) { // from class: com.google.android.gms.internal.zzlr.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzlr
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Float zzbY(String str2) {
                return zzlr.b.a(this.zzue, (Float) this.zzuf);
            }
        };
    }

    public static zzlr<Integer> zza(String str, Integer num) {
        return new zzlr<Integer>(str, num) { // from class: com.google.android.gms.internal.zzlr.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzlr
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Integer zzbY(String str2) {
                return zzlr.b.a(this.zzue, (Integer) this.zzuf);
            }
        };
    }

    public static zzlr<Long> zza(String str, Long l) {
        return new zzlr<Long>(str, l) { // from class: com.google.android.gms.internal.zzlr.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzlr
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Long zzbY(String str2) {
                return zzlr.b.a(this.zzue, (Long) this.zzuf);
            }
        };
    }

    public static zzlr<Boolean> zzg(String str, boolean z) {
        return new zzlr<Boolean>(str, Boolean.valueOf(z)) { // from class: com.google.android.gms.internal.zzlr.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzlr
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean zzbY(String str2) {
                return zzlr.b.a(this.zzue, (Boolean) this.zzuf);
            }
        };
    }

    public static int zzoo() {
        return c;
    }

    public static zzlr<String> zzu(String str, String str2) {
        return new zzlr<String>(str, str2) { // from class: com.google.android.gms.internal.zzlr.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzlr
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String zzbY(String str3) {
                return zzlr.b.a(this.zzue, (String) this.zzuf);
            }
        };
    }

    public final T get() {
        return this.e != null ? this.e : zzbY(this.zzue);
    }

    protected abstract T zzbY(String str);

    public final T zzop() {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return get();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }
}
