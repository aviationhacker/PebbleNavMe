package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityRecord;

/* JADX INFO: loaded from: classes.dex */
public class em {
    public static void a(Object obj, View view, int i) {
        ((AccessibilityRecord) obj).setSource(view, i);
    }
}
