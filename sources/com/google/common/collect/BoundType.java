package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public enum BoundType {
    OPEN { // from class: com.google.common.collect.BoundType.1
    },
    CLOSED { // from class: com.google.common.collect.BoundType.2
    };

    public static BoundType a(boolean z) {
        return z ? CLOSED : OPEN;
    }
}
