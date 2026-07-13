package Catalano.Imaging.ActiveContour.Ovuscule;

import Catalano.Imaging.Color;

/* JADX INFO: loaded from: classes.dex */
public class OvusculeSnake2DScale {
    int[] a;
    int[] b;
    public Color bestAttemptColor;
    int c;
    public boolean closed;
    public Color currentAttemptColor;
    public boolean filled;

    public OvusculeSnake2DScale() {
        this.bestAttemptColor = null;
        this.currentAttemptColor = null;
        this.closed = true;
        this.filled = false;
    }

    public OvusculeSnake2DScale(Color color, Color color2, boolean z, boolean z2) {
        this.bestAttemptColor = null;
        this.currentAttemptColor = null;
        this.closed = true;
        this.filled = false;
        this.bestAttemptColor = color;
        this.currentAttemptColor = color2;
        this.closed = z;
        this.filled = z2;
    }

    public String toString() {
        return "[" + super.toString() + ", bestAttemptColor: " + this.bestAttemptColor + ", currentAttemptColor: " + this.currentAttemptColor + ", closed: " + this.closed + ", filled: " + this.filled + "]";
    }
}
