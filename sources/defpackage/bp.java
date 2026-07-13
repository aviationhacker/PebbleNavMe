package defpackage;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
public class bp implements RemoteControlClient.OnGetPlaybackPositionListener, RemoteControlClient.OnPlaybackPositionUpdateListener {
    final Context a;
    final AudioManager b;
    final View c;
    final bo d;
    final String e;
    final IntentFilter f;
    final Intent g;
    PendingIntent l;
    RemoteControlClient m;
    boolean n;
    boolean p;
    final ViewTreeObserver.OnWindowAttachListener h = new ViewTreeObserver.OnWindowAttachListener() { // from class: bp.1
        @Override // android.view.ViewTreeObserver.OnWindowAttachListener
        public void onWindowAttached() {
            bp.this.c();
        }

        @Override // android.view.ViewTreeObserver.OnWindowAttachListener
        public void onWindowDetached() {
            bp.this.k();
        }
    };
    final ViewTreeObserver.OnWindowFocusChangeListener i = new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: bp.2
        @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
        public void onWindowFocusChanged(boolean z) {
            if (!z) {
                bp.this.j();
            } else {
                bp.this.d();
            }
        }
    };
    final BroadcastReceiver j = new BroadcastReceiver() { // from class: bp.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                bp.this.d.a((KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            } catch (ClassCastException e) {
                Log.w("TransportController", e);
            }
        }
    };
    AudioManager.OnAudioFocusChangeListener k = new AudioManager.OnAudioFocusChangeListener() { // from class: bp.4
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            bp.this.d.a(i);
        }
    };
    int o = 0;

    public bp(Context context, AudioManager audioManager, View view, bo boVar) {
        this.a = context;
        this.b = audioManager;
        this.c = view;
        this.d = boVar;
        this.e = context.getPackageName() + ":transport:" + System.identityHashCode(this);
        this.g = new Intent(this.e);
        this.g.setPackage(context.getPackageName());
        this.f = new IntentFilter();
        this.f.addAction(this.e);
        this.c.getViewTreeObserver().addOnWindowAttachListener(this.h);
        this.c.getViewTreeObserver().addOnWindowFocusChangeListener(this.i);
    }

    public Object a() {
        return this.m;
    }

    public void b() {
        k();
        this.c.getViewTreeObserver().removeOnWindowAttachListener(this.h);
        this.c.getViewTreeObserver().removeOnWindowFocusChangeListener(this.i);
    }

    void c() {
        this.a.registerReceiver(this.j, this.f);
        this.l = PendingIntent.getBroadcast(this.a, 0, this.g, 268435456);
        this.m = new RemoteControlClient(this.l);
        this.m.setOnGetPlaybackPositionListener(this);
        this.m.setPlaybackPositionUpdateListener(this);
    }

    void d() {
        if (!this.n) {
            this.n = true;
            this.b.registerMediaButtonEventReceiver(this.l);
            this.b.registerRemoteControlClient(this.m);
            if (this.o == 3) {
                e();
            }
        }
    }

    void e() {
        if (!this.p) {
            this.p = true;
            this.b.requestAudioFocus(this.k, 3, 1);
        }
    }

    public void f() {
        if (this.o != 3) {
            this.o = 3;
            this.m.setPlaybackState(3);
        }
        if (this.n) {
            e();
        }
    }

    @Override // android.media.RemoteControlClient.OnGetPlaybackPositionListener
    public long onGetPlaybackPosition() {
        return this.d.a();
    }

    @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
    public void onPlaybackPositionUpdate(long j) {
        this.d.a(j);
    }

    public void a(boolean z, long j, int i) {
        if (this.m != null) {
            this.m.setPlaybackState(z ? 3 : 1, j, z ? 1.0f : 0.0f);
            this.m.setTransportControlFlags(i);
        }
    }

    public void g() {
        if (this.o == 3) {
            this.o = 2;
            this.m.setPlaybackState(2);
        }
        i();
    }

    public void h() {
        if (this.o != 1) {
            this.o = 1;
            this.m.setPlaybackState(1);
        }
        i();
    }

    void i() {
        if (this.p) {
            this.p = false;
            this.b.abandonAudioFocus(this.k);
        }
    }

    void j() {
        i();
        if (this.n) {
            this.n = false;
            this.b.unregisterRemoteControlClient(this.m);
            this.b.unregisterMediaButtonEventReceiver(this.l);
        }
    }

    void k() {
        j();
        if (this.l != null) {
            this.a.unregisterReceiver(this.j);
            this.l.cancel();
            this.l = null;
            this.m = null;
        }
    }
}
