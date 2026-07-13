package com.batescorp.pebble.nav.processor;

/* JADX INFO: loaded from: classes.dex */
public enum NavSpeedType {
    MPH,
    KPH;

    public static NavSpeedType fromInt(int i) {
        for (NavSpeedType navSpeedType : values()) {
            if (navSpeedType.ordinal() == i) {
                return navSpeedType;
            }
        }
        return null;
    }
}
