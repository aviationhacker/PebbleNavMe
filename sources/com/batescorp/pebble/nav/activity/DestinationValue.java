package com.batescorp.pebble.nav.activity;

import com.batescorp.pebble.nav.processor.NavType;

/* JADX INFO: loaded from: classes.dex */
public class DestinationValue {
    private String description;
    private String destination;
    private NavType navType;

    public DestinationValue(String str, String str2, NavType navType) {
        update(str, str2, navType);
    }

    public void update(String str, String str2, NavType navType) {
        this.description = str;
        this.destination = str2;
        this.navType = navType;
    }

    public String getDescription() {
        return this.description;
    }

    public String getDestination() {
        return this.destination;
    }

    public NavType getNavType() {
        return this.navType;
    }
}
