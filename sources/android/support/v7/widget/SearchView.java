package android.support.v7.widget;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.widget.CursorAdapter;
import android.support.v7.appcompat.R;
import android.support.v7.internal.widget.TintManager;
import android.support.v7.internal.widget.TintTypedArray;
import android.support.v7.internal.widget.ViewUtils;
import android.support.v7.view.CollapsibleActionView;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.actions.SearchIntents;
import com.google.common.primitives.Ints;
import defpackage.gd;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import org.eclipse.jetty.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements CollapsibleActionView {
    static final a a;
    private static final boolean c;
    private CursorAdapter A;
    private boolean B;
    private CharSequence C;
    private boolean D;
    private boolean E;
    private int F;
    private boolean G;
    private CharSequence H;
    private CharSequence I;
    private boolean J;
    private int K;
    private SearchableInfo L;
    private Bundle M;
    private final TintManager N;
    private Runnable O;
    private final Runnable P;
    private Runnable Q;
    private final WeakHashMap<String, Drawable.ConstantState> R;
    private final View.OnClickListener S;
    private final TextView.OnEditorActionListener T;
    private final AdapterView.OnItemClickListener U;
    private final AdapterView.OnItemSelectedListener V;
    private TextWatcher W;
    View.OnKeyListener b;
    private final SearchAutoComplete d;
    private final View e;
    private final View f;
    private final View g;
    private final ImageView h;
    private final ImageView i;
    private final ImageView j;
    private final ImageView k;
    private final View l;
    private final ImageView m;
    private final Drawable n;
    private final int o;
    private final int p;
    private final Intent q;
    private final Intent r;
    private final CharSequence s;
    private OnQueryTextListener t;
    private OnCloseListener u;
    private View.OnFocusChangeListener v;
    private OnSuggestionListener w;
    private View.OnClickListener x;
    private boolean y;
    private boolean z;

    public interface OnCloseListener {
        boolean onClose();
    }

    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    public interface OnSuggestionListener {
        boolean onSuggestionClick(int i);

        boolean onSuggestionSelect(int i);
    }

    static {
        c = Build.VERSION.SDK_INT >= 8;
        a = new a();
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.O = new Runnable() { // from class: android.support.v7.widget.SearchView.1
            @Override // java.lang.Runnable
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) SearchView.this.getContext().getSystemService("input_method");
                if (inputMethodManager != null) {
                    SearchView.a.a(inputMethodManager, SearchView.this, 0);
                }
            }
        };
        this.P = new Runnable() { // from class: android.support.v7.widget.SearchView.5
            @Override // java.lang.Runnable
            public void run() {
                SearchView.this.i();
            }
        };
        this.Q = new Runnable() { // from class: android.support.v7.widget.SearchView.6
            @Override // java.lang.Runnable
            public void run() {
                if (SearchView.this.A != null && (SearchView.this.A instanceof gd)) {
                    SearchView.this.A.changeCursor(null);
                }
            }
        };
        this.R = new WeakHashMap<>();
        this.S = new View.OnClickListener() { // from class: android.support.v7.widget.SearchView.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view == SearchView.this.h) {
                    SearchView.this.o();
                    return;
                }
                if (view == SearchView.this.j) {
                    SearchView.this.n();
                    return;
                }
                if (view == SearchView.this.i) {
                    SearchView.this.l();
                } else if (view == SearchView.this.k) {
                    SearchView.this.p();
                } else if (view == SearchView.this.d) {
                    SearchView.this.r();
                }
            }
        };
        this.b = new View.OnKeyListener() { // from class: android.support.v7.widget.SearchView.11
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i2, KeyEvent keyEvent) {
                if (SearchView.this.L == null) {
                    return false;
                }
                if (SearchView.this.d.isPopupShowing() && SearchView.this.d.getListSelection() != -1) {
                    return SearchView.this.a(view, i2, keyEvent);
                }
                if (SearchView.this.d.a() || !KeyEventCompat.hasNoModifiers(keyEvent) || keyEvent.getAction() != 1 || i2 != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView.this.a(0, (String) null, SearchView.this.d.getText().toString());
                return true;
            }
        };
        this.T = new TextView.OnEditorActionListener() { // from class: android.support.v7.widget.SearchView.12
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                SearchView.this.l();
                return true;
            }
        };
        this.U = new AdapterView.OnItemClickListener() { // from class: android.support.v7.widget.SearchView.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.a(i2, 0, (String) null);
            }
        };
        this.V = new AdapterView.OnItemSelectedListener() { // from class: android.support.v7.widget.SearchView.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.c(i2);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.W = new TextWatcher() { // from class: android.support.v7.widget.SearchView.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                SearchView.this.c(charSequence);
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }
        };
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.SearchView, i, 0);
        this.N = tintTypedArrayObtainStyledAttributes.getTintManager();
        LayoutInflater.from(context).inflate(tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.SearchView_layout, R.layout.abc_search_view), (ViewGroup) this, true);
        this.d = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.d.setSearchView(this);
        this.e = findViewById(R.id.search_edit_frame);
        this.f = findViewById(R.id.search_plate);
        this.g = findViewById(R.id.submit_area);
        this.h = (ImageView) findViewById(R.id.search_button);
        this.i = (ImageView) findViewById(R.id.search_go_btn);
        this.j = (ImageView) findViewById(R.id.search_close_btn);
        this.k = (ImageView) findViewById(R.id.search_voice_btn);
        this.m = (ImageView) findViewById(R.id.search_mag_icon);
        this.f.setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_queryBackground));
        this.g.setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_submitBackground));
        this.h.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_searchIcon));
        this.i.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_goIcon));
        this.j.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_closeIcon));
        this.k.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_voiceIcon));
        this.m.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_searchIcon));
        this.n = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_searchHintIcon);
        this.o = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.SearchView_suggestionRowLayout, R.layout.abc_search_dropdown_item_icons_2line);
        this.p = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.SearchView_commitIcon, 0);
        this.h.setOnClickListener(this.S);
        this.j.setOnClickListener(this.S);
        this.i.setOnClickListener(this.S);
        this.k.setOnClickListener(this.S);
        this.d.setOnClickListener(this.S);
        this.d.addTextChangedListener(this.W);
        this.d.setOnEditorActionListener(this.T);
        this.d.setOnItemClickListener(this.U);
        this.d.setOnItemSelectedListener(this.V);
        this.d.setOnKeyListener(this.b);
        this.d.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: android.support.v7.widget.SearchView.7
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (SearchView.this.v != null) {
                    SearchView.this.v.onFocusChange(SearchView.this, z);
                }
            }
        });
        setIconifiedByDefault(tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.SearchView_iconifiedByDefault, true));
        int dimensionPixelSize = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SearchView_android_maxWidth, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.s = tintTypedArrayObtainStyledAttributes.getText(R.styleable.SearchView_defaultQueryHint);
        this.C = tintTypedArrayObtainStyledAttributes.getText(R.styleable.SearchView_queryHint);
        int i2 = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.SearchView_android_imeOptions, -1);
        if (i2 != -1) {
            setImeOptions(i2);
        }
        int i3 = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.SearchView_android_inputType, -1);
        if (i3 != -1) {
            setInputType(i3);
        }
        setFocusable(tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.SearchView_android_focusable, true));
        tintTypedArrayObtainStyledAttributes.recycle();
        this.q = new Intent("android.speech.action.WEB_SEARCH");
        this.q.addFlags(268435456);
        this.q.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.r = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.r.addFlags(268435456);
        this.l = findViewById(this.d.getDropDownAnchor());
        if (this.l != null) {
            if (Build.VERSION.SDK_INT >= 11) {
                b();
            } else {
                c();
            }
        }
        a(this.y);
        j();
    }

    @TargetApi(11)
    private void b() {
        this.l.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: android.support.v7.widget.SearchView.8
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                SearchView.this.q();
            }
        });
    }

    private void c() {
        this.l.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.widget.SearchView.9
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                SearchView.this.q();
            }
        });
    }

    public int getSuggestionRowLayout() {
        return this.o;
    }

    public int getSuggestionCommitIconResId() {
        return this.p;
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.L = searchableInfo;
        if (this.L != null) {
            if (c) {
                k();
            }
            j();
        }
        this.G = c && d();
        if (this.G) {
            this.d.setPrivateImeOptions("nm");
        }
        a(isIconified());
    }

    public void setAppSearchData(Bundle bundle) {
        this.M = bundle;
    }

    public void setImeOptions(int i) {
        this.d.setImeOptions(i);
    }

    public int getImeOptions() {
        return this.d.getImeOptions();
    }

    public void setInputType(int i) {
        this.d.setInputType(i);
    }

    public int getInputType() {
        return this.d.getInputType();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (this.E || !isFocusable()) {
            return false;
        }
        if (!isIconified()) {
            boolean zRequestFocus = this.d.requestFocus(i, rect);
            if (zRequestFocus) {
                a(false);
            }
            return zRequestFocus;
        }
        return super.requestFocus(i, rect);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.E = true;
        setImeVisibility(false);
        super.clearFocus();
        this.d.clearFocus();
        this.E = false;
    }

    public void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.t = onQueryTextListener;
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.u = onCloseListener;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.v = onFocusChangeListener;
    }

    public void setOnSuggestionListener(OnSuggestionListener onSuggestionListener) {
        this.w = onSuggestionListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.x = onClickListener;
    }

    public CharSequence getQuery() {
        return this.d.getText();
    }

    public void setQuery(CharSequence charSequence, boolean z) {
        this.d.setText(charSequence);
        if (charSequence != null) {
            this.d.setSelection(this.d.length());
            this.I = charSequence;
        }
        if (z && !TextUtils.isEmpty(charSequence)) {
            l();
        }
    }

    public void setQueryHint(CharSequence charSequence) {
        this.C = charSequence;
        j();
    }

    public CharSequence getQueryHint() {
        if (this.C != null) {
            return this.C;
        }
        if (c && this.L != null && this.L.getHintId() != 0) {
            return getContext().getText(this.L.getHintId());
        }
        return this.s;
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.y != z) {
            this.y = z;
            a(z);
            j();
        }
    }

    public boolean isIconfiedByDefault() {
        return this.y;
    }

    public void setIconified(boolean z) {
        if (z) {
            n();
        } else {
            o();
        }
    }

    public boolean isIconified() {
        return this.z;
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.B = z;
        a(isIconified());
    }

    public boolean isSubmitButtonEnabled() {
        return this.B;
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.D = z;
        if (this.A instanceof gd) {
            ((gd) this.A).a(z ? 2 : 1);
        }
    }

    public boolean isQueryRefinementEnabled() {
        return this.D;
    }

    public void setSuggestionsAdapter(CursorAdapter cursorAdapter) {
        this.A = cursorAdapter;
        this.d.setAdapter(this.A);
    }

    public CursorAdapter getSuggestionsAdapter() {
        return this.A;
    }

    public void setMaxWidth(int i) {
        this.F = i;
        requestLayout();
    }

    public int getMaxWidth() {
        return this.F;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        if (isIconified()) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        switch (mode) {
            case Integer.MIN_VALUE:
                size = this.F > 0 ? Math.min(this.F, size) : Math.min(getPreferredWidth(), size);
                break;
            case 0:
                size = this.F <= 0 ? getPreferredWidth() : this.F;
                break;
            case Ints.MAX_POWER_OF_TWO /* 1073741824 */:
                if (this.F > 0) {
                    size = Math.min(this.F, size);
                }
                break;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, Ints.MAX_POWER_OF_TWO), i2);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private void a(boolean z) {
        this.z = z;
        int i = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.d.getText());
        this.h.setVisibility(i);
        b(z2);
        this.e.setVisibility(z ? 8 : 0);
        this.m.setVisibility(this.y ? 8 : 0);
        g();
        c(z2 ? false : true);
        f();
    }

    @TargetApi(8)
    private boolean d() {
        if (this.L == null || !this.L.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.L.getVoiceSearchLaunchWebSearch()) {
            intent = this.q;
        } else if (this.L.getVoiceSearchLaunchRecognizer()) {
            intent = this.r;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    private boolean e() {
        return (this.B || this.G) && !isIconified();
    }

    private void b(boolean z) {
        int i = 8;
        if (this.B && e() && hasFocus() && (z || !this.G)) {
            i = 0;
        }
        this.i.setVisibility(i);
    }

    private void f() {
        int i = 8;
        if (e() && (this.i.getVisibility() == 0 || this.k.getVisibility() == 0)) {
            i = 0;
        }
        this.g.setVisibility(i);
    }

    private void g() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.d.getText());
        if (!z2 && (!this.y || this.J)) {
            z = false;
        }
        this.j.setVisibility(z ? 0 : 8);
        Drawable drawable = this.j.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    private void h() {
        post(this.P);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        int[] iArr = this.d.hasFocus() ? FOCUSED_STATE_SET : EMPTY_STATE_SET;
        Drawable background = this.f.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.g.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.P);
        post(this.Q);
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImeVisibility(boolean z) {
        if (z) {
            post(this.O);
            return;
        }
        removeCallbacks(this.O);
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        }
    }

    public void a(CharSequence charSequence) {
        setQuery(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(View view, int i, KeyEvent keyEvent) {
        if (this.L == null || this.A == null || keyEvent.getAction() != 0 || !KeyEventCompat.hasNoModifiers(keyEvent)) {
            return false;
        }
        if (i == 66 || i == 84 || i == 61) {
            return a(this.d.getListSelection(), 0, (String) null);
        }
        if (i == 21 || i == 22) {
            this.d.setSelection(i == 21 ? 0 : this.d.length());
            this.d.setListSelection(0);
            this.d.clearListSelection();
            a.a(this.d, true);
            return true;
        }
        if (i != 19 || this.d.getListSelection() != 0) {
        }
        return false;
    }

    private CharSequence b(CharSequence charSequence) {
        if (this.y && this.n != null) {
            int textSize = (int) (((double) this.d.getTextSize()) * 1.25d);
            this.n.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(this.n), 1, 2, 33);
            spannableStringBuilder.append(charSequence);
            return spannableStringBuilder;
        }
        return charSequence;
    }

    private void j() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.d;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(b(queryHint));
    }

    @TargetApi(8)
    private void k() {
        this.d.setThreshold(this.L.getSuggestThreshold());
        this.d.setImeOptions(this.L.getImeOptions());
        int inputType = this.L.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.L.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | 524288;
            }
        }
        this.d.setInputType(inputType);
        if (this.A != null) {
            this.A.changeCursor(null);
        }
        if (this.L.getSuggestAuthority() != null) {
            this.A = new gd(getContext(), this, this.L, this.R);
            this.d.setAdapter(this.A);
            ((gd) this.A).a(this.D ? 2 : 1);
        }
    }

    private void c(boolean z) {
        int i;
        if (this.G && !isIconified() && z) {
            i = 0;
            this.i.setVisibility(8);
        } else {
            i = 8;
        }
        this.k.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(CharSequence charSequence) {
        Editable text = this.d.getText();
        this.I = text;
        boolean z = !TextUtils.isEmpty(text);
        b(z);
        c(z ? false : true);
        g();
        f();
        if (this.t != null && !TextUtils.equals(charSequence, this.H)) {
            this.t.onQueryTextChange(charSequence.toString());
        }
        this.H = charSequence.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        Editable text = this.d.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            if (this.t == null || !this.t.onQueryTextSubmit(text.toString())) {
                if (this.L != null) {
                    a(0, (String) null, text.toString());
                }
                setImeVisibility(false);
                m();
            }
        }
    }

    private void m() {
        this.d.dismissDropDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (TextUtils.isEmpty(this.d.getText())) {
            if (this.y) {
                if (this.u == null || !this.u.onClose()) {
                    clearFocus();
                    a(true);
                    return;
                }
                return;
            }
            return;
        }
        this.d.setText("");
        this.d.requestFocus();
        setImeVisibility(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        a(false);
        this.d.requestFocus();
        setImeVisibility(true);
        if (this.x != null) {
            this.x.onClick(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(8)
    public void p() {
        if (this.L != null) {
            SearchableInfo searchableInfo = this.L;
            try {
                if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    getContext().startActivity(a(this.q, searchableInfo));
                } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    getContext().startActivity(b(this.r, searchableInfo));
                }
            } catch (ActivityNotFoundException e) {
                Log.w("SearchView", "Could not find voice search activity");
            }
        }
    }

    void a() {
        a(isIconified());
        h();
        if (this.d.hasFocus()) {
            r();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        h();
    }

    @Override // android.support.v7.view.CollapsibleActionView
    public void onActionViewCollapsed() {
        setQuery("", false);
        clearFocus();
        a(true);
        this.d.setImeOptions(this.K);
        this.J = false;
    }

    @Override // android.support.v7.view.CollapsibleActionView
    public void onActionViewExpanded() {
        if (!this.J) {
            this.J = true;
            this.K = this.d.getImeOptions();
            this.d.setImeOptions(this.K | 33554432);
            this.d.setText("");
            setIconified(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        int dimensionPixelSize;
        int i;
        if (this.l.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f.getPaddingLeft();
            Rect rect = new Rect();
            boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
            if (this.y) {
                dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width);
            } else {
                dimensionPixelSize = 0;
            }
            this.d.getDropDownBackground().getPadding(rect);
            if (zIsLayoutRtl) {
                i = -rect.left;
            } else {
                i = paddingLeft - (rect.left + dimensionPixelSize);
            }
            this.d.setDropDownHorizontalOffset(i);
            this.d.setDropDownWidth((dimensionPixelSize + ((this.l.getWidth() + rect.left) + rect.right)) - paddingLeft);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i, int i2, String str) {
        if (this.w != null && this.w.onSuggestionClick(i)) {
            return false;
        }
        b(i, 0, null);
        setImeVisibility(false);
        m();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(int i) {
        if (this.w != null && this.w.onSuggestionSelect(i)) {
            return false;
        }
        d(i);
        return true;
    }

    private void d(int i) {
        Editable text = this.d.getText();
        Cursor cursor = this.A.getCursor();
        if (cursor != null) {
            if (cursor.moveToPosition(i)) {
                CharSequence charSequenceConvertToString = this.A.convertToString(cursor);
                if (charSequenceConvertToString != null) {
                    setQuery(charSequenceConvertToString);
                    return;
                } else {
                    setQuery(text);
                    return;
                }
            }
            setQuery(text);
        }
    }

    private boolean b(int i, int i2, String str) {
        Cursor cursor = this.A.getCursor();
        if (cursor == null || !cursor.moveToPosition(i)) {
            return false;
        }
        a(a(cursor, i2, str));
        return true;
    }

    private void a(Intent intent) {
        if (intent != null) {
            try {
                getContext().startActivity(intent);
            } catch (RuntimeException e) {
                Log.e("SearchView", "Failed launch activity: " + intent, e);
            }
        }
    }

    private void setQuery(CharSequence charSequence) {
        this.d.setText(charSequence);
        this.d.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str, String str2) {
        getContext().startActivity(a("android.intent.action.SEARCH", (Uri) null, (String) null, str2, i, str));
    }

    private Intent a(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.I);
        if (str3 != null) {
            intent.putExtra(SearchIntents.EXTRA_QUERY, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        if (this.M != null) {
            intent.putExtra("app_data", this.M);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        if (c) {
            intent.setComponent(this.L.getSearchActivity());
        }
        return intent;
    }

    @TargetApi(8)
    private Intent a(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    @TargetApi(8)
    private Intent b(Intent intent, SearchableInfo searchableInfo) {
        String string;
        String string2;
        String str;
        int voiceMaxResults;
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, Ints.MAX_POWER_OF_TWO);
        Bundle bundle = new Bundle();
        if (this.M != null) {
            bundle.putParcelable("app_data", this.M);
        }
        Intent intent3 = new Intent(intent);
        String string3 = "free_form";
        if (Build.VERSION.SDK_INT < 8) {
            string = null;
            string2 = null;
            str = "free_form";
            voiceMaxResults = 1;
        } else {
            Resources resources = getResources();
            if (searchableInfo.getVoiceLanguageModeId() != 0) {
                string3 = resources.getString(searchableInfo.getVoiceLanguageModeId());
            }
            string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
            string = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
            if (searchableInfo.getVoiceMaxResults() == 0) {
                str = string3;
                voiceMaxResults = 1;
            } else {
                str = string3;
                voiceMaxResults = searchableInfo.getVoiceMaxResults();
            }
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", str);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private Intent a(Cursor cursor, int i, String str) {
        int position;
        String strA;
        try {
            String strA2 = gd.a(cursor, "suggest_intent_action");
            if (strA2 == null && Build.VERSION.SDK_INT >= 8) {
                strA2 = this.L.getSuggestIntentAction();
            }
            if (strA2 == null) {
                strA2 = "android.intent.action.SEARCH";
            }
            String strA3 = gd.a(cursor, "suggest_intent_data");
            if (c && strA3 == null) {
                strA3 = this.L.getSuggestIntentData();
            }
            if (strA3 != null && (strA = gd.a(cursor, "suggest_intent_data_id")) != null) {
                strA3 = strA3 + URIUtil.SLASH + Uri.encode(strA);
            }
            return a(strA2, strA3 == null ? null : Uri.parse(strA3), gd.a(cursor, "suggest_intent_extra_data"), gd.a(cursor, "suggest_intent_query"), i, str);
        } catch (RuntimeException e) {
            try {
                position = cursor.getPosition();
            } catch (RuntimeException e2) {
                position = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        a.a(this.d);
        a.b(this.d);
    }

    static boolean a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {
        private int a;
        private SearchView b;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.a = getThreshold();
        }

        void setSearchView(SearchView searchView) {
            this.b = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.a = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.b.hasFocus() && getVisibility() == 0) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                if (SearchView.a(getContext())) {
                    SearchView.a.a(this, true);
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.b.a();
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.a <= 0 || super.enoughToFilter();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState == null) {
                        return true;
                    }
                    keyDispatcherState.startTracking(keyEvent, this);
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.b.clearFocus();
                        this.b.setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }
    }

    static class a {
        private Method a;
        private Method b;
        private Method c;
        private Method d;

        a() {
            try {
                this.a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.a.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                this.b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.b.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                this.c = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.c.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
            try {
                this.d = InputMethodManager.class.getMethod("showSoftInputUnchecked", Integer.TYPE, ResultReceiver.class);
                this.d.setAccessible(true);
            } catch (NoSuchMethodException e4) {
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView) {
            if (this.a != null) {
                try {
                    this.a.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        void b(AutoCompleteTextView autoCompleteTextView) {
            if (this.b != null) {
                try {
                    this.b.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView, boolean z) {
            if (this.c != null) {
                try {
                    this.c.invoke(autoCompleteTextView, Boolean.valueOf(z));
                } catch (Exception e) {
                }
            }
        }

        void a(InputMethodManager inputMethodManager, View view, int i) {
            if (this.d != null) {
                try {
                    this.d.invoke(inputMethodManager, Integer.valueOf(i), null);
                    return;
                } catch (Exception e) {
                }
            }
            inputMethodManager.showSoftInput(view, i);
        }
    }
}
