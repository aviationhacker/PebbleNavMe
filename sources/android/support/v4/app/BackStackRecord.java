package android.support.v4.app;

import android.os.Build;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransitionCompat21;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LogWriter;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import defpackage.w;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class BackStackRecord extends FragmentTransaction implements FragmentManager.BackStackEntry, Runnable {
    static final boolean a;
    final w b;
    a c;
    a d;
    int e;
    int f;
    int g;
    int h;
    int i;
    int j;
    int k;
    boolean l;
    String n;
    boolean o;
    int q;
    CharSequence r;
    int s;
    CharSequence t;
    ArrayList<String> u;
    ArrayList<String> v;
    boolean m = true;
    public int p = -1;

    static {
        a = Build.VERSION.SDK_INT >= 21;
    }

    static final class a {
        a a;
        a b;
        int c;
        Fragment d;
        int e;
        int f;
        int g;
        int h;
        ArrayList<Fragment> i;

        a() {
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.p >= 0) {
            sb.append(" #");
            sb.append(this.p);
        }
        if (this.n != null) {
            sb.append(" ");
            sb.append(this.n);
        }
        sb.append("}");
        return sb.toString();
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        a(str, printWriter, true);
    }

    public void a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.n);
            printWriter.print(" mIndex=");
            printWriter.print(this.p);
            printWriter.print(" mCommitted=");
            printWriter.println(this.o);
            if (this.j != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.j));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.k));
            }
            if (this.f != 0 || this.g != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.g));
            }
            if (this.h != 0 || this.i != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.h));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.i));
            }
            if (this.q != 0 || this.r != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.q));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.r);
            }
            if (this.s != 0 || this.t != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.s));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.t);
            }
        }
        if (this.c != null) {
            printWriter.print(str);
            printWriter.println("Operations:");
            String str3 = str + "    ";
            int i = 0;
            a aVar = this.c;
            while (aVar != null) {
                switch (aVar.c) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    default:
                        str2 = "cmd=" + aVar.c;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(aVar.d);
                if (z) {
                    if (aVar.e != 0 || aVar.f != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.e));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f));
                    }
                    if (aVar.g != 0 || aVar.h != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.g));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.h));
                    }
                }
                if (aVar.i != null && aVar.i.size() > 0) {
                    for (int i2 = 0; i2 < aVar.i.size(); i2++) {
                        printWriter.print(str3);
                        if (aVar.i.size() == 1) {
                            printWriter.print("Removed: ");
                        } else {
                            if (i2 == 0) {
                                printWriter.println("Removed:");
                            }
                            printWriter.print(str3);
                            printWriter.print("  #");
                            printWriter.print(i2);
                            printWriter.print(": ");
                        }
                        printWriter.println(aVar.i.get(i2));
                    }
                }
                aVar = aVar.a;
                i++;
            }
        }
    }

    public BackStackRecord(w wVar) {
        this.b = wVar;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public int getId() {
        return this.p;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public int getBreadCrumbTitleRes() {
        return this.q;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public int getBreadCrumbShortTitleRes() {
        return this.s;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public CharSequence getBreadCrumbTitle() {
        return this.q != 0 ? this.b.o.c().getText(this.q) : this.r;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public CharSequence getBreadCrumbShortTitle() {
        return this.s != 0 ? this.b.o.c().getText(this.s) : this.t;
    }

    void a(a aVar) {
        if (this.c == null) {
            this.d = aVar;
            this.c = aVar;
        } else {
            aVar.b = this.d;
            this.d.a = aVar;
            this.d = aVar;
        }
        aVar.e = this.f;
        aVar.f = this.g;
        aVar.g = this.h;
        aVar.h = this.i;
        this.e++;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction add(Fragment fragment, String str) {
        a(0, fragment, str, 1);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction add(int i, Fragment fragment) {
        a(i, fragment, (String) null, 1);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction add(int i, Fragment fragment, String str) {
        a(i, fragment, str, 1);
        return this;
    }

    private void a(int i, Fragment fragment, String str, int i2) {
        fragment.C = this.b;
        if (str != null) {
            if (fragment.I != null && !str.equals(fragment.I)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.I + " now " + str);
            }
            fragment.I = str;
        }
        if (i != 0) {
            if (fragment.G != 0 && fragment.G != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.G + " now " + i);
            }
            fragment.G = i;
            fragment.H = i;
        }
        a aVar = new a();
        aVar.c = i2;
        aVar.d = fragment;
        a(aVar);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction replace(int i, Fragment fragment) {
        return replace(i, fragment, null);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction replace(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        a(i, fragment, str, 2);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction remove(Fragment fragment) {
        a aVar = new a();
        aVar.c = 3;
        aVar.d = fragment;
        a(aVar);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction hide(Fragment fragment) {
        a aVar = new a();
        aVar.c = 4;
        aVar.d = fragment;
        a(aVar);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction show(Fragment fragment) {
        a aVar = new a();
        aVar.c = 5;
        aVar.d = fragment;
        a(aVar);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction detach(Fragment fragment) {
        a aVar = new a();
        aVar.c = 6;
        aVar.d = fragment;
        a(aVar);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction attach(Fragment fragment) {
        a aVar = new a();
        aVar.c = 7;
        aVar.d = fragment;
        a(aVar);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setCustomAnimations(int i, int i2) {
        return setCustomAnimations(i, i2, 0, 0);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setCustomAnimations(int i, int i2, int i3, int i4) {
        this.f = i;
        this.g = i2;
        this.h = i3;
        this.i = i4;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setTransition(int i) {
        this.j = i;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction addSharedElement(View view, String str) {
        if (a) {
            String strA = FragmentTransitionCompat21.a(view);
            if (strA == null) {
                throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
            }
            if (this.u == null) {
                this.u = new ArrayList<>();
                this.v = new ArrayList<>();
            }
            this.u.add(strA);
            this.v.add(str);
        }
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setTransitionStyle(int i) {
        this.k = i;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction addToBackStack(String str) {
        if (!this.m) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.l = true;
        this.n = str;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public boolean isAddToBackStackAllowed() {
        return this.m;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction disallowAddToBackStack() {
        if (this.l) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.m = false;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbTitle(int i) {
        this.q = i;
        this.r = null;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbTitle(CharSequence charSequence) {
        this.q = 0;
        this.r = charSequence;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbShortTitle(int i) {
        this.s = i;
        this.t = null;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbShortTitle(CharSequence charSequence) {
        this.s = 0;
        this.t = charSequence;
        return this;
    }

    void a(int i) {
        if (this.l) {
            if (w.a) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            for (a aVar = this.c; aVar != null; aVar = aVar.a) {
                if (aVar.d != null) {
                    aVar.d.B += i;
                    if (w.a) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.d + " to " + aVar.d.B);
                    }
                }
                if (aVar.i != null) {
                    for (int size = aVar.i.size() - 1; size >= 0; size--) {
                        Fragment fragment = aVar.i.get(size);
                        fragment.B += i;
                        if (w.a) {
                            Log.v("FragmentManager", "Bump nesting of " + fragment + " to " + fragment.B);
                        }
                    }
                }
            }
        }
    }

    @Override // android.support.v4.app.FragmentTransaction
    public int commit() {
        return a(false);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public int commitAllowingStateLoss() {
        return a(true);
    }

    int a(boolean z) {
        if (this.o) {
            throw new IllegalStateException("commit already called");
        }
        if (w.a) {
            Log.v("FragmentManager", "Commit: " + this);
            a("  ", (FileDescriptor) null, new PrintWriter(new LogWriter("FragmentManager")), (String[]) null);
        }
        this.o = true;
        if (this.l) {
            this.p = this.b.a(this);
        } else {
            this.p = -1;
        }
        this.b.a(this, z);
        return this.p;
    }

    @Override // java.lang.Runnable
    public void run() {
        TransitionState transitionStateA;
        Fragment fragment;
        if (w.a) {
            Log.v("FragmentManager", "Run: " + this);
        }
        if (this.l && this.p < 0) {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
        a(1);
        if (!a) {
            transitionStateA = null;
        } else {
            SparseArray<Fragment> sparseArray = new SparseArray<>();
            SparseArray<Fragment> sparseArray2 = new SparseArray<>();
            b(sparseArray, sparseArray2);
            transitionStateA = a(sparseArray, sparseArray2, false);
        }
        int i = transitionStateA != null ? 0 : this.k;
        int i2 = transitionStateA != null ? 0 : this.j;
        for (a aVar = this.c; aVar != null; aVar = aVar.a) {
            int i3 = transitionStateA != null ? 0 : aVar.e;
            int i4 = transitionStateA != null ? 0 : aVar.f;
            switch (aVar.c) {
                case 1:
                    Fragment fragment2 = aVar.d;
                    fragment2.Q = i3;
                    this.b.a(fragment2, false);
                    break;
                case 2:
                    Fragment fragment3 = aVar.d;
                    int i5 = fragment3.H;
                    if (this.b.g != null) {
                        int i6 = 0;
                        fragment = fragment3;
                        while (true) {
                            int i7 = i6;
                            if (i7 < this.b.g.size()) {
                                Fragment fragment4 = this.b.g.get(i7);
                                if (w.a) {
                                    Log.v("FragmentManager", "OP_REPLACE: adding=" + fragment + " old=" + fragment4);
                                }
                                if (fragment4.H == i5) {
                                    if (fragment4 == fragment) {
                                        fragment = null;
                                        aVar.d = null;
                                    } else {
                                        if (aVar.i == null) {
                                            aVar.i = new ArrayList<>();
                                        }
                                        aVar.i.add(fragment4);
                                        fragment4.Q = i4;
                                        if (this.l) {
                                            fragment4.B++;
                                            if (w.a) {
                                                Log.v("FragmentManager", "Bump nesting of " + fragment4 + " to " + fragment4.B);
                                            }
                                        }
                                        this.b.a(fragment4, i2, i);
                                    }
                                }
                                i6 = i7 + 1;
                            }
                        }
                    } else {
                        fragment = fragment3;
                    }
                    if (fragment != null) {
                        fragment.Q = i3;
                        this.b.a(fragment, false);
                    }
                    break;
                case 3:
                    Fragment fragment5 = aVar.d;
                    fragment5.Q = i4;
                    this.b.a(fragment5, i2, i);
                    break;
                case 4:
                    Fragment fragment6 = aVar.d;
                    fragment6.Q = i4;
                    this.b.b(fragment6, i2, i);
                    break;
                case 5:
                    Fragment fragment7 = aVar.d;
                    fragment7.Q = i3;
                    this.b.c(fragment7, i2, i);
                    break;
                case 6:
                    Fragment fragment8 = aVar.d;
                    fragment8.Q = i4;
                    this.b.d(fragment8, i2, i);
                    break;
                case 7:
                    Fragment fragment9 = aVar.d;
                    fragment9.Q = i3;
                    this.b.e(fragment9, i2, i);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.c);
            }
        }
        this.b.a(this.b.n, i2, i, true);
        if (this.l) {
            this.b.b(this);
        }
    }

    private static void a(SparseArray<Fragment> sparseArray, Fragment fragment) {
        int i;
        if (fragment != null && (i = fragment.H) != 0 && !fragment.isHidden() && fragment.isAdded() && fragment.getView() != null && sparseArray.get(i) == null) {
            sparseArray.put(i, fragment);
        }
    }

    private void b(SparseArray<Fragment> sparseArray, Fragment fragment) {
        int i;
        if (fragment != null && (i = fragment.H) != 0) {
            sparseArray.put(i, fragment);
        }
    }

    private void b(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        Fragment fragment;
        if (this.b.p.onHasView()) {
            for (a aVar = this.c; aVar != null; aVar = aVar.a) {
                switch (aVar.c) {
                    case 1:
                        b(sparseArray2, aVar.d);
                        break;
                    case 2:
                        Fragment fragment2 = aVar.d;
                        if (this.b.g != null) {
                            int i = 0;
                            fragment = fragment2;
                            while (true) {
                                int i2 = i;
                                if (i2 < this.b.g.size()) {
                                    Fragment fragment3 = this.b.g.get(i2);
                                    if (fragment == null || fragment3.H == fragment.H) {
                                        if (fragment3 == fragment) {
                                            fragment = null;
                                        } else {
                                            a(sparseArray, fragment3);
                                        }
                                    }
                                    i = i2 + 1;
                                }
                            }
                        } else {
                            fragment = fragment2;
                        }
                        b(sparseArray2, fragment);
                        break;
                    case 3:
                        a(sparseArray, aVar.d);
                        break;
                    case 4:
                        a(sparseArray, aVar.d);
                        break;
                    case 5:
                        b(sparseArray2, aVar.d);
                        break;
                    case 6:
                        a(sparseArray, aVar.d);
                        break;
                    case 7:
                        b(sparseArray2, aVar.d);
                        break;
                }
            }
        }
    }

    public void a(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        if (this.b.p.onHasView()) {
            for (a aVar = this.c; aVar != null; aVar = aVar.a) {
                switch (aVar.c) {
                    case 1:
                        a(sparseArray, aVar.d);
                        break;
                    case 2:
                        if (aVar.i != null) {
                            for (int size = aVar.i.size() - 1; size >= 0; size--) {
                                b(sparseArray2, aVar.i.get(size));
                            }
                        }
                        a(sparseArray, aVar.d);
                        break;
                    case 3:
                        b(sparseArray2, aVar.d);
                        break;
                    case 4:
                        b(sparseArray2, aVar.d);
                        break;
                    case 5:
                        a(sparseArray, aVar.d);
                        break;
                    case 6:
                        b(sparseArray2, aVar.d);
                        break;
                    case 7:
                        a(sparseArray, aVar.d);
                        break;
                }
            }
        }
    }

    public TransitionState a(boolean z, TransitionState transitionState, SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        if (w.a) {
            Log.v("FragmentManager", "popFromBackStack: " + this);
            a("  ", (FileDescriptor) null, new PrintWriter(new LogWriter("FragmentManager")), (String[]) null);
        }
        if (a) {
            if (transitionState == null) {
                if (sparseArray.size() != 0 || sparseArray2.size() != 0) {
                    transitionState = a(sparseArray, sparseArray2, true);
                }
            } else if (!z) {
                a(transitionState, this.v, this.u);
            }
        }
        a(-1);
        int i = transitionState != null ? 0 : this.k;
        int i2 = transitionState != null ? 0 : this.j;
        for (a aVar = this.d; aVar != null; aVar = aVar.b) {
            int i3 = transitionState != null ? 0 : aVar.g;
            int i4 = transitionState != null ? 0 : aVar.h;
            switch (aVar.c) {
                case 1:
                    Fragment fragment = aVar.d;
                    fragment.Q = i4;
                    this.b.a(fragment, w.b(i2), i);
                    break;
                case 2:
                    Fragment fragment2 = aVar.d;
                    if (fragment2 != null) {
                        fragment2.Q = i4;
                        this.b.a(fragment2, w.b(i2), i);
                    }
                    if (aVar.i != null) {
                        for (int i5 = 0; i5 < aVar.i.size(); i5++) {
                            Fragment fragment3 = aVar.i.get(i5);
                            fragment3.Q = i3;
                            this.b.a(fragment3, false);
                        }
                    }
                    break;
                case 3:
                    Fragment fragment4 = aVar.d;
                    fragment4.Q = i3;
                    this.b.a(fragment4, false);
                    break;
                case 4:
                    Fragment fragment5 = aVar.d;
                    fragment5.Q = i3;
                    this.b.c(fragment5, w.b(i2), i);
                    break;
                case 5:
                    Fragment fragment6 = aVar.d;
                    fragment6.Q = i4;
                    this.b.b(fragment6, w.b(i2), i);
                    break;
                case 6:
                    Fragment fragment7 = aVar.d;
                    fragment7.Q = i3;
                    this.b.e(fragment7, w.b(i2), i);
                    break;
                case 7:
                    Fragment fragment8 = aVar.d;
                    fragment8.Q = i3;
                    this.b.d(fragment8, w.b(i2), i);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.c);
            }
        }
        if (z) {
            this.b.a(this.b.n, w.b(i2), i, true);
            transitionState = null;
        }
        if (this.p >= 0) {
            this.b.a(this.p);
            this.p = -1;
        }
        return transitionState;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public String getName() {
        return this.n;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public boolean isEmpty() {
        return this.e == 0;
    }

    private TransitionState a(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2, boolean z) {
        TransitionState transitionState = new TransitionState();
        transitionState.nonExistentView = new View(this.b.o.c());
        int i = 0;
        boolean z2 = false;
        while (i < sparseArray.size()) {
            boolean z3 = a(sparseArray.keyAt(i), transitionState, z, sparseArray, sparseArray2) ? true : z2;
            i++;
            z2 = z3;
        }
        for (int i2 = 0; i2 < sparseArray2.size(); i2++) {
            int iKeyAt = sparseArray2.keyAt(i2);
            if (sparseArray.get(iKeyAt) == null && a(iKeyAt, transitionState, z, sparseArray, sparseArray2)) {
                z2 = true;
            }
        }
        if (!z2) {
            return null;
        }
        return transitionState;
    }

    private static Object a(Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return FragmentTransitionCompat21.a(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    private static Object b(Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return FragmentTransitionCompat21.a(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    private static Object a(Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return FragmentTransitionCompat21.b(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition());
    }

    private static Object a(Object obj, Fragment fragment, ArrayList<View> arrayList, ArrayMap<String, View> arrayMap, View view) {
        if (obj != null) {
            return FragmentTransitionCompat21.a(obj, fragment.getView(), arrayList, arrayMap, view);
        }
        return obj;
    }

    private ArrayMap<String, View> a(TransitionState transitionState, Fragment fragment, boolean z) {
        ArrayMap<String, View> arrayMap = new ArrayMap<>();
        if (this.u != null) {
            FragmentTransitionCompat21.a((Map<String, View>) arrayMap, fragment.getView());
            if (z) {
                arrayMap.retainAll(this.v);
            } else {
                arrayMap = a(this.u, this.v, arrayMap);
            }
        }
        if (z) {
            if (fragment.ah != null) {
                fragment.ah.onMapSharedElements(this.v, arrayMap);
            }
            a(transitionState, arrayMap, false);
        } else {
            if (fragment.ai != null) {
                fragment.ai.onMapSharedElements(this.v, arrayMap);
            }
            b(transitionState, arrayMap, false);
        }
        return arrayMap;
    }

    private boolean a(int i, TransitionState transitionState, boolean z, SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        Object obj;
        ViewGroup viewGroup = (ViewGroup) this.b.p.onFindViewById(i);
        if (viewGroup == null) {
            return false;
        }
        final Fragment fragment = sparseArray2.get(i);
        Fragment fragment2 = sparseArray.get(i);
        Object objA = a(fragment, z);
        Object objA2 = a(fragment, fragment2, z);
        Object objB = b(fragment2, z);
        ArrayMap<String, View> arrayMapA = null;
        ArrayList<View> arrayList = new ArrayList<>();
        if (objA2 != null) {
            arrayMapA = a(transitionState, fragment2, z);
            if (arrayMapA.isEmpty()) {
                arrayMapA = null;
                obj = null;
            } else {
                SharedElementCallback sharedElementCallback = z ? fragment2.ah : fragment.ah;
                if (sharedElementCallback != null) {
                    sharedElementCallback.onSharedElementStart(new ArrayList(arrayMapA.keySet()), new ArrayList(arrayMapA.values()), null);
                }
                a(transitionState, viewGroup, objA2, fragment, fragment2, z, arrayList);
                obj = objA2;
            }
        } else {
            obj = objA2;
        }
        if (objA == null && obj == null && objB == null) {
            return false;
        }
        ArrayList arrayList2 = new ArrayList();
        Object objA3 = a(objB, fragment2, (ArrayList<View>) arrayList2, arrayMapA, transitionState.nonExistentView);
        if (this.v != null && arrayMapA != null) {
            View view = arrayMapA.get(this.v.get(0));
            if (view != null) {
                if (objA3 != null) {
                    FragmentTransitionCompat21.a(objA3, view);
                }
                if (obj != null) {
                    FragmentTransitionCompat21.a(obj, view);
                }
            }
        }
        FragmentTransitionCompat21.ViewRetriever viewRetriever = new FragmentTransitionCompat21.ViewRetriever() { // from class: android.support.v4.app.BackStackRecord.1
            @Override // android.support.v4.app.FragmentTransitionCompat21.ViewRetriever
            public View getView() {
                return fragment.getView();
            }
        };
        ArrayList arrayList3 = new ArrayList();
        ArrayMap arrayMap = new ArrayMap();
        boolean allowReturnTransitionOverlap = true;
        if (fragment != null) {
            allowReturnTransitionOverlap = z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap();
        }
        Object objA4 = FragmentTransitionCompat21.a(objA, objA3, obj, allowReturnTransitionOverlap);
        if (objA4 != null) {
            FragmentTransitionCompat21.a(objA, obj, viewGroup, viewRetriever, transitionState.nonExistentView, transitionState.enteringEpicenterView, transitionState.nameOverrides, (ArrayList<View>) arrayList3, arrayMapA, arrayMap, arrayList);
            a(viewGroup, transitionState, i, objA4);
            FragmentTransitionCompat21.a(objA4, transitionState.nonExistentView, true);
            a(transitionState, i, objA4);
            FragmentTransitionCompat21.a(viewGroup, objA4);
            FragmentTransitionCompat21.a(viewGroup, transitionState.nonExistentView, objA, (ArrayList<View>) arrayList3, objA3, (ArrayList<View>) arrayList2, obj, arrayList, objA4, transitionState.hiddenFragmentViews, arrayMap);
        }
        return objA4 != null;
    }

    private void a(final TransitionState transitionState, final View view, final Object obj, final Fragment fragment, final Fragment fragment2, final boolean z, final ArrayList<View> arrayList) {
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.v4.app.BackStackRecord.2
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                view.getViewTreeObserver().removeOnPreDrawListener(this);
                if (obj != null) {
                    FragmentTransitionCompat21.a(obj, (ArrayList<View>) arrayList);
                    arrayList.clear();
                    ArrayMap arrayMapA = BackStackRecord.this.a(transitionState, z, fragment);
                    FragmentTransitionCompat21.a(obj, transitionState.nonExistentView, arrayMapA, (ArrayList<View>) arrayList);
                    BackStackRecord.this.a((ArrayMap<String, View>) arrayMapA, transitionState);
                    BackStackRecord.this.a(transitionState, fragment, fragment2, z, (ArrayMap<String, View>) arrayMapA);
                    return true;
                }
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TransitionState transitionState, Fragment fragment, Fragment fragment2, boolean z, ArrayMap<String, View> arrayMap) {
        SharedElementCallback sharedElementCallback = z ? fragment2.ah : fragment.ah;
        if (sharedElementCallback != null) {
            sharedElementCallback.onSharedElementEnd(new ArrayList(arrayMap.keySet()), new ArrayList(arrayMap.values()), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ArrayMap<String, View> arrayMap, TransitionState transitionState) {
        View view;
        if (this.v != null && !arrayMap.isEmpty() && (view = arrayMap.get(this.v.get(0))) != null) {
            transitionState.enteringEpicenterView.epicenter = view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayMap<String, View> a(TransitionState transitionState, boolean z, Fragment fragment) {
        ArrayMap<String, View> arrayMapB = b(transitionState, fragment, z);
        if (z) {
            if (fragment.ai != null) {
                fragment.ai.onMapSharedElements(this.v, arrayMapB);
            }
            a(transitionState, arrayMapB, true);
        } else {
            if (fragment.ah != null) {
                fragment.ah.onMapSharedElements(this.v, arrayMapB);
            }
            b(transitionState, arrayMapB, true);
        }
        return arrayMapB;
    }

    private static ArrayMap<String, View> a(ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayMap<String, View> arrayMap) {
        if (!arrayMap.isEmpty()) {
            ArrayMap<String, View> arrayMap2 = new ArrayMap<>();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                View view = arrayMap.get(arrayList.get(i));
                if (view != null) {
                    arrayMap2.put(arrayList2.get(i), view);
                }
            }
            return arrayMap2;
        }
        return arrayMap;
    }

    private ArrayMap<String, View> b(TransitionState transitionState, Fragment fragment, boolean z) {
        ArrayMap<String, View> arrayMap = new ArrayMap<>();
        View view = fragment.getView();
        if (view != null && this.u != null) {
            FragmentTransitionCompat21.a((Map<String, View>) arrayMap, view);
            if (z) {
                return a(this.u, this.v, arrayMap);
            }
            arrayMap.retainAll(this.v);
            return arrayMap;
        }
        return arrayMap;
    }

    private void a(final View view, final TransitionState transitionState, final int i, final Object obj) {
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.v4.app.BackStackRecord.3
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                view.getViewTreeObserver().removeOnPreDrawListener(this);
                BackStackRecord.this.a(transitionState, i, obj);
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TransitionState transitionState, int i, Object obj) {
        if (this.b.g != null) {
            for (int i2 = 0; i2 < this.b.g.size(); i2++) {
                Fragment fragment = this.b.g.get(i2);
                if (fragment.S != null && fragment.R != null && fragment.H == i) {
                    if (fragment.J) {
                        if (!transitionState.hiddenFragmentViews.contains(fragment.S)) {
                            FragmentTransitionCompat21.a(obj, fragment.S, true);
                            transitionState.hiddenFragmentViews.add(fragment.S);
                        }
                    } else {
                        FragmentTransitionCompat21.a(obj, fragment.S, false);
                        transitionState.hiddenFragmentViews.remove(fragment.S);
                    }
                }
            }
        }
    }

    private static void a(ArrayMap<String, String> arrayMap, String str, String str2) {
        if (str != null && str2 != null) {
            for (int i = 0; i < arrayMap.size(); i++) {
                if (str.equals(arrayMap.valueAt(i))) {
                    arrayMap.setValueAt(i, str2);
                    return;
                }
            }
            arrayMap.put(str, str2);
        }
    }

    private static void a(TransitionState transitionState, ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        if (arrayList != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < arrayList.size()) {
                    a(transitionState.nameOverrides, arrayList.get(i2), arrayList2.get(i2));
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    private void a(TransitionState transitionState, ArrayMap<String, View> arrayMap, boolean z) {
        int size = this.v == null ? 0 : this.v.size();
        for (int i = 0; i < size; i++) {
            String str = this.u.get(i);
            View view = arrayMap.get(this.v.get(i));
            if (view != null) {
                String strA = FragmentTransitionCompat21.a(view);
                if (z) {
                    a(transitionState.nameOverrides, str, strA);
                } else {
                    a(transitionState.nameOverrides, strA, str);
                }
            }
        }
    }

    private void b(TransitionState transitionState, ArrayMap<String, View> arrayMap, boolean z) {
        int size = arrayMap.size();
        for (int i = 0; i < size; i++) {
            String strKeyAt = arrayMap.keyAt(i);
            String strA = FragmentTransitionCompat21.a(arrayMap.valueAt(i));
            if (z) {
                a(transitionState.nameOverrides, strKeyAt, strA);
            } else {
                a(transitionState.nameOverrides, strA, strKeyAt);
            }
        }
    }

    public class TransitionState {
        public View nonExistentView;
        public ArrayMap<String, String> nameOverrides = new ArrayMap<>();
        public ArrayList<View> hiddenFragmentViews = new ArrayList<>();
        public FragmentTransitionCompat21.EpicenterView enteringEpicenterView = new FragmentTransitionCompat21.EpicenterView();

        public TransitionState() {
        }
    }
}
