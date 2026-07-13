package com.batescorp.pebble.nav.processor;

/* JADX INFO: loaded from: classes.dex */
public enum NavGpsAccuracy {
    UNKNOWN,
    LOW,
    MEDIUM,
    HIGH,
    EXCELLENT;

    public static NavGpsAccuracy fromInt(int i) {
        for (NavGpsAccuracy navGpsAccuracy : values()) {
            if (navGpsAccuracy.ordinal() == i) {
                return navGpsAccuracy;
            }
        }
        return null;
    }
}
