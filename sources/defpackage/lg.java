package defpackage;

import com.google.common.base.Preconditions;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class lg extends Writer {
    private final Appendable a;
    private boolean b;

    public lg(Appendable appendable) {
        this.a = (Appendable) Preconditions.checkNotNull(appendable);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        a();
        this.a.append(new String(cArr, i, i2));
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        a();
        if (this.a instanceof Flushable) {
            ((Flushable) this.a).flush();
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.b = true;
        if (this.a instanceof Closeable) {
            ((Closeable) this.a).close();
        }
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        a();
        this.a.append((char) i);
    }

    @Override // java.io.Writer
    public void write(@Nullable String str) throws IOException {
        a();
        this.a.append(str);
    }

    @Override // java.io.Writer
    public void write(@Nullable String str, int i, int i2) throws IOException {
        a();
        this.a.append(str, i, i + i2);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws IOException {
        a();
        this.a.append(c);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(@Nullable CharSequence charSequence) throws IOException {
        a();
        this.a.append(charSequence);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(@Nullable CharSequence charSequence, int i, int i2) throws IOException {
        a();
        this.a.append(charSequence, i, i2);
        return this;
    }

    private void a() throws IOException {
        if (this.b) {
            throw new IOException("Cannot write to a closed writer.");
        }
    }
}
