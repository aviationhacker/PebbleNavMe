package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.os.Build;
import android.support.v4.graphics.BitmapCompat;
import android.support.v4.view.GravityCompat;
import android.util.Log;
import defpackage.bk;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class RoundedBitmapDrawableFactory {

    static class a extends RoundedBitmapDrawable {
        a(Resources resources, Bitmap bitmap) {
            super(resources, bitmap);
        }

        @Override // android.support.v4.graphics.drawable.RoundedBitmapDrawable
        public void setMipMap(boolean z) {
            if (this.a != null) {
                BitmapCompat.setHasMipMap(this.a, z);
                invalidateSelf();
            }
        }

        @Override // android.support.v4.graphics.drawable.RoundedBitmapDrawable
        public boolean hasMipMap() {
            return this.a != null && BitmapCompat.hasMipMap(this.a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // android.support.v4.graphics.drawable.RoundedBitmapDrawable
        public void a(int i, int i2, int i3, Rect rect, Rect rect2) {
            GravityCompat.apply(i, i2, i3, rect, rect2, 0);
        }
    }

    public static RoundedBitmapDrawable create(Resources resources, Bitmap bitmap) {
        return Build.VERSION.SDK_INT >= 21 ? new bk(resources, bitmap) : new a(resources, bitmap);
    }

    public static RoundedBitmapDrawable create(Resources resources, String str) {
        RoundedBitmapDrawable roundedBitmapDrawableCreate = create(resources, BitmapFactory.decodeFile(str));
        if (roundedBitmapDrawableCreate.getBitmap() == null) {
            Log.w("RoundedBitmapDrawableFactory", "RoundedBitmapDrawable cannot decode " + str);
        }
        return roundedBitmapDrawableCreate;
    }

    public static RoundedBitmapDrawable create(Resources resources, InputStream inputStream) {
        RoundedBitmapDrawable roundedBitmapDrawableCreate = create(resources, BitmapFactory.decodeStream(inputStream));
        if (roundedBitmapDrawableCreate.getBitmap() == null) {
            Log.w("RoundedBitmapDrawableFactory", "RoundedBitmapDrawable cannot decode " + inputStream);
        }
        return roundedBitmapDrawableCreate;
    }
}
