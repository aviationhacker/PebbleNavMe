package org.eclipse.jetty.io;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class UncheckedPrintWriter extends PrintWriter {
    private static final Logger a = Log.getLogger((Class<?>) UncheckedPrintWriter.class);
    private boolean b;
    private IOException c;
    private boolean d;
    private String e;

    public UncheckedPrintWriter(Writer writer) {
        this(writer, false);
    }

    public UncheckedPrintWriter(Writer writer, boolean z) {
        super(writer, z);
        this.b = false;
        this.d = false;
        this.b = z;
        this.e = System.getProperty("line.separator");
    }

    public UncheckedPrintWriter(OutputStream outputStream) {
        this(outputStream, false);
    }

    public UncheckedPrintWriter(OutputStream outputStream, boolean z) {
        this(new BufferedWriter(new OutputStreamWriter(outputStream)), z);
    }

    @Override // java.io.PrintWriter
    public boolean checkError() {
        return this.c != null || super.checkError();
    }

    private void a(Throwable th) {
        super.setError();
        if (th instanceof IOException) {
            this.c = (IOException) th;
        } else {
            this.c = new IOException(String.valueOf(th));
            this.c.initCause(th);
        }
        a.debug(th);
    }

    @Override // java.io.PrintWriter
    protected void setError() {
        a(new IOException());
    }

    private void a() throws IOException {
        if (this.c != null) {
            throw new RuntimeIOException(this.c);
        }
        if (this.d) {
            throw new IOException("Stream closed");
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.io.Flushable
    public void flush() {
        try {
            synchronized (this.lock) {
                a();
                this.out.flush();
            }
        } catch (IOException e) {
            a(e);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            synchronized (this.lock) {
                this.out.close();
                this.d = true;
            }
        } catch (IOException e) {
            a(e);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(int i) {
        try {
            synchronized (this.lock) {
                a();
                this.out.write(i);
            }
        } catch (InterruptedIOException e) {
            Thread.currentThread().interrupt();
        } catch (IOException e2) {
            a(e2);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        try {
            synchronized (this.lock) {
                a();
                this.out.write(cArr, i, i2);
            }
        } catch (InterruptedIOException e) {
            Thread.currentThread().interrupt();
        } catch (IOException e2) {
            a(e2);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(char[] cArr) {
        write(cArr, 0, cArr.length);
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str, int i, int i2) {
        try {
            synchronized (this.lock) {
                a();
                this.out.write(str, i, i2);
            }
        } catch (InterruptedIOException e) {
            Thread.currentThread().interrupt();
        } catch (IOException e2) {
            a(e2);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str) {
        write(str, 0, str.length());
    }

    private void b() {
        try {
            synchronized (this.lock) {
                a();
                this.out.write(this.e);
                if (this.b) {
                    this.out.flush();
                }
            }
        } catch (InterruptedIOException e) {
            Thread.currentThread().interrupt();
        } catch (IOException e2) {
            a(e2);
        }
    }

    @Override // java.io.PrintWriter
    public void print(boolean z) {
        write(z ? "true" : "false");
    }

    @Override // java.io.PrintWriter
    public void print(char c) {
        write(c);
    }

    @Override // java.io.PrintWriter
    public void print(int i) {
        write(String.valueOf(i));
    }

    @Override // java.io.PrintWriter
    public void print(long j) {
        write(String.valueOf(j));
    }

    @Override // java.io.PrintWriter
    public void print(float f) {
        write(String.valueOf(f));
    }

    @Override // java.io.PrintWriter
    public void print(double d) {
        write(String.valueOf(d));
    }

    @Override // java.io.PrintWriter
    public void print(char[] cArr) {
        write(cArr);
    }

    @Override // java.io.PrintWriter
    public void print(String str) {
        if (str == null) {
            str = "null";
        }
        write(str);
    }

    @Override // java.io.PrintWriter
    public void print(Object obj) {
        write(String.valueOf(obj));
    }

    @Override // java.io.PrintWriter
    public void println() {
        b();
    }

    @Override // java.io.PrintWriter
    public void println(boolean z) {
        synchronized (this.lock) {
            print(z);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(char c) {
        synchronized (this.lock) {
            print(c);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(int i) {
        synchronized (this.lock) {
            print(i);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(long j) {
        synchronized (this.lock) {
            print(j);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(float f) {
        synchronized (this.lock) {
            print(f);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(double d) {
        synchronized (this.lock) {
            print(d);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(char[] cArr) {
        synchronized (this.lock) {
            print(cArr);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(String str) {
        synchronized (this.lock) {
            print(str);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(Object obj) {
        synchronized (this.lock) {
            print(obj);
            println();
        }
    }
}
