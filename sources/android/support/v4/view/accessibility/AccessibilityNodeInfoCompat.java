package android.support.v4.view.accessibility;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import defpackage.eb;
import defpackage.ec;
import defpackage.ed;
import defpackage.ee;
import defpackage.ef;
import defpackage.eg;
import defpackage.eh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityNodeInfoCompat {
    public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
    public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
    public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
    public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
    public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
    public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
    public static final String ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE";
    public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
    public static final int ACTION_CLEAR_FOCUS = 2;
    public static final int ACTION_CLEAR_SELECTION = 8;
    public static final int ACTION_CLICK = 16;
    public static final int ACTION_COLLAPSE = 524288;
    public static final int ACTION_COPY = 16384;
    public static final int ACTION_CUT = 65536;
    public static final int ACTION_DISMISS = 1048576;
    public static final int ACTION_EXPAND = 262144;
    public static final int ACTION_FOCUS = 1;
    public static final int ACTION_LONG_CLICK = 32;
    public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
    public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
    public static final int ACTION_PASTE = 32768;
    public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
    public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
    public static final int ACTION_SCROLL_BACKWARD = 8192;
    public static final int ACTION_SCROLL_FORWARD = 4096;
    public static final int ACTION_SELECT = 4;
    public static final int ACTION_SET_SELECTION = 131072;
    public static final int ACTION_SET_TEXT = 2097152;
    public static final int FOCUS_ACCESSIBILITY = 2;
    public static final int FOCUS_INPUT = 1;
    public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
    public static final int MOVEMENT_GRANULARITY_LINE = 4;
    public static final int MOVEMENT_GRANULARITY_PAGE = 16;
    public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
    public static final int MOVEMENT_GRANULARITY_WORD = 2;
    private static final d a;
    private final Object b;

    interface d {
        boolean A(Object obj);

        boolean B(Object obj);

        void C(Object obj);

        int D(Object obj);

        boolean E(Object obj);

        boolean F(Object obj);

        String G(Object obj);

        int H(Object obj);

        Object I(Object obj);

        Object J(Object obj);

        Object K(Object obj);

        int L(Object obj);

        int M(Object obj);

        boolean N(Object obj);

        int O(Object obj);

        int P(Object obj);

        int Q(Object obj);

        int R(Object obj);

        boolean S(Object obj);

        boolean T(Object obj);

        Object U(Object obj);

        Object V(Object obj);

        boolean W(Object obj);

        Bundle X(Object obj);

        int Y(Object obj);

        int Z(Object obj);

        Object a();

        Object a(int i, int i2, int i3, int i4, boolean z, boolean z2);

        Object a(int i, int i2, boolean z, int i3);

        Object a(int i, CharSequence charSequence);

        Object a(View view);

        Object a(View view, int i);

        List<Object> a(Object obj);

        List<Object> a(Object obj, String str);

        void a(Object obj, int i);

        void a(Object obj, int i, int i2);

        void a(Object obj, Rect rect);

        void a(Object obj, CharSequence charSequence);

        void a(Object obj, Object obj2);

        void a(Object obj, boolean z);

        boolean a(Object obj, int i, Bundle bundle);

        boolean a(Object obj, View view);

        boolean a(Object obj, View view, int i);

        int aa(Object obj);

        boolean ab(Object obj);

        boolean ac(Object obj);

        boolean ad(Object obj);

        boolean ae(Object obj);

        int b(Object obj);

        void b(Object obj, int i);

        void b(Object obj, Rect rect);

        void b(Object obj, View view);

        void b(Object obj, View view, int i);

        void b(Object obj, CharSequence charSequence);

        void b(Object obj, String str);

        void b(Object obj, boolean z);

        boolean b(Object obj, Object obj2);

        CharSequence c(Object obj);

        Object c(Object obj, int i);

        List<Object> c(Object obj, String str);

        void c(Object obj, Rect rect);

        void c(Object obj, View view);

        void c(Object obj, View view, int i);

        void c(Object obj, CharSequence charSequence);

        void c(Object obj, Object obj2);

        void c(Object obj, boolean z);

        void d(Object obj, Rect rect);

        void d(Object obj, View view);

        void d(Object obj, View view, int i);

        void d(Object obj, CharSequence charSequence);

        void d(Object obj, Object obj2);

        void d(Object obj, boolean z);

        boolean d(Object obj);

        boolean d(Object obj, int i);

        CharSequence e(Object obj);

        Object e(Object obj, int i);

        void e(Object obj, View view);

        void e(Object obj, View view, int i);

        void e(Object obj, CharSequence charSequence);

        void e(Object obj, Object obj2);

        void e(Object obj, boolean z);

        int f(Object obj);

        Object f(Object obj, int i);

        void f(Object obj, View view);

        void f(Object obj, View view, int i);

        void f(Object obj, boolean z);

        Object g(Object obj);

        void g(Object obj, int i);

        void g(Object obj, View view);

        void g(Object obj, View view, int i);

        void g(Object obj, boolean z);

        Object h(Object obj);

        void h(Object obj, int i);

        void h(Object obj, View view);

        void h(Object obj, View view, int i);

        void h(Object obj, boolean z);

        Object i(Object obj);

        void i(Object obj, int i);

        void i(Object obj, boolean z);

        Object j(Object obj);

        void j(Object obj, boolean z);

        int k(Object obj);

        void k(Object obj, boolean z);

        int l(Object obj);

        void l(Object obj, boolean z);

        CharSequence m(Object obj);

        void m(Object obj, boolean z);

        CharSequence n(Object obj);

        void n(Object obj, boolean z);

        CharSequence o(Object obj);

        void o(Object obj, boolean z);

        Object p(Object obj);

        void p(Object obj, boolean z);

        CharSequence q(Object obj);

        void q(Object obj, boolean z);

        int r(Object obj);

        boolean s(Object obj);

        boolean t(Object obj);

        boolean u(Object obj);

        boolean v(Object obj);

        boolean w(Object obj);

        boolean x(Object obj);

        boolean y(Object obj);

        boolean z(Object obj);
    }

    public static class AccessibilityActionCompat {
        private final Object a;
        public static final AccessibilityActionCompat ACTION_FOCUS = new AccessibilityActionCompat(1, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_CLEAR_FOCUS = new AccessibilityActionCompat(2, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_SELECT = new AccessibilityActionCompat(4, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_CLEAR_SELECTION = new AccessibilityActionCompat(8, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_CLICK = new AccessibilityActionCompat(16, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_LONG_CLICK = new AccessibilityActionCompat(32, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(64, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_CLEAR_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(128, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_NEXT_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(256, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(512, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_NEXT_HTML_ELEMENT = new AccessibilityActionCompat(1024, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_HTML_ELEMENT = new AccessibilityActionCompat(2048, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_SCROLL_FORWARD = new AccessibilityActionCompat(4096, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_SCROLL_BACKWARD = new AccessibilityActionCompat(8192, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_COPY = new AccessibilityActionCompat(16384, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_PASTE = new AccessibilityActionCompat(32768, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_CUT = new AccessibilityActionCompat(65536, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_SET_SELECTION = new AccessibilityActionCompat(131072, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_EXPAND = new AccessibilityActionCompat(262144, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_COLLAPSE = new AccessibilityActionCompat(524288, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_DISMISS = new AccessibilityActionCompat(1048576, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_SET_TEXT = new AccessibilityActionCompat(2097152, (CharSequence) null);

        public AccessibilityActionCompat(int i, CharSequence charSequence) {
            this(AccessibilityNodeInfoCompat.a.a(i, charSequence));
        }

        private AccessibilityActionCompat(Object obj) {
            this.a = obj;
        }

        public int getId() {
            return AccessibilityNodeInfoCompat.a.b(this.a);
        }

        public CharSequence getLabel() {
            return AccessibilityNodeInfoCompat.a.c(this.a);
        }
    }

    public static class CollectionInfoCompat {
        public static final int SELECTION_MODE_MULTIPLE = 2;
        public static final int SELECTION_MODE_NONE = 0;
        public static final int SELECTION_MODE_SINGLE = 1;
        final Object a;

        public static CollectionInfoCompat obtain(int i, int i2, boolean z, int i3) {
            return new CollectionInfoCompat(AccessibilityNodeInfoCompat.a.a(i, i2, z, i3));
        }

        private CollectionInfoCompat(Object obj) {
            this.a = obj;
        }

        public int getColumnCount() {
            return AccessibilityNodeInfoCompat.a.L(this.a);
        }

        public int getRowCount() {
            return AccessibilityNodeInfoCompat.a.M(this.a);
        }

        public boolean isHierarchical() {
            return AccessibilityNodeInfoCompat.a.N(this.a);
        }
    }

    public static class CollectionItemInfoCompat {
        private final Object a;

        public static CollectionItemInfoCompat obtain(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfoCompat.a.a(i, i2, i3, i4, z, z2));
        }

        private CollectionItemInfoCompat(Object obj) {
            this.a = obj;
        }

        public int getColumnIndex() {
            return AccessibilityNodeInfoCompat.a.O(this.a);
        }

        public int getColumnSpan() {
            return AccessibilityNodeInfoCompat.a.P(this.a);
        }

        public int getRowIndex() {
            return AccessibilityNodeInfoCompat.a.Q(this.a);
        }

        public int getRowSpan() {
            return AccessibilityNodeInfoCompat.a.R(this.a);
        }

        public boolean isHeading() {
            return AccessibilityNodeInfoCompat.a.S(this.a);
        }

        public boolean isSelected() {
            return AccessibilityNodeInfoCompat.a.d(this.a);
        }
    }

    public static class RangeInfoCompat {
        public static final int RANGE_TYPE_FLOAT = 1;
        public static final int RANGE_TYPE_INT = 0;
        public static final int RANGE_TYPE_PERCENT = 2;
        private final Object a;

        private RangeInfoCompat(Object obj) {
            this.a = obj;
        }

        public float getCurrent() {
            return eh.c.a(this.a);
        }

        public float getMax() {
            return eh.c.b(this.a);
        }

        public float getMin() {
            return eh.c.c(this.a);
        }

        public int getType() {
            return eh.c.d(this.a);
        }
    }

    static class i implements d {
        i() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a(int i, CharSequence charSequence) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a() {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a(View view) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a(View view, int i) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object j(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, int i) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void a(Object obj, Object obj2) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean b(Object obj, Object obj2) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int b(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public CharSequence c(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void d(Object obj, View view) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void e(Object obj, View view, int i) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean a(Object obj, View view) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean a(Object obj, View view, int i) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public List<Object> a(Object obj, String str) {
            return Collections.emptyList();
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int k(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void a(Object obj, Rect rect) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, Rect rect) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object c(Object obj, int i) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int l(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public CharSequence m(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public CharSequence n(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public CharSequence o(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object p(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public CharSequence q(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int r(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean s(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean t(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean u(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean v(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean w(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean x(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean E(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean F(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean y(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean z(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean A(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean B(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean d(Object obj, int i) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean a(Object obj, int i, Bundle bundle) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void g(Object obj, int i) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int D(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void c(Object obj, Rect rect) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void d(Object obj, Rect rect) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void a(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void c(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void c(Object obj, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void d(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void e(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void f(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void k(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void l(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void g(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void d(Object obj, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void e(Object obj, View view) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void h(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void i(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void j(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void f(Object obj, View view) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void d(Object obj, View view, int i) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object e(Object obj, int i) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object f(Object obj, int i) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void e(Object obj, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void C(Object obj) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void f(Object obj, View view, int i) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public String G(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, String str) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int H(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void h(Object obj, int i) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object I(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void c(Object obj, Object obj2) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object J(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void d(Object obj, Object obj2) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object K(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void e(Object obj, Object obj2) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public List<Object> a(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a(int i, int i2, boolean z, int i3) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int L(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int M(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean N(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int O(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int P(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int Q(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int R(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean S(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean d(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object h(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, View view) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, View view, int i) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object i(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void c(Object obj, View view) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void c(Object obj, View view, int i) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void m(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean T(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void a(Object obj, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public CharSequence e(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void g(Object obj, View view) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void g(Object obj, View view, int i) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object U(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void h(Object obj, View view) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void h(Object obj, View view, int i) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object V(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean W(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void n(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public List<Object> c(Object obj, String str) {
            return Collections.emptyList();
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Bundle X(Object obj) {
            return new Bundle();
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int Y(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void i(Object obj, int i) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void a(Object obj, int i) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int f(Object obj) {
            return -1;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void a(Object obj, int i, int i2) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int Z(Object obj) {
            return -1;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int aa(Object obj) {
            return -1;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object g(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean ab(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void o(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean ac(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void p(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean ad(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void q(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean ae(Object obj) {
            return false;
        }
    }

    static class c extends i {
        c() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a() {
            return ed.a();
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a(View view) {
            return ed.a(view);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object j(Object obj) {
            return ed.a(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, int i) {
            ed.a(obj, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void d(Object obj, View view) {
            ed.a(obj, view);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public List<Object> a(Object obj, String str) {
            return ed.a(obj, str);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int k(Object obj) {
            return ed.b(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void a(Object obj, Rect rect) {
            ed.a(obj, rect);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, Rect rect) {
            ed.b(obj, rect);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object c(Object obj, int i) {
            return ed.b(obj, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int l(Object obj) {
            return ed.c(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public CharSequence m(Object obj) {
            return ed.d(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public CharSequence n(Object obj) {
            return ed.e(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public CharSequence o(Object obj) {
            return ed.f(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object p(Object obj) {
            return ed.g(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public CharSequence q(Object obj) {
            return ed.h(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int r(Object obj) {
            return ed.i(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean s(Object obj) {
            return ed.j(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean t(Object obj) {
            return ed.k(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean u(Object obj) {
            return ed.l(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean v(Object obj) {
            return ed.m(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean w(Object obj) {
            return ed.n(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean x(Object obj) {
            return ed.o(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean y(Object obj) {
            return ed.p(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean z(Object obj) {
            return ed.q(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean A(Object obj) {
            return ed.r(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean B(Object obj) {
            return ed.s(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean d(Object obj, int i) {
            return ed.c(obj, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void c(Object obj, Rect rect) {
            ed.c(obj, rect);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void d(Object obj, Rect rect) {
            ed.d(obj, rect);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void a(Object obj, boolean z) {
            ed.a(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, boolean z) {
            ed.b(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, CharSequence charSequence) {
            ed.a(obj, charSequence);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void c(Object obj, boolean z) {
            ed.c(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void c(Object obj, CharSequence charSequence) {
            ed.b(obj, charSequence);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void d(Object obj, boolean z) {
            ed.d(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void e(Object obj, boolean z) {
            ed.e(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void f(Object obj, boolean z) {
            ed.f(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void g(Object obj, boolean z) {
            ed.g(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void d(Object obj, CharSequence charSequence) {
            ed.c(obj, charSequence);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void e(Object obj, View view) {
            ed.b(obj, view);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void h(Object obj, boolean z) {
            ed.h(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void i(Object obj, boolean z) {
            ed.i(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void j(Object obj, boolean z) {
            ed.j(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void f(Object obj, View view) {
            ed.c(obj, view);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void e(Object obj, CharSequence charSequence) {
            ed.d(obj, charSequence);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void C(Object obj) {
            ed.t(obj);
        }
    }

    static class e extends c {
        e() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a(View view, int i) {
            return ee.a(view, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object e(Object obj, int i) {
            return ee.b(obj, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object f(Object obj, int i) {
            return ee.c(obj, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void e(Object obj, View view, int i) {
            ee.a(obj, view, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void d(Object obj, View view, int i) {
            ee.b(obj, view, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean E(Object obj) {
            return ee.a(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void k(Object obj, boolean z) {
            ee.a(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean F(Object obj) {
            return ee.c(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void l(Object obj, boolean z) {
            ee.b(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean a(Object obj, int i, Bundle bundle) {
            return ee.a(obj, i, bundle);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void g(Object obj, int i) {
            ee.a(obj, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int D(Object obj) {
            return ee.b(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void f(Object obj, View view, int i) {
            ee.c(obj, view, i);
        }
    }

    static class f extends e {
        f() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void g(Object obj, View view) {
            ef.a(obj, view);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void g(Object obj, View view, int i) {
            ef.a(obj, view, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object U(Object obj) {
            return ef.a(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void h(Object obj, View view) {
            ef.b(obj, view);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void h(Object obj, View view, int i) {
            ef.b(obj, view, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object V(Object obj) {
            return ef.b(obj);
        }
    }

    static class g extends f {
        g() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public String G(Object obj) {
            return eg.a(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, String str) {
            eg.a(obj, str);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public List<Object> c(Object obj, String str) {
            return eg.b(obj, str);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void a(Object obj, int i, int i2) {
            eg.a(obj, i, i2);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int Z(Object obj) {
            return eg.b(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int aa(Object obj) {
            return eg.c(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean ac(Object obj) {
            return eg.d(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void p(Object obj, boolean z) {
            eg.a(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean ae(Object obj) {
            return eg.e(obj);
        }
    }

    static class h extends g {
        h() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int H(Object obj) {
            return eh.a(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void h(Object obj, int i) {
            eh.a(obj, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object I(Object obj) {
            return eh.b(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void c(Object obj, Object obj2) {
            eh.a(obj, obj2);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a(int i, int i2, boolean z, int i3) {
            return eh.a(i, i2, z, i3);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return eh.a(i, i2, i3, i4, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int L(Object obj) {
            return eh.a.a(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int M(Object obj) {
            return eh.a.b(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean N(Object obj) {
            return eh.a.c(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object J(Object obj) {
            return eh.c(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object K(Object obj) {
            return eh.d(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void e(Object obj, Object obj2) {
            eh.c(obj, obj2);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int O(Object obj) {
            return eh.b.a(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int P(Object obj) {
            return eh.b.b(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int Q(Object obj) {
            return eh.b.c(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int R(Object obj) {
            return eh.b.d(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean S(Object obj) {
            return eh.b.e(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void d(Object obj, Object obj2) {
            eh.b(obj, obj2);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void m(Object obj, boolean z) {
            eh.a(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean T(Object obj) {
            return eh.e(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean W(Object obj) {
            return eh.f(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void n(Object obj, boolean z) {
            eh.b(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Bundle X(Object obj) {
            return eh.g(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int Y(Object obj) {
            return eh.h(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void i(Object obj, int i) {
            eh.b(obj, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean ab(Object obj) {
            return eh.i(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void o(Object obj, boolean z) {
            eh.c(obj, z);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean ad(Object obj) {
            return eh.j(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void q(Object obj, boolean z) {
            eh.d(obj, z);
        }
    }

    static class a extends h {
        a() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a(int i, CharSequence charSequence) {
            return eb.a(i, charSequence);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public List<Object> a(Object obj) {
            return eb.a(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.h, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a(int i, int i2, boolean z, int i3) {
            return eb.a(i, i2, z, i3);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void a(Object obj, Object obj2) {
            eb.a(obj, obj2);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean b(Object obj, Object obj2) {
            return eb.b(obj, obj2);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int b(Object obj) {
            return eb.e(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public CharSequence c(Object obj) {
            return eb.f(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.h, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return eb.a(i, i2, i3, i4, z, z2);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean d(Object obj) {
            return eb.a.a(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public CharSequence e(Object obj) {
            return eb.b(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void a(Object obj, CharSequence charSequence) {
            eb.a(obj, charSequence);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void a(Object obj, int i) {
            eb.a(obj, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public int f(Object obj) {
            return eb.c(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object g(Object obj) {
            return eb.d(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean a(Object obj, View view) {
            return eb.a(obj, view);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public boolean a(Object obj, View view, int i) {
            return eb.a(obj, view, i);
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object h(Object obj) {
            return ec.a(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, View view) {
            ec.a(obj, view);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void b(Object obj, View view, int i) {
            ec.a(obj, view, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public Object i(Object obj) {
            return ec.b(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void c(Object obj, View view) {
            ec.b(obj, view);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.i, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.d
        public void c(Object obj, View view, int i) {
            ec.b(obj, view, i);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 22) {
            a = new b();
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            a = new a();
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            a = new h();
            return;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            a = new g();
            return;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            a = new f();
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            a = new e();
        } else if (Build.VERSION.SDK_INT >= 14) {
            a = new c();
        } else {
            a = new i();
        }
    }

    static AccessibilityNodeInfoCompat a(Object obj) {
        if (obj != null) {
            return new AccessibilityNodeInfoCompat(obj);
        }
        return null;
    }

    public AccessibilityNodeInfoCompat(Object obj) {
        this.b = obj;
    }

    public Object getInfo() {
        return this.b;
    }

    public static AccessibilityNodeInfoCompat obtain(View view) {
        return a(a.a(view));
    }

    public static AccessibilityNodeInfoCompat obtain(View view, int i2) {
        return a(a.a(view, i2));
    }

    public static AccessibilityNodeInfoCompat obtain() {
        return a(a.a());
    }

    public static AccessibilityNodeInfoCompat obtain(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        return a(a.j(accessibilityNodeInfoCompat.b));
    }

    public void setSource(View view) {
        a.f(this.b, view);
    }

    public void setSource(View view, int i2) {
        a.d(this.b, view, i2);
    }

    public AccessibilityNodeInfoCompat findFocus(int i2) {
        return a(a.e(this.b, i2));
    }

    public AccessibilityNodeInfoCompat focusSearch(int i2) {
        return a(a.f(this.b, i2));
    }

    public int getWindowId() {
        return a.r(this.b);
    }

    public int getChildCount() {
        return a.l(this.b);
    }

    public AccessibilityNodeInfoCompat getChild(int i2) {
        return a(a.c(this.b, i2));
    }

    public void addChild(View view) {
        a.d(this.b, view);
    }

    public void addChild(View view, int i2) {
        a.e(this.b, view, i2);
    }

    public boolean removeChild(View view) {
        return a.a(this.b, view);
    }

    public boolean removeChild(View view, int i2) {
        return a.a(this.b, view, i2);
    }

    public int getActions() {
        return a.k(this.b);
    }

    public void addAction(int i2) {
        a.b(this.b, i2);
    }

    public void addAction(AccessibilityActionCompat accessibilityActionCompat) {
        a.a(this.b, accessibilityActionCompat.a);
    }

    public boolean removeAction(AccessibilityActionCompat accessibilityActionCompat) {
        return a.b(this.b, accessibilityActionCompat.a);
    }

    public boolean performAction(int i2) {
        return a.d(this.b, i2);
    }

    public boolean performAction(int i2, Bundle bundle) {
        return a.a(this.b, i2, bundle);
    }

    public void setMovementGranularities(int i2) {
        a.g(this.b, i2);
    }

    public int getMovementGranularities() {
        return a.D(this.b);
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String str) {
        ArrayList arrayList = new ArrayList();
        List<Object> listA = a.a(this.b, str);
        int size = listA.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new AccessibilityNodeInfoCompat(listA.get(i2)));
        }
        return arrayList;
    }

    public AccessibilityNodeInfoCompat getParent() {
        return a(a.p(this.b));
    }

    public void setParent(View view) {
        a.e(this.b, view);
    }

    public void setParent(View view, int i2) {
        a.f(this.b, view, i2);
    }

    public void getBoundsInParent(Rect rect) {
        a.a(this.b, rect);
    }

    public void setBoundsInParent(Rect rect) {
        a.c(this.b, rect);
    }

    public void getBoundsInScreen(Rect rect) {
        a.b(this.b, rect);
    }

    public void setBoundsInScreen(Rect rect) {
        a.d(this.b, rect);
    }

    public boolean isCheckable() {
        return a.s(this.b);
    }

    public void setCheckable(boolean z) {
        a.a(this.b, z);
    }

    public boolean isChecked() {
        return a.t(this.b);
    }

    public void setChecked(boolean z) {
        a.b(this.b, z);
    }

    public boolean isFocusable() {
        return a.w(this.b);
    }

    public void setFocusable(boolean z) {
        a.e(this.b, z);
    }

    public boolean isFocused() {
        return a.x(this.b);
    }

    public void setFocused(boolean z) {
        a.f(this.b, z);
    }

    public boolean isVisibleToUser() {
        return a.E(this.b);
    }

    public void setVisibleToUser(boolean z) {
        a.k(this.b, z);
    }

    public boolean isAccessibilityFocused() {
        return a.F(this.b);
    }

    public void setAccessibilityFocused(boolean z) {
        a.l(this.b, z);
    }

    public boolean isSelected() {
        return a.B(this.b);
    }

    public void setSelected(boolean z) {
        a.j(this.b, z);
    }

    public boolean isClickable() {
        return a.u(this.b);
    }

    public void setClickable(boolean z) {
        a.c(this.b, z);
    }

    public boolean isLongClickable() {
        return a.y(this.b);
    }

    public void setLongClickable(boolean z) {
        a.g(this.b, z);
    }

    public boolean isEnabled() {
        return a.v(this.b);
    }

    public void setEnabled(boolean z) {
        a.d(this.b, z);
    }

    public boolean isPassword() {
        return a.z(this.b);
    }

    public void setPassword(boolean z) {
        a.h(this.b, z);
    }

    public boolean isScrollable() {
        return a.A(this.b);
    }

    public void setScrollable(boolean z) {
        a.i(this.b, z);
    }

    public CharSequence getPackageName() {
        return a.o(this.b);
    }

    public void setPackageName(CharSequence charSequence) {
        a.d(this.b, charSequence);
    }

    public CharSequence getClassName() {
        return a.m(this.b);
    }

    public void setClassName(CharSequence charSequence) {
        a.b(this.b, charSequence);
    }

    public CharSequence getText() {
        return a.q(this.b);
    }

    public void setText(CharSequence charSequence) {
        a.e(this.b, charSequence);
    }

    public CharSequence getContentDescription() {
        return a.n(this.b);
    }

    public void setContentDescription(CharSequence charSequence) {
        a.c(this.b, charSequence);
    }

    public void recycle() {
        a.C(this.b);
    }

    public void setViewIdResourceName(String str) {
        a.b(this.b, str);
    }

    public String getViewIdResourceName() {
        return a.G(this.b);
    }

    public int getLiveRegion() {
        return a.H(this.b);
    }

    public void setLiveRegion(int i2) {
        a.h(this.b, i2);
    }

    public CollectionInfoCompat getCollectionInfo() {
        Object objI = a.I(this.b);
        if (objI == null) {
            return null;
        }
        return new CollectionInfoCompat(objI);
    }

    public void setCollectionInfo(Object obj) {
        a.c(this.b, ((CollectionInfoCompat) obj).a);
    }

    public void setCollectionItemInfo(Object obj) {
        a.d(this.b, ((CollectionItemInfoCompat) obj).a);
    }

    public CollectionItemInfoCompat getCollectionItemInfo() {
        Object objJ = a.J(this.b);
        if (objJ == null) {
            return null;
        }
        return new CollectionItemInfoCompat(objJ);
    }

    public RangeInfoCompat getRangeInfo() {
        Object objK = a.K(this.b);
        if (objK == null) {
            return null;
        }
        return new RangeInfoCompat(objK);
    }

    public void setRangeInfo(RangeInfoCompat rangeInfoCompat) {
        a.e(this.b, rangeInfoCompat.a);
    }

    public List<AccessibilityActionCompat> getActionList() {
        List<Object> listA = a.a(this.b);
        if (listA != null) {
            ArrayList arrayList = new ArrayList();
            int size = listA.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(new AccessibilityActionCompat(listA.get(i2)));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    public void setContentInvalid(boolean z) {
        a.m(this.b, z);
    }

    public boolean isContentInvalid() {
        return a.T(this.b);
    }

    public void setError(CharSequence charSequence) {
        a.a(this.b, charSequence);
    }

    public CharSequence getError() {
        return a.e(this.b);
    }

    public void setLabelFor(View view) {
        a.g(this.b, view);
    }

    public void setLabelFor(View view, int i2) {
        a.g(this.b, view, i2);
    }

    public AccessibilityNodeInfoCompat getLabelFor() {
        return a(a.U(this.b));
    }

    public void setLabeledBy(View view) {
        a.h(this.b, view);
    }

    public void setLabeledBy(View view, int i2) {
        a.h(this.b, view, i2);
    }

    public AccessibilityNodeInfoCompat getLabeledBy() {
        return a(a.V(this.b));
    }

    public boolean canOpenPopup() {
        return a.W(this.b);
    }

    public void setCanOpenPopup(boolean z) {
        a.n(this.b, z);
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByViewId(String str) {
        List<Object> listC = a.c(this.b, str);
        if (listC != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<Object> it = listC.iterator();
            while (it.hasNext()) {
                arrayList.add(new AccessibilityNodeInfoCompat(it.next()));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    public Bundle getExtras() {
        return a.X(this.b);
    }

    public int getInputType() {
        return a.Y(this.b);
    }

    public void setInputType(int i2) {
        a.i(this.b, i2);
    }

    public void setMaxTextLength(int i2) {
        a.a(this.b, i2);
    }

    public int getMaxTextLength() {
        return a.f(this.b);
    }

    public void setTextSelection(int i2, int i3) {
        a.a(this.b, i2, i3);
    }

    public int getTextSelectionStart() {
        return a.Z(this.b);
    }

    public int getTextSelectionEnd() {
        return a.aa(this.b);
    }

    public AccessibilityNodeInfoCompat getTraversalBefore() {
        return a(a.h(this.b));
    }

    public void setTraversalBefore(View view) {
        a.b(this.b, view);
    }

    public void setTraversalBefore(View view, int i2) {
        a.b(this.b, view, i2);
    }

    public AccessibilityNodeInfoCompat getTraversalAfter() {
        return a(a.i(this.b));
    }

    public void setTraversalAfter(View view) {
        a.c(this.b, view);
    }

    public void setTraversalAfter(View view, int i2) {
        a.c(this.b, view, i2);
    }

    public AccessibilityWindowInfoCompat getWindow() {
        return AccessibilityWindowInfoCompat.a(a.g(this.b));
    }

    public boolean isDismissable() {
        return a.ab(this.b);
    }

    public void setDismissable(boolean z) {
        a.o(this.b, z);
    }

    public boolean isEditable() {
        return a.ac(this.b);
    }

    public void setEditable(boolean z) {
        a.p(this.b, z);
    }

    public boolean isMultiLine() {
        return a.ad(this.b);
    }

    public void setMultiLine(boolean z) {
        a.q(this.b, z);
    }

    public boolean refresh() {
        return a.ae(this.b);
    }

    public int hashCode() {
        if (this.b == null) {
            return 0;
        }
        return this.b.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) obj;
            return this.b == null ? accessibilityNodeInfoCompat.b == null : this.b.equals(accessibilityNodeInfoCompat.b);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        getBoundsInParent(rect);
        sb.append("; boundsInParent: " + rect);
        getBoundsInScreen(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ").append(getPackageName());
        sb.append("; className: ").append(getClassName());
        sb.append("; text: ").append(getText());
        sb.append("; contentDescription: ").append(getContentDescription());
        sb.append("; viewId: ").append(getViewIdResourceName());
        sb.append("; checkable: ").append(isCheckable());
        sb.append("; checked: ").append(isChecked());
        sb.append("; focusable: ").append(isFocusable());
        sb.append("; focused: ").append(isFocused());
        sb.append("; selected: ").append(isSelected());
        sb.append("; clickable: ").append(isClickable());
        sb.append("; longClickable: ").append(isLongClickable());
        sb.append("; enabled: ").append(isEnabled());
        sb.append("; password: ").append(isPassword());
        sb.append("; scrollable: " + isScrollable());
        sb.append("; [");
        int actions = getActions();
        while (actions != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(actions);
            actions &= iNumberOfTrailingZeros ^ (-1);
            sb.append(a(iNumberOfTrailingZeros));
            if (actions != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    private static String a(int i2) {
        switch (i2) {
            case 1:
                return "ACTION_FOCUS";
            case 2:
                return "ACTION_CLEAR_FOCUS";
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            default:
                return "ACTION_UNKNOWN";
        }
    }
}
