package com.batescorp.pebble.nav.processor;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.batescorp.pebble.nav.R;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"CommitPrefEdits"})
public class NavState {
    private Boolean g;
    private NavSpeedType i;
    private NavGpsAccuracy j;
    private String a = null;
    private long b = -1;
    private String c = null;
    private String d = null;
    private String e = null;
    private String f = null;
    private Context h = null;
    private String k = null;
    private String l = null;
    private String m = null;
    private NavDirectionIcon n = NavDirectionIcon.BLANK;
    private boolean o = false;
    private String p = null;

    public static NavState getInstance(Context context) {
        NavState navState = new NavState();
        navState.h = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences("NAV_STATE", 0);
        navState.b = sharedPreferences.getLong("NAV_STATE_LAST_DIST", -1L);
        navState.c = sharedPreferences.getString("NAV_STATE_LAST_DIR", context.getString(R.string.start_message) + " …");
        navState.d = sharedPreferences.getString("NAV_STATE_RAW_LAST_DIST", "");
        navState.e = sharedPreferences.getString("NAV_STATE_RAW_LAST_DIST_UNIT", "");
        navState.k = sharedPreferences.getString("NAV_EST_DIST", "---");
        navState.l = sharedPreferences.getString("NAV_EST_DIST_UNIT", "");
        navState.m = sharedPreferences.getString("NAV_EST_TIME_REM", "---");
        navState.p = sharedPreferences.getString("NAV_EST_ARRIVE_TIME", "---");
        navState.n = NavDirectionIcon.fromInt(sharedPreferences.getInt("NAV_STATE_TURN", NavDirectionIcon.NAV.ordinal()));
        navState.g = Boolean.valueOf(sharedPreferences.getBoolean("NAV_RUNNING", false));
        navState.f = sharedPreferences.getString("NAV_DESTINATION", "");
        navState.a = sharedPreferences.getString("NAV_SPEED", "");
        navState.i = NavSpeedType.fromInt(sharedPreferences.getInt("NAV_SPEED_TYPE", NavSpeedType.MPH.ordinal()));
        navState.j = NavGpsAccuracy.fromInt(sharedPreferences.getInt("NAV_GPS_ACCURACY", NavGpsAccuracy.UNKNOWN.ordinal()));
        navState.o = sharedPreferences.getBoolean("NAV_ERROR_STATE", false);
        return navState;
    }

    public String getDestination() {
        return this.f;
    }

    public String getRawDistance() {
        return this.d;
    }

    public String getRawDistanceUnits() {
        return this.e;
    }

    public String getNavEstDist() {
        return this.k;
    }

    public String getNavEstDistUnit() {
        return this.l;
    }

    public String getNavEstArriveTime() {
        return this.p;
    }

    public NavDirectionIcon getTurn() {
        return this.n;
    }

    public String getSpeed() {
        return this.a;
    }

    public String getSpeedUnit() {
        if (getSpeed() == null || getSpeed().length() <= 0) {
            return "";
        }
        switch (this.i) {
            case MPH:
                return "mph";
            case KPH:
                return "kph";
            default:
                Log.e("NavState", "Unknown speed type (default to ???): " + this.i);
                return "???";
        }
    }

    public NavSpeedType getSpeedType() {
        return this.i == null ? NavSpeedType.MPH : this.i;
    }

    public NavGpsAccuracy getGpsAccuracy() {
        return this.j == null ? NavGpsAccuracy.UNKNOWN : this.j;
    }

    public String getNavGpsAccuracyDesc() {
        switch (getGpsAccuracy()) {
            case UNKNOWN:
                return "Unknown";
            case HIGH:
                return "Good";
            case MEDIUM:
                return "Medium";
            case LOW:
                return "Poor";
            case EXCELLENT:
                return "Excellent";
            default:
                Log.e("NavState", "Unknown Gps accuracy type (default to ???): " + getGpsAccuracy());
                return "???";
        }
    }

    public long getLastDistance() {
        return this.b;
    }

    public String getLastDirection() {
        return this.c;
    }

    public void setFinalMessage(String str, NavDirectionIcon navDirectionIcon) {
        clearState();
        this.c = str;
        this.n = navDirectionIcon;
        SharedPreferences.Editor editorEdit = this.h.getSharedPreferences("NAV_STATE", 0).edit();
        editorEdit.putString("NAV_STATE_LAST_DIR", this.c);
        editorEdit.putInt("NAV_STATE_TURN", this.n.ordinal());
        editorEdit.commit();
    }

    public void setDestination(String str) {
        if (str == null) {
            str = "";
        }
        this.f = str;
        SharedPreferences.Editor editorEdit = this.h.getSharedPreferences("NAV_STATE", 0).edit();
        editorEdit.putString("NAV_DESTINATION", this.f);
        editorEdit.commit();
    }

    public void setSpeed(String str) {
        if (str == null) {
            str = "";
        }
        this.a = str;
        SharedPreferences.Editor editorEdit = this.h.getSharedPreferences("NAV_STATE", 0).edit();
        editorEdit.putString("NAV_SPEED", this.a);
        editorEdit.commit();
    }

    public void setGpsAccuracy(NavGpsAccuracy navGpsAccuracy) {
        if (navGpsAccuracy == null) {
            navGpsAccuracy = NavGpsAccuracy.UNKNOWN;
        }
        this.j = navGpsAccuracy;
        SharedPreferences.Editor editorEdit = this.h.getSharedPreferences("NAV_STATE", 0).edit();
        editorEdit.putInt("NAV_GPS_ACCURACY", this.j.ordinal());
        editorEdit.commit();
    }

    public void setDirection(String str, long j, String str2, String str3, NavDirectionIcon navDirectionIcon, NavSpeedType navSpeedType) {
        this.c = str;
        this.b = j;
        this.d = str2;
        this.e = str3;
        this.n = navDirectionIcon;
        SharedPreferences.Editor editorEdit = this.h.getSharedPreferences("NAV_STATE", 0).edit();
        editorEdit.putLong("NAV_STATE_LAST_DIST", this.b);
        editorEdit.putString("NAV_STATE_LAST_DIR", this.c);
        editorEdit.putString("NAV_STATE_RAW_LAST_DIST", this.d);
        editorEdit.putString("NAV_STATE_RAW_LAST_DIST_UNIT", this.e);
        editorEdit.putInt("NAV_STATE_TURN", this.n.ordinal());
        if (navSpeedType != null) {
            this.i = navSpeedType;
            editorEdit.putInt("NAV_SPEED_TYPE", this.i.ordinal());
        }
        editorEdit.commit();
    }

    public void setEst1(String str, String str2, String str3) {
        this.k = str;
        this.l = str2;
        this.m = str3;
        SharedPreferences.Editor editorEdit = this.h.getSharedPreferences("NAV_STATE", 0).edit();
        editorEdit.putString("NAV_EST_DIST", this.k);
        editorEdit.putString("NAV_EST_DIST_UNIT", this.l);
        editorEdit.putString("NAV_EST_TIME_REM", this.m);
        editorEdit.commit();
    }

    public void setEst2(String str) {
        this.p = str;
        SharedPreferences.Editor editorEdit = this.h.getSharedPreferences("NAV_STATE", 0).edit();
        editorEdit.putString("NAV_EST_ARRIVE_TIME", this.p);
        editorEdit.commit();
    }

    public void navStart() {
        this.g = true;
        SharedPreferences.Editor editorEdit = this.h.getSharedPreferences("NAV_STATE", 0).edit();
        editorEdit.putBoolean("NAV_RUNNING", true);
        editorEdit.commit();
    }

    public void navStop() {
        this.g = false;
        SharedPreferences.Editor editorEdit = this.h.getSharedPreferences("NAV_STATE", 0).edit();
        editorEdit.putBoolean("NAV_RUNNING", false);
        editorEdit.commit();
    }

    public void setNavErrorState() {
        this.o = true;
        SharedPreferences.Editor editorEdit = this.h.getSharedPreferences("NAV_STATE", 0).edit();
        editorEdit.putBoolean("NAV_ERROR_STATE", this.o);
        editorEdit.commit();
    }

    public void clearNavErrorState() {
        this.o = false;
        SharedPreferences.Editor editorEdit = this.h.getSharedPreferences("NAV_STATE", 0).edit();
        editorEdit.putBoolean("NAV_ERROR_STATE", this.o);
        editorEdit.commit();
    }

    public boolean isInErrorState() {
        return this.o;
    }

    public boolean isRunning() {
        return this.g.booleanValue();
    }

    public void clearState() {
        SharedPreferences sharedPreferences = this.h.getSharedPreferences("NAV_STATE", 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        for (String str : sharedPreferences.getAll().keySet()) {
            if (!"NAV_RUNNING".equals(str)) {
                editorEdit.remove(str);
            }
        }
        editorEdit.commit();
    }
}
