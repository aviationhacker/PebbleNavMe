package com.google.common.eventbus;

import android.support.v4.app.NotificationCompat;
import com.google.common.annotations.Beta;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
@Beta
public class DeadEvent {
    private final Object a;
    private final Object b;

    public DeadEvent(Object obj, Object obj2) {
        this.a = Preconditions.checkNotNull(obj);
        this.b = Preconditions.checkNotNull(obj2);
    }

    public Object getSource() {
        return this.a;
    }

    public Object getEvent() {
        return this.b;
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("source", this.a).add(NotificationCompat.CATEGORY_EVENT, this.b).toString();
    }
}
