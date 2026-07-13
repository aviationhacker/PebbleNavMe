package android.support.v7.internal.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.internal.widget.ActivityChooserModel;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.ListPopupWindow;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.google.common.primitives.Ints;

/* JADX INFO: loaded from: classes.dex */
public class ActivityChooserView extends ViewGroup implements ActivityChooserModel.ActivityChooserModelClient {
    ActionProvider a;
    private final a b;
    private final b c;
    private final LinearLayoutCompat d;
    private final Drawable e;
    private final FrameLayout f;
    private final ImageView g;
    private final FrameLayout h;
    private final ImageView i;
    private final int j;
    private final DataSetObserver k;
    private final ViewTreeObserver.OnGlobalLayoutListener l;
    private ListPopupWindow m;
    private PopupWindow.OnDismissListener n;
    private boolean o;
    private int p;
    private boolean q;
    private int r;

    public ActivityChooserView(Context context) {
        this(context, null);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityChooserView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = new DataSetObserver() { // from class: android.support.v7.internal.widget.ActivityChooserView.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.b.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                super.onInvalidated();
                ActivityChooserView.this.b.notifyDataSetInvalidated();
            }
        };
        this.l = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.internal.widget.ActivityChooserView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (ActivityChooserView.this.isShowingPopup()) {
                    if (!ActivityChooserView.this.isShown()) {
                        ActivityChooserView.this.getListPopupWindow().dismiss();
                        return;
                    }
                    ActivityChooserView.this.getListPopupWindow().show();
                    if (ActivityChooserView.this.a != null) {
                        ActivityChooserView.this.a.subUiVisibilityChanged(true);
                    }
                }
            }
        };
        this.p = 4;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActivityChooserView, i, 0);
        this.p = typedArrayObtainStyledAttributes.getInt(R.styleable.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(R.layout.abc_activity_chooser_view, (ViewGroup) this, true);
        this.c = new b();
        this.d = (LinearLayoutCompat) findViewById(R.id.activity_chooser_view_content);
        this.e = this.d.getBackground();
        this.h = (FrameLayout) findViewById(R.id.default_activity_button);
        this.h.setOnClickListener(this.c);
        this.h.setOnLongClickListener(this.c);
        this.i = (ImageView) this.h.findViewById(R.id.image);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.expand_activities_button);
        frameLayout.setOnClickListener(this.c);
        frameLayout.setOnTouchListener(new ListPopupWindow.ForwardingListener(frameLayout) { // from class: android.support.v7.internal.widget.ActivityChooserView.3
            @Override // android.support.v7.widget.ListPopupWindow.ForwardingListener
            public ListPopupWindow getPopup() {
                return ActivityChooserView.this.getListPopupWindow();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.support.v7.widget.ListPopupWindow.ForwardingListener
            public boolean onForwardingStarted() {
                ActivityChooserView.this.showPopup();
                return true;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.support.v7.widget.ListPopupWindow.ForwardingListener
            public boolean onForwardingStopped() {
                ActivityChooserView.this.dismissPopup();
                return true;
            }
        });
        this.f = frameLayout;
        this.g = (ImageView) frameLayout.findViewById(R.id.image);
        this.g.setImageDrawable(drawable);
        this.b = new a();
        this.b.registerDataSetObserver(new DataSetObserver() { // from class: android.support.v7.internal.widget.ActivityChooserView.4
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.a();
            }
        });
        Resources resources = context.getResources();
        this.j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
    }

    @Override // android.support.v7.internal.widget.ActivityChooserModel.ActivityChooserModelClient
    public void setActivityChooserModel(ActivityChooserModel activityChooserModel) {
        this.b.a(activityChooserModel);
        if (isShowingPopup()) {
            dismissPopup();
            showPopup();
        }
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.g.setImageDrawable(drawable);
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.g.setContentDescription(getContext().getString(i));
    }

    public void setProvider(ActionProvider actionProvider) {
        this.a = actionProvider;
    }

    public boolean showPopup() {
        if (isShowingPopup() || !this.q) {
            return false;
        }
        this.o = false;
        a(this.p);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (this.b.e() == null) {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.l);
        boolean z = this.h.getVisibility() == 0;
        int iC = this.b.c();
        int i2 = z ? 1 : 0;
        if (i != Integer.MAX_VALUE && iC > i2 + i) {
            this.b.a(true);
            this.b.a(i - 1);
        } else {
            this.b.a(false);
            this.b.a(i);
        }
        ListPopupWindow listPopupWindow = getListPopupWindow();
        if (!listPopupWindow.isShowing()) {
            if (this.o || !z) {
                this.b.a(true, z);
            } else {
                this.b.a(false, false);
            }
            listPopupWindow.setContentWidth(Math.min(this.b.a(), this.j));
            listPopupWindow.show();
            if (this.a != null) {
                this.a.subUiVisibilityChanged(true);
            }
            listPopupWindow.getListView().setContentDescription(getContext().getString(R.string.abc_activitychooserview_choose_application));
        }
    }

    public boolean dismissPopup() {
        if (isShowingPopup()) {
            getListPopupWindow().dismiss();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this.l);
                return true;
            }
            return true;
        }
        return true;
    }

    public boolean isShowingPopup() {
        return getListPopupWindow().isShowing();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ActivityChooserModel activityChooserModelE = this.b.e();
        if (activityChooserModelE != null) {
            activityChooserModelE.registerObserver(this.k);
        }
        this.q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActivityChooserModel activityChooserModelE = this.b.e();
        if (activityChooserModelE != null) {
            activityChooserModelE.unregisterObserver(this.k);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.l);
        }
        if (isShowingPopup()) {
            dismissPopup();
        }
        this.q = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        LinearLayoutCompat linearLayoutCompat = this.d;
        if (this.h.getVisibility() != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), Ints.MAX_POWER_OF_TWO);
        }
        measureChild(linearLayoutCompat, i, i2);
        setMeasuredDimension(linearLayoutCompat.getMeasuredWidth(), linearLayoutCompat.getMeasuredHeight());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.d.layout(0, 0, i3 - i, i4 - i2);
        if (!isShowingPopup()) {
            dismissPopup();
        }
    }

    public ActivityChooserModel getDataModel() {
        return this.b.e();
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.n = onDismissListener;
    }

    public void setInitialActivityCount(int i) {
        this.p = i;
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.r = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ListPopupWindow getListPopupWindow() {
        if (this.m == null) {
            this.m = new ListPopupWindow(getContext());
            this.m.setAdapter(this.b);
            this.m.setAnchorView(this);
            this.m.setModal(true);
            this.m.setOnItemClickListener(this.c);
            this.m.setOnDismissListener(this.c);
        }
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.b.getCount() > 0) {
            this.f.setEnabled(true);
        } else {
            this.f.setEnabled(false);
        }
        int iC = this.b.c();
        int iD = this.b.d();
        if (iC == 1 || (iC > 1 && iD > 0)) {
            this.h.setVisibility(0);
            ResolveInfo resolveInfoB = this.b.b();
            PackageManager packageManager = getContext().getPackageManager();
            this.i.setImageDrawable(resolveInfoB.loadIcon(packageManager));
            if (this.r != 0) {
                this.h.setContentDescription(getContext().getString(this.r, resolveInfoB.loadLabel(packageManager)));
            }
        } else {
            this.h.setVisibility(8);
        }
        if (this.h.getVisibility() == 0) {
            this.d.setBackgroundDrawable(this.e);
        } else {
            this.d.setBackgroundDrawable(null);
        }
    }

    class b implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {
        private b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            switch (((a) adapterView.getAdapter()).getItemViewType(i)) {
                case 0:
                    ActivityChooserView.this.dismissPopup();
                    if (!ActivityChooserView.this.o) {
                        if (!ActivityChooserView.this.b.f()) {
                            i++;
                        }
                        Intent intentChooseActivity = ActivityChooserView.this.b.e().chooseActivity(i);
                        if (intentChooseActivity != null) {
                            intentChooseActivity.addFlags(524288);
                            ActivityChooserView.this.getContext().startActivity(intentChooseActivity);
                            return;
                        }
                        return;
                    }
                    if (i > 0) {
                        ActivityChooserView.this.b.e().setDefaultActivity(i);
                        return;
                    }
                    return;
                case 1:
                    ActivityChooserView.this.a(Integer.MAX_VALUE);
                    return;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view != ActivityChooserView.this.h) {
                if (view == ActivityChooserView.this.f) {
                    ActivityChooserView.this.o = false;
                    ActivityChooserView.this.a(ActivityChooserView.this.p);
                    return;
                }
                throw new IllegalArgumentException();
            }
            ActivityChooserView.this.dismissPopup();
            Intent intentChooseActivity = ActivityChooserView.this.b.e().chooseActivity(ActivityChooserView.this.b.e().getActivityIndex(ActivityChooserView.this.b.b()));
            if (intentChooseActivity != null) {
                intentChooseActivity.addFlags(524288);
                ActivityChooserView.this.getContext().startActivity(intentChooseActivity);
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (view == ActivityChooserView.this.h) {
                if (ActivityChooserView.this.b.getCount() > 0) {
                    ActivityChooserView.this.o = true;
                    ActivityChooserView.this.a(ActivityChooserView.this.p);
                }
                return true;
            }
            throw new IllegalArgumentException();
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            a();
            if (ActivityChooserView.this.a != null) {
                ActivityChooserView.this.a.subUiVisibilityChanged(false);
            }
        }

        private void a() {
            if (ActivityChooserView.this.n != null) {
                ActivityChooserView.this.n.onDismiss();
            }
        }
    }

    class a extends BaseAdapter {
        private ActivityChooserModel b;
        private int c;
        private boolean d;
        private boolean e;
        private boolean f;

        private a() {
            this.c = 4;
        }

        public void a(ActivityChooserModel activityChooserModel) {
            ActivityChooserModel activityChooserModelE = ActivityChooserView.this.b.e();
            if (activityChooserModelE != null && ActivityChooserView.this.isShown()) {
                activityChooserModelE.unregisterObserver(ActivityChooserView.this.k);
            }
            this.b = activityChooserModel;
            if (activityChooserModel != null && ActivityChooserView.this.isShown()) {
                activityChooserModel.registerObserver(ActivityChooserView.this.k);
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return (this.f && i == getCount() + (-1)) ? 1 : 0;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int activityCount = this.b.getActivityCount();
            if (!this.d && this.b.getDefaultActivity() != null) {
                activityCount--;
            }
            int iMin = Math.min(activityCount, this.c);
            if (this.f) {
                return iMin + 1;
            }
            return iMin;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            switch (getItemViewType(i)) {
                case 0:
                    if (!this.d && this.b.getDefaultActivity() != null) {
                        i++;
                    }
                    return this.b.getActivity(i);
                case 1:
                    return null;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            switch (getItemViewType(i)) {
                case 0:
                    if (view == null || view.getId() != R.id.list_item) {
                        view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                    }
                    PackageManager packageManager = ActivityChooserView.this.getContext().getPackageManager();
                    ImageView imageView = (ImageView) view.findViewById(R.id.icon);
                    ResolveInfo resolveInfo = (ResolveInfo) getItem(i);
                    imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
                    ((TextView) view.findViewById(R.id.title)).setText(resolveInfo.loadLabel(packageManager));
                    if (this.d && i == 0 && this.e) {
                        ViewCompat.setActivated(view, true);
                        return view;
                    }
                    ViewCompat.setActivated(view, false);
                    return view;
                case 1:
                    if (view == null || view.getId() != 1) {
                        View viewInflate = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                        viewInflate.setId(1);
                        ((TextView) viewInflate.findViewById(R.id.title)).setText(ActivityChooserView.this.getContext().getString(R.string.abc_activity_chooser_view_see_all));
                        return viewInflate;
                    }
                    return view;
                default:
                    throw new IllegalArgumentException();
            }
        }

        public int a() {
            int i = this.c;
            this.c = Integer.MAX_VALUE;
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int count = getCount();
            View view = null;
            int iMax = 0;
            for (int i2 = 0; i2 < count; i2++) {
                view = getView(i2, view, null);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                iMax = Math.max(iMax, view.getMeasuredWidth());
            }
            this.c = i;
            return iMax;
        }

        public void a(int i) {
            if (this.c != i) {
                this.c = i;
                notifyDataSetChanged();
            }
        }

        public ResolveInfo b() {
            return this.b.getDefaultActivity();
        }

        public void a(boolean z) {
            if (this.f != z) {
                this.f = z;
                notifyDataSetChanged();
            }
        }

        public int c() {
            return this.b.getActivityCount();
        }

        public int d() {
            return this.b.getHistorySize();
        }

        public ActivityChooserModel e() {
            return this.b;
        }

        public void a(boolean z, boolean z2) {
            if (this.d != z || this.e != z2) {
                this.d = z;
                this.e = z2;
                notifyDataSetChanged();
            }
        }

        public boolean f() {
            return this.d;
        }
    }

    public static class InnerLayout extends LinearLayoutCompat {
        private static final int[] a = {android.R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, a);
            setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(0));
            tintTypedArrayObtainStyledAttributes.recycle();
        }
    }
}
