package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.support.v4.util.SimpleArrayMap;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FragmentController {
    private final FragmentHostCallback<?> a;

    public static final FragmentController createController(FragmentHostCallback<?> fragmentHostCallback) {
        return new FragmentController(fragmentHostCallback);
    }

    private FragmentController(FragmentHostCallback<?> fragmentHostCallback) {
        this.a = fragmentHostCallback;
    }

    public FragmentManager getSupportFragmentManager() {
        return this.a.e();
    }

    public LoaderManager getSupportLoaderManager() {
        return this.a.f();
    }

    public int getActiveFragmentsCount() {
        ArrayList<Fragment> arrayList = this.a.d.f;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public List<Fragment> getActiveFragments(List<Fragment> list) {
        if (this.a.d.f == null) {
            return null;
        }
        if (list == null) {
            list = new ArrayList<>(getActiveFragmentsCount());
        }
        list.addAll(this.a.d.f);
        return list;
    }

    public void attachHost(Fragment fragment) {
        this.a.d.a(this.a, this.a, fragment);
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.a.d.onCreateView(view, str, context, attributeSet);
    }

    public void noteStateNotSaved() {
        this.a.d.f();
    }

    public Parcelable saveAllState() {
        return this.a.d.e();
    }

    public void restoreAllState(Parcelable parcelable, List<Fragment> list) {
        this.a.d.a(parcelable, list);
    }

    public List<Fragment> retainNonConfig() {
        return this.a.d.d();
    }

    public void dispatchCreate() {
        this.a.d.g();
    }

    public void dispatchActivityCreated() {
        this.a.d.h();
    }

    public void dispatchStart() {
        this.a.d.i();
    }

    public void dispatchResume() {
        this.a.d.j();
    }

    public void dispatchPause() {
        this.a.d.k();
    }

    public void dispatchStop() {
        this.a.d.l();
    }

    public void dispatchReallyStop() {
        this.a.d.m();
    }

    public void dispatchDestroyView() {
        this.a.d.n();
    }

    public void dispatchDestroy() {
        this.a.d.o();
    }

    public void dispatchConfigurationChanged(Configuration configuration) {
        this.a.d.a(configuration);
    }

    public void dispatchLowMemory() {
        this.a.d.p();
    }

    public boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        return this.a.d.a(menu, menuInflater);
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        return this.a.d.a(menu);
    }

    public boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        return this.a.d.a(menuItem);
    }

    public boolean dispatchContextItemSelected(MenuItem menuItem) {
        return this.a.d.b(menuItem);
    }

    public void dispatchOptionsMenuClosed(Menu menu) {
        this.a.d.b(menu);
    }

    public boolean execPendingActions() {
        return this.a.d.b();
    }

    public void doLoaderStart() {
        this.a.g();
    }

    public void doLoaderStop(boolean z) {
        this.a.a(z);
    }

    public void doLoaderRetain() {
        this.a.h();
    }

    public void doLoaderDestroy() {
        this.a.i();
    }

    public void reportLoaderStart() {
        this.a.j();
    }

    public SimpleArrayMap<String, LoaderManager> retainLoaderNonConfig() {
        return this.a.k();
    }

    public void restoreLoaderNonConfig(SimpleArrayMap<String, LoaderManager> simpleArrayMap) {
        this.a.a(simpleArrayMap);
    }

    public void dumpLoaders(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.a.a(str, fileDescriptor, printWriter, strArr);
    }
}
