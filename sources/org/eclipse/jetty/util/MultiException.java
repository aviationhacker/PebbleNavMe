package org.eclipse.jetty.util;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MultiException extends Exception {
    private Object a;

    public MultiException() {
        super("Multiple exceptions");
    }

    public void add(Throwable th) {
        if (th instanceof MultiException) {
            MultiException multiException = (MultiException) th;
            for (int i = 0; i < LazyList.size(multiException.a); i++) {
                this.a = LazyList.add(this.a, LazyList.get(multiException.a, i));
            }
            return;
        }
        this.a = LazyList.add(this.a, th);
    }

    public int size() {
        return LazyList.size(this.a);
    }

    public List<Throwable> getThrowables() {
        return LazyList.getList(this.a);
    }

    public Throwable getThrowable(int i) {
        return (Throwable) LazyList.get(this.a, i);
    }

    public void ifExceptionThrow() throws Exception {
        switch (LazyList.size(this.a)) {
            case 0:
                return;
            case 1:
                Throwable th = (Throwable) LazyList.get(this.a, 0);
                if (th instanceof Error) {
                    throw ((Error) th);
                }
                if (th instanceof Exception) {
                    throw ((Exception) th);
                }
                throw this;
            default:
                throw this;
        }
    }

    public void ifExceptionThrowRuntime() {
        switch (LazyList.size(this.a)) {
            case 0:
                return;
            case 1:
                Throwable th = (Throwable) LazyList.get(this.a, 0);
                if (th instanceof Error) {
                    throw ((Error) th);
                }
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                throw new RuntimeException(th);
            default:
                throw new RuntimeException(this);
        }
    }

    public void ifExceptionThrowMulti() throws MultiException {
        if (LazyList.size(this.a) > 0) {
            throw this;
        }
    }

    @Override // java.lang.Throwable
    public String toString() {
        return LazyList.size(this.a) > 0 ? MultiException.class.getSimpleName() + LazyList.getList(this.a) : MultiException.class.getSimpleName() + "[]";
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        super.printStackTrace();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < LazyList.size(this.a)) {
                ((Throwable) LazyList.get(this.a, i2)).printStackTrace();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < LazyList.size(this.a)) {
                ((Throwable) LazyList.get(this.a, i2)).printStackTrace(printStream);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < LazyList.size(this.a)) {
                ((Throwable) LazyList.get(this.a, i2)).printStackTrace(printWriter);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }
}
