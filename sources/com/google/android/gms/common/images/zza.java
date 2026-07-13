package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.internal.zzls;
import com.google.android.gms.internal.zzlt;
import com.google.android.gms.internal.zzlu;
import com.google.android.gms.internal.zzlv;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class zza {
    final a a;
    protected int zzadX;
    protected ImageManager.OnImageLoadedListener zzadZ;
    protected int zzaed;
    protected int zzadW = 0;
    protected boolean zzadY = false;
    private boolean b = true;
    private boolean c = false;
    private boolean d = true;

    static final class a {
        public final Uri a;

        public a(Uri uri) {
            this.a = uri;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            return zzw.equal(((a) obj).a, this.a);
        }

        public int hashCode() {
            return zzw.hashCode(this.a);
        }
    }

    public static final class zzb extends zza {
        private WeakReference<ImageView> b;

        public zzb(ImageView imageView, int i) {
            super(null, i);
            com.google.android.gms.common.internal.zzb.zzs(imageView);
            this.b = new WeakReference<>(imageView);
        }

        public zzb(ImageView imageView, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzb.zzs(imageView);
            this.b = new WeakReference<>(imageView);
        }

        private void a(ImageView imageView, Drawable drawable, boolean z, boolean z2, boolean z3) {
            boolean z4 = (z2 || z3) ? false : true;
            if (z4 && (imageView instanceof zzlu)) {
                int iZzoH = ((zzlu) imageView).zzoH();
                if (this.zzadX != 0 && iZzoH == this.zzadX) {
                    return;
                }
            }
            boolean zZzb = zzb(z, z2);
            Drawable drawableNewDrawable = (!this.zzadY || drawable == null) ? drawable : drawable.getConstantState().newDrawable();
            if (zZzb) {
                drawableNewDrawable = zza(imageView.getDrawable(), drawableNewDrawable);
            }
            imageView.setImageDrawable(drawableNewDrawable);
            if (imageView instanceof zzlu) {
                zzlu zzluVar = (zzlu) imageView;
                zzluVar.zzj(z3 ? this.a.a : null);
                zzluVar.zzbA(z4 ? this.zzadX : 0);
            }
            if (zZzb) {
                ((zzls) drawableNewDrawable).startTransition(250);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzb)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            ImageView imageView = this.b.get();
            ImageView imageView2 = ((zzb) obj).b.get();
            return (imageView2 == null || imageView == null || !zzw.equal(imageView2, imageView)) ? false : true;
        }

        public int hashCode() {
            return 0;
        }

        @Override // com.google.android.gms.common.images.zza
        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageView imageView = this.b.get();
            if (imageView != null) {
                a(imageView, drawable, z, z2, z3);
            }
        }
    }

    public static final class zzc extends zza {
        private WeakReference<ImageManager.OnImageLoadedListener> b;

        public zzc(ImageManager.OnImageLoadedListener onImageLoadedListener, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzb.zzs(onImageLoadedListener);
            this.b = new WeakReference<>(onImageLoadedListener);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzc)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zzc zzcVar = (zzc) obj;
            ImageManager.OnImageLoadedListener onImageLoadedListener = this.b.get();
            ImageManager.OnImageLoadedListener onImageLoadedListener2 = zzcVar.b.get();
            return onImageLoadedListener2 != null && onImageLoadedListener != null && zzw.equal(onImageLoadedListener2, onImageLoadedListener) && zzw.equal(zzcVar.a, this.a);
        }

        public int hashCode() {
            return zzw.hashCode(this.a);
        }

        @Override // com.google.android.gms.common.images.zza
        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageManager.OnImageLoadedListener onImageLoadedListener;
            if (z2 || (onImageLoadedListener = this.b.get()) == null) {
                return;
            }
            onImageLoadedListener.onImageLoaded(this.a.a, drawable, z3);
        }
    }

    public zza(Uri uri, int i) {
        this.zzadX = 0;
        this.a = new a(uri);
        this.zzadX = i;
    }

    private Drawable a(Context context, zzlv zzlvVar, int i) {
        Resources resources = context.getResources();
        if (this.zzaed <= 0) {
            return resources.getDrawable(i);
        }
        zzlv.zza zzaVar = new zzlv.zza(i, this.zzaed);
        Drawable drawable = zzlvVar.get(zzaVar);
        if (drawable != null) {
            return drawable;
        }
        Drawable drawable2 = resources.getDrawable(i);
        if ((this.zzaed & 1) != 0) {
            drawable2 = zza(resources, drawable2);
        }
        zzlvVar.put(zzaVar, drawable2);
        return drawable2;
    }

    void a(Context context, Bitmap bitmap, boolean z) {
        com.google.android.gms.common.internal.zzb.zzs(bitmap);
        if ((this.zzaed & 1) != 0) {
            bitmap = zzlt.zza(bitmap);
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(context.getResources(), bitmap);
        if (this.zzadZ != null) {
            this.zzadZ.onImageLoaded(this.a.a, bitmapDrawable, true);
        }
        zza(bitmapDrawable, z, false, true);
    }

    void a(Context context, zzlv zzlvVar) {
        if (this.d) {
            zza(this.zzadW != 0 ? a(context, zzlvVar, this.zzadW) : null, false, true, false);
        }
    }

    void a(Context context, zzlv zzlvVar, boolean z) {
        Drawable drawableA = this.zzadX != 0 ? a(context, zzlvVar, this.zzadX) : null;
        if (this.zzadZ != null) {
            this.zzadZ.onImageLoaded(this.a.a, drawableA, false);
        }
        zza(drawableA, z, false, false);
    }

    protected Drawable zza(Resources resources, Drawable drawable) {
        return zzlt.zza(resources, drawable);
    }

    protected zzls zza(Drawable drawable, Drawable drawable2) {
        if (drawable == null) {
            drawable = null;
        } else if (drawable instanceof zzls) {
            drawable = ((zzls) drawable).zzoF();
        }
        return new zzls(drawable, drawable2);
    }

    protected abstract void zza(Drawable drawable, boolean z, boolean z2, boolean z3);

    protected boolean zzb(boolean z, boolean z2) {
        return this.b && !z2 && (!z || this.c);
    }

    public void zzby(int i) {
        this.zzadX = i;
    }
}
