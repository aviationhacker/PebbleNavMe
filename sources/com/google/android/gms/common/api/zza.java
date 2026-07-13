package com.google.android.gms.common.api;

import android.app.Activity;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class zza {
    private static final Map<Activity, zza> a = new WeakHashMap();
    private static final Object b = new Object();

    public abstract void remove(int i);
}
