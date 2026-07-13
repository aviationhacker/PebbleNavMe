package android.support.v4.os;

import android.os.Build;
import defpackage.by;

/* JADX INFO: loaded from: classes.dex */
public final class CancellationSignal {
    private boolean a;
    private OnCancelListener b;
    private Object c;
    private boolean d;

    public interface OnCancelListener {
        void onCancel();
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this) {
            z = this.a;
        }
        return z;
    }

    public void throwIfCanceled() {
        if (isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    public void cancel() {
        synchronized (this) {
            if (!this.a) {
                this.a = true;
                this.d = true;
                OnCancelListener onCancelListener = this.b;
                Object obj = this.c;
                if (onCancelListener != null) {
                    try {
                        onCancelListener.onCancel();
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.d = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                if (obj != null) {
                    by.a(obj);
                }
                synchronized (this) {
                    this.d = false;
                    notifyAll();
                }
            }
        }
    }

    public void setOnCancelListener(OnCancelListener onCancelListener) {
        synchronized (this) {
            a();
            if (this.b != onCancelListener) {
                this.b = onCancelListener;
                if (this.a && onCancelListener != null) {
                    onCancelListener.onCancel();
                }
            }
        }
    }

    public Object getCancellationSignalObject() {
        Object obj;
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        synchronized (this) {
            if (this.c == null) {
                this.c = by.a();
                if (this.a) {
                    by.a(this.c);
                }
            }
            obj = this.c;
        }
        return obj;
    }

    private void a() {
        while (this.d) {
            try {
                wait();
            } catch (InterruptedException e) {
            }
        }
    }
}
