package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Ascii;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import defpackage.lh;
import defpackage.lk;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class CharSource {
    public abstract Reader openStream();

    protected CharSource() {
    }

    public BufferedReader openBufferedStream() {
        Reader readerOpenStream = openStream();
        return readerOpenStream instanceof BufferedReader ? (BufferedReader) readerOpenStream : new BufferedReader(readerOpenStream);
    }

    @Beta
    public Optional<Long> lengthIfKnown() {
        return Optional.absent();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    @Beta
    public long length() throws X {
        Optional<Long> optionalLengthIfKnown = lengthIfKnown();
        if (optionalLengthIfKnown.isPresent()) {
            return optionalLengthIfKnown.get().longValue();
        }
        Closer closerCreate = Closer.create();
        try {
            try {
                return a((Reader) closerCreate.register(openStream()));
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    private long a(Reader reader) throws IOException {
        long j = 0;
        while (true) {
            long jSkip = reader.skip(Long.MAX_VALUE);
            if (jSkip != 0) {
                j += jSkip;
            } else {
                return j;
            }
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public long copyTo(Appendable appendable) throws X {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(appendable);
        Closer closerCreate = Closer.create();
        try {
            try {
                return CharStreams.copy((Reader) closerCreate.register(openStream()), appendable);
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public long copyTo(CharSink charSink) throws X {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(charSink);
        Closer closerCreate = Closer.create();
        try {
            try {
                return CharStreams.copy((Reader) closerCreate.register(openStream()), (Writer) closerCreate.register(charSink.openStream()));
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public String read() throws X {
        Closer closerCreate = Closer.create();
        try {
            try {
                return CharStreams.toString((Reader) closerCreate.register(openStream()));
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    @Nullable
    public String readFirstLine() throws X {
        Closer closerCreate = Closer.create();
        try {
            try {
                return ((BufferedReader) closerCreate.register(openBufferedStream())).readLine();
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public ImmutableList<String> readLines() throws X {
        Closer closerCreate = Closer.create();
        try {
            try {
                BufferedReader bufferedReader = (BufferedReader) closerCreate.register(openBufferedStream());
                ArrayList arrayListNewArrayList = Lists.newArrayList();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        arrayListNewArrayList.add(line);
                    } else {
                        return ImmutableList.copyOf((Collection) arrayListNewArrayList);
                    }
                }
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    @Beta
    public <T> T readLines(LineProcessor<T> lineProcessor) throws X {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(lineProcessor);
        Closer closerCreate = Closer.create();
        try {
            try {
                return (T) CharStreams.readLines((Reader) closerCreate.register(openStream()), lineProcessor);
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public boolean isEmpty() throws X {
        Optional<Long> optionalLengthIfKnown = lengthIfKnown();
        if (optionalLengthIfKnown.isPresent() && optionalLengthIfKnown.get().longValue() == 0) {
            return true;
        }
        Closer closerCreate = Closer.create();
        try {
            try {
                boolean z = ((Reader) closerCreate.register(openStream())).read() == -1;
                closerCreate.close();
                return z;
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } catch (Throwable th2) {
            closerCreate.close();
            throw th2;
        }
    }

    public static CharSource concat(Iterable<? extends CharSource> iterable) {
        return new b(iterable);
    }

    public static CharSource concat(Iterator<? extends CharSource> it) {
        return concat(ImmutableList.copyOf(it));
    }

    public static CharSource concat(CharSource... charSourceArr) {
        return concat(ImmutableList.copyOf(charSourceArr));
    }

    public static CharSource wrap(CharSequence charSequence) {
        return new a(charSequence);
    }

    public static CharSource empty() {
        return c.a;
    }

    static class a extends CharSource {
        private static final Splitter a = Splitter.on(Pattern.compile("\r\n|\n|\r"));
        private final CharSequence b;

        protected a(CharSequence charSequence) {
            this.b = (CharSequence) Preconditions.checkNotNull(charSequence);
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() {
            return new lh(this.b);
        }

        @Override // com.google.common.io.CharSource
        public String read() {
            return this.b.toString();
        }

        @Override // com.google.common.io.CharSource
        public boolean isEmpty() {
            return this.b.length() == 0;
        }

        @Override // com.google.common.io.CharSource
        public long length() {
            return this.b.length();
        }

        @Override // com.google.common.io.CharSource
        public Optional<Long> lengthIfKnown() {
            return Optional.of(Long.valueOf(this.b.length()));
        }

        private Iterable<String> b() {
            return new Iterable<String>() { // from class: com.google.common.io.CharSource.a.1
                @Override // java.lang.Iterable
                public Iterator<String> iterator() {
                    return new AbstractIterator<String>() { // from class: com.google.common.io.CharSource.a.1.1
                        Iterator<String> a;

                        {
                            this.a = a.a.split(a.this.b).iterator();
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // com.google.common.collect.AbstractIterator
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public String computeNext() {
                            if (this.a.hasNext()) {
                                String next = this.a.next();
                                if (this.a.hasNext() || !next.isEmpty()) {
                                    return next;
                                }
                            }
                            return endOfData();
                        }
                    };
                }
            };
        }

        @Override // com.google.common.io.CharSource
        public String readFirstLine() {
            Iterator<String> it = b().iterator();
            if (it.hasNext()) {
                return it.next();
            }
            return null;
        }

        @Override // com.google.common.io.CharSource
        public ImmutableList<String> readLines() {
            return ImmutableList.copyOf(b());
        }

        @Override // com.google.common.io.CharSource
        public <T> T readLines(LineProcessor<T> lineProcessor) {
            Iterator<String> it = b().iterator();
            while (it.hasNext() && lineProcessor.processLine(it.next())) {
            }
            return lineProcessor.getResult();
        }

        public String toString() {
            String strTruncate = Ascii.truncate(this.b, 30, "...");
            return new StringBuilder(String.valueOf(strTruncate).length() + 17).append("CharSource.wrap(").append(strTruncate).append(")").toString();
        }
    }

    static final class c extends a {
        private static final c a = new c();

        private c() {
            super("");
        }

        @Override // com.google.common.io.CharSource.a
        public String toString() {
            return "CharSource.empty()";
        }
    }

    static final class b extends CharSource {
        private final Iterable<? extends CharSource> a;

        b(Iterable<? extends CharSource> iterable) {
            this.a = (Iterable) Preconditions.checkNotNull(iterable);
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() {
            return new lk(this.a.iterator());
        }

        @Override // com.google.common.io.CharSource
        public boolean isEmpty() {
            Iterator<? extends CharSource> it = this.a.iterator();
            while (it.hasNext()) {
                if (!it.next().isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.CharSource
        public Optional<Long> lengthIfKnown() {
            long jLongValue = 0;
            Iterator<? extends CharSource> it = this.a.iterator();
            while (true) {
                long j = jLongValue;
                if (it.hasNext()) {
                    Optional<Long> optionalLengthIfKnown = it.next().lengthIfKnown();
                    if (!optionalLengthIfKnown.isPresent()) {
                        return Optional.absent();
                    }
                    jLongValue = optionalLengthIfKnown.get().longValue() + j;
                } else {
                    return Optional.of(Long.valueOf(j));
                }
            }
        }

        @Override // com.google.common.io.CharSource
        public long length() {
            long length = 0;
            Iterator<? extends CharSource> it = this.a.iterator();
            while (true) {
                long j = length;
                if (it.hasNext()) {
                    length = it.next().length() + j;
                } else {
                    return j;
                }
            }
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 19).append("CharSource.concat(").append(strValueOf).append(")").toString();
        }
    }
}
