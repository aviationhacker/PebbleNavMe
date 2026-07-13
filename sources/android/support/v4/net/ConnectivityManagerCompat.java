package android.support.v4.net;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import defpackage.bt;
import defpackage.bu;
import defpackage.bv;

/* JADX INFO: loaded from: classes.dex */
public class ConnectivityManagerCompat {
    private static final b a;

    interface b {
        boolean a(ConnectivityManager connectivityManager);
    }

    static class a implements b {
        a() {
        }

        @Override // android.support.v4.net.ConnectivityManagerCompat.b
        public boolean a(ConnectivityManager connectivityManager) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return true;
            }
            switch (activeNetworkInfo.getType()) {
            }
            return true;
        }
    }

    static class c implements b {
        c() {
        }

        @Override // android.support.v4.net.ConnectivityManagerCompat.b
        public boolean a(ConnectivityManager connectivityManager) {
            return bt.a(connectivityManager);
        }
    }

    static class d implements b {
        d() {
        }

        @Override // android.support.v4.net.ConnectivityManagerCompat.b
        public boolean a(ConnectivityManager connectivityManager) {
            return bu.a(connectivityManager);
        }
    }

    static class e implements b {
        e() {
        }

        @Override // android.support.v4.net.ConnectivityManagerCompat.b
        public boolean a(ConnectivityManager connectivityManager) {
            return bv.a(connectivityManager);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            a = new e();
            return;
        }
        if (Build.VERSION.SDK_INT >= 13) {
            a = new d();
        } else if (Build.VERSION.SDK_INT >= 8) {
            a = new c();
        } else {
            a = new a();
        }
    }

    public static boolean isActiveNetworkMetered(ConnectivityManager connectivityManager) {
        return a.a(connectivityManager);
    }

    public static NetworkInfo getNetworkInfoFromBroadcast(ConnectivityManager connectivityManager, Intent intent) {
        NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
        if (networkInfo != null) {
            return connectivityManager.getNetworkInfo(networkInfo.getType());
        }
        return null;
    }
}
