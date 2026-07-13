package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class zzk implements Handler.Callback {
    private final zza b;
    private final Handler h;
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> c = new ArrayList<>();
    final ArrayList<GoogleApiClient.ConnectionCallbacks> a = new ArrayList<>();
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> d = new ArrayList<>();
    private volatile boolean e = false;
    private final AtomicInteger f = new AtomicInteger(0);
    private boolean g = false;
    private final Object i = new Object();

    public interface zza {
        boolean isConnected();

        Bundle zzmS();
    }

    public zzk(Looper looper, zza zzaVar) {
        this.b = zzaVar;
        this.h = new Handler(looper, this);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            Log.wtf("GmsClientEvents", "Don't know how to handle message: " + message.what, new Exception());
            return false;
        }
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
        synchronized (this.i) {
            if (this.e && this.b.isConnected() && this.c.contains(connectionCallbacks)) {
                connectionCallbacks.onConnected(this.b.zzmS());
            }
        }
        return true;
    }

    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean zContains;
        zzx.zzw(connectionCallbacks);
        synchronized (this.i) {
            zContains = this.c.contains(connectionCallbacks);
        }
        return zContains;
    }

    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean zContains;
        zzx.zzw(onConnectionFailedListener);
        synchronized (this.i) {
            zContains = this.d.contains(onConnectionFailedListener);
        }
        return zContains;
    }

    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        zzx.zzw(connectionCallbacks);
        synchronized (this.i) {
            if (this.c.contains(connectionCallbacks)) {
                Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + connectionCallbacks + " is already registered");
            } else {
                this.c.add(connectionCallbacks);
            }
        }
        if (this.b.isConnected()) {
            this.h.sendMessage(this.h.obtainMessage(1, connectionCallbacks));
        }
    }

    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzx.zzw(onConnectionFailedListener);
        synchronized (this.i) {
            if (this.d.contains(onConnectionFailedListener)) {
                Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + onConnectionFailedListener + " is already registered");
            } else {
                this.d.add(onConnectionFailedListener);
            }
        }
    }

    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        zzx.zzw(connectionCallbacks);
        synchronized (this.i) {
            if (!this.c.remove(connectionCallbacks)) {
                Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + connectionCallbacks + " not found");
            } else if (this.g) {
                this.a.add(connectionCallbacks);
            }
        }
    }

    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzx.zzw(onConnectionFailedListener);
        synchronized (this.i) {
            if (!this.d.remove(onConnectionFailedListener)) {
                Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + onConnectionFailedListener + " not found");
            }
        }
    }

    public void zzbG(int i) {
        zzx.zza(Looper.myLooper() == this.h.getLooper(), "onUnintentionalDisconnection must only be called on the Handler thread");
        this.h.removeMessages(1);
        synchronized (this.i) {
            this.g = true;
            ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = new ArrayList(this.c);
            int i2 = this.f.get();
            for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : arrayList) {
                if (!this.e || this.f.get() != i2) {
                    break;
                } else if (this.c.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i);
                }
            }
            this.a.clear();
            this.g = false;
        }
    }

    public void zzh(Bundle bundle) {
        zzx.zza(Looper.myLooper() == this.h.getLooper(), "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.i) {
            zzx.zzZ(!this.g);
            this.h.removeMessages(1);
            this.g = true;
            zzx.zzZ(this.a.size() == 0);
            ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = new ArrayList(this.c);
            int i = this.f.get();
            for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : arrayList) {
                if (!this.e || !this.b.isConnected() || this.f.get() != i) {
                    break;
                } else if (!this.a.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                }
            }
            this.a.clear();
            this.g = false;
        }
    }

    public void zzi(ConnectionResult connectionResult) {
        zzx.zza(Looper.myLooper() == this.h.getLooper(), "onConnectionFailure must only be called on the Handler thread");
        this.h.removeMessages(1);
        synchronized (this.i) {
            ArrayList<GoogleApiClient.OnConnectionFailedListener> arrayList = new ArrayList(this.d);
            int i = this.f.get();
            for (GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener : arrayList) {
                if (!this.e || this.f.get() != i) {
                    return;
                }
                if (this.d.contains(onConnectionFailedListener)) {
                    onConnectionFailedListener.onConnectionFailed(connectionResult);
                }
            }
        }
    }

    public void zzpk() {
        this.e = false;
        this.f.incrementAndGet();
    }

    public void zzpl() {
        this.e = true;
    }
}
