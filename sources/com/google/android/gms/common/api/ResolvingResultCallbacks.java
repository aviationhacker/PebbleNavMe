package com.google.android.gms.common.api;

import android.app.Activity;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public abstract class ResolvingResultCallbacks<R extends Result> extends ResultCallbacks<R> {
    private final Activity a;
    private final int b;

    protected ResolvingResultCallbacks(Activity activity, int i) {
        this.a = (Activity) zzx.zzb(activity, "Activity must not be null");
        this.b = i;
    }

    @Override // com.google.android.gms.common.api.ResultCallbacks
    public abstract void onSuccess(R r);

    public abstract void onUnresolvableFailure(Status status);
}
