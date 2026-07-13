package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.view.LayoutInflater;
import android.view.View;
import defpackage.w;
import defpackage.x;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class FragmentHostCallback<E> extends FragmentContainer {
    private final Activity a;
    final Context b;
    final int c;
    public final w d;
    private final Handler e;
    private SimpleArrayMap<String, LoaderManager> f;
    private x g;
    private boolean h;
    private boolean i;

    @Nullable
    public abstract E onGetHost();

    public FragmentHostCallback(Context context, Handler handler, int i) {
        this(null, context, handler, i);
    }

    FragmentHostCallback(FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, fragmentActivity.a, 0);
    }

    FragmentHostCallback(Activity activity, Context context, Handler handler, int i) {
        this.d = new w();
        this.a = activity;
        this.b = context;
        this.e = handler;
        this.c = i;
    }

    public void onDump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public boolean onShouldSaveFragmentState(Fragment fragment) {
        return true;
    }

    public LayoutInflater onGetLayoutInflater() {
        return (LayoutInflater) this.b.getSystemService("layout_inflater");
    }

    public void onSupportInvalidateOptionsMenu() {
    }

    public void onStartActivityFromFragment(Fragment fragment, Intent intent, int i) {
        if (i != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        this.b.startActivity(intent);
    }

    public void onRequestPermissionsFromFragment(@NonNull Fragment fragment, @NonNull String[] strArr, int i) {
    }

    public boolean onShouldShowRequestPermissionRationale(@NonNull String str) {
        return false;
    }

    public boolean onHasWindowAnimations() {
        return true;
    }

    public int onGetWindowAnimations() {
        return this.c;
    }

    @Override // android.support.v4.app.FragmentContainer
    @Nullable
    public View onFindViewById(int i) {
        return null;
    }

    @Override // android.support.v4.app.FragmentContainer
    public boolean onHasView() {
        return true;
    }

    Activity b() {
        return this.a;
    }

    public Context c() {
        return this.b;
    }

    public Handler d() {
        return this.e;
    }

    public w e() {
        return this.d;
    }

    x f() {
        if (this.g != null) {
            return this.g;
        }
        this.h = true;
        this.g = a("(root)", this.i, true);
        return this.g;
    }

    public void a(String str) {
        x xVar;
        if (this.f != null && (xVar = (x) this.f.get(str)) != null && !xVar.f) {
            xVar.g();
            this.f.remove(str);
        }
    }

    public void a(Fragment fragment) {
    }

    void g() {
        if (!this.i) {
            this.i = true;
            if (this.g != null) {
                this.g.a();
            } else if (!this.h) {
                this.g = a("(root)", this.i, false);
                if (this.g != null && !this.g.e) {
                    this.g.a();
                }
            }
            this.h = true;
        }
    }

    void a(boolean z) {
        if (this.g != null && this.i) {
            this.i = false;
            if (z) {
                this.g.c();
            } else {
                this.g.b();
            }
        }
    }

    void h() {
        if (this.g != null) {
            this.g.c();
        }
    }

    void i() {
        if (this.g != null) {
            this.g.g();
        }
    }

    void j() {
        if (this.f != null) {
            int size = this.f.size();
            x[] xVarArr = new x[size];
            for (int i = size - 1; i >= 0; i--) {
                xVarArr[i] = (x) this.f.valueAt(i);
            }
            for (int i2 = 0; i2 < size; i2++) {
                x xVar = xVarArr[i2];
                xVar.d();
                xVar.f();
            }
        }
    }

    x a(String str, boolean z, boolean z2) {
        if (this.f == null) {
            this.f = new SimpleArrayMap<>();
        }
        x xVar = (x) this.f.get(str);
        if (xVar == null) {
            if (z2) {
                x xVar2 = new x(str, this, z);
                this.f.put(str, xVar2);
                return xVar2;
            }
            return xVar;
        }
        xVar.a(this);
        return xVar;
    }

    SimpleArrayMap<String, LoaderManager> k() {
        boolean z;
        if (this.f != null) {
            int size = this.f.size();
            x[] xVarArr = new x[size];
            for (int i = size - 1; i >= 0; i--) {
                xVarArr[i] = (x) this.f.valueAt(i);
            }
            z = false;
            for (int i2 = 0; i2 < size; i2++) {
                x xVar = xVarArr[i2];
                if (xVar.f) {
                    z = true;
                } else {
                    xVar.g();
                    this.f.remove(xVar.d);
                }
            }
        } else {
            z = false;
        }
        if (z) {
            return this.f;
        }
        return null;
    }

    void a(SimpleArrayMap<String, LoaderManager> simpleArrayMap) {
        this.f = simpleArrayMap;
    }

    void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.i);
        if (this.g != null) {
            printWriter.print(str);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.g)));
            printWriter.println(":");
            this.g.dump(str + "  ", fileDescriptor, printWriter, strArr);
        }
    }
}
