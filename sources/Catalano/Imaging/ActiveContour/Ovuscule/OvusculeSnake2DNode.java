package Catalano.Imaging.ActiveContour.Ovuscule;

import Catalano.Core.DoublePoint;

/* JADX INFO: loaded from: classes.dex */
public class OvusculeSnake2DNode extends DoublePoint {
    public boolean frozen;
    public boolean hidden;

    @Override // Catalano.Core.DoublePoint
    public String toString() {
        return "[" + super.toString() + ", frozen: " + this.frozen + ", hidden: " + this.hidden + "]";
    }

    public OvusculeSnake2DNode(double d, double d2) {
        super(d, d2);
        this.frozen = false;
        this.hidden = false;
    }

    public OvusculeSnake2DNode(double d, double d2, boolean z, boolean z2) {
        super(d, d2);
        this.frozen = false;
        this.hidden = false;
        this.frozen = z;
        this.hidden = z2;
    }
}
