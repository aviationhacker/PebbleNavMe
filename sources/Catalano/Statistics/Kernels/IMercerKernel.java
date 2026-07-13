package Catalano.Statistics.Kernels;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public interface IMercerKernel<T> extends Serializable {
    double Function(T t, T t2);
}
