package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.support.v7.appcompat.R;
import android.support.v7.internal.widget.TintTypedArray;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class AlertController {
    private TextView A;
    private TextView B;
    private View C;
    private ListAdapter D;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;
    private int K;
    private Handler M;
    private final Context a;
    private final AppCompatDialog b;
    private final Window c;
    private CharSequence d;
    private CharSequence e;
    private ListView f;
    private View g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private Button n;
    private CharSequence o;
    private Message p;
    private Button q;
    private CharSequence r;
    private Message s;
    private Button t;
    private CharSequence u;
    private Message v;
    private ScrollView w;
    private Drawable y;
    private ImageView z;
    private boolean m = false;
    private int x = 0;
    private int E = -1;
    private int L = 0;
    private final View.OnClickListener N = new View.OnClickListener() { // from class: android.support.v7.app.AlertController.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message messageObtain;
            if (view == AlertController.this.n && AlertController.this.p != null) {
                messageObtain = Message.obtain(AlertController.this.p);
            } else {
                messageObtain = (view != AlertController.this.q || AlertController.this.s == null) ? (view != AlertController.this.t || AlertController.this.v == null) ? null : Message.obtain(AlertController.this.v) : Message.obtain(AlertController.this.s);
            }
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            AlertController.this.M.obtainMessage(1, AlertController.this.b).sendToTarget();
        }
    };

    static final class a extends Handler {
        private WeakReference<DialogInterface> a;

        public a(DialogInterface dialogInterface) {
            this.a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case -3:
                case -2:
                case -1:
                    ((DialogInterface.OnClickListener) message.obj).onClick(this.a.get(), message.what);
                    break;
                case 1:
                    ((DialogInterface) message.obj).dismiss();
                    break;
            }
        }
    }

    private static boolean a(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    public AlertController(Context context, AppCompatDialog appCompatDialog, Window window) {
        this.a = context;
        this.b = appCompatDialog;
        this.c = window;
        this.M = new a(appCompatDialog);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.AlertDialog, R.attr.alertDialogStyle, 0);
        this.F = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_android_layout, 0);
        this.G = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.H = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listLayout, 0);
        this.I = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listItemLayout, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public void a() {
        this.b.supportRequestWindowFeature(1);
        this.b.setContentView(c());
        d();
    }

    private int c() {
        if (this.G == 0) {
            return this.F;
        }
        if (this.L == 1) {
            return this.G;
        }
        return this.F;
    }

    public void a(CharSequence charSequence) {
        this.d = charSequence;
        if (this.A != null) {
            this.A.setText(charSequence);
        }
    }

    public void b(View view) {
        this.C = view;
    }

    public void b(CharSequence charSequence) {
        this.e = charSequence;
        if (this.B != null) {
            this.B.setText(charSequence);
        }
    }

    public void a(int i) {
        this.g = null;
        this.h = i;
        this.m = false;
    }

    public void c(View view) {
        this.g = view;
        this.h = 0;
        this.m = false;
    }

    public void a(View view, int i, int i2, int i3, int i4) {
        this.g = view;
        this.h = 0;
        this.m = true;
        this.i = i;
        this.j = i2;
        this.k = i3;
        this.l = i4;
    }

    public void a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message) {
        if (message == null && onClickListener != null) {
            message = this.M.obtainMessage(i, onClickListener);
        }
        switch (i) {
            case -3:
                this.u = charSequence;
                this.v = message;
                return;
            case -2:
                this.r = charSequence;
                this.s = message;
                return;
            case -1:
                this.o = charSequence;
                this.p = message;
                return;
            default:
                throw new IllegalArgumentException("Button does not exist");
        }
    }

    public void b(int i) {
        this.y = null;
        this.x = i;
        if (this.z != null) {
            if (i != 0) {
                this.z.setImageResource(this.x);
            } else {
                this.z.setVisibility(8);
            }
        }
    }

    public void a(Drawable drawable) {
        this.y = drawable;
        this.x = 0;
        if (this.z != null) {
            if (drawable != null) {
                this.z.setImageDrawable(drawable);
            } else {
                this.z.setVisibility(8);
            }
        }
    }

    public int c(int i) {
        TypedValue typedValue = new TypedValue();
        this.a.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView b() {
        return this.f;
    }

    public Button d(int i) {
        switch (i) {
            case -3:
                return this.t;
            case -2:
                return this.q;
            case -1:
                return this.n;
            default:
                return null;
        }
    }

    public boolean a(int i, KeyEvent keyEvent) {
        return this.w != null && this.w.executeKeyEvent(keyEvent);
    }

    public boolean b(int i, KeyEvent keyEvent) {
        return this.w != null && this.w.executeKeyEvent(keyEvent);
    }

    private void d() {
        View viewInflate;
        b((ViewGroup) this.c.findViewById(R.id.contentPanel));
        boolean zE = e();
        ViewGroup viewGroup = (ViewGroup) this.c.findViewById(R.id.topPanel);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.a, null, R.styleable.AlertDialog, R.attr.alertDialogStyle, 0);
        a(viewGroup);
        View viewFindViewById = this.c.findViewById(R.id.buttonPanel);
        if (!zE) {
            viewFindViewById.setVisibility(8);
            View viewFindViewById2 = this.c.findViewById(R.id.textSpacerNoButtons);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(0);
            }
        }
        FrameLayout frameLayout = (FrameLayout) this.c.findViewById(R.id.customPanel);
        if (this.g != null) {
            viewInflate = this.g;
        } else if (this.h != 0) {
            viewInflate = LayoutInflater.from(this.a).inflate(this.h, (ViewGroup) frameLayout, false);
        } else {
            viewInflate = null;
        }
        boolean z = viewInflate != null;
        if (!z || !a(viewInflate)) {
            this.c.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout2 = (FrameLayout) this.c.findViewById(R.id.custom);
            frameLayout2.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            if (this.m) {
                frameLayout2.setPadding(this.i, this.j, this.k, this.l);
            }
            if (this.f != null) {
                ((LinearLayout.LayoutParams) frameLayout.getLayoutParams()).weight = 0.0f;
            }
        } else {
            frameLayout.setVisibility(8);
        }
        ListView listView = this.f;
        if (listView != null && this.D != null) {
            listView.setAdapter(this.D);
            int i = this.E;
            if (i > -1) {
                listView.setItemChecked(i, true);
                listView.setSelection(i);
            }
        }
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    private boolean a(ViewGroup viewGroup) {
        if (this.C != null) {
            viewGroup.addView(this.C, 0, new ViewGroup.LayoutParams(-1, -2));
            this.c.findViewById(R.id.title_template).setVisibility(8);
            return true;
        }
        this.z = (ImageView) this.c.findViewById(android.R.id.icon);
        if (!TextUtils.isEmpty(this.d)) {
            this.A = (TextView) this.c.findViewById(R.id.alertTitle);
            this.A.setText(this.d);
            if (this.x != 0) {
                this.z.setImageResource(this.x);
                return true;
            }
            if (this.y != null) {
                this.z.setImageDrawable(this.y);
                return true;
            }
            this.A.setPadding(this.z.getPaddingLeft(), this.z.getPaddingTop(), this.z.getPaddingRight(), this.z.getPaddingBottom());
            this.z.setVisibility(8);
            return true;
        }
        this.c.findViewById(R.id.title_template).setVisibility(8);
        this.z.setVisibility(8);
        viewGroup.setVisibility(8);
        return false;
    }

    private void b(ViewGroup viewGroup) {
        this.w = (ScrollView) this.c.findViewById(R.id.scrollView);
        this.w.setFocusable(false);
        this.B = (TextView) this.c.findViewById(android.R.id.message);
        if (this.B != null) {
            if (this.e != null) {
                this.B.setText(this.e);
                return;
            }
            this.B.setVisibility(8);
            this.w.removeView(this.B);
            if (this.f != null) {
                ViewGroup viewGroup2 = (ViewGroup) this.w.getParent();
                int iIndexOfChild = viewGroup2.indexOfChild(this.w);
                viewGroup2.removeViewAt(iIndexOfChild);
                viewGroup2.addView(this.f, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
                return;
            }
            viewGroup.setVisibility(8);
        }
    }

    private boolean e() {
        int i;
        this.n = (Button) this.c.findViewById(android.R.id.button1);
        this.n.setOnClickListener(this.N);
        if (TextUtils.isEmpty(this.o)) {
            this.n.setVisibility(8);
            i = 0;
        } else {
            this.n.setText(this.o);
            this.n.setVisibility(0);
            i = 1;
        }
        this.q = (Button) this.c.findViewById(android.R.id.button2);
        this.q.setOnClickListener(this.N);
        if (TextUtils.isEmpty(this.r)) {
            this.q.setVisibility(8);
        } else {
            this.q.setText(this.r);
            this.q.setVisibility(0);
            i |= 2;
        }
        this.t = (Button) this.c.findViewById(android.R.id.button3);
        this.t.setOnClickListener(this.N);
        if (TextUtils.isEmpty(this.u)) {
            this.t.setVisibility(8);
        } else {
            this.t.setText(this.u);
            this.t.setVisibility(0);
            i |= 4;
        }
        if (a(this.a)) {
            if (i == 1) {
                a(this.n);
            } else if (i == 2) {
                a(this.q);
            } else if (i == 4) {
                a(this.t);
            }
        }
        return i != 0;
    }

    private void a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    public static class AlertParams {
        public ListAdapter mAdapter;
        public boolean[] mCheckedItems;
        public final Context mContext;
        public Cursor mCursor;
        public View mCustomTitleView;
        public boolean mForceInverseBackground;
        public Drawable mIcon;
        public final LayoutInflater mInflater;
        public String mIsCheckedColumn;
        public boolean mIsMultiChoice;
        public boolean mIsSingleChoice;
        public CharSequence[] mItems;
        public String mLabelColumn;
        public CharSequence mMessage;
        public DialogInterface.OnClickListener mNegativeButtonListener;
        public CharSequence mNegativeButtonText;
        public DialogInterface.OnClickListener mNeutralButtonListener;
        public CharSequence mNeutralButtonText;
        public DialogInterface.OnCancelListener mOnCancelListener;
        public DialogInterface.OnMultiChoiceClickListener mOnCheckboxClickListener;
        public DialogInterface.OnClickListener mOnClickListener;
        public DialogInterface.OnDismissListener mOnDismissListener;
        public AdapterView.OnItemSelectedListener mOnItemSelectedListener;
        public DialogInterface.OnKeyListener mOnKeyListener;
        public OnPrepareListViewListener mOnPrepareListViewListener;
        public DialogInterface.OnClickListener mPositiveButtonListener;
        public CharSequence mPositiveButtonText;
        public CharSequence mTitle;
        public View mView;
        public int mViewLayoutResId;
        public int mViewSpacingBottom;
        public int mViewSpacingLeft;
        public int mViewSpacingRight;
        public int mViewSpacingTop;
        public int mIconId = 0;
        public int mIconAttrId = 0;
        public boolean mViewSpacingSpecified = false;
        public int mCheckedItem = -1;
        public boolean mRecycleOnMeasure = true;
        public boolean mCancelable = true;

        public interface OnPrepareListViewListener {
            void onPrepareListView(ListView listView);
        }

        public AlertParams(Context context) {
            this.mContext = context;
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public void apply(AlertController alertController) {
            if (this.mCustomTitleView != null) {
                alertController.b(this.mCustomTitleView);
            } else {
                if (this.mTitle != null) {
                    alertController.a(this.mTitle);
                }
                if (this.mIcon != null) {
                    alertController.a(this.mIcon);
                }
                if (this.mIconId != 0) {
                    alertController.b(this.mIconId);
                }
                if (this.mIconAttrId != 0) {
                    alertController.b(alertController.c(this.mIconAttrId));
                }
            }
            if (this.mMessage != null) {
                alertController.b(this.mMessage);
            }
            if (this.mPositiveButtonText != null) {
                alertController.a(-1, this.mPositiveButtonText, this.mPositiveButtonListener, null);
            }
            if (this.mNegativeButtonText != null) {
                alertController.a(-2, this.mNegativeButtonText, this.mNegativeButtonListener, null);
            }
            if (this.mNeutralButtonText != null) {
                alertController.a(-3, this.mNeutralButtonText, this.mNeutralButtonListener, null);
            }
            if (this.mItems != null || this.mCursor != null || this.mAdapter != null) {
                a(alertController);
            }
            if (this.mView != null) {
                if (this.mViewSpacingSpecified) {
                    alertController.a(this.mView, this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
                    return;
                } else {
                    alertController.c(this.mView);
                    return;
                }
            }
            if (this.mViewLayoutResId != 0) {
                alertController.a(this.mViewLayoutResId);
            }
        }

        private void a(final AlertController alertController) {
            ListAdapter simpleCursorAdapter;
            int i = android.R.id.text1;
            boolean z = false;
            final ListView listView = (ListView) this.mInflater.inflate(alertController.H, (ViewGroup) null);
            if (this.mIsMultiChoice) {
                if (this.mCursor == null) {
                    simpleCursorAdapter = new ArrayAdapter<CharSequence>(this.mContext, alertController.I, i, this.mItems) { // from class: android.support.v7.app.AlertController.AlertParams.1
                        @Override // android.widget.ArrayAdapter, android.widget.Adapter
                        public View getView(int i2, View view, ViewGroup viewGroup) {
                            View view2 = super.getView(i2, view, viewGroup);
                            if (AlertParams.this.mCheckedItems != null && AlertParams.this.mCheckedItems[i2]) {
                                listView.setItemChecked(i2, true);
                            }
                            return view2;
                        }
                    };
                } else {
                    simpleCursorAdapter = new CursorAdapter(this.mContext, this.mCursor, z) { // from class: android.support.v7.app.AlertController.AlertParams.2
                        private final int d;
                        private final int e;

                        {
                            Cursor cursor = getCursor();
                            this.d = cursor.getColumnIndexOrThrow(AlertParams.this.mLabelColumn);
                            this.e = cursor.getColumnIndexOrThrow(AlertParams.this.mIsCheckedColumn);
                        }

                        @Override // android.widget.CursorAdapter
                        public void bindView(View view, Context context, Cursor cursor) {
                            ((CheckedTextView) view.findViewById(android.R.id.text1)).setText(cursor.getString(this.d));
                            listView.setItemChecked(cursor.getPosition(), cursor.getInt(this.e) == 1);
                        }

                        @Override // android.widget.CursorAdapter
                        public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                            return AlertParams.this.mInflater.inflate(alertController.I, viewGroup, false);
                        }
                    };
                }
            } else {
                int i2 = this.mIsSingleChoice ? alertController.J : alertController.K;
                if (this.mCursor == null) {
                    simpleCursorAdapter = this.mAdapter != null ? this.mAdapter : new b(this.mContext, i2, android.R.id.text1, this.mItems);
                } else {
                    simpleCursorAdapter = new SimpleCursorAdapter(this.mContext, i2, this.mCursor, new String[]{this.mLabelColumn}, new int[]{android.R.id.text1});
                }
            }
            if (this.mOnPrepareListViewListener != null) {
                this.mOnPrepareListViewListener.onPrepareListView(listView);
            }
            alertController.D = simpleCursorAdapter;
            alertController.E = this.mCheckedItem;
            if (this.mOnClickListener != null) {
                listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: android.support.v7.app.AlertController.AlertParams.3
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                        AlertParams.this.mOnClickListener.onClick(alertController.b, i3);
                        if (!AlertParams.this.mIsSingleChoice) {
                            alertController.b.dismiss();
                        }
                    }
                });
            } else if (this.mOnCheckboxClickListener != null) {
                listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: android.support.v7.app.AlertController.AlertParams.4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                        if (AlertParams.this.mCheckedItems != null) {
                            AlertParams.this.mCheckedItems[i3] = listView.isItemChecked(i3);
                        }
                        AlertParams.this.mOnCheckboxClickListener.onClick(alertController.b, i3, listView.isItemChecked(i3));
                    }
                });
            }
            if (this.mOnItemSelectedListener != null) {
                listView.setOnItemSelectedListener(this.mOnItemSelectedListener);
            }
            if (this.mIsSingleChoice) {
                listView.setChoiceMode(1);
            } else if (this.mIsMultiChoice) {
                listView.setChoiceMode(2);
            }
            alertController.f = listView;
        }
    }

    static class b extends ArrayAdapter<CharSequence> {
        public b(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }
    }
}
