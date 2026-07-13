package android.support.v7.internal.widget;

import android.R;
import android.content.Context;
import android.support.annotation.DrawableRes;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class TintImageView extends ImageView {
    private static final int[] a = {R.attr.background, R.attr.src};
    private final TintManager b;

    public TintImageView(Context context) {
        this(context, null);
    }

    public TintImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TintImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, a, i, 0);
        if (tintTypedArrayObtainStyledAttributes.length() > 0) {
            if (tintTypedArrayObtainStyledAttributes.hasValue(0)) {
                setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(0));
            }
            if (tintTypedArrayObtainStyledAttributes.hasValue(1)) {
                setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(1));
            }
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        this.b = tintTypedArrayObtainStyledAttributes.getTintManager();
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        setImageDrawable(this.b.getDrawable(i));
    }
}
