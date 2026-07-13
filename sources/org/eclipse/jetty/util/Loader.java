package org.eclipse.jetty.util;

import java.io.File;
import java.net.URL;
import java.net.URLClassLoader;
import org.eclipse.jetty.util.resource.Resource;

/* JADX INFO: loaded from: classes.dex */
public class Loader {
    public static URL getResource(Class<?> cls, String str, boolean z) {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        URL resource = null;
        while (resource == null && contextClassLoader != null) {
            resource = contextClassLoader.getResource(str);
            contextClassLoader = (resource == null && z) ? contextClassLoader.getParent() : null;
        }
        URL url = resource;
        ClassLoader classLoader = cls == null ? null : cls.getClassLoader();
        while (url == null && classLoader != null) {
            URL resource2 = classLoader.getResource(str);
            classLoader = (resource2 == null && z) ? classLoader.getParent() : null;
            url = resource2;
        }
        if (url == null) {
            return ClassLoader.getSystemResource(str);
        }
        return url;
    }

    public static Class loadClass(Class cls, String str) {
        return loadClass(cls, str, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Class loadClass(java.lang.Class r5, java.lang.String r6, boolean r7) throws java.lang.ClassNotFoundException {
        /*
            r1 = 0
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.ClassLoader r0 = r0.getContextClassLoader()
            r2 = r1
            r3 = r1
        Lb:
            if (r2 != 0) goto L23
            if (r0 == 0) goto L23
            java.lang.Class r2 = r0.loadClass(r6)     // Catch: java.lang.ClassNotFoundException -> L1c
        L13:
            if (r2 != 0) goto L21
            if (r7 == 0) goto L21
            java.lang.ClassLoader r0 = r0.getParent()
            goto Lb
        L1c:
            r4 = move-exception
            if (r3 != 0) goto L13
            r3 = r4
            goto L13
        L21:
            r0 = r1
            goto Lb
        L23:
            if (r5 != 0) goto L3f
            r0 = r1
        L26:
            r4 = r0
            r0 = r2
            r2 = r3
        L29:
            if (r0 != 0) goto L4b
            if (r4 == 0) goto L4b
            java.lang.Class r0 = r4.loadClass(r6)     // Catch: java.lang.ClassNotFoundException -> L44
            r3 = r2
            r2 = r0
        L33:
            if (r2 != 0) goto L49
            if (r7 == 0) goto L49
            java.lang.ClassLoader r0 = r4.getParent()
        L3b:
            r4 = r0
            r0 = r2
            r2 = r3
            goto L29
        L3f:
            java.lang.ClassLoader r0 = r5.getClassLoader()
            goto L26
        L44:
            r3 = move-exception
            if (r2 != 0) goto L5b
            r2 = r0
            goto L33
        L49:
            r0 = r1
            goto L3b
        L4b:
            if (r0 != 0) goto L58
            java.lang.Class r0 = java.lang.Class.forName(r6)     // Catch: java.lang.ClassNotFoundException -> L55
            r1 = r2
        L52:
            if (r0 == 0) goto L5a
            return r0
        L55:
            r1 = move-exception
            if (r2 == 0) goto L52
        L58:
            r1 = r2
            goto L52
        L5a:
            throw r1
        L5b:
            r3 = r2
            r2 = r0
            goto L33
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.Loader.loadClass(java.lang.Class, java.lang.String, boolean):java.lang.Class");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ResourceBundle getResourceBundle(java.lang.Class<?> r5, java.lang.String r6, boolean r7, java.util.Locale r8) {
        /*
            r1 = 0
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.ClassLoader r0 = r0.getContextClassLoader()
            r2 = r1
            r3 = r1
        Lb:
            if (r2 != 0) goto L23
            if (r0 == 0) goto L23
            java.util.ResourceBundle r2 = java.util.ResourceBundle.getBundle(r6, r8, r0)     // Catch: java.util.MissingResourceException -> L1c
        L13:
            if (r2 != 0) goto L21
            if (r7 == 0) goto L21
            java.lang.ClassLoader r0 = r0.getParent()
            goto Lb
        L1c:
            r4 = move-exception
            if (r3 != 0) goto L13
            r3 = r4
            goto L13
        L21:
            r0 = r1
            goto Lb
        L23:
            if (r5 != 0) goto L3f
            r0 = r1
        L26:
            r4 = r0
            r0 = r2
            r2 = r3
        L29:
            if (r0 != 0) goto L4b
            if (r4 == 0) goto L4b
            java.util.ResourceBundle r0 = java.util.ResourceBundle.getBundle(r6, r8, r4)     // Catch: java.util.MissingResourceException -> L44
            r3 = r2
            r2 = r0
        L33:
            if (r2 != 0) goto L49
            if (r7 == 0) goto L49
            java.lang.ClassLoader r0 = r4.getParent()
        L3b:
            r4 = r0
            r0 = r2
            r2 = r3
            goto L29
        L3f:
            java.lang.ClassLoader r0 = r5.getClassLoader()
            goto L26
        L44:
            r3 = move-exception
            if (r2 != 0) goto L5b
            r2 = r0
            goto L33
        L49:
            r0 = r1
            goto L3b
        L4b:
            if (r0 != 0) goto L58
            java.util.ResourceBundle r0 = java.util.ResourceBundle.getBundle(r6, r8)     // Catch: java.util.MissingResourceException -> L55
            r1 = r2
        L52:
            if (r0 == 0) goto L5a
            return r0
        L55:
            r1 = move-exception
            if (r2 == 0) goto L52
        L58:
            r1 = r2
            goto L52
        L5a:
            throw r1
        L5b:
            r3 = r2
            r2 = r0
            goto L33
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.Loader.getResourceBundle(java.lang.Class, java.lang.String, boolean, java.util.Locale):java.util.ResourceBundle");
    }

    public static String getClassPath(ClassLoader classLoader) {
        StringBuilder sb = new StringBuilder();
        for (ClassLoader parent = classLoader; parent != null && (parent instanceof URLClassLoader); parent = parent.getParent()) {
            URL[] uRLs = ((URLClassLoader) parent).getURLs();
            if (uRLs != null) {
                for (URL url : uRLs) {
                    File file = Resource.newResource(url).getFile();
                    if (file != null && file.exists()) {
                        if (sb.length() > 0) {
                            sb.append(File.pathSeparatorChar);
                        }
                        sb.append(file.getAbsolutePath());
                    }
                }
            }
        }
        return sb.toString();
    }
}
