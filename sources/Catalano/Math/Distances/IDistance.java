package Catalano.Math.Distances;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public interface IDistance<T> extends IDivergence<T>, Serializable {
    @Override // Catalano.Math.Distances.IDivergence
    double Compute(T t, T t2);
}
