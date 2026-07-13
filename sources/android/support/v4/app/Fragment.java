package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SimpleArrayMap;
import android.support.v4.view.LayoutInflaterCompat;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import defpackage.ai;
import defpackage.w;
import defpackage.x;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener {
    private static final SimpleArrayMap<String, Class<?>> a = new SimpleArrayMap<>();
    static final Object j = new Object();
    public boolean A;
    public int B;
    public w C;
    public FragmentHostCallback D;
    public w E;
    public Fragment F;
    public int G;
    public int H;
    public String I;
    public boolean J;
    public boolean K;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean P;
    public int Q;
    public ViewGroup R;
    public View S;
    public View T;
    public boolean U;
    public x W;
    boolean X;
    boolean Y;
    Boolean af;
    Boolean ag;
    public View l;
    public int m;
    public Bundle n;
    public SparseArray<Parcelable> o;
    public String q;
    Bundle r;
    public Fragment s;
    public int u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public boolean z;
    public int k = 0;
    public int p = -1;
    public int t = -1;
    public boolean O = true;
    public boolean V = true;
    Object Z = null;
    Object aa = j;
    Object ab = null;
    Object ac = j;
    Object ad = null;
    Object ae = j;
    SharedElementCallback ah = null;
    SharedElementCallback ai = null;

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v4.app.Fragment.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        final Bundle a;

        public SavedState(Bundle bundle) {
            this.a = bundle;
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            this.a = parcel.readBundle();
            if (classLoader != null && this.a != null) {
                this.a.setClassLoader(classLoader);
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.a);
        }
    }

    public static class InstantiationException extends RuntimeException {
        public InstantiationException(String str, Exception exc) {
            super(str, exc);
        }
    }

    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    public static Fragment instantiate(Context context, String str, @Nullable Bundle bundle) {
        try {
            Class<?> clsLoadClass = a.get(str);
            if (clsLoadClass == null) {
                clsLoadClass = context.getClassLoader().loadClass(str);
                a.put(str, clsLoadClass);
            }
            Fragment fragment = (Fragment) clsLoadClass.newInstance();
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.r = bundle;
            }
            return fragment;
        } catch (ClassNotFoundException e) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (IllegalAccessException e2) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (java.lang.InstantiationException e3) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e3);
        }
    }

    public static boolean a(Context context, String str) {
        try {
            Class<?> clsLoadClass = a.get(str);
            if (clsLoadClass == null) {
                clsLoadClass = context.getClassLoader().loadClass(str);
                a.put(str, clsLoadClass);
            }
            return Fragment.class.isAssignableFrom(clsLoadClass);
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public final void a(Bundle bundle) {
        if (this.o != null) {
            this.T.restoreHierarchyState(this.o);
            this.o = null;
        }
        this.P = false;
        onViewStateRestored(bundle);
        if (!this.P) {
            throw new ai("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    public final void a(int i, Fragment fragment) {
        this.p = i;
        if (fragment != null) {
            this.q = fragment.q + ":" + this.p;
        } else {
            this.q = "android:fragment:" + this.p;
        }
    }

    public final boolean a() {
        return this.B > 0;
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        DebugUtils.buildShortClassTag(this, sb);
        if (this.p >= 0) {
            sb.append(" #");
            sb.append(this.p);
        }
        if (this.G != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.G));
        }
        if (this.I != null) {
            sb.append(" ");
            sb.append(this.I);
        }
        sb.append('}');
        return sb.toString();
    }

    public final int getId() {
        return this.G;
    }

    public final String getTag() {
        return this.I;
    }

    public void setArguments(Bundle bundle) {
        if (this.p >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        this.r = bundle;
    }

    public final Bundle getArguments() {
        return this.r;
    }

    public void setInitialSavedState(SavedState savedState) {
        if (this.p >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        this.n = (savedState == null || savedState.a == null) ? null : savedState.a;
    }

    public void setTargetFragment(Fragment fragment, int i) {
        this.s = fragment;
        this.u = i;
    }

    public final Fragment getTargetFragment() {
        return this.s;
    }

    public final int getTargetRequestCode() {
        return this.u;
    }

    public Context getContext() {
        if (this.D == null) {
            return null;
        }
        return this.D.c();
    }

    public final FragmentActivity getActivity() {
        if (this.D == null) {
            return null;
        }
        return (FragmentActivity) this.D.b();
    }

    public final Object getHost() {
        if (this.D == null) {
            return null;
        }
        return this.D.onGetHost();
    }

    public final Resources getResources() {
        if (this.D == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        return this.D.c().getResources();
    }

    public final CharSequence getText(@StringRes int i) {
        return getResources().getText(i);
    }

    public final String getString(@StringRes int i) {
        return getResources().getString(i);
    }

    public final String getString(@StringRes int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final FragmentManager getFragmentManager() {
        return this.C;
    }

    public final FragmentManager getChildFragmentManager() {
        if (this.E == null) {
            c();
            if (this.k >= 5) {
                this.E.j();
            } else if (this.k >= 4) {
                this.E.i();
            } else if (this.k >= 2) {
                this.E.h();
            } else if (this.k >= 1) {
                this.E.g();
            }
        }
        return this.E;
    }

    public final Fragment getParentFragment() {
        return this.F;
    }

    public final boolean isAdded() {
        return this.D != null && this.v;
    }

    public final boolean isDetached() {
        return this.K;
    }

    public final boolean isRemoving() {
        return this.w;
    }

    public final boolean isInLayout() {
        return this.z;
    }

    public final boolean isResumed() {
        return this.x;
    }

    public final boolean isVisible() {
        return (!isAdded() || isHidden() || this.S == null || this.S.getWindowToken() == null || this.S.getVisibility() != 0) ? false : true;
    }

    public final boolean isHidden() {
        return this.J;
    }

    public final boolean hasOptionsMenu() {
        return this.N;
    }

    public final boolean isMenuVisible() {
        return this.O;
    }

    public void onHiddenChanged(boolean z) {
    }

    public void setRetainInstance(boolean z) {
        if (z && this.F != null) {
            throw new IllegalStateException("Can't retain fragements that are nested in other fragments");
        }
        this.L = z;
    }

    public final boolean getRetainInstance() {
        return this.L;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.N != z) {
            this.N = z;
            if (isAdded() && !isHidden()) {
                this.D.onSupportInvalidateOptionsMenu();
            }
        }
    }

    public void setMenuVisibility(boolean z) {
        if (this.O != z) {
            this.O = z;
            if (this.N && isAdded() && !isHidden()) {
                this.D.onSupportInvalidateOptionsMenu();
            }
        }
    }

    public void setUserVisibleHint(boolean z) {
        if (!this.V && z && this.k < 4) {
            this.C.a(this);
        }
        this.V = z;
        this.U = !z;
    }

    public boolean getUserVisibleHint() {
        return this.V;
    }

    public LoaderManager getLoaderManager() {
        if (this.W != null) {
            return this.W;
        }
        if (this.D == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.Y = true;
        this.W = this.D.a(this.q, this.X, true);
        return this.W;
    }

    public void startActivity(Intent intent) {
        if (this.D == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.D.onStartActivityFromFragment(this, intent, -1);
    }

    public void startActivityForResult(Intent intent, int i) {
        if (this.D == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.D.onStartActivityFromFragment(this, intent, i);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public final void requestPermissions(@NonNull String[] strArr, int i) {
        if (this.D == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.D.onRequestPermissionsFromFragment(this, strArr, i);
    }

    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
    }

    public boolean shouldShowRequestPermissionRationale(@NonNull String str) {
        if (this.D != null) {
            return this.D.onShouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    public LayoutInflater getLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = this.D.onGetLayoutInflater();
        getChildFragmentManager();
        LayoutInflaterCompat.setFactory(layoutInflaterOnGetLayoutInflater, this.E.q());
        return layoutInflaterOnGetLayoutInflater;
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.P = true;
        Activity activityB = this.D == null ? null : this.D.b();
        if (activityB != null) {
            this.P = false;
            onInflate(activityB, attributeSet, bundle);
        }
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.P = true;
    }

    public void onAttach(Context context) {
        this.P = true;
        Activity activityB = this.D == null ? null : this.D.b();
        if (activityB != null) {
            this.P = false;
            onAttach(activityB);
        }
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.P = true;
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    public void onCreate(@Nullable Bundle bundle) {
        this.P = true;
    }

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return null;
    }

    public void onViewCreated(View view, @Nullable Bundle bundle) {
    }

    @Nullable
    public View getView() {
        return this.S;
    }

    public void onActivityCreated(@Nullable Bundle bundle) {
        this.P = true;
    }

    public void onViewStateRestored(@Nullable Bundle bundle) {
        this.P = true;
    }

    public void onStart() {
        this.P = true;
        if (!this.X) {
            this.X = true;
            if (!this.Y) {
                this.Y = true;
                this.W = this.D.a(this.q, this.X, false);
            }
            if (this.W != null) {
                this.W.a();
            }
        }
    }

    public void onResume() {
        this.P = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.P = true;
    }

    public void onPause() {
        this.P = true;
    }

    public void onStop() {
        this.P = true;
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.P = true;
    }

    public void onDestroyView() {
        this.P = true;
    }

    public void onDestroy() {
        this.P = true;
        if (!this.Y) {
            this.Y = true;
            this.W = this.D.a(this.q, this.X, false);
        }
        if (this.W != null) {
            this.W.g();
        }
    }

    public void b() {
        this.p = -1;
        this.q = null;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = false;
        this.z = false;
        this.A = false;
        this.B = 0;
        this.C = null;
        this.E = null;
        this.D = null;
        this.G = 0;
        this.H = 0;
        this.I = null;
        this.J = false;
        this.K = false;
        this.M = false;
        this.W = null;
        this.X = false;
        this.Y = false;
    }

    public void onDetach() {
        this.P = true;
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onDestroyOptionsMenu() {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        getActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void setEnterSharedElementCallback(SharedElementCallback sharedElementCallback) {
        this.ah = sharedElementCallback;
    }

    public void setExitSharedElementCallback(SharedElementCallback sharedElementCallback) {
        this.ai = sharedElementCallback;
    }

    public void setEnterTransition(Object obj) {
        this.Z = obj;
    }

    public Object getEnterTransition() {
        return this.Z;
    }

    public void setReturnTransition(Object obj) {
        this.aa = obj;
    }

    public Object getReturnTransition() {
        return this.aa == j ? getEnterTransition() : this.aa;
    }

    public void setExitTransition(Object obj) {
        this.ab = obj;
    }

    public Object getExitTransition() {
        return this.ab;
    }

    public void setReenterTransition(Object obj) {
        this.ac = obj;
    }

    public Object getReenterTransition() {
        return this.ac == j ? getExitTransition() : this.ac;
    }

    public void setSharedElementEnterTransition(Object obj) {
        this.ad = obj;
    }

    public Object getSharedElementEnterTransition() {
        return this.ad;
    }

    public void setSharedElementReturnTransition(Object obj) {
        this.ae = obj;
    }

    public Object getSharedElementReturnTransition() {
        return this.ae == j ? getSharedElementEnterTransition() : this.ae;
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        this.ag = Boolean.valueOf(z);
    }

    public boolean getAllowEnterTransitionOverlap() {
        if (this.ag == null) {
            return true;
        }
        return this.ag.booleanValue();
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        this.af = Boolean.valueOf(z);
    }

    public boolean getAllowReturnTransitionOverlap() {
        if (this.af == null) {
            return true;
        }
        return this.af.booleanValue();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.G));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.H));
        printWriter.print(" mTag=");
        printWriter.println(this.I);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.k);
        printWriter.print(" mIndex=");
        printWriter.print(this.p);
        printWriter.print(" mWho=");
        printWriter.print(this.q);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.B);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.v);
        printWriter.print(" mRemoving=");
        printWriter.print(this.w);
        printWriter.print(" mResumed=");
        printWriter.print(this.x);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.y);
        printWriter.print(" mInLayout=");
        printWriter.println(this.z);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.J);
        printWriter.print(" mDetached=");
        printWriter.print(this.K);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.O);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.N);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.L);
        printWriter.print(" mRetaining=");
        printWriter.print(this.M);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.V);
        if (this.C != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.C);
        }
        if (this.D != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.D);
        }
        if (this.F != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.F);
        }
        if (this.r != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.r);
        }
        if (this.n != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.n);
        }
        if (this.o != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.o);
        }
        if (this.s != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(this.s);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.u);
        }
        if (this.Q != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(this.Q);
        }
        if (this.R != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.R);
        }
        if (this.S != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.S);
        }
        if (this.T != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.S);
        }
        if (this.l != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(this.l);
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(this.m);
        }
        if (this.W != null) {
            printWriter.print(str);
            printWriter.println("Loader Manager:");
            this.W.dump(str + "  ", fileDescriptor, printWriter, strArr);
        }
        if (this.E != null) {
            printWriter.print(str);
            printWriter.println("Child " + this.E + ":");
            this.E.dump(str + "  ", fileDescriptor, printWriter, strArr);
        }
    }

    void c() {
        this.E = new w();
        this.E.a(this.D, new FragmentContainer() { // from class: android.support.v4.app.Fragment.1
            @Override // android.support.v4.app.FragmentContainer
            @Nullable
            public View onFindViewById(int i) {
                if (Fragment.this.S == null) {
                    throw new IllegalStateException("Fragment does not have a view");
                }
                return Fragment.this.S.findViewById(i);
            }

            @Override // android.support.v4.app.FragmentContainer
            public boolean onHasView() {
                return Fragment.this.S != null;
            }
        }, this);
    }

    public void b(Bundle bundle) {
        Parcelable parcelable;
        if (this.E != null) {
            this.E.f();
        }
        this.P = false;
        onCreate(bundle);
        if (!this.P) {
            throw new ai("Fragment " + this + " did not call through to super.onCreate()");
        }
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            if (this.E == null) {
                c();
            }
            this.E.a(parcelable, (List<Fragment>) null);
            this.E.g();
        }
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.E != null) {
            this.E.f();
        }
        return onCreateView(layoutInflater, viewGroup, bundle);
    }

    public void c(Bundle bundle) {
        if (this.E != null) {
            this.E.f();
        }
        this.P = false;
        onActivityCreated(bundle);
        if (!this.P) {
            throw new ai("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
        if (this.E != null) {
            this.E.h();
        }
    }

    public void d() {
        if (this.E != null) {
            this.E.f();
            this.E.b();
        }
        this.P = false;
        onStart();
        if (!this.P) {
            throw new ai("Fragment " + this + " did not call through to super.onStart()");
        }
        if (this.E != null) {
            this.E.i();
        }
        if (this.W != null) {
            this.W.f();
        }
    }

    public void e() {
        if (this.E != null) {
            this.E.f();
            this.E.b();
        }
        this.P = false;
        onResume();
        if (!this.P) {
            throw new ai("Fragment " + this + " did not call through to super.onResume()");
        }
        if (this.E != null) {
            this.E.j();
            this.E.b();
        }
    }

    public void a(Configuration configuration) {
        onConfigurationChanged(configuration);
        if (this.E != null) {
            this.E.a(configuration);
        }
    }

    public void f() {
        onLowMemory();
        if (this.E != null) {
            this.E.p();
        }
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.J) {
            return false;
        }
        if (this.N && this.O) {
            z = true;
            onCreateOptionsMenu(menu, menuInflater);
        }
        if (this.E != null) {
            return z | this.E.a(menu, menuInflater);
        }
        return z;
    }

    public boolean a(Menu menu) {
        boolean z = false;
        if (this.J) {
            return false;
        }
        if (this.N && this.O) {
            z = true;
            onPrepareOptionsMenu(menu);
        }
        if (this.E != null) {
            return z | this.E.a(menu);
        }
        return z;
    }

    public boolean a(MenuItem menuItem) {
        if (!this.J) {
            if (this.N && this.O && onOptionsItemSelected(menuItem)) {
                return true;
            }
            if (this.E != null && this.E.a(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public boolean b(MenuItem menuItem) {
        if (!this.J) {
            if (onContextItemSelected(menuItem)) {
                return true;
            }
            if (this.E != null && this.E.b(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void b(Menu menu) {
        if (!this.J) {
            if (this.N && this.O) {
                onOptionsMenuClosed(menu);
            }
            if (this.E != null) {
                this.E.b(menu);
            }
        }
    }

    public void d(Bundle bundle) {
        Parcelable parcelableE;
        onSaveInstanceState(bundle);
        if (this.E != null && (parcelableE = this.E.e()) != null) {
            bundle.putParcelable("android:support:fragments", parcelableE);
        }
    }

    public void g() {
        if (this.E != null) {
            this.E.k();
        }
        this.P = false;
        onPause();
        if (!this.P) {
            throw new ai("Fragment " + this + " did not call through to super.onPause()");
        }
    }

    public void h() {
        if (this.E != null) {
            this.E.l();
        }
        this.P = false;
        onStop();
        if (!this.P) {
            throw new ai("Fragment " + this + " did not call through to super.onStop()");
        }
    }

    public void i() {
        if (this.E != null) {
            this.E.m();
        }
        if (this.X) {
            this.X = false;
            if (!this.Y) {
                this.Y = true;
                this.W = this.D.a(this.q, this.X, false);
            }
            if (this.W != null) {
                if (!this.M) {
                    this.W.b();
                } else {
                    this.W.c();
                }
            }
        }
    }

    public void j() {
        if (this.E != null) {
            this.E.n();
        }
        this.P = false;
        onDestroyView();
        if (!this.P) {
            throw new ai("Fragment " + this + " did not call through to super.onDestroyView()");
        }
        if (this.W != null) {
            this.W.e();
        }
    }

    public void k() {
        if (this.E != null) {
            this.E.o();
        }
        this.P = false;
        onDestroy();
        if (!this.P) {
            throw new ai("Fragment " + this + " did not call through to super.onDestroy()");
        }
    }
}
