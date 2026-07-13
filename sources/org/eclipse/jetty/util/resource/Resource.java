package org.eclipse.jetty.util.resource;

import defpackage.mp;
import defpackage.mq;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.text.DateFormat;
import java.util.Arrays;
import java.util.Date;
import org.eclipse.jetty.util.B64Code;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.Loader;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class Resource implements ResourceFactory {
    volatile Object a;
    private static final Logger b = Log.getLogger((Class<?>) Resource.class);
    public static boolean __defaultUseCaches = true;

    public abstract Resource addPath(String str);

    public abstract boolean delete();

    public abstract boolean exists();

    public abstract File getFile();

    public abstract InputStream getInputStream();

    public abstract String getName();

    public abstract OutputStream getOutputStream();

    public abstract URL getURL();

    public abstract boolean isContainedIn(Resource resource);

    public abstract boolean isDirectory();

    public abstract long lastModified();

    public abstract long length();

    public abstract String[] list();

    public abstract void release();

    public abstract boolean renameTo(Resource resource);

    public static void setDefaultUseCaches(boolean z) {
        __defaultUseCaches = z;
    }

    public static boolean getDefaultUseCaches() {
        return __defaultUseCaches;
    }

    public static Resource newResource(URI uri) {
        return newResource(uri.toURL());
    }

    public static Resource newResource(URL url) {
        return a(url, __defaultUseCaches);
    }

    static Resource a(URL url, boolean z) {
        if (url == null) {
            return null;
        }
        String externalForm = url.toExternalForm();
        if (externalForm.startsWith("file:")) {
            try {
                return new FileResource(url);
            } catch (Exception e) {
                b.debug(Log.EXCEPTION, e);
                return new mp(url, e.toString());
            }
        }
        if (externalForm.startsWith("jar:file:")) {
            return new mq(url, z);
        }
        if (externalForm.startsWith("jar:")) {
            return new JarResource(url, z);
        }
        return new URLResource(url, null, z);
    }

    public static Resource newResource(String str) {
        return newResource(str, __defaultUseCaches);
    }

    public static Resource newResource(String str, boolean z) throws MalformedURLException {
        try {
            return newResource(new URL(str));
        } catch (MalformedURLException e) {
            if (!str.startsWith("ftp:") && !str.startsWith("file:") && !str.startsWith("jar:")) {
                try {
                    if (str.startsWith("./")) {
                        str = str.substring(2);
                    }
                    File canonicalFile = new File(str).getCanonicalFile();
                    URL url = toURL(canonicalFile);
                    URLConnection uRLConnectionOpenConnection = url.openConnection();
                    uRLConnectionOpenConnection.setUseCaches(z);
                    return new FileResource(url, uRLConnectionOpenConnection, canonicalFile);
                } catch (Exception e2) {
                    b.debug(Log.EXCEPTION, e2);
                    throw e;
                }
            }
            b.warn("Bad Resource: " + str, new Object[0]);
            throw e;
        }
    }

    public static Resource newResource(File file) throws IOException {
        File canonicalFile = file.getCanonicalFile();
        URL url = toURL(canonicalFile);
        return new FileResource(url, url.openConnection(), canonicalFile);
    }

    public static Resource newSystemResource(String str) {
        URL resource;
        ClassLoader classLoader;
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader != null) {
            try {
                resource = contextClassLoader.getResource(str);
                if (resource == null && str.startsWith(URIUtil.SLASH)) {
                    resource = contextClassLoader.getResource(str.substring(1));
                }
            } catch (IllegalArgumentException e) {
                resource = null;
            }
        } else {
            resource = null;
        }
        if (resource == null && (classLoader = Resource.class.getClassLoader()) != null && (resource = classLoader.getResource(str)) == null && str.startsWith(URIUtil.SLASH)) {
            resource = classLoader.getResource(str.substring(1));
        }
        if (resource == null && (resource = ClassLoader.getSystemResource(str)) == null && str.startsWith(URIUtil.SLASH)) {
            resource = ClassLoader.getSystemResource(str.substring(1));
        }
        if (resource == null) {
            return null;
        }
        return newResource(resource);
    }

    public static Resource newClassPathResource(String str) {
        return newClassPathResource(str, true, false);
    }

    public static Resource newClassPathResource(String str, boolean z, boolean z2) {
        URL resource = Resource.class.getResource(str);
        if (resource == null) {
            resource = Loader.getResource(Resource.class, str, z2);
        }
        if (resource == null) {
            return null;
        }
        return a(resource, z);
    }

    public static boolean isContainedIn(Resource resource, Resource resource2) {
        return resource.isContainedIn(resource2);
    }

    protected void finalize() {
        release();
    }

    public URI getURI() {
        try {
            return getURL().toURI();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override // org.eclipse.jetty.util.resource.ResourceFactory
    public Resource getResource(String str) {
        try {
            return addPath(str);
        } catch (Exception e) {
            b.debug(e);
            return null;
        }
    }

    public String encode(String str) {
        return URIUtil.encodePath(str);
    }

    public Object getAssociate() {
        return this.a;
    }

    public void setAssociate(Object obj) {
        this.a = obj;
    }

    public URL getAlias() {
        return null;
    }

    public String getListHTML(String str, boolean z) {
        String[] list;
        String strCanonicalPath = URIUtil.canonicalPath(str);
        if (strCanonicalPath == null || !isDirectory() || (list = list()) == null) {
            return null;
        }
        Arrays.sort(list);
        String str2 = "Directory: " + b(URIUtil.decodePath(strCanonicalPath));
        StringBuilder sb = new StringBuilder(4096);
        sb.append("<HTML><HEAD>");
        sb.append("<LINK HREF=\"").append("jetty-dir.css").append("\" REL=\"stylesheet\" TYPE=\"text/css\"/><TITLE>");
        sb.append(str2);
        sb.append("</TITLE></HEAD><BODY>\n<H1>");
        sb.append(str2);
        sb.append("</H1>\n<TABLE BORDER=0>\n");
        if (z) {
            sb.append("<TR><TD><A HREF=\"");
            sb.append(URIUtil.addPaths(strCanonicalPath, "../"));
            sb.append("\">Parent Directory</A></TD><TD></TD><TD></TD></TR>\n");
        }
        String strA = a(strCanonicalPath);
        DateFormat dateTimeInstance = DateFormat.getDateTimeInstance(2, 2);
        for (int i = 0; i < list.length; i++) {
            Resource resourceAddPath = addPath(list[i]);
            sb.append("\n<TR><TD><A HREF=\"");
            String strAddPaths = URIUtil.addPaths(strA, URIUtil.encodePath(list[i]));
            sb.append(strAddPaths);
            if (resourceAddPath.isDirectory() && !strAddPaths.endsWith(URIUtil.SLASH)) {
                sb.append(URIUtil.SLASH);
            }
            sb.append("\">");
            sb.append(b(list[i]));
            sb.append("&nbsp;");
            sb.append("</A></TD><TD ALIGN=right>");
            sb.append(resourceAddPath.length());
            sb.append(" bytes&nbsp;</TD><TD>");
            sb.append(dateTimeInstance.format(new Date(resourceAddPath.lastModified())));
            sb.append("</TD></TR>");
        }
        sb.append("</TABLE>\n");
        sb.append("</BODY></HTML>\n");
        return sb.toString();
    }

    private static String a(String str) {
        StringBuffer stringBuffer;
        int i = 0;
        while (true) {
            if (i >= str.length()) {
                stringBuffer = null;
            } else {
                switch (str.charAt(i)) {
                    case '\"':
                    case '\'':
                    case '<':
                    case '>':
                        stringBuffer = new StringBuffer(str.length() << 1);
                        break;
                    default:
                        i++;
                        break;
                }
            }
        }
        if (stringBuffer == null) {
            return str;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            switch (cCharAt) {
                case '\"':
                    stringBuffer.append("%22");
                    break;
                case '\'':
                    stringBuffer.append("%27");
                    break;
                case '<':
                    stringBuffer.append("%3C");
                    break;
                case '>':
                    stringBuffer.append("%3E");
                    break;
                default:
                    stringBuffer.append(cCharAt);
                    break;
            }
        }
        return stringBuffer.toString();
    }

    private static String b(String str) {
        return StringUtil.replace(StringUtil.replace(str, "<", "&lt;"), ">", "&gt;");
    }

    public void writeTo(OutputStream outputStream, long j, long j2) throws IOException {
        InputStream inputStream = getInputStream();
        try {
            inputStream.skip(j);
            if (j2 < 0) {
                IO.copy(inputStream, outputStream);
            } else {
                IO.copy(inputStream, outputStream, j2);
            }
        } finally {
            inputStream.close();
        }
    }

    public void copyTo(File file) throws IOException {
        if (file.exists()) {
            throw new IllegalArgumentException(file + " exists");
        }
        writeTo(new FileOutputStream(file), 0L, -1L);
    }

    public String getWeakETag() {
        try {
            StringBuilder sb = new StringBuilder(32);
            sb.append("W/\"");
            String name = getName();
            int length = name.length();
            long jCharAt = 0;
            for (int i = 0; i < length; i++) {
                jCharAt = (jCharAt * 31) + ((long) name.charAt(i));
            }
            B64Code.encode(lastModified() ^ jCharAt, sb);
            B64Code.encode(jCharAt ^ length(), sb);
            sb.append('\"');
            return sb.toString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static URL toURL(File file) {
        return file.toURI().toURL();
    }
}
