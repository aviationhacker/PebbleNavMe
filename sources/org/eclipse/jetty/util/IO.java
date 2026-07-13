package org.eclipse.jetty.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.thread.QueuedThreadPool;

/* JADX INFO: loaded from: classes.dex */
public class IO {
    public static final String CRLF = "\r\n";
    private static c b;
    private static a c;
    private static d d;
    private static PrintWriter e;
    private static final Logger a = Log.getLogger((Class<?>) IO.class);
    public static final byte[] CRLF_BYTES = {13, 10};
    public static int bufferSize = 65536;

    static {
        b = new c();
        c = new a();
        d = new d();
        e = new PrintWriter(d);
    }

    static class e {
        static final QueuedThreadPool a = new QueuedThreadPool();

        static {
            try {
                a.start();
            } catch (Exception e) {
                IO.a.warn(e);
                System.exit(1);
            }
        }
    }

    static class b implements Runnable {
        InputStream a;
        OutputStream b;
        Reader c;
        Writer d;

        b(InputStream inputStream, OutputStream outputStream) {
            this.a = inputStream;
            this.b = outputStream;
            this.c = null;
            this.d = null;
        }

        b(Reader reader, Writer writer) {
            this.a = null;
            this.b = null;
            this.c = reader;
            this.d = writer;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.a != null) {
                    IO.copy(this.a, this.b, -1L);
                } else {
                    IO.copy(this.c, this.d, -1L);
                }
            } catch (IOException e) {
                IO.a.ignore(e);
                try {
                    if (this.b != null) {
                        this.b.close();
                    }
                    if (this.d != null) {
                        this.d.close();
                    }
                } catch (IOException e2) {
                    IO.a.ignore(e2);
                }
            }
        }
    }

    public static void copyThread(InputStream inputStream, OutputStream outputStream) {
        try {
            b bVar = new b(inputStream, outputStream);
            if (!e.a.dispatch(bVar)) {
                bVar.run();
            }
        } catch (Exception e2) {
            a.warn(e2);
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        copy(inputStream, outputStream, -1L);
    }

    public static void copyThread(Reader reader, Writer writer) {
        try {
            b bVar = new b(reader, writer);
            if (!e.a.dispatch(bVar)) {
                bVar.run();
            }
        } catch (Exception e2) {
            a.warn(e2);
        }
    }

    public static void copy(Reader reader, Writer writer) throws IOException {
        copy(reader, writer, -1L);
    }

    public static void copy(InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        byte[] bArr = new byte[bufferSize];
        int i = bufferSize;
        if (j >= 0) {
            while (j > 0) {
                int i2 = inputStream.read(bArr, 0, j < ((long) bufferSize) ? (int) j : bufferSize);
                if (i2 != -1) {
                    j -= (long) i2;
                    outputStream.write(bArr, 0, i2);
                } else {
                    return;
                }
            }
            return;
        }
        while (true) {
            int i3 = inputStream.read(bArr, 0, bufferSize);
            if (i3 >= 0) {
                outputStream.write(bArr, 0, i3);
            } else {
                return;
            }
        }
    }

    public static void copy(Reader reader, Writer writer, long j) throws IOException {
        int i;
        int i2;
        char[] cArr = new char[bufferSize];
        int i3 = bufferSize;
        if (j < 0) {
            if (writer instanceof PrintWriter) {
                PrintWriter printWriter = (PrintWriter) writer;
                while (!printWriter.checkError() && (i = reader.read(cArr, 0, bufferSize)) != -1) {
                    writer.write(cArr, 0, i);
                }
                return;
            }
            while (true) {
                int i4 = reader.read(cArr, 0, bufferSize);
                if (i4 != -1) {
                    writer.write(cArr, 0, i4);
                } else {
                    return;
                }
            }
        } else {
            while (j > 0) {
                if (j < bufferSize) {
                    i2 = reader.read(cArr, 0, (int) j);
                } else {
                    i2 = reader.read(cArr, 0, bufferSize);
                }
                if (i2 != -1) {
                    j -= (long) i2;
                    writer.write(cArr, 0, i2);
                } else {
                    return;
                }
            }
        }
    }

    public static void copy(File file, File file2) throws IOException {
        if (file.isDirectory()) {
            copyDir(file, file2);
        } else {
            copyFile(file, file2);
        }
    }

    public static void copyDir(File file, File file2) {
        if (file2.exists()) {
            if (!file2.isDirectory()) {
                throw new IllegalArgumentException(file2.toString());
            }
        } else {
            file2.mkdirs();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (int i = 0; i < fileArrListFiles.length; i++) {
                String name = fileArrListFiles[i].getName();
                if (!".".equals(name) && !"..".equals(name)) {
                    copy(fileArrListFiles[i], new File(file2, name));
                }
            }
        }
    }

    public static void copyFile(File file, File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        copy(fileInputStream, fileOutputStream);
        fileInputStream.close();
        fileOutputStream.close();
    }

    public static String toString(InputStream inputStream) {
        return toString(inputStream, null);
    }

    public static String toString(InputStream inputStream, String str) throws IOException {
        StringWriter stringWriter = new StringWriter();
        copy(str == null ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str), stringWriter);
        return stringWriter.toString();
    }

    public static String toString(Reader reader) throws IOException {
        StringWriter stringWriter = new StringWriter();
        copy(reader, stringWriter);
        return stringWriter.toString();
    }

    public static boolean delete(File file) {
        if (!file.exists()) {
            return false;
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            for (int i = 0; fileArrListFiles != null && i < fileArrListFiles.length; i++) {
                delete(fileArrListFiles[i]);
            }
        }
        return file.delete();
    }

    public static void close(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                a.ignore(e2);
            }
        }
    }

    public static void close(Reader reader) {
        if (reader != null) {
            try {
                reader.close();
            } catch (IOException e2) {
                a.ignore(e2);
            }
        }
    }

    public static void close(Writer writer) {
        if (writer != null) {
            try {
                writer.close();
            } catch (IOException e2) {
                a.ignore(e2);
            }
        }
    }

    public static byte[] readBytes(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static void close(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e2) {
                a.ignore(e2);
            }
        }
    }

    public static OutputStream getNullStream() {
        return b;
    }

    public static InputStream getClosedStream() {
        return c;
    }

    static class c extends OutputStream {
        private c() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
        }

        @Override // java.io.OutputStream
        public void write(int i) {
        }
    }

    static class a extends InputStream {
        private a() {
        }

        @Override // java.io.InputStream
        public int read() {
            return -1;
        }
    }

    public static Writer getNullWriter() {
        return d;
    }

    public static PrintWriter getNullPrintWriter() {
        return e;
    }

    static class d extends Writer {
        private d() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr) {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
        }

        @Override // java.io.Writer
        public void write(int i) {
        }

        @Override // java.io.Writer
        public void write(String str) {
        }

        @Override // java.io.Writer
        public void write(String str, int i, int i2) {
        }
    }
}
