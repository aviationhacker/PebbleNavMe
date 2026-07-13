package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import com.google.android.gms.auth.api.credentials.CredentialsApi;

/* JADX INFO: loaded from: classes.dex */
public class HorizontalRunLengthSmoothing implements IApplyInPlace {
    private int a = 10;
    private boolean b = false;

    public int getMaxGapSize() {
        return this.a;
    }

    public void setMaxGapSize(int i) {
        this.a = Math.max(1, Math.min(CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, i));
    }

    public boolean isProcessGapsWithImageBorders() {
        return this.b;
    }

    public void setProcessGapsWithImageBorders(boolean z) {
        this.b = z;
    }

    public HorizontalRunLengthSmoothing() {
    }

    public HorizontalRunLengthSmoothing(int i) {
        setMaxGapSize(i);
    }

    public HorizontalRunLengthSmoothing(int i, boolean z) {
        setMaxGapSize(i);
        setProcessGapsWithImageBorders(z);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            for (int i = 0; i < height; i++) {
                int i2 = 0;
                while (i2 < width) {
                    int i3 = i2;
                    while (i3 < width && fastBitmap.getGray(i, i3) == 0) {
                        i3++;
                    }
                    if (i3 - i2 <= this.a && (this.b || (i2 != 0 && i3 != width))) {
                        while (i2 < i3) {
                            fastBitmap.setGray(i, i2, 255);
                            i2++;
                        }
                    }
                    while (i3 < width && fastBitmap.getGray(i, i3) != 0) {
                        i3++;
                    }
                    i2 = i3;
                }
            }
            return;
        }
        throw new IllegalArgumentException("HorizontalRunLengthSmoothing only works in grayscale images.");
    }
}
