package defpackage;

import android.os.Bundle;
import android.support.v4.app.FragmentHostCallback;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SparseArrayCompat;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes.dex */
public class x extends LoaderManager {
    public static boolean a = false;
    final SparseArrayCompat<a> b = new SparseArrayCompat<>();
    final SparseArrayCompat<a> c = new SparseArrayCompat<>();
    public final String d;
    public boolean e;
    public boolean f;
    boolean g;
    private FragmentHostCallback h;

    final class a implements Loader.OnLoadCanceledListener<Object>, Loader.OnLoadCompleteListener<Object> {
        final int a;
        final Bundle b;
        LoaderManager.LoaderCallbacks<Object> c;
        Loader<Object> d;
        boolean e;
        boolean f;
        Object g;
        boolean h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        boolean m;
        a n;

        public a(int i, Bundle bundle, LoaderManager.LoaderCallbacks<Object> loaderCallbacks) {
            this.a = i;
            this.b = bundle;
            this.c = loaderCallbacks;
        }

        void a() {
            if (this.i && this.j) {
                this.h = true;
                return;
            }
            if (!this.h) {
                this.h = true;
                if (x.a) {
                    Log.v("LoaderManager", "  Starting: " + this);
                }
                if (this.d == null && this.c != null) {
                    this.d = this.c.onCreateLoader(this.a, this.b);
                }
                if (this.d != null) {
                    if (this.d.getClass().isMemberClass() && !Modifier.isStatic(this.d.getClass().getModifiers())) {
                        throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.d);
                    }
                    if (!this.m) {
                        this.d.registerListener(this.a, this);
                        this.d.registerOnLoadCanceledListener(this);
                        this.m = true;
                    }
                    this.d.startLoading();
                }
            }
        }

        void b() {
            if (x.a) {
                Log.v("LoaderManager", "  Retaining: " + this);
            }
            this.i = true;
            this.j = this.h;
            this.h = false;
            this.c = null;
        }

        void c() {
            if (this.i) {
                if (x.a) {
                    Log.v("LoaderManager", "  Finished Retaining: " + this);
                }
                this.i = false;
                if (this.h != this.j && !this.h) {
                    e();
                }
            }
            if (this.h && this.e && !this.k) {
                a(this.d, this.g);
            }
        }

        void d() {
            if (this.h && this.k) {
                this.k = false;
                if (this.e) {
                    a(this.d, this.g);
                }
            }
        }

        void e() {
            if (x.a) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.h = false;
            if (!this.i && this.d != null && this.m) {
                this.m = false;
                this.d.unregisterListener(this);
                this.d.unregisterOnLoadCanceledListener(this);
                this.d.stopLoading();
            }
        }

        void f() {
            if (x.a) {
                Log.v("LoaderManager", "  Canceling: " + this);
            }
            if (this.h && this.d != null && this.m && !this.d.cancelLoad()) {
                onLoadCanceled(this.d);
            }
        }

        void g() {
            String str;
            if (x.a) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.l = true;
            boolean z = this.f;
            this.f = false;
            if (this.c != null && this.d != null && this.e && z) {
                if (x.a) {
                    Log.v("LoaderManager", "  Reseting: " + this);
                }
                if (x.this.h != null) {
                    String str2 = x.this.h.d.u;
                    x.this.h.d.u = "onLoaderReset";
                    str = str2;
                } else {
                    str = null;
                }
                try {
                    this.c.onLoaderReset(this.d);
                } finally {
                    if (x.this.h != null) {
                        x.this.h.d.u = str;
                    }
                }
            }
            this.c = null;
            this.g = null;
            this.e = false;
            if (this.d != null) {
                if (this.m) {
                    this.m = false;
                    this.d.unregisterListener(this);
                    this.d.unregisterOnLoadCanceledListener(this);
                }
                this.d.reset();
            }
            if (this.n != null) {
                this.n.g();
            }
        }

        @Override // android.support.v4.content.Loader.OnLoadCanceledListener
        public void onLoadCanceled(Loader<Object> loader) {
            if (x.a) {
                Log.v("LoaderManager", "onLoadCanceled: " + this);
            }
            if (this.l) {
                if (x.a) {
                    Log.v("LoaderManager", "  Ignoring load canceled -- destroyed");
                }
            } else {
                if (x.this.b.get(this.a) != this) {
                    if (x.a) {
                        Log.v("LoaderManager", "  Ignoring load canceled -- not active");
                        return;
                    }
                    return;
                }
                a aVar = this.n;
                if (aVar != null) {
                    if (x.a) {
                        Log.v("LoaderManager", "  Switching to pending loader: " + aVar);
                    }
                    this.n = null;
                    x.this.b.put(this.a, null);
                    g();
                    x.this.a(aVar);
                }
            }
        }

        @Override // android.support.v4.content.Loader.OnLoadCompleteListener
        public void onLoadComplete(Loader<Object> loader, Object obj) {
            if (x.a) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (this.l) {
                if (x.a) {
                    Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
                    return;
                }
                return;
            }
            if (x.this.b.get(this.a) != this) {
                if (x.a) {
                    Log.v("LoaderManager", "  Ignoring load complete -- not active");
                    return;
                }
                return;
            }
            a aVar = this.n;
            if (aVar != null) {
                if (x.a) {
                    Log.v("LoaderManager", "  Switching to pending loader: " + aVar);
                }
                this.n = null;
                x.this.b.put(this.a, null);
                g();
                x.this.a(aVar);
                return;
            }
            if (this.g != obj || !this.e) {
                this.g = obj;
                this.e = true;
                if (this.h) {
                    a(loader, obj);
                }
            }
            a aVar2 = x.this.c.get(this.a);
            if (aVar2 != null && aVar2 != this) {
                aVar2.f = false;
                aVar2.g();
                x.this.c.remove(this.a);
            }
            if (x.this.h != null && !x.this.hasRunningLoaders()) {
                x.this.h.d.a();
            }
        }

        void a(Loader<Object> loader, Object obj) {
            String str;
            if (this.c != null) {
                if (x.this.h != null) {
                    String str2 = x.this.h.d.u;
                    x.this.h.d.u = "onLoadFinished";
                    str = str2;
                } else {
                    str = null;
                }
                try {
                    if (x.a) {
                        Log.v("LoaderManager", "  onLoadFinished in " + loader + ": " + loader.dataToString(obj));
                    }
                    this.c.onLoadFinished(loader, obj);
                    this.f = true;
                } finally {
                    if (x.this.h != null) {
                        x.this.h.d.u = str;
                    }
                }
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.a);
            sb.append(" : ");
            DebugUtils.buildShortClassTag(this.d, sb);
            sb.append("}}");
            return sb.toString();
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.a);
            printWriter.print(" mArgs=");
            printWriter.println(this.b);
            printWriter.print(str);
            printWriter.print("mCallbacks=");
            printWriter.println(this.c);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.d);
            if (this.d != null) {
                this.d.dump(str + "  ", fileDescriptor, printWriter, strArr);
            }
            if (this.e || this.f) {
                printWriter.print(str);
                printWriter.print("mHaveData=");
                printWriter.print(this.e);
                printWriter.print("  mDeliveredData=");
                printWriter.println(this.f);
                printWriter.print(str);
                printWriter.print("mData=");
                printWriter.println(this.g);
            }
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.h);
            printWriter.print(" mReportNextStart=");
            printWriter.print(this.k);
            printWriter.print(" mDestroyed=");
            printWriter.println(this.l);
            printWriter.print(str);
            printWriter.print("mRetaining=");
            printWriter.print(this.i);
            printWriter.print(" mRetainingStarted=");
            printWriter.print(this.j);
            printWriter.print(" mListenerRegistered=");
            printWriter.println(this.m);
            if (this.n != null) {
                printWriter.print(str);
                printWriter.println("Pending Loader ");
                printWriter.print(this.n);
                printWriter.println(":");
                this.n.a(str + "  ", fileDescriptor, printWriter, strArr);
            }
        }
    }

    public x(String str, FragmentHostCallback fragmentHostCallback, boolean z) {
        this.d = str;
        this.h = fragmentHostCallback;
        this.e = z;
    }

    public void a(FragmentHostCallback fragmentHostCallback) {
        this.h = fragmentHostCallback;
    }

    private a a(int i, Bundle bundle, LoaderManager.LoaderCallbacks<Object> loaderCallbacks) {
        a aVar = new a(i, bundle, loaderCallbacks);
        aVar.d = loaderCallbacks.onCreateLoader(i, bundle);
        return aVar;
    }

    private a b(int i, Bundle bundle, LoaderManager.LoaderCallbacks<Object> loaderCallbacks) {
        try {
            this.g = true;
            a aVarA = a(i, bundle, loaderCallbacks);
            a(aVarA);
            return aVarA;
        } finally {
            this.g = false;
        }
    }

    void a(a aVar) {
        this.b.put(aVar.a, aVar);
        if (this.e) {
            aVar.a();
        }
    }

    @Override // android.support.v4.app.LoaderManager
    public <D> Loader<D> initLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.g) {
            throw new IllegalStateException("Called while creating a loader");
        }
        a aVarB = this.b.get(i);
        if (a) {
            Log.v("LoaderManager", "initLoader in " + this + ": args=" + bundle);
        }
        if (aVarB == null) {
            aVarB = b(i, bundle, loaderCallbacks);
            if (a) {
                Log.v("LoaderManager", "  Created new loader " + aVarB);
            }
        } else {
            if (a) {
                Log.v("LoaderManager", "  Re-using existing loader " + aVarB);
            }
            aVarB.c = loaderCallbacks;
        }
        if (aVarB.e && this.e) {
            aVarB.a(aVarB.d, aVarB.g);
        }
        return (Loader<D>) aVarB.d;
    }

    @Override // android.support.v4.app.LoaderManager
    public <D> Loader<D> restartLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.g) {
            throw new IllegalStateException("Called while creating a loader");
        }
        a aVar = this.b.get(i);
        if (a) {
            Log.v("LoaderManager", "restartLoader in " + this + ": args=" + bundle);
        }
        if (aVar != null) {
            a aVar2 = this.c.get(i);
            if (aVar2 != null) {
                if (aVar.e) {
                    if (a) {
                        Log.v("LoaderManager", "  Removing last inactive loader: " + aVar);
                    }
                    aVar2.f = false;
                    aVar2.g();
                    aVar.d.abandon();
                    this.c.put(i, aVar);
                } else if (!aVar.h) {
                    if (a) {
                        Log.v("LoaderManager", "  Current loader is stopped; replacing");
                    }
                    this.b.put(i, null);
                    aVar.g();
                } else {
                    if (a) {
                        Log.v("LoaderManager", "  Current loader is running; attempting to cancel");
                    }
                    aVar.f();
                    if (aVar.n != null) {
                        if (a) {
                            Log.v("LoaderManager", "  Removing pending loader: " + aVar.n);
                        }
                        aVar.n.g();
                        aVar.n = null;
                    }
                    if (a) {
                        Log.v("LoaderManager", "  Enqueuing as new pending loader");
                    }
                    aVar.n = a(i, bundle, loaderCallbacks);
                    return (Loader<D>) aVar.n.d;
                }
            } else {
                if (a) {
                    Log.v("LoaderManager", "  Making last loader inactive: " + aVar);
                }
                aVar.d.abandon();
                this.c.put(i, aVar);
            }
        }
        return (Loader<D>) b(i, bundle, loaderCallbacks).d;
    }

    @Override // android.support.v4.app.LoaderManager
    public void destroyLoader(int i) {
        if (this.g) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (a) {
            Log.v("LoaderManager", "destroyLoader in " + this + " of " + i);
        }
        int iIndexOfKey = this.b.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            a aVarValueAt = this.b.valueAt(iIndexOfKey);
            this.b.removeAt(iIndexOfKey);
            aVarValueAt.g();
        }
        int iIndexOfKey2 = this.c.indexOfKey(i);
        if (iIndexOfKey2 >= 0) {
            a aVarValueAt2 = this.c.valueAt(iIndexOfKey2);
            this.c.removeAt(iIndexOfKey2);
            aVarValueAt2.g();
        }
        if (this.h != null && !hasRunningLoaders()) {
            this.h.d.a();
        }
    }

    @Override // android.support.v4.app.LoaderManager
    public <D> Loader<D> getLoader(int i) {
        if (this.g) {
            throw new IllegalStateException("Called while creating a loader");
        }
        a aVar = this.b.get(i);
        if (aVar != null) {
            if (aVar.n != null) {
                return (Loader<D>) aVar.n.d;
            }
            return (Loader<D>) aVar.d;
        }
        return null;
    }

    public void a() {
        if (a) {
            Log.v("LoaderManager", "Starting in " + this);
        }
        if (this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStart when already started: " + this, runtimeException);
        } else {
            this.e = true;
            for (int size = this.b.size() - 1; size >= 0; size--) {
                this.b.valueAt(size).a();
            }
        }
    }

    public void b() {
        if (a) {
            Log.v("LoaderManager", "Stopping in " + this);
        }
        if (!this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStop when not started: " + this, runtimeException);
        } else {
            for (int size = this.b.size() - 1; size >= 0; size--) {
                this.b.valueAt(size).e();
            }
            this.e = false;
        }
    }

    public void c() {
        if (a) {
            Log.v("LoaderManager", "Retaining in " + this);
        }
        if (!this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doRetain when not started: " + this, runtimeException);
        } else {
            this.f = true;
            this.e = false;
            for (int size = this.b.size() - 1; size >= 0; size--) {
                this.b.valueAt(size).b();
            }
        }
    }

    public void d() {
        if (this.f) {
            if (a) {
                Log.v("LoaderManager", "Finished Retaining in " + this);
            }
            this.f = false;
            for (int size = this.b.size() - 1; size >= 0; size--) {
                this.b.valueAt(size).c();
            }
        }
    }

    public void e() {
        for (int size = this.b.size() - 1; size >= 0; size--) {
            this.b.valueAt(size).k = true;
        }
    }

    public void f() {
        for (int size = this.b.size() - 1; size >= 0; size--) {
            this.b.valueAt(size).d();
        }
    }

    public void g() {
        if (!this.f) {
            if (a) {
                Log.v("LoaderManager", "Destroying Active in " + this);
            }
            for (int size = this.b.size() - 1; size >= 0; size--) {
                this.b.valueAt(size).g();
            }
            this.b.clear();
        }
        if (a) {
            Log.v("LoaderManager", "Destroying Inactive in " + this);
        }
        for (int size2 = this.c.size() - 1; size2 >= 0; size2--) {
            this.c.valueAt(size2).g();
        }
        this.c.clear();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.buildShortClassTag(this.h, sb);
        sb.append("}}");
        return sb.toString();
    }

    @Override // android.support.v4.app.LoaderManager
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.b.size() > 0) {
            printWriter.print(str);
            printWriter.println("Active Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < this.b.size(); i++) {
                a aVarValueAt = this.b.valueAt(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.b.keyAt(i));
                printWriter.print(": ");
                printWriter.println(aVarValueAt.toString());
                aVarValueAt.a(str2, fileDescriptor, printWriter, strArr);
            }
        }
        if (this.c.size() > 0) {
            printWriter.print(str);
            printWriter.println("Inactive Loaders:");
            String str3 = str + "    ";
            for (int i2 = 0; i2 < this.c.size(); i2++) {
                a aVarValueAt2 = this.c.valueAt(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.c.keyAt(i2));
                printWriter.print(": ");
                printWriter.println(aVarValueAt2.toString());
                aVarValueAt2.a(str3, fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // android.support.v4.app.LoaderManager
    public boolean hasRunningLoaders() {
        int size = this.b.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            a aVarValueAt = this.b.valueAt(i);
            z |= aVarValueAt.h && !aVarValueAt.f;
        }
        return z;
    }
}
