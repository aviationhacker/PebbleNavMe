package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzli;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class zzlb {

    public static abstract class zza<R extends Result, A extends Api.zzb> extends zzlc<R> implements zzb<R>, zzli.f<A> {
        private final Api.zzc<A> a;
        private AtomicReference<zzli.e> b;

        protected zza(Api.zzc<A> zzcVar, GoogleApiClient googleApiClient) {
            super(((GoogleApiClient) zzx.zzb(googleApiClient, "GoogleApiClient must not be null")).getLooper());
            this.b = new AtomicReference<>();
            this.a = (Api.zzc) zzx.zzw(zzcVar);
        }

        private void a(RemoteException remoteException) {
            zzv(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        public abstract void zza(A a);

        @Override // com.google.android.gms.internal.zzli.f
        public void zza(zzli.e eVar) {
            this.b.set(eVar);
        }

        @Override // com.google.android.gms.internal.zzli.f
        public final void zzb(A a) throws DeadObjectException {
            try {
                zza(a);
            } catch (DeadObjectException e) {
                a(e);
                throw e;
            } catch (RemoteException e2) {
                a(e2);
            }
        }

        @Override // com.google.android.gms.internal.zzli.f
        public void zznJ() {
            setResultCallback(null);
        }

        @Override // com.google.android.gms.internal.zzli.f
        public int zznK() {
            return 0;
        }

        @Override // com.google.android.gms.internal.zzlc
        protected void zznL() {
            zzli.e andSet = this.b.getAndSet(null);
            if (andSet != null) {
                andSet.a(this);
            }
        }

        @Override // com.google.android.gms.internal.zzli.f
        public final Api.zzc<A> zznx() {
            return this.a;
        }

        @Override // com.google.android.gms.internal.zzlb.zzb
        public /* synthetic */ void zzp(Object obj) {
            super.zzb((Result) obj);
        }

        @Override // com.google.android.gms.internal.zzlb.zzb, com.google.android.gms.internal.zzli.f
        public final void zzv(Status status) {
            zzx.zzb(!status.isSuccess(), "Failed result must not be success");
            zzb(zzb(status));
        }
    }

    public interface zzb<R> {
        void zzp(R r);

        void zzv(Status status);
    }
}
