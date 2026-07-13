package com.batescorp.pebble.nav.lib;

/* JADX INFO: loaded from: classes.dex */
public class Constants {
    public static final Float MPS_TO_MPH = Float.valueOf(2.23694f);
    public static final Float MPS_TO_KPH = Float.valueOf(3.6f);

    public static String getMPH(Float f) {
        return a(f, MPS_TO_MPH);
    }

    public static String getKPH(Float f) {
        return a(f, MPS_TO_KPH);
    }

    private static String a(Float f, Float f2) {
        return f == null ? "" : String.format("%.0f", Float.valueOf(f.floatValue() * f2.floatValue()));
    }
}
