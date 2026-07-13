package com.google.android.gms.common.images;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.util.Log;
import android.widget.ImageView;
import com.google.android.gms.common.images.zza;
import com.google.android.gms.internal.zzlv;
import com.google.android.gms.internal.zzmg;
import com.google.android.gms.internal.zzmx;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes.dex */
public final class ImageManager {
    private static final Object a = new Object();
    private static HashSet<Uri> b = new HashSet<>();
    private static ImageManager c;
    private static ImageManager d;
    private final Context e;
    private final Handler f = new Handler(Looper.getMainLooper());
    private final ExecutorService g = Executors.newFixedThreadPool(4);
    private final b h;
    private final zzlv i;
    private final Map<zza, ImageReceiver> j;
    private final Map<Uri, ImageReceiver> k;
    private final Map<Uri, Long> l;

    final class ImageReceiver extends ResultReceiver {
        private final Uri b;
        private final ArrayList<zza> c;

        ImageReceiver(Uri uri) {
            super(new Handler(Looper.getMainLooper()));
            this.b = uri;
            this.c = new ArrayList<>();
        }

        public void a() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", this.b);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            ImageManager.this.e.sendBroadcast(intent);
        }

        public void a(zza zzaVar) {
            com.google.android.gms.common.internal.zzb.zzci("ImageReceiver.addImageRequest() must be called in the main thread");
            this.c.add(zzaVar);
        }

        public void b(zza zzaVar) {
            com.google.android.gms.common.internal.zzb.zzci("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.c.remove(zzaVar);
        }

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.g.execute(ImageManager.this.new c(this.b, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    static final class a {
        static int a(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    static final class b extends zzmg<zza.a, Bitmap> {
        public b(Context context) {
            super(a(context));
        }

        private static int a(Context context) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            return (int) (((((context.getApplicationInfo().flags & 1048576) != 0) && zzmx.zzqu()) ? a.a(activityManager) : activityManager.getMemoryClass()) * 1048576 * 0.33f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzmg
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int sizeOf(zza.a aVar, Bitmap bitmap) {
            return bitmap.getHeight() * bitmap.getRowBytes();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzmg
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void entryRemoved(boolean z, zza.a aVar, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, aVar, bitmap, bitmap2);
        }
    }

    final class c implements Runnable {
        private final Uri b;
        private final ParcelFileDescriptor c;

        public c(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.b = uri;
            this.c = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzb.zzcj("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            boolean z = false;
            Bitmap bitmapDecodeFileDescriptor = null;
            if (this.c != null) {
                try {
                    bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(this.c.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    Log.e("ImageManager", "OOM while loading bitmap for uri: " + this.b, e);
                    z = true;
                }
                try {
                    this.c.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.f.post(ImageManager.this.new f(this.b, bitmapDecodeFileDescriptor, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                Log.w("ImageManager", "Latch interrupted while posting " + this.b);
            }
        }
    }

    final class d implements Runnable {
        private final zza b;

        public d(zza zzaVar) {
            this.b = zzaVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzb.zzci("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.j.get(this.b);
            if (imageReceiver != null) {
                ImageManager.this.j.remove(this.b);
                imageReceiver.b(this.b);
            }
            zza.a aVar = this.b.a;
            if (aVar.a == null) {
                this.b.a(ImageManager.this.e, ImageManager.this.i, true);
                return;
            }
            Bitmap bitmapA = ImageManager.this.a(aVar);
            if (bitmapA != null) {
                this.b.a(ImageManager.this.e, bitmapA, true);
                return;
            }
            Long l = (Long) ImageManager.this.l.get(aVar.a);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < DateUtils.MILLIS_PER_HOUR) {
                    this.b.a(ImageManager.this.e, ImageManager.this.i, true);
                    return;
                }
                ImageManager.this.l.remove(aVar.a);
            }
            this.b.a(ImageManager.this.e, ImageManager.this.i);
            ImageReceiver imageReceiver2 = (ImageReceiver) ImageManager.this.k.get(aVar.a);
            if (imageReceiver2 == null) {
                imageReceiver2 = ImageManager.this.new ImageReceiver(aVar.a);
                ImageManager.this.k.put(aVar.a, imageReceiver2);
            }
            imageReceiver2.a(this.b);
            if (!(this.b instanceof zza.zzc)) {
                ImageManager.this.j.put(this.b, imageReceiver2);
            }
            synchronized (ImageManager.a) {
                if (!ImageManager.b.contains(aVar.a)) {
                    ImageManager.b.add(aVar.a);
                    imageReceiver2.a();
                }
            }
        }
    }

    static final class e implements ComponentCallbacks2 {
        private final b a;

        public e(b bVar) {
            this.a = bVar;
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
            this.a.evictAll();
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            if (i >= 60) {
                this.a.evictAll();
            } else if (i >= 20) {
                this.a.trimToSize(this.a.size() / 2);
            }
        }
    }

    final class f implements Runnable {
        private final Uri b;
        private final Bitmap c;
        private final CountDownLatch d;
        private boolean e;

        public f(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.b = uri;
            this.c = bitmap;
            this.e = z;
            this.d = countDownLatch;
        }

        private void a(ImageReceiver imageReceiver, boolean z) {
            ArrayList arrayList = imageReceiver.c;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zza zzaVar = (zza) arrayList.get(i);
                if (z) {
                    zzaVar.a(ImageManager.this.e, this.c, false);
                } else {
                    ImageManager.this.l.put(this.b, Long.valueOf(SystemClock.elapsedRealtime()));
                    zzaVar.a(ImageManager.this.e, ImageManager.this.i, false);
                }
                if (!(zzaVar instanceof zza.zzc)) {
                    ImageManager.this.j.remove(zzaVar);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzb.zzci("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.c != null;
            if (ImageManager.this.h != null) {
                if (this.e) {
                    ImageManager.this.h.evictAll();
                    System.gc();
                    this.e = false;
                    ImageManager.this.f.post(this);
                    return;
                }
                if (z) {
                    ImageManager.this.h.put(new zza.a(this.b), this.c);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.k.remove(this.b);
            if (imageReceiver != null) {
                a(imageReceiver, z);
            }
            this.d.countDown();
            synchronized (ImageManager.a) {
                ImageManager.b.remove(this.b);
            }
        }
    }

    private ImageManager(Context context, boolean z) {
        this.e = context.getApplicationContext();
        if (z) {
            this.h = new b(this.e);
            if (zzmx.zzqx()) {
                c();
            }
        } else {
            this.h = null;
        }
        this.i = new zzlv();
        this.j = new HashMap();
        this.k = new HashMap();
        this.l = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap a(zza.a aVar) {
        if (this.h == null) {
            return null;
        }
        return this.h.get(aVar);
    }

    private void c() {
        this.e.registerComponentCallbacks(new e(this.h));
    }

    public static ImageManager create(Context context) {
        return zzb(context, false);
    }

    public static ImageManager zzb(Context context, boolean z) {
        if (z) {
            if (d == null) {
                d = new ImageManager(context, true);
            }
            return d;
        }
        if (c == null) {
            c = new ImageManager(context, false);
        }
        return c;
    }

    public void loadImage(ImageView imageView, int i) {
        zza(new zza.zzb(imageView, i));
    }

    public void loadImage(ImageView imageView, Uri uri) {
        zza(new zza.zzb(imageView, uri));
    }

    public void loadImage(ImageView imageView, Uri uri, int i) {
        zza.zzb zzbVar = new zza.zzb(imageView, uri);
        zzbVar.zzby(i);
        zza(zzbVar);
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zza(new zza.zzc(onImageLoadedListener, uri));
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        zza.zzc zzcVar = new zza.zzc(onImageLoadedListener, uri);
        zzcVar.zzby(i);
        zza(zzcVar);
    }

    public void zza(zza zzaVar) {
        com.google.android.gms.common.internal.zzb.zzci("ImageManager.loadImage() must be called in the main thread");
        new d(zzaVar).run();
    }
}
