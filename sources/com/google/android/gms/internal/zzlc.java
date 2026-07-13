package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzlc<R extends Result> extends PendingResult<R> {
    private final Object a = new Object();
    private final CountDownLatch b = new CountDownLatch(1);
    private final ArrayList<PendingResult.zza> c = new ArrayList<>();
    private ResultCallback<? super R> d;
    private volatile R e;
    private volatile boolean f;
    private boolean g;
    private boolean h;
    private zzq i;
    private Integer j;
    private volatile zzlq<R> k;
    protected final zza<R> zzabi;

    public static class zza<R extends Result> extends Handler {
        public zza() {
            this(Looper.getMainLooper());
        }

        public zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    zzb((ResultCallback) pair.first, (Result) pair.second);
                    break;
                case 2:
                    ((zzlc) message.obj).zzw(Status.zzabe);
                    break;
                default:
                    Log.wtf("BasePendingResult", "Don't know how to handle message: " + message.what, new Exception());
                    break;
            }
        }

        public void zza(ResultCallback<? super R> resultCallback, R r) {
            sendMessage(obtainMessage(1, new Pair(resultCallback, r)));
        }

        public void zza(zzlc<R> zzlcVar, long j) {
            sendMessageDelayed(obtainMessage(2, zzlcVar), j);
        }

        protected void zzb(ResultCallback<? super R> resultCallback, R r) {
            try {
                resultCallback.onResult(r);
            } catch (RuntimeException e) {
                zzlc.zzd(r);
                throw e;
            }
        }

        public void zznM() {
            removeMessages(2);
        }
    }

    @Deprecated
    protected zzlc(Looper looper) {
        this.zzabi = new zza<>(looper);
    }

    protected zzlc(GoogleApiClient googleApiClient) {
        this.zzabi = new zza<>(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    private R a() {
        R r;
        synchronized (this.a) {
            zzx.zza(this.f ? false : true, "Result has already been consumed.");
            zzx.zza(isReady(), "Result is not ready.");
            r = this.e;
            this.e = null;
            this.d = null;
            this.f = true;
        }
        zznL();
        return r;
    }

    private void a(R r) {
        this.e = r;
        this.i = null;
        this.b.countDown();
        Status status = this.e.getStatus();
        if (this.d != null) {
            this.zzabi.zznM();
            if (!this.g) {
                this.zzabi.zza(this.d, a());
            }
        }
        Iterator<PendingResult.zza> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().zzt(status);
        }
        this.c.clear();
    }

    public static void zzd(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                Log.w("BasePendingResult", "Unable to release " + result, e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await() {
        zzx.zza(Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread");
        zzx.zza(!this.f, "Result has already been consumed");
        zzx.zza(this.k == null, "Cannot await if then() has been called.");
        try {
            this.b.await();
        } catch (InterruptedException e) {
            zzw(Status.zzabc);
        }
        zzx.zza(isReady(), "Result is not ready.");
        return (R) a();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await(long j, TimeUnit timeUnit) {
        zzx.zza(j <= 0 || Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread when time is greater than zero.");
        zzx.zza(!this.f, "Result has already been consumed.");
        zzx.zza(this.k == null, "Cannot await if then() has been called.");
        try {
            if (!this.b.await(j, timeUnit)) {
                zzw(Status.zzabe);
            }
        } catch (InterruptedException e) {
            zzw(Status.zzabc);
        }
        zzx.zza(isReady(), "Result is not ready.");
        return (R) a();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void cancel() {
        synchronized (this.a) {
            if (this.g || this.f) {
                return;
            }
            if (this.i != null) {
                try {
                    this.i.cancel();
                } catch (RemoteException e) {
                }
            }
            zzd(this.e);
            this.d = null;
            this.g = true;
            a(zzb(Status.zzabf));
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public boolean isCanceled() {
        boolean z;
        synchronized (this.a) {
            z = this.g;
        }
        return z;
    }

    public final boolean isReady() {
        return this.b.getCount() == 0;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        zzx.zza(!this.f, "Result has already been consumed.");
        synchronized (this.a) {
            zzx.zza(this.k == null, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.zzabi.zza(resultCallback, a());
            } else {
                this.d = resultCallback;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        zzx.zza(!this.f, "Result has already been consumed.");
        synchronized (this.a) {
            zzx.zza(this.k == null, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.zzabi.zza(resultCallback, a());
            } else {
                this.d = resultCallback;
                this.zzabi.zza(this, timeUnit.toMillis(j));
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void zza(PendingResult.zza zzaVar) {
        zzx.zza(!this.f, "Result has already been consumed.");
        zzx.zzb(zzaVar != null, "Callback cannot be null.");
        synchronized (this.a) {
            if (isReady()) {
                zzaVar.zzt(this.e.getStatus());
            } else {
                this.c.add(zzaVar);
            }
        }
    }

    protected final void zza(zzq zzqVar) {
        synchronized (this.a) {
            this.i = zzqVar;
        }
    }

    public abstract R zzb(Status status);

    public final void zzb(R r) {
        synchronized (this.a) {
            if (this.h || this.g) {
                zzd(r);
                return;
            }
            zzx.zza(!isReady(), "Results have already been set");
            zzx.zza(this.f ? false : true, "Result has already been consumed");
            a(r);
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public Integer zznF() {
        return this.j;
    }

    protected void zznL() {
    }

    public final void zzw(Status status) {
        synchronized (this.a) {
            if (!isReady()) {
                zzb(zzb(status));
                this.h = true;
            }
        }
    }
}
