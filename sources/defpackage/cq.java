package defpackage;

import android.support.v4.view.LayoutInflaterFactory;
import android.view.LayoutInflater;
import defpackage.cp;

/* JADX INFO: loaded from: classes.dex */
public class cq {
    public static void a(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
        layoutInflater.setFactory2(layoutInflaterFactory != null ? new cp.a(layoutInflaterFactory) : null);
    }
}
