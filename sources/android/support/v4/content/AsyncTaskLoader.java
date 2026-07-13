package android.support.v4.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.os.OperationCanceledException;
import android.support.v4.util.TimeUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class AsyncTaskLoader<D> extends Loader<D> {
    volatile AsyncTaskLoader<D>.a a;
    volatile AsyncTaskLoader<D>.a b;
    long c;
    long d;
    Handler e;
    private final Executor f;

    public abstract D loadInBackground();

    final class a extends ModernAsyncTask<Void, Void, D> implements Runnable {
        boolean a;
        private final CountDownLatch d = new CountDownLatch(1);

        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.content.ModernAsyncTask
        public D a(Void... voidArr) {
            try {
                return (D) AsyncTaskLoader.this.onLoadInBackground();
            } catch (OperationCanceledException e) {
                if (!d()) {
                    throw e;
                }
                return null;
            }
        }

        @Override // android.support.v4.content.ModernAsyncTask
        protected void a(D d) {
            try {
                AsyncTaskLoader.this.b(this, d);
            } finally {
                this.d.countDown();
            }
        }

        @Override // android.support.v4.content.ModernAsyncTask
        protected void b(D d) {
            try {
                AsyncTaskLoader.this.a(this, d);
            } finally {
                this.d.countDown();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a = false;
            AsyncTaskLoader.this.a();
        }

        public void a() {
            try {
                this.d.await();
            } catch (InterruptedException e) {
            }
        }
    }

    public AsyncTaskLoader(Context context) {
        this(context, ModernAsyncTask.c);
    }

    private AsyncTaskLoader(Context context, Executor executor) {
        super(context);
        this.d = -10000L;
        this.f = executor;
    }

    public void setUpdateThrottle(long j) {
        this.c = j;
        if (j != 0) {
            this.e = new Handler();
        }
    }

    @Override // android.support.v4.content.Loader
    protected void onForceLoad() {
        super.onForceLoad();
        cancelLoad();
        this.a = new a();
        a();
    }

    @Override // android.support.v4.content.Loader
    protected boolean onCancelLoad() {
        boolean zA = false;
        if (this.a != null) {
            if (this.b != null) {
                if (this.a.a) {
                    this.a.a = false;
                    this.e.removeCallbacks(this.a);
                }
                this.a = null;
            } else if (this.a.a) {
                this.a.a = false;
                this.e.removeCallbacks(this.a);
                this.a = null;
            } else {
                zA = this.a.a(false);
                if (zA) {
                    this.b = this.a;
                    cancelLoadInBackground();
                }
                this.a = null;
            }
        }
        return zA;
    }

    public void onCanceled(D d) {
    }

    void a() {
        if (this.b == null && this.a != null) {
            if (this.a.a) {
                this.a.a = false;
                this.e.removeCallbacks(this.a);
            }
            if (this.c > 0 && SystemClock.uptimeMillis() < this.d + this.c) {
                this.a.a = true;
                this.e.postAtTime(this.a, this.d + this.c);
            } else {
                this.a.a(this.f, (Void[]) null);
            }
        }
    }

    void a(AsyncTaskLoader<D>.a aVar, D d) {
        onCanceled(d);
        if (this.b == aVar) {
            rollbackContentChanged();
            this.d = SystemClock.uptimeMillis();
            this.b = null;
            deliverCancellation();
            a();
        }
    }

    void b(AsyncTaskLoader<D>.a aVar, D d) {
        if (this.a != aVar) {
            a(aVar, d);
            return;
        }
        if (isAbandoned()) {
            onCanceled(d);
            return;
        }
        commitContentChanged();
        this.d = SystemClock.uptimeMillis();
        this.a = null;
        deliverResult(d);
    }

    protected D onLoadInBackground() {
        return loadInBackground();
    }

    public void cancelLoadInBackground() {
    }

    public boolean isLoadInBackgroundCanceled() {
        return this.b != null;
    }

    public void waitForLoader() {
        AsyncTaskLoader<D>.a aVar = this.a;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // android.support.v4.content.Loader
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (this.a != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.a);
            printWriter.print(" waiting=");
            printWriter.println(this.a.a);
        }
        if (this.b != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.b);
            printWriter.print(" waiting=");
            printWriter.println(this.b.a);
        }
        if (this.c != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            TimeUtils.formatDuration(this.c, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            TimeUtils.formatDuration(this.d, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }
}
