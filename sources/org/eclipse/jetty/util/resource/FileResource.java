package org.eclipse.jetty.util.resource;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.security.Permission;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class FileResource extends URLResource {
    private static final Logger c = Log.getLogger((Class<?>) FileResource.class);
    private static boolean d = true;
    private File e;
    private transient URL f;
    private transient boolean g;

    public static void setCheckAliases(boolean z) {
        d = z;
    }

    public static boolean getCheckAliases() {
        return d;
    }

    public FileResource(URL url) throws URISyntaxException, IOException {
        super(url, null);
        this.f = null;
        this.g = false;
        try {
            this.e = new File(new URI(url.toString()));
        } catch (URISyntaxException e) {
            throw e;
        } catch (Exception e2) {
            c.ignore(e2);
            try {
                URI uri = new URI("file:" + URIUtil.encodePath(url.toString().substring(5)));
                if (uri.getAuthority() == null) {
                    this.e = new File(uri);
                } else {
                    this.e = new File("//" + uri.getAuthority() + URIUtil.decodePath(url.getFile()));
                }
            } catch (Exception e3) {
                c.ignore(e3);
                checkConnection();
                Permission permission = this._connection.getPermission();
                this.e = new File(permission == null ? url.getFile() : permission.getName());
            }
        }
        if (this.e.isDirectory()) {
            if (!this._urlString.endsWith(URIUtil.SLASH)) {
                this._urlString += URIUtil.SLASH;
            }
        } else if (this._urlString.endsWith(URIUtil.SLASH)) {
            this._urlString = this._urlString.substring(0, this._urlString.length() - 1);
        }
    }

    FileResource(URL url, URLConnection uRLConnection, File file) {
        super(url, uRLConnection);
        this.f = null;
        this.g = false;
        this.e = file;
        if (this.e.isDirectory() && !this._urlString.endsWith(URIUtil.SLASH)) {
            this._urlString += URIUtil.SLASH;
        }
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public Resource addPath(String str) throws MalformedURLException {
        URLResource uRLResource;
        String strCanonicalPath = URIUtil.canonicalPath(str);
        if (!URIUtil.SLASH.equals(strCanonicalPath)) {
            if (!isDirectory()) {
                FileResource fileResource = (FileResource) super.addPath(strCanonicalPath);
                String str2 = fileResource._urlString;
                uRLResource = fileResource;
            } else {
                if (strCanonicalPath == null) {
                    throw new MalformedURLException();
                }
                uRLResource = (URLResource) Resource.newResource(URIUtil.addPaths(this._urlString, URIUtil.encodePath(strCanonicalPath.startsWith(URIUtil.SLASH) ? strCanonicalPath.substring(1) : strCanonicalPath)));
            }
            String strEncodePath = URIUtil.encodePath(strCanonicalPath);
            int length = uRLResource.toString().length() - strEncodePath.length();
            int iLastIndexOf = uRLResource._urlString.lastIndexOf(strEncodePath, length);
            if (length != iLastIndexOf && ((length - 1 != iLastIndexOf || strCanonicalPath.endsWith(URIUtil.SLASH) || !uRLResource.isDirectory()) && (uRLResource instanceof FileResource))) {
                ((FileResource) uRLResource).f = ((FileResource) uRLResource).e.getCanonicalFile().toURI().toURL();
                ((FileResource) uRLResource).g = true;
            }
            return uRLResource;
        }
        return this;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public URL getAlias() {
        if (d && !this.g) {
            try {
                String absolutePath = this.e.getAbsolutePath();
                String canonicalPath = this.e.getCanonicalPath();
                if (absolutePath.length() != canonicalPath.length() || !absolutePath.equals(canonicalPath)) {
                    this.f = Resource.toURL(new File(canonicalPath));
                }
                this.g = true;
                if (this.f != null && c.isDebugEnabled()) {
                    c.debug("ALIAS abs=" + absolutePath, new Object[0]);
                    c.debug("ALIAS can=" + canonicalPath, new Object[0]);
                }
            } catch (Exception e) {
                c.warn(Log.EXCEPTION, e);
                return getURL();
            }
        }
        return this.f;
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public boolean exists() {
        return this.e.exists();
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public long lastModified() {
        return this.e.lastModified();
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public boolean isDirectory() {
        return this.e.isDirectory();
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public long length() {
        return this.e.length();
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public String getName() {
        return this.e.getAbsolutePath();
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public File getFile() {
        return this.e;
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public InputStream getInputStream() {
        return new FileInputStream(this.e);
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public OutputStream getOutputStream() {
        return new FileOutputStream(this.e);
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public boolean delete() {
        return this.e.delete();
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public boolean renameTo(Resource resource) {
        if (resource instanceof FileResource) {
            return this.e.renameTo(((FileResource) resource).e);
        }
        return false;
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public String[] list() {
        String[] list = this.e.list();
        if (list == null) {
            return null;
        }
        int length = list.length;
        while (true) {
            int i = length - 1;
            if (length > 0) {
                if (!new File(this.e, list[i]).isDirectory() || list[i].endsWith(URIUtil.SLASH)) {
                    length = i;
                } else {
                    list[i] = list[i] + URIUtil.SLASH;
                    length = i;
                }
            } else {
                return list;
            }
        }
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public String encode(String str) {
        return str;
    }

    @Override // org.eclipse.jetty.util.resource.URLResource
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof FileResource)) {
            return false;
        }
        FileResource fileResource = (FileResource) obj;
        return fileResource.e == this.e || (this.e != null && this.e.equals(fileResource.e));
    }

    @Override // org.eclipse.jetty.util.resource.URLResource
    public int hashCode() {
        return this.e == null ? super.hashCode() : this.e.hashCode();
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public void copyTo(File file) throws IOException {
        if (isDirectory()) {
            IO.copyDir(getFile(), file);
        } else {
            if (file.exists()) {
                throw new IllegalArgumentException(file + " exists");
            }
            IO.copy(getFile(), file);
        }
    }
}
