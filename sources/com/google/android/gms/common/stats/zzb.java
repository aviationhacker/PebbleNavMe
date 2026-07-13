package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Debug;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.stats.zzc;
import com.google.android.gms.internal.zzmm;
import com.google.android.gms.internal.zzmy;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class zzb {
    private static final Object a = new Object();
    private static zzb b;
    private static Integer h;
    private final List<String> c;
    private final List<String> d;
    private final List<String> e;
    private final List<String> f;
    private zze g;
    private zze i;

    private zzb() {
        if (b() == zzd.LOG_LEVEL_OFF) {
            this.c = Collections.EMPTY_LIST;
            this.d = Collections.EMPTY_LIST;
            this.e = Collections.EMPTY_LIST;
            this.f = Collections.EMPTY_LIST;
            return;
        }
        String str = zzc.zza.zzahI.get();
        this.c = str == null ? Collections.EMPTY_LIST : Arrays.asList(str.split(","));
        String str2 = zzc.zza.zzahJ.get();
        this.d = str2 == null ? Collections.EMPTY_LIST : Arrays.asList(str2.split(","));
        String str3 = zzc.zza.zzahK.get();
        this.e = str3 == null ? Collections.EMPTY_LIST : Arrays.asList(str3.split(","));
        String str4 = zzc.zza.zzahL.get();
        this.f = str4 == null ? Collections.EMPTY_LIST : Arrays.asList(str4.split(","));
        this.g = new zze(1024, zzc.zza.zzahM.get().longValue());
        this.i = new zze(1024, zzc.zza.zzahM.get().longValue());
    }

    private String a(ServiceConnection serviceConnection) {
        return String.valueOf((((long) Process.myPid()) << 32) | ((long) System.identityHashCode(serviceConnection)));
    }

    private void a(Context context, String str, int i, String str2, String str3, String str4, String str5) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strZzl = null;
        if ((b() & zzd.zzahR) != 0 && i != 13) {
            strZzl = zzmy.zzl(3, 5);
        }
        long nativeHeapAllocatedSize = (b() & zzd.zzahT) != 0 ? Debug.getNativeHeapAllocatedSize() : 0L;
        context.startService(new Intent().setComponent(zzd.zzahN).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", (i == 1 || i == 4 || i == 14) ? new ConnectionEvent(jCurrentTimeMillis, i, null, null, null, null, strZzl, str, SystemClock.elapsedRealtime(), nativeHeapAllocatedSize) : new ConnectionEvent(jCurrentTimeMillis, i, str2, str3, str4, str5, strZzl, str, SystemClock.elapsedRealtime(), nativeHeapAllocatedSize)));
    }

    private void a(Context context, String str, String str2, Intent intent, int i) {
        String str3;
        String str4;
        String strZzaq = null;
        if (!a() || this.g == null) {
            return;
        }
        if (i != 4 && i != 1) {
            ServiceInfo serviceInfoB = b(context, intent);
            if (serviceInfoB == null) {
                Log.w("ConnectionTracker", String.format("Client %s made an invalid request %s", str2, intent.toUri(0)));
                return;
            }
            str4 = serviceInfoB.processName;
            str3 = serviceInfoB.name;
            strZzaq = zzmy.zzaq(context);
            if (!a(strZzaq, str2, str4, str3)) {
                return;
            } else {
                this.g.zzcx(str);
            }
        } else {
            if (!this.g.zzcy(str)) {
                return;
            }
            str3 = null;
            str4 = null;
        }
        a(context, str, i, strZzaq, str2, str4, str3);
    }

    private boolean a() {
        return com.google.android.gms.common.internal.zzd.zzaeK && b() != zzd.LOG_LEVEL_OFF;
    }

    private boolean a(Context context, Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null || (com.google.android.gms.common.internal.zzd.zzaeK && "com.google.android.gms".equals(component.getPackageName()))) {
            return false;
        }
        return zzmm.zzl(context, component.getPackageName());
    }

    private boolean a(String str, String str2, String str3, String str4) {
        return (this.c.contains(str) || this.d.contains(str2) || this.e.contains(str3) || this.f.contains(str4) || (str3.equals(str) && (b() & zzd.zzahS) != 0)) ? false : true;
    }

    private static int b() {
        if (h == null) {
            try {
                h = Integer.valueOf(zzmm.zzjA() ? zzc.zza.zzahH.get().intValue() : zzd.LOG_LEVEL_OFF);
            } catch (SecurityException e) {
                h = Integer.valueOf(zzd.LOG_LEVEL_OFF);
            }
        }
        return h.intValue();
    }

    private static ServiceInfo b(Context context, Intent intent) {
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 128);
        if (listQueryIntentServices == null || listQueryIntentServices.size() == 0) {
            Log.w("ConnectionTracker", String.format("There are no handler of this intent: %s\n Stack trace: %s", intent.toUri(0), zzmy.zzl(3, 20)));
            return null;
        }
        if (listQueryIntentServices.size() > 1) {
            Log.w("ConnectionTracker", String.format("Multiple handlers found for this intent: %s\n Stack trace: %s", intent.toUri(0), zzmy.zzl(3, 20)));
            Iterator<ResolveInfo> it = listQueryIntentServices.iterator();
            if (it.hasNext()) {
                Log.w("ConnectionTracker", it.next().serviceInfo.name);
                return null;
            }
        }
        return listQueryIntentServices.get(0).serviceInfo;
    }

    public static zzb zzqh() {
        synchronized (a) {
            if (b == null) {
                b = new zzb();
            }
        }
        return b;
    }

    public void zza(Context context, ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
        a(context, a(serviceConnection), null, null, 1);
    }

    public void zza(Context context, ServiceConnection serviceConnection, String str, Intent intent) {
        a(context, a(serviceConnection), str, intent, 3);
    }

    public boolean zza(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return zza(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    public boolean zza(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        if (a(context, intent)) {
            Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
            return false;
        }
        boolean zBindService = context.bindService(intent, serviceConnection, i);
        if (zBindService) {
            a(context, a(serviceConnection), str, intent, 2);
        }
        return zBindService;
    }

    public void zzb(Context context, ServiceConnection serviceConnection) {
        a(context, a(serviceConnection), null, null, 4);
    }
}
