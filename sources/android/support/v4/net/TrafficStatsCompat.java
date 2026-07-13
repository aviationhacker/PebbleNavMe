package android.support.v4.net;

import android.os.Build;
import defpackage.bw;
import java.net.Socket;
import java.net.SocketException;

/* JADX INFO: loaded from: classes.dex */
public class TrafficStatsCompat {
    private static final c a;

    interface c {
        void a();

        void a(int i);

        void a(int i, int i2);

        void a(Socket socket);

        int b();

        void b(int i);

        void b(Socket socket);
    }

    static class a implements c {
        private ThreadLocal<C0001a> a = new ThreadLocal<C0001a>() { // from class: android.support.v4.net.TrafficStatsCompat.a.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0001a initialValue() {
                return new C0001a();
            }
        };

        /* JADX INFO: renamed from: android.support.v4.net.TrafficStatsCompat$a$a, reason: collision with other inner class name */
        static class C0001a {
            public int a;

            private C0001a() {
                this.a = -1;
            }
        }

        a() {
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public void a() {
            this.a.get().a = -1;
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public int b() {
            return this.a.get().a;
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public void a(int i) {
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public void a(int i, int i2) {
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public void b(int i) {
            this.a.get().a = i;
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public void a(Socket socket) {
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public void b(Socket socket) {
        }
    }

    static class b implements c {
        b() {
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public void a() {
            bw.a();
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public int b() {
            return bw.b();
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public void a(int i) {
            bw.a(i);
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public void a(int i, int i2) {
            bw.a(i, i2);
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public void b(int i) {
            bw.b(i);
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public void a(Socket socket) throws SocketException {
            bw.a(socket);
        }

        @Override // android.support.v4.net.TrafficStatsCompat.c
        public void b(Socket socket) throws SocketException {
            bw.b(socket);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static void clearThreadStatsTag() {
        a.a();
    }

    public static int getThreadStatsTag() {
        return a.b();
    }

    public static void incrementOperationCount(int i) {
        a.a(i);
    }

    public static void incrementOperationCount(int i, int i2) {
        a.a(i, i2);
    }

    public static void setThreadStatsTag(int i) {
        a.b(i);
    }

    public static void tagSocket(Socket socket) {
        a.a(socket);
    }

    public static void untagSocket(Socket socket) {
        a.b(socket);
    }
}
