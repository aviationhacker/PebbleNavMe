package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.text.TextUtilsCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.widget.ListViewAutoScrollHelper;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.appcompat.R;
import android.support.v7.internal.widget.AppCompatPopupWindow;
import android.support.v7.internal.widget.ListViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.google.common.primitives.Ints;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class ListPopupWindow {
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    public static final int MATCH_PARENT = -1;
    public static final int POSITION_PROMPT_ABOVE = 0;
    public static final int POSITION_PROMPT_BELOW = 1;
    public static final int WRAP_CONTENT = -2;
    private static Method a;
    private Handler A;
    private Rect B;
    private boolean C;
    private int D;
    int b;
    private Context c;
    private PopupWindow d;
    private ListAdapter e;
    private a f;
    private int g;
    private int h;
    private int i;
    private int j;
    private boolean k;
    private int l;
    private boolean m;
    private boolean n;
    private View o;
    private int p;
    private DataSetObserver q;
    private View r;
    private Drawable s;
    private AdapterView.OnItemClickListener t;
    private AdapterView.OnItemSelectedListener u;
    private final f v;
    private final e w;
    private final d x;
    private final b y;
    private Runnable z;

    static {
        try {
            a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
        } catch (NoSuchMethodException e2) {
            Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        this.g = -2;
        this.h = -2;
        this.l = 0;
        this.m = false;
        this.n = false;
        this.b = Integer.MAX_VALUE;
        this.p = 0;
        this.v = new f();
        this.w = new e();
        this.x = new d();
        this.y = new b();
        this.A = new Handler();
        this.B = new Rect();
        this.c = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPopupWindow, i, i2);
        this.i = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        this.j = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (this.j != 0) {
            this.k = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        this.d = new AppCompatPopupWindow(context, attributeSet, i);
        this.d.setInputMethodMode(1);
        this.D = TextUtilsCompat.getLayoutDirectionFromLocale(this.c.getResources().getConfiguration().locale);
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (this.q == null) {
            this.q = new c();
        } else if (this.e != null) {
            this.e.unregisterDataSetObserver(this.q);
        }
        this.e = listAdapter;
        if (this.e != null) {
            listAdapter.registerDataSetObserver(this.q);
        }
        if (this.f != null) {
            this.f.setAdapter(this.e);
        }
    }

    public void setPromptPosition(int i) {
        this.p = i;
    }

    public int getPromptPosition() {
        return this.p;
    }

    public void setModal(boolean z) {
        this.C = z;
        this.d.setFocusable(z);
    }

    public boolean isModal() {
        return this.C;
    }

    public void setForceIgnoreOutsideTouch(boolean z) {
        this.n = z;
    }

    public void setDropDownAlwaysVisible(boolean z) {
        this.m = z;
    }

    public boolean isDropDownAlwaysVisible() {
        return this.m;
    }

    public void setSoftInputMode(int i) {
        this.d.setSoftInputMode(i);
    }

    public int getSoftInputMode() {
        return this.d.getSoftInputMode();
    }

    public void setListSelector(Drawable drawable) {
        this.s = drawable;
    }

    public Drawable getBackground() {
        return this.d.getBackground();
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.d.setBackgroundDrawable(drawable);
    }

    public void setAnimationStyle(int i) {
        this.d.setAnimationStyle(i);
    }

    public int getAnimationStyle() {
        return this.d.getAnimationStyle();
    }

    public View getAnchorView() {
        return this.r;
    }

    public void setAnchorView(View view) {
        this.r = view;
    }

    public int getHorizontalOffset() {
        return this.i;
    }

    public void setHorizontalOffset(int i) {
        this.i = i;
    }

    public int getVerticalOffset() {
        if (this.k) {
            return this.j;
        }
        return 0;
    }

    public void setVerticalOffset(int i) {
        this.j = i;
        this.k = true;
    }

    public void setDropDownGravity(int i) {
        this.l = i;
    }

    public int getWidth() {
        return this.h;
    }

    public void setWidth(int i) {
        this.h = i;
    }

    public void setContentWidth(int i) {
        Drawable background = this.d.getBackground();
        if (background != null) {
            background.getPadding(this.B);
            this.h = this.B.left + this.B.right + i;
        } else {
            setWidth(i);
        }
    }

    public int getHeight() {
        return this.g;
    }

    public void setHeight(int i) {
        this.g = i;
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.t = onItemClickListener;
    }

    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.u = onItemSelectedListener;
    }

    public void setPromptView(View view) {
        boolean zIsShowing = isShowing();
        if (zIsShowing) {
            a();
        }
        this.o = view;
        if (zIsShowing) {
            show();
        }
    }

    public void postShow() {
        this.A.post(this.z);
    }

    public void show() {
        int i;
        int i2;
        int width;
        boolean z = false;
        int iB = b();
        boolean zIsInputMethodNotNeeded = isInputMethodNotNeeded();
        if (this.d.isShowing()) {
            if (this.h == -1) {
                width = -1;
            } else if (this.h == -2) {
                width = getAnchorView().getWidth();
            } else {
                width = this.h;
            }
            if (this.g == -1) {
                if (!zIsInputMethodNotNeeded) {
                    iB = -1;
                }
                if (zIsInputMethodNotNeeded) {
                    this.d.setWindowLayoutMode(this.h != -1 ? 0 : -1, 0);
                } else {
                    this.d.setWindowLayoutMode(this.h == -1 ? -1 : 0, -1);
                }
            } else if (this.g != -2) {
                iB = this.g;
            }
            PopupWindow popupWindow = this.d;
            if (!this.n && !this.m) {
                z = true;
            }
            popupWindow.setOutsideTouchable(z);
            this.d.update(getAnchorView(), this.i, this.j, width, iB);
            return;
        }
        if (this.h == -1) {
            i = -1;
        } else if (this.h == -2) {
            this.d.setWidth(getAnchorView().getWidth());
            i = 0;
        } else {
            this.d.setWidth(this.h);
            i = 0;
        }
        if (this.g == -1) {
            i2 = -1;
        } else if (this.g == -2) {
            this.d.setHeight(iB);
            i2 = 0;
        } else {
            this.d.setHeight(this.g);
            i2 = 0;
        }
        this.d.setWindowLayoutMode(i, i2);
        a(true);
        this.d.setOutsideTouchable((this.n || this.m) ? false : true);
        this.d.setTouchInterceptor(this.w);
        PopupWindowCompat.showAsDropDown(this.d, getAnchorView(), this.i, this.j, this.l);
        this.f.setSelection(-1);
        if (!this.C || this.f.isInTouchMode()) {
            clearListSelection();
        }
        if (!this.C) {
            this.A.post(this.y);
        }
    }

    public void dismiss() {
        this.d.dismiss();
        a();
        this.d.setContentView(null);
        this.f = null;
        this.A.removeCallbacks(this.v);
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.d.setOnDismissListener(onDismissListener);
    }

    private void a() {
        if (this.o != null) {
            ViewParent parent = this.o.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.o);
            }
        }
    }

    public void setInputMethodMode(int i) {
        this.d.setInputMethodMode(i);
    }

    public int getInputMethodMode() {
        return this.d.getInputMethodMode();
    }

    public void setSelection(int i) {
        a aVar = this.f;
        if (!isShowing() || aVar == null) {
            return;
        }
        aVar.f = false;
        aVar.setSelection(i);
        if (Build.VERSION.SDK_INT >= 11 && aVar.getChoiceMode() != 0) {
            aVar.setItemChecked(i, true);
        }
    }

    public void clearListSelection() {
        a aVar = this.f;
        if (aVar == null) {
            return;
        }
        aVar.f = true;
        aVar.requestLayout();
    }

    public boolean isShowing() {
        return this.d.isShowing();
    }

    public boolean isInputMethodNotNeeded() {
        return this.d.getInputMethodMode() == 2;
    }

    public boolean performItemClick(int i) {
        if (!isShowing()) {
            return false;
        }
        if (this.t != null) {
            a aVar = this.f;
            this.t.onItemClick(aVar, aVar.getChildAt(i - aVar.getFirstVisiblePosition()), i, aVar.getAdapter().getItemId(i));
        }
        return true;
    }

    public Object getSelectedItem() {
        if (isShowing()) {
            return this.f.getSelectedItem();
        }
        return null;
    }

    public int getSelectedItemPosition() {
        if (isShowing()) {
            return this.f.getSelectedItemPosition();
        }
        return -1;
    }

    public long getSelectedItemId() {
        if (isShowing()) {
            return this.f.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public View getSelectedView() {
        if (isShowing()) {
            return this.f.getSelectedView();
        }
        return null;
    }

    public ListView getListView() {
        return this.f;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!isShowing() || i == 62) {
            return false;
        }
        if (this.f.getSelectedItemPosition() < 0 && a(i)) {
            return false;
        }
        int selectedItemPosition = this.f.getSelectedItemPosition();
        boolean z = !this.d.isAboveAnchor();
        ListAdapter listAdapter = this.e;
        int iLookForSelectablePosition = Integer.MAX_VALUE;
        int count = Integer.MIN_VALUE;
        if (listAdapter != null) {
            boolean zAreAllItemsEnabled = listAdapter.areAllItemsEnabled();
            iLookForSelectablePosition = zAreAllItemsEnabled ? 0 : this.f.lookForSelectablePosition(0, true);
            count = zAreAllItemsEnabled ? listAdapter.getCount() - 1 : this.f.lookForSelectablePosition(listAdapter.getCount() - 1, false);
        }
        if ((z && i == 19 && selectedItemPosition <= iLookForSelectablePosition) || (!z && i == 20 && selectedItemPosition >= count)) {
            clearListSelection();
            this.d.setInputMethodMode(1);
            show();
            return true;
        }
        this.f.f = false;
        if (!this.f.onKeyDown(i, keyEvent)) {
            return (z && i == 20) ? selectedItemPosition == count : !z && i == 19 && selectedItemPosition == iLookForSelectablePosition;
        }
        this.d.setInputMethodMode(2);
        this.f.requestFocusFromTouch();
        show();
        switch (i) {
            case 19:
            case 20:
            case 23:
            case 66:
                break;
        }
        return true;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (!isShowing() || this.f.getSelectedItemPosition() < 0) {
            return false;
        }
        boolean zOnKeyUp = this.f.onKeyUp(i, keyEvent);
        if (zOnKeyUp && a(i)) {
            dismiss();
            return zOnKeyUp;
        }
        return zOnKeyUp;
    }

    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        if (i == 4 && isShowing()) {
            View view = this.r;
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                KeyEvent.DispatcherState keyDispatcherState = view.getKeyDispatcherState();
                if (keyDispatcherState == null) {
                    return true;
                }
                keyDispatcherState.startTracking(keyEvent, this);
                return true;
            }
            if (keyEvent.getAction() == 1) {
                KeyEvent.DispatcherState keyDispatcherState2 = view.getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.handleUpEvent(keyEvent);
                }
                if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                    dismiss();
                    return true;
                }
            }
        }
        return false;
    }

    public View.OnTouchListener createDragToOpenListener(View view) {
        return new ForwardingListener(view) { // from class: android.support.v7.widget.ListPopupWindow.1
            @Override // android.support.v7.widget.ListPopupWindow.ForwardingListener
            public ListPopupWindow getPopup() {
                return ListPopupWindow.this;
            }
        };
    }

    private int b() {
        int measuredHeight;
        int i;
        int iMakeMeasureSpec;
        View view;
        int measuredHeight2;
        if (this.f == null) {
            Context context = this.c;
            this.z = new Runnable() { // from class: android.support.v7.widget.ListPopupWindow.2
                @Override // java.lang.Runnable
                public void run() {
                    View anchorView = ListPopupWindow.this.getAnchorView();
                    if (anchorView != null && anchorView.getWindowToken() != null) {
                        ListPopupWindow.this.show();
                    }
                }
            };
            this.f = new a(context, !this.C);
            if (this.s != null) {
                this.f.setSelector(this.s);
            }
            this.f.setAdapter(this.e);
            this.f.setOnItemClickListener(this.t);
            this.f.setFocusable(true);
            this.f.setFocusableInTouchMode(true);
            this.f.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: android.support.v7.widget.ListPopupWindow.3
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view2, int i2, long j) {
                    a aVar;
                    if (i2 == -1 || (aVar = ListPopupWindow.this.f) == null) {
                        return;
                    }
                    aVar.f = false;
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.f.setOnScrollListener(this.x);
            if (this.u != null) {
                this.f.setOnItemSelectedListener(this.u);
            }
            a aVar = this.f;
            View view2 = this.o;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                switch (this.p) {
                    case 0:
                        linearLayout.addView(view2);
                        linearLayout.addView(aVar, layoutParams);
                        break;
                    case 1:
                        linearLayout.addView(aVar, layoutParams);
                        linearLayout.addView(view2);
                        break;
                    default:
                        Log.e("ListPopupWindow", "Invalid hint position " + this.p);
                        break;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(this.h, Integer.MIN_VALUE), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                measuredHeight2 = layoutParams2.bottomMargin + view2.getMeasuredHeight() + layoutParams2.topMargin;
                view = linearLayout;
            } else {
                view = aVar;
                measuredHeight2 = 0;
            }
            this.d.setContentView(view);
            measuredHeight = measuredHeight2;
        } else {
            View view3 = this.o;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = layoutParams3.bottomMargin + view3.getMeasuredHeight() + layoutParams3.topMargin;
            } else {
                measuredHeight = 0;
            }
        }
        Drawable background = this.d.getBackground();
        if (background != null) {
            background.getPadding(this.B);
            int i2 = this.B.top + this.B.bottom;
            if (this.k) {
                i = i2;
            } else {
                this.j = -this.B.top;
                i = i2;
            }
        } else {
            this.B.setEmpty();
            i = 0;
        }
        if (this.d.getInputMethodMode() == 2) {
        }
        int maxAvailableHeight = this.d.getMaxAvailableHeight(getAnchorView(), this.j);
        if (this.m || this.g == -1) {
            return maxAvailableHeight + i;
        }
        switch (this.h) {
            case -2:
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.c.getResources().getDisplayMetrics().widthPixels - (this.B.left + this.B.right), Integer.MIN_VALUE);
                break;
            case -1:
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.c.getResources().getDisplayMetrics().widthPixels - (this.B.left + this.B.right), Ints.MAX_POWER_OF_TWO);
                break;
            default:
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.h, Ints.MAX_POWER_OF_TWO);
                break;
        }
        int iMeasureHeightOfChildrenCompat = this.f.measureHeightOfChildrenCompat(iMakeMeasureSpec, 0, -1, maxAvailableHeight - measuredHeight, -1);
        if (iMeasureHeightOfChildrenCompat > 0) {
            measuredHeight += i;
        }
        return iMeasureHeightOfChildrenCompat + measuredHeight;
    }

    public static abstract class ForwardingListener implements View.OnTouchListener {
        private final float a;
        private final View d;
        private Runnable e;
        private Runnable f;
        private boolean g;
        private boolean h;
        private int i;
        private final int[] j = new int[2];
        private final int b = ViewConfiguration.getTapTimeout();
        private final int c = (this.b + ViewConfiguration.getLongPressTimeout()) / 2;

        public abstract ListPopupWindow getPopup();

        public ForwardingListener(View view) {
            this.d = view;
            this.a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            boolean zB;
            boolean z = this.g;
            if (z) {
                if (this.h) {
                    zB = b(motionEvent);
                } else {
                    zB = b(motionEvent) || !onForwardingStopped();
                }
            } else {
                boolean z2 = a(motionEvent) && onForwardingStarted();
                if (z2) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    this.d.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
                zB = z2;
            }
            this.g = zB;
            return zB || z;
        }

        public boolean onForwardingStarted() {
            ListPopupWindow popup = getPopup();
            if (popup != null && !popup.isShowing()) {
                popup.show();
                return true;
            }
            return true;
        }

        public boolean onForwardingStopped() {
            ListPopupWindow popup = getPopup();
            if (popup != null && popup.isShowing()) {
                popup.dismiss();
                return true;
            }
            return true;
        }

        private boolean a(MotionEvent motionEvent) {
            View view = this.d;
            if (!view.isEnabled()) {
                return false;
            }
            switch (MotionEventCompat.getActionMasked(motionEvent)) {
                case 0:
                    this.i = motionEvent.getPointerId(0);
                    this.h = false;
                    if (this.e == null) {
                        this.e = new a();
                    }
                    view.postDelayed(this.e, this.b);
                    if (this.f == null) {
                        this.f = new b();
                    }
                    view.postDelayed(this.f, this.c);
                    break;
                case 1:
                case 3:
                    a();
                    break;
                case 2:
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.i);
                    if (iFindPointerIndex >= 0 && !a(view, motionEvent.getX(iFindPointerIndex), motionEvent.getY(iFindPointerIndex), this.a)) {
                        a();
                        view.getParent().requestDisallowInterceptTouchEvent(true);
                        break;
                    }
                    break;
            }
            return false;
        }

        private void a() {
            if (this.f != null) {
                this.d.removeCallbacks(this.f);
            }
            if (this.e != null) {
                this.d.removeCallbacks(this.e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            a();
            View view = this.d;
            if (view.isEnabled() && !view.isLongClickable() && onForwardingStarted()) {
                view.getParent().requestDisallowInterceptTouchEvent(true);
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                view.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
                this.g = true;
                this.h = true;
            }
        }

        private boolean b(MotionEvent motionEvent) {
            a aVar;
            View view = this.d;
            ListPopupWindow popup = getPopup();
            if (popup == null || !popup.isShowing() || (aVar = popup.f) == null || !aVar.isShown()) {
                return false;
            }
            MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
            b(view, motionEventObtainNoHistory);
            a(aVar, motionEventObtainNoHistory);
            boolean zA = aVar.a(motionEventObtainNoHistory, this.i);
            motionEventObtainNoHistory.recycle();
            int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
            return zA && (actionMasked != 1 && actionMasked != 3);
        }

        private static boolean a(View view, float f, float f2, float f3) {
            return f >= (-f3) && f2 >= (-f3) && f < ((float) (view.getRight() - view.getLeft())) + f3 && f2 < ((float) (view.getBottom() - view.getTop())) + f3;
        }

        private boolean a(View view, MotionEvent motionEvent) {
            view.getLocationOnScreen(this.j);
            motionEvent.offsetLocation(-r0[0], -r0[1]);
            return true;
        }

        private boolean b(View view, MotionEvent motionEvent) {
            view.getLocationOnScreen(this.j);
            motionEvent.offsetLocation(r0[0], r0[1]);
            return true;
        }

        class a implements Runnable {
            private a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ForwardingListener.this.d.getParent().requestDisallowInterceptTouchEvent(true);
            }
        }

        class b implements Runnable {
            private b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ForwardingListener.this.b();
            }
        }
    }

    static class a extends ListViewCompat {
        private boolean f;
        private boolean g;
        private boolean h;
        private ViewPropertyAnimatorCompat i;
        private ListViewAutoScrollHelper j;

        public a(Context context, boolean z) {
            super(context, null, R.attr.dropDownListViewStyle);
            this.g = z;
            setCacheColorHint(0);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(android.view.MotionEvent r9, int r10) {
            /*
                r8 = this;
                r2 = 1
                r1 = 0
                int r3 = android.support.v4.view.MotionEventCompat.getActionMasked(r9)
                switch(r3) {
                    case 1: goto L2d;
                    case 2: goto L6a;
                    case 3: goto L2a;
                    default: goto L9;
                }
            L9:
                r0 = r1
                r3 = r2
            Lb:
                if (r3 == 0) goto Lf
                if (r0 == 0) goto L12
            Lf:
                r8.a()
            L12:
                if (r3 == 0) goto L60
                android.support.v4.widget.ListViewAutoScrollHelper r0 = r8.j
                if (r0 != 0) goto L1f
                android.support.v4.widget.ListViewAutoScrollHelper r0 = new android.support.v4.widget.ListViewAutoScrollHelper
                r0.<init>(r8)
                r8.j = r0
            L1f:
                android.support.v4.widget.ListViewAutoScrollHelper r0 = r8.j
                r0.setEnabled(r2)
                android.support.v4.widget.ListViewAutoScrollHelper r0 = r8.j
                r0.onTouch(r8, r9)
            L29:
                return r3
            L2a:
                r0 = r1
                r3 = r1
                goto Lb
            L2d:
                r0 = r1
            L2e:
                int r4 = r9.findPointerIndex(r10)
                if (r4 >= 0) goto L37
                r0 = r1
                r3 = r1
                goto Lb
            L37:
                float r5 = r9.getX(r4)
                int r5 = (int) r5
                float r4 = r9.getY(r4)
                int r4 = (int) r4
                int r6 = r8.pointToPosition(r5, r4)
                r7 = -1
                if (r6 != r7) goto L4b
                r3 = r0
                r0 = r2
                goto Lb
            L4b:
                int r0 = r8.getFirstVisiblePosition()
                int r0 = r6 - r0
                android.view.View r0 = r8.getChildAt(r0)
                float r5 = (float) r5
                float r4 = (float) r4
                r8.a(r0, r6, r5, r4)
                if (r3 != r2) goto L9
                r8.a(r0, r6)
                goto L9
            L60:
                android.support.v4.widget.ListViewAutoScrollHelper r0 = r8.j
                if (r0 == 0) goto L29
                android.support.v4.widget.ListViewAutoScrollHelper r0 = r8.j
                r0.setEnabled(r1)
                goto L29
            L6a:
                r0 = r2
                goto L2e
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.ListPopupWindow.a.a(android.view.MotionEvent, int):boolean");
        }

        private void a(View view, int i) {
            performItemClick(view, i, getItemIdAtPosition(i));
        }

        private void a() {
            this.h = false;
            setPressed(false);
            drawableStateChanged();
            if (this.i != null) {
                this.i.cancel();
                this.i = null;
            }
        }

        private void a(View view, int i, float f, float f2) {
            this.h = true;
            setPressed(true);
            layoutChildren();
            setSelection(i);
            positionSelectorLikeTouchCompat(i, view, f, f2);
            setSelectorEnabled(false);
            refreshDrawableState();
        }

        @Override // android.support.v7.internal.widget.ListViewCompat
        protected boolean touchModeDrawsInPressedStateCompat() {
            return this.h || super.touchModeDrawsInPressedStateCompat();
        }

        @Override // android.view.View
        public boolean isInTouchMode() {
            return (this.g && this.f) || super.isInTouchMode();
        }

        @Override // android.view.View
        public boolean hasWindowFocus() {
            return this.g || super.hasWindowFocus();
        }

        @Override // android.view.View
        public boolean isFocused() {
            return this.g || super.isFocused();
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean hasFocus() {
            return this.g || super.hasFocus();
        }
    }

    class c extends DataSetObserver {
        private c() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ListPopupWindow.this.isShowing()) {
                ListPopupWindow.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListPopupWindow.this.clearListSelection();
        }
    }

    class f implements Runnable {
        private f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ListPopupWindow.this.f != null && ListPopupWindow.this.f.getCount() > ListPopupWindow.this.f.getChildCount() && ListPopupWindow.this.f.getChildCount() <= ListPopupWindow.this.b) {
                ListPopupWindow.this.d.setInputMethodMode(2);
                ListPopupWindow.this.show();
            }
        }
    }

    class e implements View.OnTouchListener {
        private e() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && ListPopupWindow.this.d != null && ListPopupWindow.this.d.isShowing() && x >= 0 && x < ListPopupWindow.this.d.getWidth() && y >= 0 && y < ListPopupWindow.this.d.getHeight()) {
                ListPopupWindow.this.A.postDelayed(ListPopupWindow.this.v, 250L);
                return false;
            }
            if (action == 1) {
                ListPopupWindow.this.A.removeCallbacks(ListPopupWindow.this.v);
                return false;
            }
            return false;
        }
    }

    class d implements AbsListView.OnScrollListener {
        private d() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1 && !ListPopupWindow.this.isInputMethodNotNeeded() && ListPopupWindow.this.d.getContentView() != null) {
                ListPopupWindow.this.A.removeCallbacks(ListPopupWindow.this.v);
                ListPopupWindow.this.v.run();
            }
        }
    }

    private static boolean a(int i) {
        return i == 66 || i == 23;
    }

    private void a(boolean z) {
        if (a != null) {
            try {
                a.invoke(this.d, Boolean.valueOf(z));
            } catch (Exception e2) {
                Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
        }
    }
}
