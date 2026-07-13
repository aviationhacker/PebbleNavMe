package com.google.common.cache;

import android.support.v7.app.AppCompatDelegate;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import defpackage.gx;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class CacheBuilderSpec {
    private static final Splitter n = Splitter.on(',').trimResults();
    private static final Splitter o = Splitter.on('=').trimResults();
    private static final ImmutableMap<String, l> p = ImmutableMap.builder().put("initialCapacity", new d()).put("maximumSize", new h()).put("maximumWeight", new i()).put("concurrencyLevel", new b()).put("weakKeys", new f(gx.s.WEAK)).put("softValues", new m(gx.s.SOFT)).put("weakValues", new m(gx.s.WEAK)).put("recordStats", new j()).put("expireAfterAccess", new a()).put("expireAfterWrite", new n()).put("refreshAfterWrite", new k()).put("refreshInterval", new k()).build();

    @VisibleForTesting
    Integer a;

    @VisibleForTesting
    Long b;

    @VisibleForTesting
    Long c;

    @VisibleForTesting
    Integer d;

    @VisibleForTesting
    gx.s e;

    @VisibleForTesting
    gx.s f;

    @VisibleForTesting
    Boolean g;

    @VisibleForTesting
    long h;

    @VisibleForTesting
    TimeUnit i;

    @VisibleForTesting
    long j;

    @VisibleForTesting
    TimeUnit k;

    @VisibleForTesting
    long l;

    @VisibleForTesting
    TimeUnit m;
    private final String q;

    interface l {
        void a(CacheBuilderSpec cacheBuilderSpec, String str, @Nullable String str2);
    }

    private CacheBuilderSpec(String str) {
        this.q = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static CacheBuilderSpec parse(String str) {
        CacheBuilderSpec cacheBuilderSpec = new CacheBuilderSpec(str);
        if (!str.isEmpty()) {
            for (String str2 : n.split(str)) {
                ImmutableList immutableListCopyOf = ImmutableList.copyOf(o.split(str2));
                Preconditions.checkArgument(!immutableListCopyOf.isEmpty(), "blank key-value pair");
                Preconditions.checkArgument(immutableListCopyOf.size() <= 2, "key-value pair %s with more than one equals sign", str2);
                String str3 = (String) immutableListCopyOf.get(0);
                l lVar = p.get(str3);
                Preconditions.checkArgument(lVar != null, "unknown key %s", str3);
                lVar.a(cacheBuilderSpec, str3, immutableListCopyOf.size() == 1 ? null : (String) immutableListCopyOf.get(1));
            }
        }
        return cacheBuilderSpec;
    }

    public static CacheBuilderSpec disableCaching() {
        return parse("maximumSize=0");
    }

    CacheBuilder<Object, Object> a() {
        CacheBuilder<Object, Object> cacheBuilderNewBuilder = CacheBuilder.newBuilder();
        if (this.a != null) {
            cacheBuilderNewBuilder.initialCapacity(this.a.intValue());
        }
        if (this.b != null) {
            cacheBuilderNewBuilder.maximumSize(this.b.longValue());
        }
        if (this.c != null) {
            cacheBuilderNewBuilder.maximumWeight(this.c.longValue());
        }
        if (this.d != null) {
            cacheBuilderNewBuilder.concurrencyLevel(this.d.intValue());
        }
        if (this.e != null) {
            switch (this.e) {
                case WEAK:
                    cacheBuilderNewBuilder.weakKeys();
                    break;
                default:
                    throw new AssertionError();
            }
        }
        if (this.f != null) {
            switch (this.f) {
                case WEAK:
                    cacheBuilderNewBuilder.weakValues();
                    break;
                case SOFT:
                    cacheBuilderNewBuilder.softValues();
                    break;
                default:
                    throw new AssertionError();
            }
        }
        if (this.g != null && this.g.booleanValue()) {
            cacheBuilderNewBuilder.recordStats();
        }
        if (this.i != null) {
            cacheBuilderNewBuilder.expireAfterWrite(this.h, this.i);
        }
        if (this.k != null) {
            cacheBuilderNewBuilder.expireAfterAccess(this.j, this.k);
        }
        if (this.m != null) {
            cacheBuilderNewBuilder.refreshAfterWrite(this.l, this.m);
        }
        return cacheBuilderNewBuilder;
    }

    public String toParsableString() {
        return this.q;
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).addValue(toParsableString()).toString();
    }

    public int hashCode() {
        return Objects.hashCode(this.a, this.b, this.c, this.d, this.e, this.f, this.g, a(this.h, this.i), a(this.j, this.k), a(this.l, this.m));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CacheBuilderSpec)) {
            return false;
        }
        CacheBuilderSpec cacheBuilderSpec = (CacheBuilderSpec) obj;
        return Objects.equal(this.a, cacheBuilderSpec.a) && Objects.equal(this.b, cacheBuilderSpec.b) && Objects.equal(this.c, cacheBuilderSpec.c) && Objects.equal(this.d, cacheBuilderSpec.d) && Objects.equal(this.e, cacheBuilderSpec.e) && Objects.equal(this.f, cacheBuilderSpec.f) && Objects.equal(this.g, cacheBuilderSpec.g) && Objects.equal(a(this.h, this.i), a(cacheBuilderSpec.h, cacheBuilderSpec.i)) && Objects.equal(a(this.j, this.k), a(cacheBuilderSpec.j, cacheBuilderSpec.k)) && Objects.equal(a(this.l, this.m), a(cacheBuilderSpec.l, cacheBuilderSpec.m));
    }

    @Nullable
    private static Long a(long j2, @Nullable TimeUnit timeUnit) {
        if (timeUnit == null) {
            return null;
        }
        return Long.valueOf(timeUnit.toNanos(j2));
    }

    static abstract class e implements l {
        protected abstract void a(CacheBuilderSpec cacheBuilderSpec, int i);

        e() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.l
        public void a(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            Preconditions.checkArgument((str2 == null || str2.isEmpty()) ? false : true, "value of key %s omitted", str);
            try {
                a(cacheBuilderSpec, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException(CacheBuilderSpec.b("key %s value set to %s, must be integer", str, str2), e);
            }
        }
    }

    static abstract class g implements l {
        protected abstract void a(CacheBuilderSpec cacheBuilderSpec, long j);

        g() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.l
        public void a(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            Preconditions.checkArgument((str2 == null || str2.isEmpty()) ? false : true, "value of key %s omitted", str);
            try {
                a(cacheBuilderSpec, Long.parseLong(str2));
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException(CacheBuilderSpec.b("key %s value set to %s, must be integer", str, str2), e);
            }
        }
    }

    static class d extends e {
        d() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.e
        protected void a(CacheBuilderSpec cacheBuilderSpec, int i) {
            Preconditions.checkArgument(cacheBuilderSpec.a == null, "initial capacity was already set to ", cacheBuilderSpec.a);
            cacheBuilderSpec.a = Integer.valueOf(i);
        }
    }

    static class h extends g {
        h() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.g
        protected void a(CacheBuilderSpec cacheBuilderSpec, long j) {
            Preconditions.checkArgument(cacheBuilderSpec.b == null, "maximum size was already set to ", cacheBuilderSpec.b);
            Preconditions.checkArgument(cacheBuilderSpec.c == null, "maximum weight was already set to ", cacheBuilderSpec.c);
            cacheBuilderSpec.b = Long.valueOf(j);
        }
    }

    static class i extends g {
        i() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.g
        protected void a(CacheBuilderSpec cacheBuilderSpec, long j) {
            Preconditions.checkArgument(cacheBuilderSpec.c == null, "maximum weight was already set to ", cacheBuilderSpec.c);
            Preconditions.checkArgument(cacheBuilderSpec.b == null, "maximum size was already set to ", cacheBuilderSpec.b);
            cacheBuilderSpec.c = Long.valueOf(j);
        }
    }

    static class b extends e {
        b() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.e
        protected void a(CacheBuilderSpec cacheBuilderSpec, int i) {
            Preconditions.checkArgument(cacheBuilderSpec.d == null, "concurrency level was already set to ", cacheBuilderSpec.d);
            cacheBuilderSpec.d = Integer.valueOf(i);
        }
    }

    static class f implements l {
        private final gx.s a;

        public f(gx.s sVar) {
            this.a = sVar;
        }

        @Override // com.google.common.cache.CacheBuilderSpec.l
        public void a(CacheBuilderSpec cacheBuilderSpec, String str, @Nullable String str2) {
            Preconditions.checkArgument(str2 == null, "key %s does not take values", str);
            Preconditions.checkArgument(cacheBuilderSpec.e == null, "%s was already set to %s", str, cacheBuilderSpec.e);
            cacheBuilderSpec.e = this.a;
        }
    }

    static class m implements l {
        private final gx.s a;

        public m(gx.s sVar) {
            this.a = sVar;
        }

        @Override // com.google.common.cache.CacheBuilderSpec.l
        public void a(CacheBuilderSpec cacheBuilderSpec, String str, @Nullable String str2) {
            Preconditions.checkArgument(str2 == null, "key %s does not take values", str);
            Preconditions.checkArgument(cacheBuilderSpec.f == null, "%s was already set to %s", str, cacheBuilderSpec.f);
            cacheBuilderSpec.f = this.a;
        }
    }

    static class j implements l {
        j() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.l
        public void a(CacheBuilderSpec cacheBuilderSpec, String str, @Nullable String str2) {
            Preconditions.checkArgument(str2 == null, "recordStats does not take values");
            Preconditions.checkArgument(cacheBuilderSpec.g == null, "recordStats already set");
            cacheBuilderSpec.g = true;
        }
    }

    static abstract class c implements l {
        protected abstract void a(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit);

        c() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.l
        public void a(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            TimeUnit timeUnit;
            Preconditions.checkArgument((str2 == null || str2.isEmpty()) ? false : true, "value of key %s omitted", str);
            try {
                switch (str2.charAt(str2.length() - 1)) {
                    case 'd':
                        timeUnit = TimeUnit.DAYS;
                        break;
                    case 'h':
                        timeUnit = TimeUnit.HOURS;
                        break;
                    case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
                        timeUnit = TimeUnit.MINUTES;
                        break;
                    case 's':
                        timeUnit = TimeUnit.SECONDS;
                        break;
                    default:
                        throw new IllegalArgumentException(CacheBuilderSpec.b("key %s invalid format.  was %s, must end with one of [dDhHmMsS]", str, str2));
                }
                a(cacheBuilderSpec, Long.parseLong(str2.substring(0, str2.length() - 1)), timeUnit);
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException(CacheBuilderSpec.b("key %s value set to %s, must be integer", str, str2));
            }
        }
    }

    static class a extends c {
        a() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.c
        protected void a(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            Preconditions.checkArgument(cacheBuilderSpec.k == null, "expireAfterAccess already set");
            cacheBuilderSpec.j = j;
            cacheBuilderSpec.k = timeUnit;
        }
    }

    static class n extends c {
        n() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.c
        protected void a(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            Preconditions.checkArgument(cacheBuilderSpec.i == null, "expireAfterWrite already set");
            cacheBuilderSpec.h = j;
            cacheBuilderSpec.i = timeUnit;
        }
    }

    static class k extends c {
        k() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.c
        protected void a(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            Preconditions.checkArgument(cacheBuilderSpec.m == null, "refreshAfterWrite already set");
            cacheBuilderSpec.l = j;
            cacheBuilderSpec.m = timeUnit;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }
}
