package Catalano.Imaging.ActiveContour.Ovuscule;

import Catalano.Core.DoublePoint;

/* JADX INFO: loaded from: classes.dex */
public interface IOvusculeSnake2D {
    double energy();

    DoublePoint[] getEnergyGradient();

    OvusculeSnake2DNode[] getNodes();

    OvusculeSnake2DScale[] getScales();

    void setNodes(OvusculeSnake2DNode[] ovusculeSnake2DNodeArr);
}
