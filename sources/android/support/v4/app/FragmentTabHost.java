package android.support.v4.app;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {
    private final ArrayList<b> a;
    private FrameLayout b;
    private Context c;
    private FragmentManager d;
    private int e;
    private TabHost.OnTabChangeListener f;
    private b g;
    private boolean h;

    static final class b {
        private final String a;
        private final Class<?> b;
        private final Bundle c;
        private Fragment d;

        b(String str, Class<?> cls, Bundle bundle) {
            this.a = str;
            this.b = cls;
            this.c = bundle;
        }
    }

    static class a implements TabHost.TabContentFactory {
        private final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // android.widget.TabHost.TabContentFactory
        public View createTabContent(String str) {
            View view = new View(this.a);
            view.setMinimumWidth(0);
            view.setMinimumHeight(0);
            return view;
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v4.app.FragmentTabHost.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        String a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readString();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.a);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.a + "}";
        }
    }

    public FragmentTabHost(Context context) {
        super(context, null);
        this.a = new ArrayList<>();
        a(context, (AttributeSet) null);
    }

    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new ArrayList<>();
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.inflatedId}, 0, 0);
        this.e = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    private void a(Context context) {
        if (findViewById(R.id.tabs) == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(R.id.tabs);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(R.id.tabcontent);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(0, 0, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.b = frameLayout2;
            this.b.setId(this.e);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    public void setup(Context context, FragmentManager fragmentManager) {
        a(context);
        super.setup();
        this.c = context;
        this.d = fragmentManager;
        a();
    }

    public void setup(Context context, FragmentManager fragmentManager, int i) {
        a(context);
        super.setup();
        this.c = context;
        this.d = fragmentManager;
        this.e = i;
        a();
        this.b.setId(i);
        if (getId() == -1) {
            setId(R.id.tabhost);
        }
    }

    private void a() {
        if (this.b == null) {
            this.b = (FrameLayout) findViewById(this.e);
            if (this.b == null) {
                throw new IllegalStateException("No tab content FrameLayout found for id " + this.e);
            }
        }
    }

    @Override // android.widget.TabHost
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.f = onTabChangeListener;
    }

    public void addTab(TabHost.TabSpec tabSpec, Class<?> cls, Bundle bundle) {
        tabSpec.setContent(new a(this.c));
        String tag = tabSpec.getTag();
        b bVar = new b(tag, cls, bundle);
        if (this.h) {
            bVar.d = this.d.findFragmentByTag(tag);
            if (bVar.d != null && !bVar.d.isDetached()) {
                FragmentTransaction fragmentTransactionBeginTransaction = this.d.beginTransaction();
                fragmentTransactionBeginTransaction.detach(bVar.d);
                fragmentTransactionBeginTransaction.commit();
            }
        }
        this.a.add(bVar);
        addTab(tabSpec);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        FragmentTransaction fragmentTransactionBeginTransaction = null;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.a.size()) {
                break;
            }
            b bVar = this.a.get(i2);
            bVar.d = this.d.findFragmentByTag(bVar.a);
            if (bVar.d != null && !bVar.d.isDetached()) {
                if (bVar.a.equals(currentTabTag)) {
                    this.g = bVar;
                } else {
                    if (fragmentTransactionBeginTransaction == null) {
                        fragmentTransactionBeginTransaction = this.d.beginTransaction();
                    }
                    fragmentTransactionBeginTransaction.detach(bVar.d);
                }
            }
            i = i2 + 1;
        }
        this.h = true;
        FragmentTransaction fragmentTransactionA = a(currentTabTag, fragmentTransactionBeginTransaction);
        if (fragmentTransactionA != null) {
            fragmentTransactionA.commit();
            this.d.executePendingTransactions();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.h = false;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = getCurrentTabTag();
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.a);
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) {
        FragmentTransaction fragmentTransactionA;
        if (this.h && (fragmentTransactionA = a(str, (FragmentTransaction) null)) != null) {
            fragmentTransactionA.commit();
        }
        if (this.f != null) {
            this.f.onTabChanged(str);
        }
    }

    private FragmentTransaction a(String str, FragmentTransaction fragmentTransaction) {
        b bVar = null;
        int i = 0;
        while (i < this.a.size()) {
            b bVar2 = this.a.get(i);
            if (!bVar2.a.equals(str)) {
                bVar2 = bVar;
            }
            i++;
            bVar = bVar2;
        }
        if (bVar == null) {
            throw new IllegalStateException("No tab known for tag " + str);
        }
        if (this.g != bVar) {
            if (fragmentTransaction == null) {
                fragmentTransaction = this.d.beginTransaction();
            }
            if (this.g != null && this.g.d != null) {
                fragmentTransaction.detach(this.g.d);
            }
            if (bVar != null) {
                if (bVar.d == null) {
                    bVar.d = Fragment.instantiate(this.c, bVar.b.getName(), bVar.c);
                    fragmentTransaction.add(this.e, bVar.d, bVar.a);
                } else {
                    fragmentTransaction.attach(bVar.d);
                }
            }
            this.g = bVar;
        }
        return fragmentTransaction;
    }
}
