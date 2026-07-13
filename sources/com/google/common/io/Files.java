package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.TreeTraverser;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.jetty.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class Files {
    private static final TreeTraverser<File> a = new TreeTraverser<File>() { // from class: com.google.common.io.Files.2
        @Override // com.google.common.collect.TreeTraverser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Iterable<File> children(File file) {
            File[] fileArrListFiles;
            return (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) ? Collections.emptyList() : Collections.unmodifiableList(Arrays.asList(fileArrListFiles));
        }

        public String toString() {
            return "Files.fileTreeTraverser()";
        }
    };

    enum c implements Predicate<File> {
        IS_DIRECTORY { // from class: com.google.common.io.Files.c.1
            @Override // com.google.common.base.Predicate
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean apply(File file) {
                return file.isDirectory();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Files.isDirectory()";
            }
        },
        IS_FILE { // from class: com.google.common.io.Files.c.2
            @Override // com.google.common.base.Predicate
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean apply(File file) {
                return file.isFile();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Files.isFile()";
            }
        }
    }

    private Files() {
    }

    public static BufferedReader newReader(File file, Charset charset) {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
    }

    public static BufferedWriter newWriter(File file, Charset charset) {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset));
    }

    public static ByteSource asByteSource(File file) {
        return new b(file);
    }

    static final class b extends ByteSource {
        private final File a;

        private b(File file) {
            this.a = (File) Preconditions.checkNotNull(file);
        }

        @Override // com.google.common.io.ByteSource
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileInputStream openStream() {
            return new FileInputStream(this.a);
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            return this.a.isFile() ? Optional.of(Long.valueOf(this.a.length())) : Optional.absent();
        }

        @Override // com.google.common.io.ByteSource
        public long size() throws FileNotFoundException {
            if (!this.a.isFile()) {
                throw new FileNotFoundException(this.a.toString());
            }
            return this.a.length();
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: X */
        @Override // com.google.common.io.ByteSource
        public byte[] read() throws X {
            Closer closerCreate = Closer.create();
            try {
                try {
                    FileInputStream fileInputStream = (FileInputStream) closerCreate.register(openStream());
                    return Files.a(fileInputStream, fileInputStream.getChannel().size());
                } catch (Throwable th) {
                    throw closerCreate.rethrow(th);
                }
            } finally {
                closerCreate.close();
            }
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 20).append("Files.asByteSource(").append(strValueOf).append(")").toString();
        }
    }

    static byte[] a(InputStream inputStream, long j) {
        if (j > 2147483647L) {
            throw new OutOfMemoryError(new StringBuilder(68).append("file is too large to fit in a byte array: ").append(j).append(" bytes").toString());
        }
        if (j == 0) {
            return ByteStreams.toByteArray(inputStream);
        }
        return ByteStreams.a(inputStream, (int) j);
    }

    public static ByteSink asByteSink(File file, FileWriteMode... fileWriteModeArr) {
        return new a(file, fileWriteModeArr);
    }

    static final class a extends ByteSink {
        private final File a;
        private final ImmutableSet<FileWriteMode> b;

        private a(File file, FileWriteMode... fileWriteModeArr) {
            this.a = (File) Preconditions.checkNotNull(file);
            this.b = ImmutableSet.copyOf(fileWriteModeArr);
        }

        @Override // com.google.common.io.ByteSink
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileOutputStream openStream() {
            return new FileOutputStream(this.a, this.b.contains(FileWriteMode.APPEND));
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            return new StringBuilder(String.valueOf(strValueOf).length() + 20 + String.valueOf(strValueOf2).length()).append("Files.asByteSink(").append(strValueOf).append(", ").append(strValueOf2).append(")").toString();
        }
    }

    public static CharSource asCharSource(File file, Charset charset) {
        return asByteSource(file).asCharSource(charset);
    }

    public static CharSink asCharSink(File file, Charset charset, FileWriteMode... fileWriteModeArr) {
        return asByteSink(file, fileWriteModeArr).asCharSink(charset);
    }

    private static FileWriteMode[] a(boolean z) {
        return z ? new FileWriteMode[]{FileWriteMode.APPEND} : new FileWriteMode[0];
    }

    public static byte[] toByteArray(File file) {
        return asByteSource(file).read();
    }

    public static String toString(File file, Charset charset) {
        return asCharSource(file, charset).read();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public static void write(byte[] bArr, File file) throws X {
        asByteSink(file, new FileWriteMode[0]).write(bArr);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public static void copy(File file, OutputStream outputStream) throws X {
        asByteSource(file).copyTo(outputStream);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public static void copy(File file, File file2) throws X {
        Preconditions.checkArgument(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        asByteSource(file).copyTo(asByteSink(file2, new FileWriteMode[0]));
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public static void write(CharSequence charSequence, File file, Charset charset) throws X {
        asCharSink(file, charset, new FileWriteMode[0]).write(charSequence);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public static void append(CharSequence charSequence, File file, Charset charset) throws X {
        a(charSequence, file, charset, true);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    private static void a(CharSequence charSequence, File file, Charset charset, boolean z) throws X {
        asCharSink(file, charset, a(z)).write(charSequence);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public static void copy(File file, Charset charset, Appendable appendable) throws X {
        asCharSource(file, charset).copyTo(appendable);
    }

    public static boolean equal(File file, File file2) {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        if (file == file2 || file.equals(file2)) {
            return true;
        }
        long length = file.length();
        long length2 = file2.length();
        if (length != 0 && length2 != 0 && length != length2) {
            return false;
        }
        return asByteSource(file).contentEquals(asByteSource(file2));
    }

    public static File createTempDir() {
        File file = new File(System.getProperty("java.io.tmpdir"));
        String string = new StringBuilder(21).append(System.currentTimeMillis()).append("-").toString();
        for (int i = 0; i < 10000; i++) {
            File file2 = new File(file, new StringBuilder(String.valueOf(string).length() + 11).append(string).append(i).toString());
            if (file2.mkdir()) {
                return file2;
            }
        }
        String strValueOf = String.valueOf("Failed to create directory within 10000 attempts (tried ");
        throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 17 + String.valueOf(string).length() + String.valueOf(string).length()).append(strValueOf).append(string).append("0 to ").append(string).append(9999).append(")").toString());
    }

    public static void touch(File file) throws IOException {
        Preconditions.checkNotNull(file);
        if (!file.createNewFile() && !file.setLastModified(System.currentTimeMillis())) {
            String strValueOf = String.valueOf(file);
            throw new IOException(new StringBuilder(String.valueOf(strValueOf).length() + 38).append("Unable to update modification time of ").append(strValueOf).toString());
        }
    }

    public static void createParentDirs(File file) throws IOException {
        Preconditions.checkNotNull(file);
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                String strValueOf = String.valueOf(file);
                throw new IOException(new StringBuilder(String.valueOf(strValueOf).length() + 39).append("Unable to create parent directories of ").append(strValueOf).toString());
            }
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public static void move(File file, File file2) throws X, IOException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        Preconditions.checkArgument(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        if (!file.renameTo(file2)) {
            copy(file, file2);
            if (!file.delete()) {
                if (!file2.delete()) {
                    String strValueOf = String.valueOf(file2);
                    throw new IOException(new StringBuilder(String.valueOf(strValueOf).length() + 17).append("Unable to delete ").append(strValueOf).toString());
                }
                String strValueOf2 = String.valueOf(file);
                throw new IOException(new StringBuilder(String.valueOf(strValueOf2).length() + 17).append("Unable to delete ").append(strValueOf2).toString());
            }
        }
    }

    public static String readFirstLine(File file, Charset charset) {
        return asCharSource(file, charset).readFirstLine();
    }

    public static List<String> readLines(File file, Charset charset) {
        return (List) readLines(file, charset, new LineProcessor<List<String>>() { // from class: com.google.common.io.Files.1
            final List<String> a = Lists.newArrayList();

            @Override // com.google.common.io.LineProcessor
            public boolean processLine(String str) {
                this.a.add(str);
                return true;
            }

            @Override // com.google.common.io.LineProcessor
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public List<String> getResult() {
                return this.a;
            }
        });
    }

    public static <T> T readLines(File file, Charset charset, LineProcessor<T> lineProcessor) {
        return (T) asCharSource(file, charset).readLines(lineProcessor);
    }

    public static <T> T readBytes(File file, ByteProcessor<T> byteProcessor) {
        return (T) asByteSource(file).read(byteProcessor);
    }

    public static HashCode hash(File file, HashFunction hashFunction) {
        return asByteSource(file).hash(hashFunction);
    }

    public static MappedByteBuffer map(File file) {
        Preconditions.checkNotNull(file);
        return map(file, FileChannel.MapMode.READ_ONLY);
    }

    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode) throws FileNotFoundException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(mapMode);
        if (!file.exists()) {
            throw new FileNotFoundException(file.toString());
        }
        return map(file, mapMode, file.length());
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode, long j) throws X {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(mapMode);
        Closer closerCreate = Closer.create();
        try {
            try {
                return a((RandomAccessFile) closerCreate.register(new RandomAccessFile(file, mapMode == FileChannel.MapMode.READ_ONLY ? "r" : "rw")), mapMode, j);
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    private static MappedByteBuffer a(RandomAccessFile randomAccessFile, FileChannel.MapMode mapMode, long j) throws X {
        Closer closerCreate = Closer.create();
        try {
            try {
                return ((FileChannel) closerCreate.register(randomAccessFile.getChannel())).map(mapMode, 0L, j);
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    public static String simplifyPath(String str) {
        Preconditions.checkNotNull(str);
        if (str.length() == 0) {
            return ".";
        }
        Iterable<String> iterableSplit = Splitter.on('/').omitEmptyStrings().split(str);
        ArrayList arrayList = new ArrayList();
        for (String str2 : iterableSplit) {
            if (!str2.equals(".")) {
                if (str2.equals("..")) {
                    if (arrayList.size() > 0 && !((String) arrayList.get(arrayList.size() - 1)).equals("..")) {
                        arrayList.remove(arrayList.size() - 1);
                    } else {
                        arrayList.add("..");
                    }
                } else {
                    arrayList.add(str2);
                }
            }
        }
        String strJoin = Joiner.on('/').join(arrayList);
        if (str.charAt(0) == '/') {
            String strValueOf = String.valueOf(strJoin);
            strJoin = strValueOf.length() != 0 ? URIUtil.SLASH.concat(strValueOf) : new String(URIUtil.SLASH);
        }
        while (strJoin.startsWith("/../")) {
            strJoin = strJoin.substring(3);
        }
        if (strJoin.equals("/..")) {
            return URIUtil.SLASH;
        }
        if ("".equals(strJoin)) {
            return ".";
        }
        return strJoin;
    }

    public static String getFileExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf == -1 ? "" : name.substring(iLastIndexOf + 1);
    }

    public static String getNameWithoutExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf == -1 ? name : name.substring(0, iLastIndexOf);
    }

    public static TreeTraverser<File> fileTreeTraverser() {
        return a;
    }

    public static Predicate<File> isDirectory() {
        return c.IS_DIRECTORY;
    }

    public static Predicate<File> isFile() {
        return c.IS_FILE;
    }
}
