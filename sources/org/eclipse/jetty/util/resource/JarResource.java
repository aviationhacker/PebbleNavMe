package org.eclipse.jetty.util.resource;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;
import java.util.jar.Manifest;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class JarResource extends URLResource {
    private static final Logger c = Log.getLogger((Class<?>) JarResource.class);
    protected JarURLConnection _jarConnection;

    protected JarResource(URL url, boolean z) {
        super(url, null, z);
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public synchronized void release() {
        this._jarConnection = null;
        super.release();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0011  */
    @Override // org.eclipse.jetty.util.resource.URLResource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean checkConnection() {
        /*
            r2 = this;
            monitor-enter(r2)
            super.checkConnection()     // Catch: java.lang.Throwable -> L1e
            java.net.JarURLConnection r0 = r2._jarConnection     // Catch: java.io.IOException -> L14 java.lang.Throwable -> L1e
            java.net.URLConnection r1 = r2._connection     // Catch: java.io.IOException -> L14 java.lang.Throwable -> L1e
            if (r0 == r1) goto Ld
            r2.newConnection()     // Catch: java.io.IOException -> L14 java.lang.Throwable -> L1e
        Ld:
            java.net.JarURLConnection r0 = r2._jarConnection     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L21
            r0 = 1
        L12:
            monitor-exit(r2)
            return r0
        L14:
            r0 = move-exception
            org.eclipse.jetty.util.log.Logger r1 = org.eclipse.jetty.util.resource.JarResource.c     // Catch: java.lang.Throwable -> L1e
            r1.ignore(r0)     // Catch: java.lang.Throwable -> L1e
            r0 = 0
            r2._jarConnection = r0     // Catch: java.lang.Throwable -> L1e
            goto Ld
        L1e:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        L21:
            r0 = 0
            goto L12
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.resource.JarResource.checkConnection():boolean");
    }

    public void newConnection() {
        this._jarConnection = (JarURLConnection) this._connection;
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public boolean exists() {
        return this._urlString.endsWith("!/") ? checkConnection() : super.exists();
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public File getFile() {
        return null;
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public InputStream getInputStream() {
        checkConnection();
        if (!this._urlString.endsWith("!/")) {
            return new FilterInputStream(super.getInputStream()) { // from class: org.eclipse.jetty.util.resource.JarResource.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    this.in = IO.getClosedStream();
                }
            };
        }
        return new URL(this._urlString.substring(4, this._urlString.length() - 2)).openStream();
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public void copyTo(File file) throws Throwable {
        Manifest manifest;
        boolean z;
        FileOutputStream fileOutputStream;
        if (exists()) {
            if (c.isDebugEnabled()) {
                c.debug("Extract " + this + " to " + file, new Object[0]);
            }
            String strTrim = getURL().toExternalForm().trim();
            int iIndexOf = strTrim.indexOf("!/");
            int i = iIndexOf >= 0 ? 4 : 0;
            if (iIndexOf < 0) {
                throw new IOException("Not a valid jar url: " + strTrim);
            }
            URL url = new URL(strTrim.substring(i, iIndexOf));
            String strSubstring = iIndexOf + 2 < strTrim.length() ? strTrim.substring(iIndexOf + 2) : null;
            boolean z2 = strSubstring != null && strSubstring.endsWith(URIUtil.SLASH);
            if (c.isDebugEnabled()) {
                c.debug("Extracting entry = " + strSubstring + " from jar " + url, new Object[0]);
            }
            JarInputStream jarInputStream = new JarInputStream(url.openConnection().getInputStream());
            while (true) {
                JarEntry nextJarEntry = jarInputStream.getNextJarEntry();
                if (nextJarEntry == null) {
                    break;
                }
                String name = nextJarEntry.getName();
                if (strSubstring != null && name.startsWith(strSubstring)) {
                    boolean z3 = (!z2 && strSubstring.length() + 1 == name.length() && name.endsWith(URIUtil.SLASH)) ? true : z2;
                    if (z3) {
                        String strSubstring2 = name.substring(strSubstring.length());
                        if (strSubstring2.equals("")) {
                            name = strSubstring2;
                            z2 = z3;
                            z = false;
                        } else {
                            name = strSubstring2;
                            z2 = z3;
                            z = true;
                        }
                    } else {
                        z2 = z3;
                        z = true;
                    }
                } else {
                    z = strSubstring == null || name.startsWith(strSubstring);
                }
                if (!z) {
                    if (c.isDebugEnabled()) {
                        c.debug("Skipping entry: " + name, new Object[0]);
                    }
                } else if (URIUtil.canonicalPath(name.replace('\\', '/')) == null) {
                    if (c.isDebugEnabled()) {
                        c.debug("Invalid entry: " + name, new Object[0]);
                    }
                } else {
                    File file2 = new File(file, name);
                    if (nextJarEntry.isDirectory()) {
                        if (!file2.exists()) {
                            file2.mkdirs();
                        }
                    } else {
                        File file3 = new File(file2.getParent());
                        if (!file3.exists()) {
                            file3.mkdirs();
                        }
                        try {
                            FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                            try {
                                IO.copy(jarInputStream, fileOutputStream2);
                                IO.close(fileOutputStream2);
                                if (nextJarEntry.getTime() >= 0) {
                                    file2.setLastModified(nextJarEntry.getTime());
                                }
                            } catch (Throwable th) {
                                th = th;
                                fileOutputStream = fileOutputStream2;
                                IO.close(fileOutputStream);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = null;
                        }
                    }
                }
            }
            if ((strSubstring == null || (strSubstring != null && strSubstring.equalsIgnoreCase("META-INF/MANIFEST.MF"))) && (manifest = jarInputStream.getManifest()) != null) {
                File file4 = new File(file, "META-INF");
                file4.mkdir();
                FileOutputStream fileOutputStream3 = new FileOutputStream(new File(file4, "MANIFEST.MF"));
                manifest.write(fileOutputStream3);
                fileOutputStream3.close();
            }
            IO.close(jarInputStream);
        }
    }

    public static Resource newJarResource(Resource resource) {
        return resource instanceof JarResource ? resource : Resource.newResource("jar:" + resource + "!/");
    }
}
