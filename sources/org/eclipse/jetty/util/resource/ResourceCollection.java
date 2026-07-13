package org.eclipse.jetty.util.resource;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.StringTokenizer;
import org.eclipse.jetty.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class ResourceCollection extends Resource {
    private Resource[] b;

    public ResourceCollection() {
        this.b = new Resource[0];
    }

    public ResourceCollection(Resource... resourceArr) {
        ArrayList arrayList = new ArrayList();
        for (Resource resource : resourceArr) {
            if (resource != null) {
                if (resource instanceof ResourceCollection) {
                    Resource[] resources = ((ResourceCollection) resource).getResources();
                    for (Resource resource2 : resources) {
                        arrayList.add(resource2);
                    }
                } else {
                    arrayList.add(resource);
                }
            }
        }
        this.b = (Resource[]) arrayList.toArray(new Resource[arrayList.size()]);
        for (Resource resource3 : this.b) {
            if (!resource3.exists() || !resource3.isDirectory()) {
                throw new IllegalArgumentException(resource3 + " is not an existing directory.");
            }
        }
    }

    public ResourceCollection(String[] strArr) {
        this.b = new Resource[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            try {
                this.b[i] = Resource.newResource(strArr[i]);
                if (!this.b[i].exists() || !this.b[i].isDirectory()) {
                    throw new IllegalArgumentException(this.b[i] + " is not an existing directory.");
                }
            } catch (IllegalArgumentException e) {
                throw e;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public ResourceCollection(String str) {
        setResourcesAsCSV(str);
    }

    public Resource[] getResources() {
        return this.b;
    }

    public void setResources(Resource[] resourceArr) {
        if (resourceArr == null) {
            resourceArr = new Resource[0];
        }
        this.b = resourceArr;
    }

    public void setResourcesAsCSV(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",;");
        int iCountTokens = stringTokenizer.countTokens();
        if (iCountTokens == 0) {
            throw new IllegalArgumentException("ResourceCollection@setResourcesAsCSV(String)  argument must be a string containing one or more comma-separated resource strings.");
        }
        this.b = new Resource[iCountTokens];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            try {
                this.b[i] = Resource.newResource(stringTokenizer.nextToken().trim());
                if (this.b[i].exists() && this.b[i].isDirectory()) {
                    i++;
                } else {
                    throw new IllegalArgumentException(this.b[i] + " is not an existing directory.");
                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public Resource addPath(String str) throws MalformedURLException {
        if (this.b == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        if (str == null) {
            throw new MalformedURLException();
        }
        if (str.length() == 0 || URIUtil.SLASH.equals(str)) {
            return this;
        }
        int i = 0;
        Resource resourceAddPath = null;
        while (true) {
            if (i >= this.b.length) {
                break;
            }
            resourceAddPath = this.b[i].addPath(str);
            if (!resourceAddPath.exists()) {
                i++;
            } else if (!resourceAddPath.isDirectory()) {
                return resourceAddPath;
            }
        }
        ArrayList arrayList = null;
        for (int i2 = i + 1; i2 < this.b.length; i2++) {
            Resource resourceAddPath2 = this.b[i2].addPath(str);
            if (resourceAddPath2.exists() && resourceAddPath2.isDirectory()) {
                if (resourceAddPath != null) {
                    arrayList = new ArrayList();
                    arrayList.add(resourceAddPath);
                    resourceAddPath = null;
                }
                arrayList.add(resourceAddPath2);
            }
        }
        if (resourceAddPath == null) {
            if (arrayList != null) {
                return new ResourceCollection((Resource[]) arrayList.toArray(new Resource[arrayList.size()]));
            }
            return null;
        }
        return resourceAddPath;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
    
        if (r3 >= r6.b.length) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
    
        r4 = r6.b[r3].addPath(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
    
        if (r4.exists() == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
    
        if (r4.isDirectory() == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        if (r1 == null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
    
        r0 = new java.util.ArrayList();
        r0.add(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0043, code lost:
    
        r0.add(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004c, code lost:
    
        if (r1 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004f, code lost:
    
        if (r0 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
    
        r3 = r0 + 1;
        r0 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.Object findResource(java.lang.String r7) {
        /*
            r6 = this;
            r2 = 0
            r0 = 0
            r1 = r2
        L3:
            org.eclipse.jetty.util.resource.Resource[] r3 = r6.b
            int r3 = r3.length
            if (r0 >= r3) goto L1c
            org.eclipse.jetty.util.resource.Resource[] r1 = r6.b
            r1 = r1[r0]
            org.eclipse.jetty.util.resource.Resource r1 = r1.addPath(r7)
            boolean r3 = r1.exists()
            if (r3 == 0) goto L49
            boolean r3 = r1.isDirectory()
            if (r3 == 0) goto L4e
        L1c:
            int r0 = r0 + 1
            r3 = r0
            r0 = r2
        L20:
            org.eclipse.jetty.util.resource.Resource[] r4 = r6.b
            int r4 = r4.length
            if (r3 >= r4) goto L4c
            org.eclipse.jetty.util.resource.Resource[] r4 = r6.b
            r4 = r4[r3]
            org.eclipse.jetty.util.resource.Resource r4 = r4.addPath(r7)
            boolean r5 = r4.exists()
            if (r5 == 0) goto L46
            boolean r5 = r4.isDirectory()
            if (r5 == 0) goto L46
            if (r1 == 0) goto L43
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r0.add(r1)
        L43:
            r0.add(r4)
        L46:
            int r3 = r3 + 1
            goto L20
        L49:
            int r0 = r0 + 1
            goto L3
        L4c:
            if (r1 == 0) goto L4f
        L4e:
            return r1
        L4f:
            if (r0 == 0) goto L53
            r1 = r0
            goto L4e
        L53:
            r1 = r2
            goto L4e
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.resource.ResourceCollection.findResource(java.lang.String):java.lang.Object");
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public boolean delete() {
        throw new UnsupportedOperationException();
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public boolean exists() {
        if (this.b == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        return true;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public File getFile() {
        if (this.b == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (Resource resource : this.b) {
            File file = resource.getFile();
            if (file != null) {
                return file;
            }
        }
        return null;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public InputStream getInputStream() {
        if (this.b == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (Resource resource : this.b) {
            InputStream inputStream = resource.getInputStream();
            if (inputStream != null) {
                return inputStream;
            }
        }
        return null;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public String getName() {
        if (this.b == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (Resource resource : this.b) {
            String name = resource.getName();
            if (name != null) {
                return name;
            }
        }
        return null;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public OutputStream getOutputStream() {
        if (this.b == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (Resource resource : this.b) {
            OutputStream outputStream = resource.getOutputStream();
            if (outputStream != null) {
                return outputStream;
            }
        }
        return null;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public URL getURL() {
        if (this.b == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (Resource resource : this.b) {
            URL url = resource.getURL();
            if (url != null) {
                return url;
            }
        }
        return null;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public boolean isDirectory() {
        if (this.b == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        return true;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public long lastModified() {
        if (this.b == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (Resource resource : this.b) {
            long jLastModified = resource.lastModified();
            if (jLastModified != -1) {
                return jLastModified;
            }
        }
        return -1L;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public long length() {
        return -1L;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public String[] list() {
        if (this.b == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        HashSet hashSet = new HashSet();
        for (Resource resource : this.b) {
            String[] list = resource.list();
            for (String str : list) {
                hashSet.add(str);
            }
        }
        String[] strArr = (String[]) hashSet.toArray(new String[hashSet.size()]);
        Arrays.sort(strArr);
        return strArr;
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public void release() {
        if (this.b == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (Resource resource : this.b) {
            resource.release();
        }
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public boolean renameTo(Resource resource) {
        throw new UnsupportedOperationException();
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public void copyTo(File file) throws IOException {
        int length = this.b.length;
        while (true) {
            int i = length - 1;
            if (length > 0) {
                this.b[i].copyTo(file);
                length = i;
            } else {
                return;
            }
        }
    }

    public String toString() {
        return this.b == null ? "[]" : String.valueOf(Arrays.asList(this.b));
    }

    @Override // org.eclipse.jetty.util.resource.Resource
    public boolean isContainedIn(Resource resource) {
        return false;
    }
}
