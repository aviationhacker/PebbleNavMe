package android.support.v4.content;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.support.v4.util.DebugUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class Loader<D> {
    int n;
    OnLoadCompleteListener<D> o;
    OnLoadCanceledListener<D> p;
    Context q;
    boolean r = false;
    boolean s = false;
    boolean t = true;
    boolean u = false;
    boolean v = false;

    public interface OnLoadCanceledListener<D> {
        void onLoadCanceled(Loader<D> loader);
    }

    public interface OnLoadCompleteListener<D> {
        void onLoadComplete(Loader<D> loader, D d);
    }

    public final class ForceLoadContentObserver extends ContentObserver {
        public ForceLoadContentObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            Loader.this.onContentChanged();
        }
    }

    public Loader(Context context) {
        this.q = context.getApplicationContext();
    }

    public void deliverResult(D d) {
        if (this.o != null) {
            this.o.onLoadComplete(this, d);
        }
    }

    public void deliverCancellation() {
        if (this.p != null) {
            this.p.onLoadCanceled(this);
        }
    }

    public Context getContext() {
        return this.q;
    }

    public int getId() {
        return this.n;
    }

    public void registerListener(int i, OnLoadCompleteListener<D> onLoadCompleteListener) {
        if (this.o != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.o = onLoadCompleteListener;
        this.n = i;
    }

    public void unregisterListener(OnLoadCompleteListener<D> onLoadCompleteListener) {
        if (this.o == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.o != onLoadCompleteListener) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.o = null;
    }

    public void registerOnLoadCanceledListener(OnLoadCanceledListener<D> onLoadCanceledListener) {
        if (this.p != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.p = onLoadCanceledListener;
    }

    public void unregisterOnLoadCanceledListener(OnLoadCanceledListener<D> onLoadCanceledListener) {
        if (this.p == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.p != onLoadCanceledListener) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.p = null;
    }

    public boolean isStarted() {
        return this.r;
    }

    public boolean isAbandoned() {
        return this.s;
    }

    public boolean isReset() {
        return this.t;
    }

    public final void startLoading() {
        this.r = true;
        this.t = false;
        this.s = false;
        onStartLoading();
    }

    protected void onStartLoading() {
    }

    public boolean cancelLoad() {
        return onCancelLoad();
    }

    protected boolean onCancelLoad() {
        return false;
    }

    public void forceLoad() {
        onForceLoad();
    }

    protected void onForceLoad() {
    }

    public void stopLoading() {
        this.r = false;
        onStopLoading();
    }

    protected void onStopLoading() {
    }

    public void abandon() {
        this.s = true;
        onAbandon();
    }

    protected void onAbandon() {
    }

    public void reset() {
        onReset();
        this.t = true;
        this.r = false;
        this.s = false;
        this.u = false;
        this.v = false;
    }

    protected void onReset() {
    }

    public boolean takeContentChanged() {
        boolean z = this.u;
        this.u = false;
        this.v |= z;
        return z;
    }

    public void commitContentChanged() {
        this.v = false;
    }

    public void rollbackContentChanged() {
        if (this.v) {
            this.u = true;
        }
    }

    public void onContentChanged() {
        if (this.r) {
            forceLoad();
        } else {
            this.u = true;
        }
    }

    public String dataToString(D d) {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.buildShortClassTag(d, sb);
        sb.append("}");
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.buildShortClassTag(this, sb);
        sb.append(" id=");
        sb.append(this.n);
        sb.append("}");
        return sb.toString();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.n);
        printWriter.print(" mListener=");
        printWriter.println(this.o);
        if (this.r || this.u || this.v) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.r);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.u);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.v);
        }
        if (this.s || this.t) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.s);
            printWriter.print(" mReset=");
            printWriter.println(this.t);
        }
    }
}
