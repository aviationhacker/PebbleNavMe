package com.google.android.gms.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzx;
import defpackage.gl;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class zzlp extends Fragment implements DialogInterface.OnCancelListener {
    private static final GoogleApiAvailability a = GoogleApiAvailability.getInstance();
    private boolean b;
    private boolean c;
    private ConnectionResult e;
    private gl g;
    private int d = -1;
    private final Handler f = new Handler(Looper.getMainLooper());
    private final SparseArray<a> h = new SparseArray<>();

    class a implements GoogleApiClient.OnConnectionFailedListener {
        public final int a;
        public final GoogleApiClient b;
        public final GoogleApiClient.OnConnectionFailedListener c;

        public a(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.a = i;
            this.b = googleApiClient;
            this.c = onConnectionFailedListener;
            googleApiClient.registerConnectionFailedListener(this);
        }

        public void a() {
            this.b.unregisterConnectionFailedListener(this);
            this.b.disconnect();
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.append((CharSequence) str).append("GoogleApiClient #").print(this.a);
            printWriter.println(":");
            this.b.dump(str + "  ", fileDescriptor, printWriter, strArr);
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            zzlp.this.f.post(zzlp.this.new b(this.a, connectionResult));
        }
    }

    class b implements Runnable {
        private final int b;
        private final ConnectionResult c;

        public b(int i, ConnectionResult connectionResult) {
            this.b = i;
            this.c = connectionResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!zzlp.this.b || zzlp.this.c) {
                return;
            }
            zzlp.this.c = true;
            zzlp.this.d = this.b;
            zzlp.this.e = this.c;
            if (this.c.hasResolution()) {
                try {
                    this.c.startResolutionForResult(zzlp.this.getActivity(), ((zzlp.this.getActivity().getSupportFragmentManager().getFragments().indexOf(zzlp.this) + 1) << 16) + 1);
                    return;
                } catch (IntentSender.SendIntentException e) {
                    zzlp.this.m();
                    return;
                }
            }
            if (zzlp.a.isUserResolvableError(this.c.getErrorCode())) {
                GooglePlayServicesUtil.showErrorDialogFragment(this.c.getErrorCode(), zzlp.this.getActivity(), zzlp.this, 2, zzlp.this);
            } else {
                if (this.c.getErrorCode() != 18) {
                    zzlp.this.a(this.b, this.c);
                    return;
                }
                final Dialog dialogZza = zzlp.a.zza(zzlp.this.getActivity(), zzlp.this);
                zzlp.this.g = gl.a(zzlp.this.getActivity().getApplicationContext(), new gl() { // from class: com.google.android.gms.internal.zzlp.b.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // defpackage.gl
                    public void a() {
                        zzlp.this.m();
                        dialogZza.dismiss();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, ConnectionResult connectionResult) {
        Log.w("GmsSupportLifecycleFragment", "Unresolved error while connecting client. Stopping auto-manage.");
        a aVar = this.h.get(i);
        if (aVar != null) {
            zzbp(i);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = aVar.c;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
        m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        int i = 0;
        this.c = false;
        this.d = -1;
        this.e = null;
        if (this.g != null) {
            this.g.b();
            this.g = null;
        }
        while (true) {
            int i2 = i;
            if (i2 >= this.h.size()) {
                return;
            }
            this.h.valueAt(i2).b.connect();
            i = i2 + 1;
        }
    }

    public static zzlp zza(FragmentActivity fragmentActivity) {
        zzx.zzci("Must be called from main thread of process");
        try {
            zzlp zzlpVar = (zzlp) fragmentActivity.getSupportFragmentManager().findFragmentByTag("GmsSupportLifecycleFragment");
            if (zzlpVar == null || zzlpVar.isRemoving()) {
                return null;
            }
            return zzlpVar;
        } catch (ClassCastException e) {
            throw new IllegalStateException("Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment", e);
        }
    }

    public static zzlp zzb(FragmentActivity fragmentActivity) {
        zzlp zzlpVarZza = zza(fragmentActivity);
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        if (zzlpVarZza != null) {
            return zzlpVarZza;
        }
        zzlp zzlpVar = new zzlp();
        supportFragmentManager.beginTransaction().add(zzlpVar, "GmsSupportLifecycleFragment").commitAllowingStateLoss();
        supportFragmentManager.executePendingTransactions();
        return zzlpVar;
    }

    @Override // android.support.v4.app.Fragment
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.h.size()) {
                return;
            }
            this.h.valueAt(i2).a(str, fileDescriptor, printWriter, strArr);
            i = i2 + 1;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0005  */
    @Override // android.support.v4.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r5, int r6, android.content.Intent r7) {
        /*
            r4 = this;
            r0 = 1
            r1 = 0
            switch(r5) {
                case 1: goto L19;
                case 2: goto Lc;
                default: goto L5;
            }
        L5:
            r0 = r1
        L6:
            if (r0 == 0) goto L29
            r4.m()
        Lb:
            return
        Lc:
            com.google.android.gms.common.GoogleApiAvailability r2 = com.google.android.gms.internal.zzlp.a
            android.support.v4.app.FragmentActivity r3 = r4.getActivity()
            int r2 = r2.isGooglePlayServicesAvailable(r3)
            if (r2 != 0) goto L5
            goto L6
        L19:
            r2 = -1
            if (r6 == r2) goto L6
            if (r6 != 0) goto L5
            com.google.android.gms.common.ConnectionResult r0 = new com.google.android.gms.common.ConnectionResult
            r2 = 13
            r3 = 0
            r0.<init>(r2, r3)
            r4.e = r0
            goto L5
        L29:
            int r0 = r4.d
            com.google.android.gms.common.ConnectionResult r1 = r4.e
            r4.a(r0, r1)
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzlp.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        a(this.d, new ConnectionResult(13, null));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.c = bundle.getBoolean("resolving_error", false);
            this.d = bundle.getInt("failed_client_id", -1);
            if (this.d >= 0) {
                this.e = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"));
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.c);
        if (this.d >= 0) {
            bundle.putInt("failed_client_id", this.d);
            bundle.putInt("failed_status", this.e.getErrorCode());
            bundle.putParcelable("failed_resolution", this.e.getResolution());
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.b = true;
        if (this.c) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.h.size()) {
                return;
            }
            this.h.valueAt(i2).b.connect();
            i = i2 + 1;
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        int i = 0;
        super.onStop();
        this.b = false;
        while (true) {
            int i2 = i;
            if (i2 >= this.h.size()) {
                return;
            }
            this.h.valueAt(i2).b.disconnect();
            i = i2 + 1;
        }
    }

    public void zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzx.zzb(googleApiClient, "GoogleApiClient instance cannot be null");
        zzx.zza(this.h.indexOfKey(i) < 0, "Already managing a GoogleApiClient with id " + i);
        this.h.put(i, new a(i, googleApiClient, onConnectionFailedListener));
        if (!this.b || this.c) {
            return;
        }
        googleApiClient.connect();
    }

    public void zzbp(int i) {
        a aVar = this.h.get(i);
        this.h.remove(i);
        if (aVar != null) {
            aVar.a();
        }
    }
}
