package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import com.google.android.gms.auth.api.credentials.CredentialsApi;

/* JADX INFO: loaded from: classes.dex */
public class VerticalRunLengthSmoothing implements IApplyInPlace {
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

    public VerticalRunLengthSmoothing() {
    }

    public VerticalRunLengthSmoothing(int i) {
        setMaxGapSize(i);
    }

    public VerticalRunLengthSmoothing(int i, boolean z) {
        setMaxGapSize(i);
        setProcessGapsWithImageBorders(z);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            for (int i = 0; i < width; i++) {
                int i2 = 0;
                while (i2 < height) {
                    int i3 = 0;
                    int i4 = i2;
                    while (i4 < height && fastBitmap.getGray(i4, i) == 0) {
                        i3++;
                        i4++;
                    }
                    if (i3 <= this.a && (this.b || (i2 != 0 && i4 != height))) {
                        while (i2 < i4) {
                            fastBitmap.setGray(i2, i, 255);
                            i2++;
                        }
                    }
                    while (i4 < height && fastBitmap.getGray(i4, i) != 0) {
                        i4++;
                    }
                    i2 = i4;
                }
            }
            return;
        }
        throw new IllegalArgumentException("HorizontalRunLengthSmoothing only works in grayscale images.");
    }
}
