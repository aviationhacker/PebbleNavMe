package android.support.v4.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes.dex */
public class ContentLoadingProgressBar extends ProgressBar {
    private long a;
    private boolean b;
    private boolean c;
    private boolean d;
    private final Runnable e;
    private final Runnable f;

    public ContentLoadingProgressBar(Context context) {
        this(context, null);
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.a = -1L;
        this.b = false;
        this.c = false;
        this.d = false;
        this.e = new Runnable() { // from class: android.support.v4.widget.ContentLoadingProgressBar.1
            @Override // java.lang.Runnable
            public void run() {
                ContentLoadingProgressBar.this.b = false;
                ContentLoadingProgressBar.this.a = -1L;
                ContentLoadingProgressBar.this.setVisibility(8);
            }
        };
        this.f = new Runnable() { // from class: android.support.v4.widget.ContentLoadingProgressBar.2
            @Override // java.lang.Runnable
            public void run() {
                ContentLoadingProgressBar.this.c = false;
                if (!ContentLoadingProgressBar.this.d) {
                    ContentLoadingProgressBar.this.a = System.currentTimeMillis();
                    ContentLoadingProgressBar.this.setVisibility(0);
                }
            }
        };
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    private void a() {
        removeCallbacks(this.e);
        removeCallbacks(this.f);
    }

    public void hide() {
        this.d = true;
        removeCallbacks(this.f);
        long jCurrentTimeMillis = System.currentTimeMillis() - this.a;
        if (jCurrentTimeMillis >= 500 || this.a == -1) {
            setVisibility(8);
        } else if (!this.b) {
            postDelayed(this.e, 500 - jCurrentTimeMillis);
            this.b = true;
        }
    }

    public void show() {
        this.a = -1L;
        this.d = false;
        removeCallbacks(this.e);
        if (!this.c) {
            postDelayed(this.f, 500L);
            this.c = true;
        }
    }
}
