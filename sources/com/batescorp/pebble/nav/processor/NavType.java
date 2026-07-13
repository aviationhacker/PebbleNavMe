package com.batescorp.pebble.nav.processor;

import com.batescorp.pebble.nav.R;

/* JADX INFO: loaded from: classes.dex */
public enum NavType {
    DRIVING("d", Integer.valueOf(R.drawable.ic_directions_car_active)),
    WALKING("w", Integer.valueOf(R.drawable.ic_directions_walking_active)),
    BIKING("b", Integer.valueOf(R.drawable.ic_directions_bicycling_active));

    private Integer a;
    private String b;

    NavType(String str, Integer num) {
        this.b = str;
        this.a = num;
    }

    public Integer getResourceId() {
        return this.a;
    }

    public String getGoogleMapMode() {
        return this.b;
    }

    public static NavType fromResourceId(Integer num) {
        for (NavType navType : values()) {
            if (navType.getResourceId().equals(num)) {
                return navType;
            }
        }
        return DRIVING;
    }
}
