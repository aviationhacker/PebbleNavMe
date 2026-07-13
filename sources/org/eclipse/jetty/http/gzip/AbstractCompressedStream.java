package org.eclipse.jetty.http.gzip;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.zip.DeflaterOutputStream;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.eclipse.jetty.util.ByteArrayOutputStream2;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractCompressedStream extends ServletOutputStream {
    protected ByteArrayOutputStream2 _bOut;
    protected boolean _closed;
    protected DeflaterOutputStream _compressedOutputStream;
    protected boolean _doNotCompress;
    protected OutputStream _out;
    protected final HttpServletResponse _response;
    protected final String _vary;
    protected final CompressedResponseWrapper _wrapper;
    private final String a;

    protected abstract DeflaterOutputStream createStream();

    public AbstractCompressedStream(String str, HttpServletRequest httpServletRequest, CompressedResponseWrapper compressedResponseWrapper, String str2) throws IOException {
        this.a = str;
        this._wrapper = compressedResponseWrapper;
        this._response = compressedResponseWrapper.getResponse();
        this._vary = str2;
        if (this._wrapper.getMinCompressSize() == 0) {
            doCompress();
        }
    }

    public void resetBuffer() {
        if (this._response.isCommitted() || this._compressedOutputStream != null) {
            throw new IllegalStateException("Committed");
        }
        this._closed = false;
        this._out = null;
        this._bOut = null;
        this._doNotCompress = false;
    }

    public void setBufferSize(int i) {
        if (this._bOut != null && this._bOut.getBuf().length < i) {
            ByteArrayOutputStream2 byteArrayOutputStream2 = new ByteArrayOutputStream2(i);
            byteArrayOutputStream2.write(this._bOut.getBuf(), 0, this._bOut.size());
            this._bOut = byteArrayOutputStream2;
        }
    }

    public void setContentLength() {
        if (this._doNotCompress) {
            long contentLength = this._wrapper.getContentLength();
            if (contentLength >= 0) {
                if (contentLength < 2147483647L) {
                    this._response.setContentLength((int) contentLength);
                } else {
                    this._response.setHeader("Content-Length", Long.toString(contentLength));
                }
            }
        }
    }

    public void flush() throws IOException {
        if (this._out == null || this._bOut != null) {
            long contentLength = this._wrapper.getContentLength();
            if (contentLength > 0 && contentLength < this._wrapper.getMinCompressSize()) {
                doNotCompress(false);
            } else {
                doCompress();
            }
        }
        this._out.flush();
    }

    public void close() throws IOException {
        if (!this._closed) {
            if (this._wrapper.getRequest().getAttribute("javax.servlet.include.request_uri") != null) {
                flush();
                return;
            }
            if (this._bOut != null) {
                long contentLength = this._wrapper.getContentLength();
                if (contentLength < 0) {
                    contentLength = this._bOut.getCount();
                    this._wrapper.setContentLength(contentLength);
                }
                if (contentLength < this._wrapper.getMinCompressSize()) {
                    doNotCompress(false);
                } else {
                    doCompress();
                }
            } else if (this._out == null) {
                doNotCompress(false);
            }
            if (this._compressedOutputStream != null) {
                this._compressedOutputStream.close();
            } else {
                this._out.close();
            }
            this._closed = true;
        }
    }

    public void finish() throws IOException {
        if (!this._closed) {
            if (this._out == null || this._bOut != null) {
                long contentLength = this._wrapper.getContentLength();
                if (contentLength >= 0 && contentLength < this._wrapper.getMinCompressSize()) {
                    doNotCompress(false);
                } else {
                    doCompress();
                }
            }
            if (this._compressedOutputStream != null && !this._closed) {
                this._closed = true;
                this._compressedOutputStream.close();
            }
        }
    }

    public void write(int i) throws IOException {
        a(1);
        this._out.write(i);
    }

    public void write(byte[] bArr) throws IOException {
        a(bArr.length);
        this._out.write(bArr);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        a(i2);
        this._out.write(bArr, i, i2);
    }

    public void doCompress() throws IOException {
        if (this._compressedOutputStream == null) {
            if (this._response.isCommitted()) {
                throw new IllegalStateException();
            }
            if (this.a != null) {
                setHeader("Content-Encoding", this.a);
                if (this._response.containsHeader("Content-Encoding")) {
                    addHeader("Vary", this._vary);
                    DeflaterOutputStream deflaterOutputStreamCreateStream = createStream();
                    this._compressedOutputStream = deflaterOutputStreamCreateStream;
                    this._out = deflaterOutputStreamCreateStream;
                    if (this._out != null) {
                        if (this._bOut != null) {
                            this._out.write(this._bOut.getBuf(), 0, this._bOut.getCount());
                            this._bOut = null;
                        }
                        String eTag = this._wrapper.getETag();
                        if (eTag != null) {
                            setHeader("ETag", eTag.substring(0, eTag.length() - 1) + '-' + this.a + '\"');
                            return;
                        }
                        return;
                    }
                }
            }
            doNotCompress(true);
        }
    }

    public void doNotCompress(boolean z) throws IOException {
        if (this._compressedOutputStream != null) {
            throw new IllegalStateException("Compressed output stream is already assigned.");
        }
        if (this._out == null || this._bOut != null) {
            if (z) {
                addHeader("Vary", this._vary);
            }
            if (this._wrapper.getETag() != null) {
                setHeader("ETag", this._wrapper.getETag());
            }
            this._doNotCompress = true;
            this._out = this._response.getOutputStream();
            setContentLength();
            if (this._bOut != null) {
                this._out.write(this._bOut.getBuf(), 0, this._bOut.getCount());
            }
            this._bOut = null;
        }
    }

    private void a(int i) throws IOException {
        if (this._closed) {
            throw new IOException("CLOSED");
        }
        if (this._out == null) {
            if (i > this._wrapper.getBufferSize()) {
                long contentLength = this._wrapper.getContentLength();
                if (contentLength >= 0 && contentLength < this._wrapper.getMinCompressSize()) {
                    doNotCompress(false);
                    return;
                } else {
                    doCompress();
                    return;
                }
            }
            ByteArrayOutputStream2 byteArrayOutputStream2 = new ByteArrayOutputStream2(this._wrapper.getBufferSize());
            this._bOut = byteArrayOutputStream2;
            this._out = byteArrayOutputStream2;
            return;
        }
        if (this._bOut != null && i >= this._bOut.getBuf().length - this._bOut.getCount()) {
            long contentLength2 = this._wrapper.getContentLength();
            if (contentLength2 >= 0 && contentLength2 < this._wrapper.getMinCompressSize()) {
                doNotCompress(false);
            } else {
                doCompress();
            }
        }
    }

    public OutputStream getOutputStream() {
        return this._out;
    }

    public boolean isClosed() {
        return this._closed;
    }

    protected PrintWriter newWriter(OutputStream outputStream, String str) {
        return str == null ? new PrintWriter(outputStream) : new PrintWriter(new OutputStreamWriter(outputStream, str));
    }

    protected void addHeader(String str, String str2) {
        this._response.addHeader(str, str2);
    }

    protected void setHeader(String str, String str2) {
        this._response.setHeader(str, str2);
    }
}
