package defpackage;

import Catalano.Core.IntPoint;

/* JADX INFO: loaded from: classes.dex */
public class b implements Comparable<b> {
    public int a;
    public int b;
    public float c = 0.0f;
    public float d = 0.0f;

    public b(IntPoint intPoint) {
        this.a = intPoint.x;
        this.b = intPoint.y;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(b bVar) {
        if (this.c == bVar.c) {
            return 0;
        }
        if (this.c > bVar.c) {
            return 1;
        }
        return -1;
    }

    public IntPoint a() {
        return new IntPoint(this.a, this.b);
    }
}
