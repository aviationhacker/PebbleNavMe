package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zzb;
import com.google.android.gms.common.api.zze;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public class zzlq<R extends Result> extends zze<R> implements ResultCallback<R> {
    private zzb<? super R, ? extends Result> a;
    private zzlq<? extends Result> b;
    private ResultCallbacks<? super R> c;
    private PendingResult<R> d;
    private final Object e;

    private void a() {
        if (this.d != null) {
            if (this.a == null && this.c == null) {
                return;
            }
            this.d.setResultCallback(this);
        }
    }

    private void a(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                Log.w("TransformedResultImpl", "Unable to release " + result, e);
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.common.api.ResultCallback
    public void onResult(R r) {
        synchronized (this.e) {
            if (!r.getStatus().isSuccess()) {
                zzx(r.getStatus());
                a(r);
            } else if (this.a != null) {
                PendingResult<S> pendingResultZza = this.a.zza(r);
                if (pendingResultZza == 0) {
                    zzx(new Status(13, "Transform returned null"));
                } else {
                    this.b.zza(pendingResultZza);
                }
                a(r);
            } else if (this.c != null) {
                this.c.onSuccess(r);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void zza(PendingResult<?> pendingResult) {
        synchronized (this.e) {
            this.d = pendingResult;
            a();
        }
    }

    public void zzx(Status status) {
        synchronized (this.e) {
            if (this.a != null) {
                Status statusZzu = this.a.zzu(status);
                zzx.zzb(statusZzu, "onFailure must not return null");
                this.b.zzx(statusZzu);
            } else if (this.c != null) {
                this.c.onFailure(status);
            }
        }
    }
}
