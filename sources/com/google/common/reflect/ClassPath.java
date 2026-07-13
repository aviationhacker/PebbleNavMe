package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.CharMatcher;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Splitter;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Sets;
import com.google.common.collect.UnmodifiableIterator;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.Enumeration;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import org.apache.commons.lang3.ClassUtils;
import org.eclipse.jetty.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class ClassPath {
    private static final Logger a = Logger.getLogger(ClassPath.class.getName());
    private static final Predicate<ClassInfo> b = new Predicate<ClassInfo>() { // from class: com.google.common.reflect.ClassPath.1
        @Override // com.google.common.base.Predicate
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean apply(ClassInfo classInfo) {
            return classInfo.b.indexOf(36) == -1;
        }
    };
    private static final Splitter c = Splitter.on(" ").omitEmptyStrings();
    private final ImmutableSet<ResourceInfo> d;

    private ClassPath(ImmutableSet<ResourceInfo> immutableSet) {
        this.d = immutableSet;
    }

    public static ClassPath from(ClassLoader classLoader) {
        a aVar = new a();
        aVar.a(classLoader);
        return new ClassPath(aVar.a());
    }

    public ImmutableSet<ResourceInfo> getResources() {
        return this.d;
    }

    public ImmutableSet<ClassInfo> getAllClasses() {
        return FluentIterable.from(this.d).filter(ClassInfo.class).toSet();
    }

    public ImmutableSet<ClassInfo> getTopLevelClasses() {
        return FluentIterable.from(this.d).filter(ClassInfo.class).filter(b).toSet();
    }

    public ImmutableSet<ClassInfo> getTopLevelClasses(String str) {
        Preconditions.checkNotNull(str);
        ImmutableSet.Builder builder = ImmutableSet.builder();
        UnmodifiableIterator<ClassInfo> it = getTopLevelClasses().iterator();
        while (it.hasNext()) {
            ClassInfo next = it.next();
            if (next.getPackageName().equals(str)) {
                builder.add(next);
            }
        }
        return builder.build();
    }

    public ImmutableSet<ClassInfo> getTopLevelClassesRecursive(String str) {
        Preconditions.checkNotNull(str);
        String string = new StringBuilder(String.valueOf(str).length() + 1).append(str).append(".").toString();
        ImmutableSet.Builder builder = ImmutableSet.builder();
        UnmodifiableIterator<ClassInfo> it = getTopLevelClasses().iterator();
        while (it.hasNext()) {
            ClassInfo next = it.next();
            if (next.getName().startsWith(string)) {
                builder.add(next);
            }
        }
        return builder.build();
    }

    @Beta
    public static class ResourceInfo {
        final ClassLoader a;
        private final String b;

        static ResourceInfo a(String str, ClassLoader classLoader) {
            return str.endsWith(".class") ? new ClassInfo(str, classLoader) : new ResourceInfo(str, classLoader);
        }

        ResourceInfo(String str, ClassLoader classLoader) {
            this.b = (String) Preconditions.checkNotNull(str);
            this.a = (ClassLoader) Preconditions.checkNotNull(classLoader);
        }

        public final URL url() {
            URL resource = this.a.getResource(this.b);
            if (resource == null) {
                throw new NoSuchElementException(this.b);
            }
            return resource;
        }

        public final String getResourceName() {
            return this.b;
        }

        public int hashCode() {
            return this.b.hashCode();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ResourceInfo)) {
                return false;
            }
            ResourceInfo resourceInfo = (ResourceInfo) obj;
            return this.b.equals(resourceInfo.b) && this.a == resourceInfo.a;
        }

        public String toString() {
            return this.b;
        }
    }

    @Beta
    public static final class ClassInfo extends ResourceInfo {
        private final String b;

        ClassInfo(String str, ClassLoader classLoader) {
            super(str, classLoader);
            this.b = ClassPath.a(str);
        }

        public String getPackageName() {
            return Reflection.getPackageName(this.b);
        }

        public String getSimpleName() {
            int iLastIndexOf = this.b.lastIndexOf(36);
            if (iLastIndexOf != -1) {
                return CharMatcher.DIGIT.trimLeadingFrom(this.b.substring(iLastIndexOf + 1));
            }
            String packageName = getPackageName();
            if (packageName.isEmpty()) {
                return this.b;
            }
            return this.b.substring(packageName.length() + 1);
        }

        public String getName() {
            return this.b;
        }

        public Class<?> load() {
            try {
                return this.a.loadClass(this.b);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.reflect.ClassPath.ResourceInfo
        public String toString() {
            return this.b;
        }
    }

    static abstract class b {
        private final Set<File> a = Sets.newHashSet();

        protected abstract void a(ClassLoader classLoader, File file);

        protected abstract void a(ClassLoader classLoader, JarFile jarFile);

        b() {
        }

        public final void a(ClassLoader classLoader) {
            UnmodifiableIterator<Map.Entry<File, ClassLoader>> it = b(classLoader).entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<File, ClassLoader> next = it.next();
                a(next.getKey(), next.getValue());
            }
        }

        @VisibleForTesting
        final void a(File file, ClassLoader classLoader) {
            if (this.a.add(file.getCanonicalFile())) {
                b(file, classLoader);
            }
        }

        private void b(File file, ClassLoader classLoader) {
            if (file.exists()) {
                if (file.isDirectory()) {
                    a(classLoader, file);
                } else {
                    c(file, classLoader);
                }
            }
        }

        private void c(File file, ClassLoader classLoader) {
            try {
                JarFile jarFile = new JarFile(file);
                try {
                    UnmodifiableIterator<File> it = a(file, jarFile.getManifest()).iterator();
                    while (it.hasNext()) {
                        a(it.next(), classLoader);
                    }
                    a(classLoader, jarFile);
                } finally {
                    try {
                        jarFile.close();
                    } catch (IOException e) {
                    }
                }
            } catch (IOException e2) {
            }
        }

        @VisibleForTesting
        static ImmutableSet<File> a(File file, @Nullable Manifest manifest) {
            if (manifest == null) {
                return ImmutableSet.of();
            }
            ImmutableSet.Builder builder = ImmutableSet.builder();
            String value = manifest.getMainAttributes().getValue(Attributes.Name.CLASS_PATH.toString());
            if (value != null) {
                for (String str : ClassPath.c.split(value)) {
                    try {
                        URL urlA = a(file, str);
                        if (urlA.getProtocol().equals("file")) {
                            builder.add(new File(urlA.getFile()));
                        }
                    } catch (MalformedURLException e) {
                        Logger logger = ClassPath.a;
                        String strValueOf = String.valueOf(str);
                        logger.warning(strValueOf.length() != 0 ? "Invalid Class-Path entry: ".concat(strValueOf) : new String("Invalid Class-Path entry: "));
                    }
                }
            }
            return builder.build();
        }

        @VisibleForTesting
        static ImmutableMap<File, ClassLoader> b(ClassLoader classLoader) {
            LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
            ClassLoader parent = classLoader.getParent();
            if (parent != null) {
                linkedHashMapNewLinkedHashMap.putAll(b(parent));
            }
            if (classLoader instanceof URLClassLoader) {
                for (URL url : ((URLClassLoader) classLoader).getURLs()) {
                    if (url.getProtocol().equals("file")) {
                        File file = new File(url.getFile());
                        if (!linkedHashMapNewLinkedHashMap.containsKey(file)) {
                            linkedHashMapNewLinkedHashMap.put(file, classLoader);
                        }
                    }
                }
            }
            return ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
        }

        @VisibleForTesting
        static URL a(File file, String str) {
            return new URL(file.toURI().toURL(), str);
        }
    }

    @VisibleForTesting
    static final class a extends b {
        private final SetMultimap<ClassLoader, String> a = MultimapBuilder.hashKeys().linkedHashSetValues().build();

        a() {
        }

        ImmutableSet<ResourceInfo> a() {
            ImmutableSet.Builder builder = ImmutableSet.builder();
            for (Map.Entry<ClassLoader, String> entry : this.a.entries()) {
                builder.add(ResourceInfo.a(entry.getValue(), entry.getKey()));
            }
            return builder.build();
        }

        @Override // com.google.common.reflect.ClassPath.b
        protected void a(ClassLoader classLoader, JarFile jarFile) {
            Enumeration<JarEntry> enumerationEntries = jarFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                if (!jarEntryNextElement.isDirectory() && !jarEntryNextElement.getName().equals("META-INF/MANIFEST.MF")) {
                    this.a.get(classLoader).add(jarEntryNextElement.getName());
                }
            }
        }

        @Override // com.google.common.reflect.ClassPath.b
        protected void a(ClassLoader classLoader, File file) {
            a(file, classLoader, "");
        }

        private void a(File file, ClassLoader classLoader, String str) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                Logger logger = ClassPath.a;
                String strValueOf = String.valueOf(file);
                logger.warning(new StringBuilder(String.valueOf(strValueOf).length() + 22).append("Cannot read directory ").append(strValueOf).toString());
                return;
            }
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                if (file2.isDirectory()) {
                    a(file2, classLoader, new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(name).length()).append(str).append(name).append(URIUtil.SLASH).toString());
                } else {
                    String strValueOf2 = String.valueOf(str);
                    String strValueOf3 = String.valueOf(name);
                    String strConcat = strValueOf3.length() != 0 ? strValueOf2.concat(strValueOf3) : new String(strValueOf2);
                    if (!strConcat.equals("META-INF/MANIFEST.MF")) {
                        this.a.get(classLoader).add(strConcat);
                    }
                }
            }
        }
    }

    @VisibleForTesting
    static String a(String str) {
        return str.substring(0, str.length() - ".class".length()).replace('/', ClassUtils.PACKAGE_SEPARATOR_CHAR);
    }
}
