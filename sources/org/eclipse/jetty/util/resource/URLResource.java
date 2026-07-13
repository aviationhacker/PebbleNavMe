package org.eclipse.jetty.util.resource;

import java.io.File;
import java.io.FilePermission;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.security.Permission;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class URLResource extends Resource {
    private static final Logger c = Log.getLogger((Class<?>) URLResource.class);
    protected URLConnection _connection;
    protected InputStream _in;
    protected URL _url;
    protected String _urlString;
    transient boolean b;

    protected URLResource(URL url, URLConnection uRLConnection) {
        this._in = null;
        this.b = Resource.__defaultUseCaches;
        this._url = url;
        this._urlString = this._url.toString();
        this._connection = uRLConnection;
    }

    protected URLResource(URL url, URLConnection uRLConnection, boolean z) {
        this(url, uRLConnection);
        this.b = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean checkConnection() {
        /*
            r2 = this;
            monitor-enter(r2)
            java.net.URLConnection r0 = r2._connection     // Catch: java.lang.Throwable -> L22
            if (r0 != 0) goto L14
            java.net.URL r0 = r2._url     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L22
            java.net.URLConnection r0 = r0.openConnection()     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L22
            r2._connection = r0     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L22
            java.net.URLConnection r0 = r2._connection     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L22
            boolean r1 = r2.b     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L22
            r0.setUseCaches(r1)     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L22
        L14:
            java.net.URLConnection r0 = r2._connection     // Catch: java.lang.Throwable -> L22
            if (r0 == 0) goto L25
            r0 = 1
        L19:
            monitor-exit(r2)
            return r0
        L1b:
            r0 = move-exception
            org.eclipse.jetty.util.log.Logger r1 = org.eclipse.jetty.util.resource.URLResource.c     // Catch: java.lang.Throwable -> L22
            r1.ignore(r0)     // Catch: java.lang.Throwable -> L22
            goto L14
        L22:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        L25:
            r0 = 0
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.resource.URLResource.checkConnection():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0011 A[Catch: all -> 0x001d, TRY_LEAVE, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x0005, B:7:0x000b, B:8:0x000d, B:10:0x0011, B:14:0x0017), top: B:21:0x0001, inners: #0 }] */
    @Override // org.eclipse.jetty.util.resource.Resource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void release() {
        /*
            r2 = this;
            monitor-enter(r2)
            java.io.InputStream r0 = r2._in     // Catch: java.lang.Throwable -> L1d
            if (r0 == 0) goto Ld
            java.io.InputStream r0 = r2._in     // Catch: java.io.IOException -> L16 java.lang.Throwable -> L1d
            r0.close()     // Catch: java.io.IOException -> L16 java.lang.Throwable -> L1d
        La:
            r0 = 0
            r2._in = r0     // Catch: java.lang.Throwable -> L1d
        Ld:
            java.net.URLConnection r0 = r2._connection     // Catch: java.lang.Throwable -> L1d
            if (r0 == 0) goto L14
            r0 = 0
            r2._connection = r0     // Catch: java.lang.Throwable -> L1d
        L14:
            monitor-exit(r2)
            return
        L16:
            r0 = move-exception
            org.eclipse.jetty.util.log.Logger r1 = org.eclipse.jetty.util.resource.URLResource.c     // Catch: java.lang.Throwable -> L1d
            r1.ignore(r0)     // Catch: java.lang.Throwable -> L1d
            goto La
        L1d:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.resource.URLResource.release():void");
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public boolean exists() {
        try {
            synchronized (this) {
                if (checkConnection() && this._in == null) {
                    this._in = this._connection.getInputStream();
                }
            }
        } catch (IOException e) {
            c.ignore(e);
        }
        return this._in != null;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public boolean isDirectory() {
        return exists() && this._url.toString().endsWith(URIUtil.SLASH);
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public long lastModified() {
        if (checkConnection()) {
            return this._connection.getLastModified();
        }
        return -1L;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public long length() {
        if (checkConnection()) {
            return this._connection.getContentLength();
        }
        return -1L;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public URL getURL() {
        return this._url;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public File getFile() throws IOException {
        if (checkConnection()) {
            Permission permission = this._connection.getPermission();
            if (permission instanceof FilePermission) {
                return new File(permission.getName());
            }
        }
        try {
            return new File(this._url.getFile());
        } catch (Exception e) {
            c.ignore(e);
            return null;
        }
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public String getName() {
        return this._url.toExternalForm();
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public synchronized InputStream getInputStream() {
        InputStream inputStream;
        if (!checkConnection()) {
            throw new IOException("Invalid resource");
        }
        try {
            if (this._in != null) {
                inputStream = this._in;
                this._in = null;
                this._connection = null;
            } else {
                inputStream = this._connection.getInputStream();
                this._connection = null;
            }
        } catch (Throwable th) {
            this._connection = null;
            throw th;
        }
        return inputStream;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public OutputStream getOutputStream() throws IOException {
        throw new IOException("Output not supported");
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public boolean delete() {
        throw new SecurityException("Delete not supported");
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public boolean renameTo(Resource resource) {
        throw new SecurityException("RenameTo not supported");
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public String[] list() {
        return null;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public Resource addPath(String str) {
        if (str == null) {
            return null;
        }
        return newResource(URIUtil.addPaths(this._url.toExternalForm(), URIUtil.canonicalPath(str)));
    }

    public String toString() {
        return this._urlString;
    }

    public int hashCode() {
        return this._urlString.hashCode();
    }

    public boolean equals(Object obj) {
        return (obj instanceof URLResource) && this._urlString.equals(((URLResource) obj)._urlString);
    }

    public boolean getUseCaches() {
        return this.b;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public boolean isContainedIn(Resource resource) {
        return false;
    }
}
