package org.eclipse.jetty.http;

import java.io.InputStream;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.resource.Resource;

/* JADX INFO: loaded from: classes.dex */
public interface HttpContent {
    long getContentLength();

    Buffer getContentType();

    Buffer getDirectBuffer();

    Buffer getETag();

    Buffer getIndirectBuffer();

    InputStream getInputStream();

    Buffer getLastModified();

    Resource getResource();

    void release();

    public static class ResourceAsHttpContent implements HttpContent {
        private static final Logger e = Log.getLogger((Class<?>) ResourceAsHttpContent.class);
        final Resource a;
        final Buffer b;
        final int c;
        final Buffer d;

        public ResourceAsHttpContent(Resource resource, Buffer buffer) {
            this(resource, buffer, -1, false);
        }

        public ResourceAsHttpContent(Resource resource, Buffer buffer, int i) {
            this(resource, buffer, i, false);
        }

        public ResourceAsHttpContent(Resource resource, Buffer buffer, boolean z) {
            this(resource, buffer, -1, z);
        }

        public ResourceAsHttpContent(Resource resource, Buffer buffer, int i, boolean z) {
            this.a = resource;
            this.b = buffer;
            this.c = i;
            this.d = z ? new ByteArrayBuffer(resource.getWeakETag()) : null;
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public Buffer getContentType() {
            return this.b;
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public Buffer getLastModified() {
            return null;
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public Buffer getDirectBuffer() {
            return null;
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public Buffer getETag() {
            return this.d;
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // org.eclipse.jetty.http.HttpContent
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public org.eclipse.jetty.io.Buffer getIndirectBuffer() {
            /*
                r6 = this;
                r1 = 0
                r0 = 0
                org.eclipse.jetty.util.resource.Resource r2 = r6.a     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                long r2 = r2.length()     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                r4 = 0
                int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r2 <= 0) goto L1b
                int r2 = r6.c     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                long r2 = (long) r2     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                org.eclipse.jetty.util.resource.Resource r4 = r6.a     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                long r4 = r4.length()     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r2 >= 0) goto L2b
            L1b:
                if (r1 == 0) goto L20
                r0.close()     // Catch: java.io.IOException -> L22
            L20:
                r0 = r1
            L21:
                return r0
            L22:
                r0 = move-exception
                org.eclipse.jetty.util.log.Logger r2 = org.eclipse.jetty.http.HttpContent.ResourceAsHttpContent.e
                java.lang.String r3 = "Couldn't close inputStream. Possible file handle leak"
                r2.warn(r3, r0)
                goto L20
            L2b:
                org.eclipse.jetty.io.ByteArrayBuffer r0 = new org.eclipse.jetty.io.ByteArrayBuffer     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                org.eclipse.jetty.util.resource.Resource r2 = r6.a     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                long r2 = r2.length()     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                int r2 = (int) r2     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                r0.<init>(r2)     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                org.eclipse.jetty.util.resource.Resource r2 = r6.a     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                java.io.InputStream r1 = r2.getInputStream()     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                org.eclipse.jetty.util.resource.Resource r2 = r6.a     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                long r2 = r2.length()     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                int r2 = (int) r2     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                r0.readFrom(r1, r2)     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5d
                if (r1 == 0) goto L21
                r1.close()     // Catch: java.io.IOException -> L4d
                goto L21
            L4d:
                r1 = move-exception
                org.eclipse.jetty.util.log.Logger r2 = org.eclipse.jetty.http.HttpContent.ResourceAsHttpContent.e
                java.lang.String r3 = "Couldn't close inputStream. Possible file handle leak"
                r2.warn(r3, r1)
                goto L21
            L56:
                r0 = move-exception
                java.lang.RuntimeException r2 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L5d
                r2.<init>(r0)     // Catch: java.lang.Throwable -> L5d
                throw r2     // Catch: java.lang.Throwable -> L5d
            L5d:
                r0 = move-exception
                if (r1 == 0) goto L63
                r1.close()     // Catch: java.io.IOException -> L64
            L63:
                throw r0
            L64:
                r1 = move-exception
                org.eclipse.jetty.util.log.Logger r2 = org.eclipse.jetty.http.HttpContent.ResourceAsHttpContent.e
                java.lang.String r3 = "Couldn't close inputStream. Possible file handle leak"
                r2.warn(r3, r1)
                goto L63
            */
            throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.HttpContent.ResourceAsHttpContent.getIndirectBuffer():org.eclipse.jetty.io.Buffer");
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public long getContentLength() {
            return this.a.length();
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public InputStream getInputStream() {
            return this.a.getInputStream();
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public Resource getResource() {
            return this.a;
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public void release() {
            this.a.release();
        }
    }
}
