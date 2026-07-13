package org.eclipse.jetty.http.gzip;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.Set;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public abstract class CompressedResponseWrapper extends HttpServletResponseWrapper {
    public static final int DEFAULT_BUFFER_SIZE = 8192;
    public static final int DEFAULT_MIN_COMPRESS_SIZE = 256;
    protected HttpServletRequest _request;
    private Set<String> a;
    private int b;
    private int c;
    private PrintWriter d;
    private AbstractCompressedStream e;
    private String f;
    private long g;
    private boolean h;

    protected abstract AbstractCompressedStream newCompressedStream(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse);

    public CompressedResponseWrapper(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        super(httpServletResponse);
        this.b = 8192;
        this.c = 256;
        this.g = -1L;
        this._request = httpServletRequest;
    }

    public long getContentLength() {
        return this.g;
    }

    public int getBufferSize() {
        return this.b;
    }

    public int getMinCompressSize() {
        return this.c;
    }

    public String getETag() {
        return this.f;
    }

    public HttpServletRequest getRequest() {
        return this._request;
    }

    public void setMimeTypes(Set<String> set) {
        this.a = set;
    }

    public void setBufferSize(int i) {
        this.b = i;
        if (this.e != null) {
            this.e.setBufferSize(i);
        }
    }

    public void setMinCompressSize(int i) {
        this.c = i;
    }

    public void setContentType(String str) {
        int iIndexOf;
        super.setContentType(str);
        if (!this.h) {
            if (str != null && (iIndexOf = str.indexOf(";")) > 0) {
                str = str.substring(0, iIndexOf);
            }
            if (this.e == null || this.e.getOutputStream() == null) {
                if (this.a != null || str == null || !str.contains(HttpHeaderValues.GZIP)) {
                    if (this.a == null) {
                        return;
                    }
                    if (str != null && this.a.contains(StringUtil.asciiToLowerCase(str))) {
                        return;
                    }
                }
                noCompression();
            }
        }
    }

    public void setStatus(int i, String str) {
        super.setStatus(i, str);
        if (i < 200 || i == 204 || i == 205 || i >= 300) {
            noCompression();
        }
    }

    public void setStatus(int i) {
        super.setStatus(i);
        if (i < 200 || i == 204 || i == 205 || i >= 300) {
            noCompression();
        }
    }

    public void setContentLength(int i) {
        if (this.h) {
            super.setContentLength(i);
        } else {
            setContentLength(i);
        }
    }

    protected void setContentLength(long j) {
        this.g = j;
        if (this.e != null) {
            this.e.setContentLength();
            return;
        }
        if (this.h && this.g >= 0) {
            HttpServletResponse response = getResponse();
            if (this.g < 2147483647L) {
                response.setContentLength((int) this.g);
            } else {
                response.setHeader("Content-Length", Long.toString(this.g));
            }
        }
    }

    public void addHeader(String str, String str2) {
        if ("content-length".equalsIgnoreCase(str)) {
            this.g = Long.parseLong(str2);
            if (this.e != null) {
                this.e.setContentLength();
                return;
            }
            return;
        }
        if ("content-type".equalsIgnoreCase(str)) {
            setContentType(str2);
            return;
        }
        if ("content-encoding".equalsIgnoreCase(str)) {
            super.addHeader(str, str2);
            if (!isCommitted()) {
                noCompression();
                return;
            }
            return;
        }
        if ("etag".equalsIgnoreCase(str)) {
            this.f = str2;
        } else {
            super.addHeader(str, str2);
        }
    }

    public void flushBuffer() throws IOException {
        if (this.d != null) {
            this.d.flush();
        }
        if (this.e != null) {
            this.e.flush();
        } else {
            getResponse().flushBuffer();
        }
    }

    public void reset() {
        super.reset();
        if (this.e != null) {
            this.e.resetBuffer();
        }
        this.d = null;
        this.e = null;
        this.h = false;
        this.g = -1L;
    }

    public void resetBuffer() {
        super.resetBuffer();
        if (this.e != null) {
            this.e.resetBuffer();
        }
        this.d = null;
        this.e = null;
    }

    public void sendError(int i, String str) {
        resetBuffer();
        super.sendError(i, str);
    }

    public void sendError(int i) {
        resetBuffer();
        super.sendError(i);
    }

    public void sendRedirect(String str) {
        resetBuffer();
        super.sendRedirect(str);
    }

    public void noCompression() {
        if (!this.h) {
            a();
        }
        this.h = true;
        if (this.e != null) {
            try {
                this.e.doNotCompress(false);
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    public void finish() throws IOException {
        if (this.d != null && !this.e.isClosed()) {
            this.d.flush();
        }
        if (this.e != null) {
            this.e.finish();
        } else {
            a();
        }
    }

    private void a() {
        if (!isCommitted()) {
            if (this.g >= 0) {
                if (this.g < 2147483647L) {
                    super.setContentLength((int) this.g);
                } else {
                    super.setHeader("Content-Length", Long.toString(this.g));
                }
            }
            if (this.f != null) {
                super.setHeader("ETag", this.f);
            }
        }
    }

    public void setHeader(String str, String str2) {
        if (this.h) {
            super.setHeader(str, str2);
            return;
        }
        if ("content-length".equalsIgnoreCase(str)) {
            setContentLength(Long.parseLong(str2));
            return;
        }
        if ("content-type".equalsIgnoreCase(str)) {
            setContentType(str2);
            return;
        }
        if ("content-encoding".equalsIgnoreCase(str)) {
            super.setHeader(str, str2);
            if (!isCommitted()) {
                noCompression();
                return;
            }
            return;
        }
        if ("etag".equalsIgnoreCase(str)) {
            this.f = str2;
        } else {
            super.setHeader(str, str2);
        }
    }

    public boolean containsHeader(String str) {
        if (this.h || !"etag".equalsIgnoreCase(str) || this.f == null) {
            return super.containsHeader(str);
        }
        return true;
    }

    public ServletOutputStream getOutputStream() {
        if (this.e == null) {
            if (getResponse().isCommitted() || this.h) {
                return getResponse().getOutputStream();
            }
            this.e = newCompressedStream(this._request, (HttpServletResponse) getResponse());
        } else if (this.d != null) {
            throw new IllegalStateException("getWriter() called");
        }
        return this.e;
    }

    public PrintWriter getWriter() {
        if (this.d == null) {
            if (this.e != null) {
                throw new IllegalStateException("getOutputStream() called");
            }
            if (getResponse().isCommitted() || this.h) {
                return getResponse().getWriter();
            }
            this.e = newCompressedStream(this._request, (HttpServletResponse) getResponse());
            this.d = newWriter(this.e, getCharacterEncoding());
        }
        return this.d;
    }

    public void setIntHeader(String str, int i) {
        if ("content-length".equalsIgnoreCase(str)) {
            this.g = i;
            if (this.e != null) {
                this.e.setContentLength();
                return;
            }
            return;
        }
        super.setIntHeader(str, i);
    }

    protected PrintWriter newWriter(OutputStream outputStream, String str) {
        return str == null ? new PrintWriter(outputStream) : new PrintWriter(new OutputStreamWriter(outputStream, str));
    }
}
