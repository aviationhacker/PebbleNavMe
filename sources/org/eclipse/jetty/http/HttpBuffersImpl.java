package org.eclipse.jetty.http;

import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.BuffersFactory;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.component.AbstractLifeCycle;

/* JADX INFO: loaded from: classes.dex */
public class HttpBuffersImpl extends AbstractLifeCycle implements HttpBuffers {
    private int a = 16384;
    private int b = 6144;
    private int c = 32768;
    private int d = 6144;
    private int e = 1024;
    private Buffers.Type f = Buffers.Type.BYTE_ARRAY;
    private Buffers.Type g = Buffers.Type.BYTE_ARRAY;
    private Buffers.Type h = Buffers.Type.BYTE_ARRAY;
    private Buffers.Type i = Buffers.Type.BYTE_ARRAY;
    private Buffers j;
    private Buffers k;

    @Override // org.eclipse.jetty.http.HttpBuffers
    public int getRequestBufferSize() {
        return this.a;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setRequestBufferSize(int i) {
        this.a = i;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public int getRequestHeaderSize() {
        return this.b;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setRequestHeaderSize(int i) {
        this.b = i;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public int getResponseBufferSize() {
        return this.c;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setResponseBufferSize(int i) {
        this.c = i;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public int getResponseHeaderSize() {
        return this.d;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setResponseHeaderSize(int i) {
        this.d = i;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public Buffers.Type getRequestBufferType() {
        return this.f;
    }

    public void setRequestBufferType(Buffers.Type type) {
        this.f = type;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public Buffers.Type getRequestHeaderType() {
        return this.g;
    }

    public void setRequestHeaderType(Buffers.Type type) {
        this.g = type;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public Buffers.Type getResponseBufferType() {
        return this.h;
    }

    public void setResponseBufferType(Buffers.Type type) {
        this.h = type;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public Buffers.Type getResponseHeaderType() {
        return this.i;
    }

    public void setResponseHeaderType(Buffers.Type type) {
        this.i = type;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setRequestBuffers(Buffers buffers) {
        this.j = buffers;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setResponseBuffers(Buffers buffers) {
        this.k = buffers;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        this.j = BuffersFactory.newBuffers(this.g, this.b, this.f, this.a, this.f, getMaxBuffers());
        this.k = BuffersFactory.newBuffers(this.i, this.d, this.h, this.c, this.h, getMaxBuffers());
        super.doStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        this.j = null;
        this.k = null;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public Buffers getRequestBuffers() {
        return this.j;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public Buffers getResponseBuffers() {
        return this.k;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setMaxBuffers(int i) {
        this.e = i;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public int getMaxBuffers() {
        return this.e;
    }

    public String toString() {
        return this.j + URIUtil.SLASH + this.k;
    }
}
