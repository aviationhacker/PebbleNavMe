package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import defpackage.gr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class Splitter {
    private final CharMatcher a;
    private final boolean b;
    private final b c;
    private final int d;

    interface b {
        Iterator<String> b(Splitter splitter, CharSequence charSequence);
    }

    private Splitter(b bVar) {
        this(bVar, false, CharMatcher.NONE, Integer.MAX_VALUE);
    }

    private Splitter(b bVar, boolean z, CharMatcher charMatcher, int i) {
        this.c = bVar;
        this.b = z;
        this.a = charMatcher;
        this.d = i;
    }

    @CheckReturnValue
    public static Splitter on(char c) {
        return on(CharMatcher.is(c));
    }

    @CheckReturnValue
    public static Splitter on(final CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(new b() { // from class: com.google.common.base.Splitter.1
            @Override // com.google.common.base.Splitter.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public a b(Splitter splitter, CharSequence charSequence) {
                return new a(splitter, charSequence) { // from class: com.google.common.base.Splitter.1.1
                    @Override // com.google.common.base.Splitter.a
                    int a(int i) {
                        return charMatcher.indexIn(this.c, i);
                    }

                    @Override // com.google.common.base.Splitter.a
                    int b(int i) {
                        return i + 1;
                    }
                };
            }
        });
    }

    @CheckReturnValue
    public static Splitter on(final String str) {
        Preconditions.checkArgument(str.length() != 0, "The separator may not be the empty string.");
        if (str.length() == 1) {
            return on(str.charAt(0));
        }
        return new Splitter(new b() { // from class: com.google.common.base.Splitter.2
            @Override // com.google.common.base.Splitter.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public a b(Splitter splitter, CharSequence charSequence) {
                return new a(splitter, charSequence) { // from class: com.google.common.base.Splitter.2.1
                    /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
                    
                        r0 = r0 + 1;
                     */
                    @Override // com.google.common.base.Splitter.a
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public int a(int r7) {
                        /*
                            r6 = this;
                            com.google.common.base.Splitter$2 r0 = com.google.common.base.Splitter.AnonymousClass2.this
                            java.lang.String r0 = r1
                            int r2 = r0.length()
                            java.lang.CharSequence r0 = r6.c
                            int r0 = r0.length()
                            int r3 = r0 - r2
                            r0 = r7
                        L11:
                            if (r0 > r3) goto L2e
                            r1 = 0
                        L14:
                            if (r1 >= r2) goto L2f
                            java.lang.CharSequence r4 = r6.c
                            int r5 = r1 + r0
                            char r4 = r4.charAt(r5)
                            com.google.common.base.Splitter$2 r5 = com.google.common.base.Splitter.AnonymousClass2.this
                            java.lang.String r5 = r1
                            char r5 = r5.charAt(r1)
                            if (r4 == r5) goto L2b
                            int r0 = r0 + 1
                            goto L11
                        L2b:
                            int r1 = r1 + 1
                            goto L14
                        L2e:
                            r0 = -1
                        L2f:
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.common.base.Splitter.AnonymousClass2.AnonymousClass1.a(int):int");
                    }

                    @Override // com.google.common.base.Splitter.a
                    public int b(int i) {
                        return str.length() + i;
                    }
                };
            }
        });
    }

    @GwtIncompatible("java.util.regex")
    @CheckReturnValue
    public static Splitter on(final Pattern pattern) {
        Preconditions.checkNotNull(pattern);
        Preconditions.checkArgument(!pattern.matcher("").matches(), "The pattern may not match the empty string: %s", pattern);
        return new Splitter(new b() { // from class: com.google.common.base.Splitter.3
            @Override // com.google.common.base.Splitter.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public a b(Splitter splitter, CharSequence charSequence) {
                final Matcher matcher = pattern.matcher(charSequence);
                return new a(splitter, charSequence) { // from class: com.google.common.base.Splitter.3.1
                    @Override // com.google.common.base.Splitter.a
                    public int a(int i) {
                        if (matcher.find(i)) {
                            return matcher.start();
                        }
                        return -1;
                    }

                    @Override // com.google.common.base.Splitter.a
                    public int b(int i) {
                        return matcher.end();
                    }
                };
            }
        });
    }

    @GwtIncompatible("java.util.regex")
    @CheckReturnValue
    public static Splitter onPattern(String str) {
        return on(Pattern.compile(str));
    }

    @CheckReturnValue
    public static Splitter fixedLength(final int i) {
        Preconditions.checkArgument(i > 0, "The length may not be less than 1");
        return new Splitter(new b() { // from class: com.google.common.base.Splitter.4
            @Override // com.google.common.base.Splitter.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public a b(Splitter splitter, CharSequence charSequence) {
                return new a(splitter, charSequence) { // from class: com.google.common.base.Splitter.4.1
                    @Override // com.google.common.base.Splitter.a
                    public int a(int i2) {
                        int i3 = i + i2;
                        if (i3 < this.c.length()) {
                            return i3;
                        }
                        return -1;
                    }

                    @Override // com.google.common.base.Splitter.a
                    public int b(int i2) {
                        return i2;
                    }
                };
            }
        });
    }

    @CheckReturnValue
    public Splitter omitEmptyStrings() {
        return new Splitter(this.c, true, this.a, this.d);
    }

    @CheckReturnValue
    public Splitter limit(int i) {
        Preconditions.checkArgument(i > 0, "must be greater than zero: %s", Integer.valueOf(i));
        return new Splitter(this.c, this.b, this.a, i);
    }

    @CheckReturnValue
    public Splitter trimResults() {
        return trimResults(CharMatcher.WHITESPACE);
    }

    @CheckReturnValue
    public Splitter trimResults(CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(this.c, this.b, charMatcher, this.d);
    }

    @CheckReturnValue
    public Iterable<String> split(final CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        return new Iterable<String>() { // from class: com.google.common.base.Splitter.5
            @Override // java.lang.Iterable
            public Iterator<String> iterator() {
                return Splitter.this.a(charSequence);
            }

            public String toString() {
                return Joiner.on(", ").appendTo(new StringBuilder().append('['), (Iterable<?>) this).append(']').toString();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Iterator<String> a(CharSequence charSequence) {
        return this.c.b(this, charSequence);
    }

    @Beta
    @CheckReturnValue
    public List<String> splitToList(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        Iterator<String> itA = a(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itA.hasNext()) {
            arrayList.add(itA.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Beta
    @CheckReturnValue
    public MapSplitter withKeyValueSeparator(String str) {
        return withKeyValueSeparator(on(str));
    }

    @Beta
    @CheckReturnValue
    public MapSplitter withKeyValueSeparator(char c) {
        return withKeyValueSeparator(on(c));
    }

    @Beta
    @CheckReturnValue
    public MapSplitter withKeyValueSeparator(Splitter splitter) {
        return new MapSplitter(splitter);
    }

    @Beta
    public static final class MapSplitter {
        private final Splitter a;
        private final Splitter b;

        private MapSplitter(Splitter splitter, Splitter splitter2) {
            this.a = splitter;
            this.b = (Splitter) Preconditions.checkNotNull(splitter2);
        }

        @CheckReturnValue
        public Map<String, String> split(CharSequence charSequence) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str : this.a.split(charSequence)) {
                Iterator itA = this.b.a(str);
                Preconditions.checkArgument(itA.hasNext(), "Chunk [%s] is not a valid entry", str);
                String str2 = (String) itA.next();
                Preconditions.checkArgument(!linkedHashMap.containsKey(str2), "Duplicate key [%s] found.", str2);
                Preconditions.checkArgument(itA.hasNext(), "Chunk [%s] is not a valid entry", str);
                linkedHashMap.put(str2, (String) itA.next());
                Preconditions.checkArgument(!itA.hasNext(), "Chunk [%s] is not a valid entry", str);
            }
            return Collections.unmodifiableMap(linkedHashMap);
        }
    }

    static abstract class a extends gr<String> {
        final CharSequence c;
        final CharMatcher d;
        final boolean e;
        int f = 0;
        int g;

        abstract int a(int i);

        abstract int b(int i);

        protected a(Splitter splitter, CharSequence charSequence) {
            this.d = splitter.a;
            this.e = splitter.b;
            this.g = splitter.d;
            this.c = charSequence;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // defpackage.gr
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public String a() {
            int i = this.f;
            while (this.f != -1) {
                int iA = a(this.f);
                if (iA == -1) {
                    iA = this.c.length();
                    this.f = -1;
                } else {
                    this.f = b(iA);
                }
                if (this.f == i) {
                    this.f++;
                    if (this.f >= this.c.length()) {
                        this.f = -1;
                    }
                } else {
                    int i2 = i;
                    while (i2 < iA && this.d.matches(this.c.charAt(i2))) {
                        i2++;
                    }
                    int length = iA;
                    while (length > i2 && this.d.matches(this.c.charAt(length - 1))) {
                        length--;
                    }
                    if (this.e && i2 == length) {
                        i = this.f;
                    } else {
                        if (this.g == 1) {
                            length = this.c.length();
                            this.f = -1;
                            while (length > i2 && this.d.matches(this.c.charAt(length - 1))) {
                                length--;
                            }
                        } else {
                            this.g--;
                        }
                        return this.c.subSequence(i2, length).toString();
                    }
                }
            }
            return b();
        }
    }
}
