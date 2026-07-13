package Catalano.Math.Dissimilarities;

import Catalano.Math.Distances.IDivergence;

/* JADX INFO: loaded from: classes.dex */
public interface IDissimilarity<T> extends IDivergence<T> {
    @Override // Catalano.Math.Distances.IDivergence
    double Compute(T t, T t2);
}
