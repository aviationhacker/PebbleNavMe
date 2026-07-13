package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.support.v4.print.PrintHelperKitkat;

/* JADX INFO: loaded from: classes.dex */
public final class PrintHelper {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    c a;

    public interface OnPrintFinishCallback {
        void onFinish();
    }

    interface c {
        int a();

        void a(int i);

        void a(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback);

        void a(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback);

        int b();

        void b(int i);

        int c();

        void c(int i);
    }

    public static boolean systemSupportsPrint() {
        return Build.VERSION.SDK_INT >= 19;
    }

    static final class b implements c {
        int a;
        int b;
        int c;

        private b() {
            this.a = 2;
            this.b = 2;
            this.c = 1;
        }

        @Override // android.support.v4.print.PrintHelper.c
        public void a(int i) {
            this.a = i;
        }

        @Override // android.support.v4.print.PrintHelper.c
        public int b() {
            return this.b;
        }

        @Override // android.support.v4.print.PrintHelper.c
        public void b(int i) {
            this.b = i;
        }

        @Override // android.support.v4.print.PrintHelper.c
        public void c(int i) {
            this.c = i;
        }

        @Override // android.support.v4.print.PrintHelper.c
        public int c() {
            return this.c;
        }

        @Override // android.support.v4.print.PrintHelper.c
        public int a() {
            return this.a;
        }

        @Override // android.support.v4.print.PrintHelper.c
        public void a(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
        }

        @Override // android.support.v4.print.PrintHelper.c
        public void a(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback) {
        }
    }

    static final class a implements c {
        private final PrintHelperKitkat a;

        a(Context context) {
            this.a = new PrintHelperKitkat(context);
        }

        @Override // android.support.v4.print.PrintHelper.c
        public void a(int i) {
            this.a.a(i);
        }

        @Override // android.support.v4.print.PrintHelper.c
        public int a() {
            return this.a.a();
        }

        @Override // android.support.v4.print.PrintHelper.c
        public void b(int i) {
            this.a.b(i);
        }

        @Override // android.support.v4.print.PrintHelper.c
        public int b() {
            return this.a.c();
        }

        @Override // android.support.v4.print.PrintHelper.c
        public void c(int i) {
            this.a.c(i);
        }

        @Override // android.support.v4.print.PrintHelper.c
        public int c() {
            return this.a.b();
        }

        @Override // android.support.v4.print.PrintHelper.c
        public void a(String str, Bitmap bitmap, final OnPrintFinishCallback onPrintFinishCallback) {
            PrintHelperKitkat.OnPrintFinishCallback onPrintFinishCallback2 = null;
            if (onPrintFinishCallback != null) {
                onPrintFinishCallback2 = new PrintHelperKitkat.OnPrintFinishCallback() { // from class: android.support.v4.print.PrintHelper.a.1
                    @Override // android.support.v4.print.PrintHelperKitkat.OnPrintFinishCallback
                    public void onFinish() {
                        onPrintFinishCallback.onFinish();
                    }
                };
            }
            this.a.a(str, bitmap, onPrintFinishCallback2);
        }

        @Override // android.support.v4.print.PrintHelper.c
        public void a(String str, Uri uri, final OnPrintFinishCallback onPrintFinishCallback) {
            PrintHelperKitkat.OnPrintFinishCallback onPrintFinishCallback2 = null;
            if (onPrintFinishCallback != null) {
                onPrintFinishCallback2 = new PrintHelperKitkat.OnPrintFinishCallback() { // from class: android.support.v4.print.PrintHelper.a.2
                    @Override // android.support.v4.print.PrintHelperKitkat.OnPrintFinishCallback
                    public void onFinish() {
                        onPrintFinishCallback.onFinish();
                    }
                };
            }
            this.a.a(str, uri, onPrintFinishCallback2);
        }
    }

    public PrintHelper(Context context) {
        if (systemSupportsPrint()) {
            this.a = new a(context);
        } else {
            this.a = new b();
        }
    }

    public void setScaleMode(int i) {
        this.a.a(i);
    }

    public int getScaleMode() {
        return this.a.a();
    }

    public void setColorMode(int i) {
        this.a.b(i);
    }

    public int getColorMode() {
        return this.a.b();
    }

    public void setOrientation(int i) {
        this.a.c(i);
    }

    public int getOrientation() {
        return this.a.c();
    }

    public void printBitmap(String str, Bitmap bitmap) {
        this.a.a(str, bitmap, (OnPrintFinishCallback) null);
    }

    public void printBitmap(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
        this.a.a(str, bitmap, onPrintFinishCallback);
    }

    public void printBitmap(String str, Uri uri) {
        this.a.a(str, uri, (OnPrintFinishCallback) null);
    }

    public void printBitmap(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback) {
        this.a.a(str, uri, onPrintFinishCallback);
    }
}
