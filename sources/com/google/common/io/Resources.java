package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class Resources {
    private Resources() {
    }

    public static ByteSource asByteSource(URL url) {
        return new a(url);
    }

    static final class a extends ByteSource {
        private final URL a;

        private a(URL url) {
            this.a = (URL) Preconditions.checkNotNull(url);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return this.a.openStream();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 24).append("Resources.asByteSource(").append(strValueOf).append(")").toString();
        }
    }

    public static CharSource asCharSource(URL url, Charset charset) {
        return asByteSource(url).asCharSource(charset);
    }

    public static byte[] toByteArray(URL url) {
        return asByteSource(url).read();
    }

    public static String toString(URL url, Charset charset) {
        return asCharSource(url, charset).read();
    }

    public static <T> T readLines(URL url, Charset charset, LineProcessor<T> lineProcessor) {
        return (T) asCharSource(url, charset).readLines(lineProcessor);
    }

    public static List<String> readLines(URL url, Charset charset) {
        return (List) readLines(url, charset, new LineProcessor<List<String>>() { // from class: com.google.common.io.Resources.1
            final List<String> a = Lists.newArrayList();

            @Override // com.google.common.io.LineProcessor
            public boolean processLine(String str) {
                this.a.add(str);
                return true;
            }

            @Override // com.google.common.io.LineProcessor
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public List<String> getResult() {
                return this.a;
            }
        });
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public static void copy(URL url, OutputStream outputStream) throws X {
        asByteSource(url).copyTo(outputStream);
    }

    public static URL getResource(String str) {
        URL resource = ((ClassLoader) MoreObjects.firstNonNull(Thread.currentThread().getContextClassLoader(), Resources.class.getClassLoader())).getResource(str);
        Preconditions.checkArgument(resource != null, "resource %s not found.", str);
        return resource;
    }

    public static URL getResource(Class<?> cls, String str) {
        URL resource = cls.getResource(str);
        Preconditions.checkArgument(resource != null, "resource %s relative to %s not found.", str, cls.getName());
        return resource;
    }
}
