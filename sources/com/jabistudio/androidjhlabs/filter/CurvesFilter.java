package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class CurvesFilter extends TransferFilter {
    private Curve[] a;

    public CurvesFilter() {
        this.a = new Curve[1];
        this.a = new Curve[3];
        this.a[0] = new Curve();
        this.a[1] = new Curve();
        this.a[2] = new Curve();
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransferFilter
    protected void initialize() {
        this.initialized = true;
        if (this.a.length == 1) {
            int[] iArrMakeTable = this.a[0].makeTable();
            this.bTable = iArrMakeTable;
            this.gTable = iArrMakeTable;
            this.rTable = iArrMakeTable;
            return;
        }
        this.rTable = this.a[0].makeTable();
        this.gTable = this.a[1].makeTable();
        this.bTable = this.a[2].makeTable();
    }

    public void setCurve(Curve curve) {
        this.a = new Curve[]{curve};
        this.initialized = false;
    }

    public void setCurves(Curve[] curveArr) {
        if (curveArr == null || (curveArr.length != 1 && curveArr.length != 3)) {
            throw new IllegalArgumentException("Curves must be length 1 or 3");
        }
        this.a = curveArr;
        this.initialized = false;
    }

    public Curve[] getCurves() {
        return this.a;
    }

    public String toString() {
        return "Colors/Curves...";
    }
}
