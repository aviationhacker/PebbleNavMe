package defpackage;

import java.io.File;
import java.io.IOException;
import java.net.JarURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.resource.JarResource;
import org.eclipse.jetty.util.resource.Resource;

/* JADX INFO: loaded from: classes.dex */
public class mq extends JarResource {
    private static final Logger c = Log.getLogger((Class<?>) mq.class);
    private JarFile d;
    private File e;
    private String[] f;
    private JarEntry g;
    private boolean h;
    private String i;
    private String j;
    private boolean k;

    public mq(URL url, boolean z) {
        super(url, z);
    }

    @Override // org.eclipse.jetty.util.resource.JarResource, org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public synchronized void release() {
        this.f = null;
        this.g = null;
        this.e = null;
        if (!getUseCaches() && this.d != null) {
            try {
                c.debug("Closing JarFile " + this.d.getName(), new Object[0]);
                this.d.close();
            } catch (IOException e) {
                c.ignore(e);
            }
            this.d = null;
            super.release();
        } else {
            this.d = null;
            super.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.eclipse.jetty.util.resource.JarResource, org.eclipse.jetty.util.resource.URLResource
    public boolean checkConnection() {
        try {
            super.checkConnection();
            return this.d != null;
        } finally {
            if (this._jarConnection == null) {
                this.g = null;
                this.e = null;
                this.d = null;
                this.f = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.eclipse.jetty.util.resource.JarResource
    public synchronized void newConnection() {
        super.newConnection();
        this.g = null;
        this.e = null;
        this.d = null;
        this.f = null;
        int iIndexOf = this._urlString.indexOf("!/");
        this.i = this._urlString.substring(0, iIndexOf + 2);
        this.j = this._urlString.substring(iIndexOf + 2);
        if (this.j.length() == 0) {
            this.j = null;
        }
        this.d = this._jarConnection.getJarFile();
        this.e = new File(this.d.getName());
    }

    @Override // org.eclipse.jetty.util.resource.JarResource, org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public boolean exists() {
        JarFile jarFile;
        if (this.k) {
            return true;
        }
        if (this._urlString.endsWith("!/")) {
            try {
                return newResource(this._urlString.substring(4, this._urlString.length() - 2)).exists();
            } catch (Exception e) {
                c.ignore(e);
                return false;
            }
        }
        boolean zCheckConnection = checkConnection();
        if (this.i != null && this.j == null) {
            this.h = zCheckConnection;
            return true;
        }
        if (zCheckConnection) {
            jarFile = this.d;
        } else {
            try {
                JarURLConnection jarURLConnection = (JarURLConnection) new URL(this.i).openConnection();
                jarURLConnection.setUseCaches(getUseCaches());
                jarFile = jarURLConnection.getJarFile();
            } catch (Exception e2) {
                c.ignore(e2);
                jarFile = null;
            }
        }
        if (jarFile != null && this.g == null && !this.h) {
            Enumeration<JarEntry> enumerationEntries = jarFile.entries();
            while (true) {
                if (!enumerationEntries.hasMoreElements()) {
                    break;
                }
                JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                String strReplace = jarEntryNextElement.getName().replace('\\', '/');
                if (strReplace.equals(this.j)) {
                    this.g = jarEntryNextElement;
                    this.h = this.j.endsWith(URIUtil.SLASH);
                    break;
                }
                if (this.j.endsWith(URIUtil.SLASH)) {
                    if (strReplace.startsWith(this.j)) {
                        this.h = true;
                        break;
                    }
                } else if (strReplace.startsWith(this.j) && strReplace.length() > this.j.length() && strReplace.charAt(this.j.length()) == '/') {
                    this.h = true;
                    break;
                }
            }
            if (this.h && !this._urlString.endsWith(URIUtil.SLASH)) {
                this._urlString += URIUtil.SLASH;
                try {
                    this._url = new URL(this._urlString);
                } catch (MalformedURLException e3) {
                    c.warn(e3);
                }
            }
        }
        this.k = this.h || this.g != null;
        return this.k;
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public boolean isDirectory() {
        return this._urlString.endsWith(URIUtil.SLASH) || (exists() && this.h);
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public long lastModified() {
        if (checkConnection() && this.e != null) {
            if (exists() && this.g != null) {
                return this.g.getTime();
            }
            return this.e.lastModified();
        }
        return -1L;
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public synchronized String[] list() {
        List<String> listA;
        if (isDirectory() && this.f == null) {
            try {
                listA = a();
            } catch (Exception e) {
                c.warn("Retrying list:" + e, new Object[0]);
                c.debug(e);
                release();
                listA = a();
            }
            if (listA != null) {
                this.f = new String[listA.size()];
                listA.toArray(this.f);
            }
        }
        return this.f;
    }

    private List<String> a() {
        JarFile jarFile;
        checkConnection();
        ArrayList arrayList = new ArrayList(32);
        JarFile jarFile2 = this.d;
        if (jarFile2 == null) {
            try {
                JarURLConnection jarURLConnection = (JarURLConnection) new URL(this.i).openConnection();
                jarURLConnection.setUseCaches(getUseCaches());
                jarFile = jarURLConnection.getJarFile();
            } catch (Exception e) {
                e.printStackTrace();
                c.ignore(e);
                jarFile = jarFile2;
            }
        } else {
            jarFile = jarFile2;
        }
        Enumeration<JarEntry> enumerationEntries = jarFile.entries();
        String strSubstring = this._urlString.substring(this._urlString.indexOf("!/") + 2);
        while (enumerationEntries.hasMoreElements()) {
            String strReplace = enumerationEntries.nextElement().getName().replace('\\', '/');
            if (strReplace.startsWith(strSubstring) && strReplace.length() != strSubstring.length()) {
                String strSubstring2 = strReplace.substring(strSubstring.length());
                int iIndexOf = strSubstring2.indexOf(47);
                if (iIndexOf >= 0) {
                    if (iIndexOf != 0 || strSubstring2.length() != 1) {
                        if (iIndexOf == 0) {
                            strSubstring2 = strSubstring2.substring(iIndexOf + 1, strSubstring2.length());
                        } else {
                            strSubstring2 = strSubstring2.substring(0, iIndexOf + 1);
                        }
                        if (!arrayList.contains(strSubstring2)) {
                        }
                    }
                }
                arrayList.add(strSubstring2);
            }
        }
        return arrayList;
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public long length() {
        if (isDirectory() || this.g == null) {
            return -1L;
        }
        return this.g.getSize();
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public String encode(String str) {
        return str;
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public boolean isContainedIn(Resource resource) {
        String strSubstring = this._urlString;
        int iIndexOf = strSubstring.indexOf("!/");
        if (iIndexOf > 0) {
            strSubstring = strSubstring.substring(0, iIndexOf);
        }
        if (strSubstring.startsWith("jar:")) {
            strSubstring = strSubstring.substring(4);
        }
        return new URL(strSubstring).sameFile(resource.getURL());
    }
}
