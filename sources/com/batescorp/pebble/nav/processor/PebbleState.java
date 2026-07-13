package com.batescorp.pebble.nav.processor;

import android.annotation.SuppressLint;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.util.Log;
import com.batescorp.pebble.nav.lib.CompareUtil;
import com.batescorp.pebble.nav.listener.PebbleMessageManager;

/* JADX INFO: loaded from: classes.dex */
public class PebbleState {
    private ContextWrapper a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private NavDirectionIcon h;
    private String i;
    private String j;
    private String k;
    private String l;

    public static PebbleState getInstance(ContextWrapper contextWrapper) {
        PebbleState pebbleState = new PebbleState();
        pebbleState.a = contextWrapper;
        SharedPreferences sharedPreferences = contextWrapper.getSharedPreferences("PEBBLE_STATE", 0);
        pebbleState.b = sharedPreferences.getString("DIRECTION_STATE", null);
        pebbleState.d = sharedPreferences.getString("DISTANCE_STATE", null);
        pebbleState.c = sharedPreferences.getString("DISTANCE_UNIT_STATE", null);
        pebbleState.e = sharedPreferences.getString("ETA_DISTANCE_STATE", null);
        pebbleState.f = sharedPreferences.getString("ETA_DISTANCE_UNIT_STATE", null);
        pebbleState.g = sharedPreferences.getString("ETA_ARRIVAL_TIME", null);
        pebbleState.h = NavDirectionIcon.fromInt(sharedPreferences.getInt("NAV_TURN", -1));
        pebbleState.i = sharedPreferences.getString("NAV_TURN_STRING", "");
        pebbleState.j = sharedPreferences.getString("NAV_SPEED", "");
        pebbleState.k = sharedPreferences.getString("NAV_SPEED_UNIT", "");
        pebbleState.l = sharedPreferences.getString("NAV_GPS_ACCURACY", "");
        return pebbleState;
    }

    @SuppressLint({"CommitPrefEdits"})
    private void a() {
        SharedPreferences.Editor editorEdit = this.a.getSharedPreferences("PEBBLE_STATE", 0).edit();
        editorEdit.putString("DIRECTION_STATE", this.b);
        editorEdit.putString("DISTANCE_STATE", this.d);
        editorEdit.putString("DISTANCE_UNIT_STATE", this.c);
        editorEdit.putString("ETA_DISTANCE_STATE", this.e);
        editorEdit.putString("ETA_DISTANCE_UNIT_STATE", this.f);
        editorEdit.putString("ETA_ARRIVAL_TIME", this.g);
        editorEdit.putInt("NAV_TURN", this.h.ordinal());
        editorEdit.putString("NAV_TURN_STRING", this.i);
        editorEdit.putString("NAV_SPEED", this.j);
        editorEdit.putString("NAV_SPEED_UNIT", this.k);
        editorEdit.putString("NAV_GPS_ACCURACY", this.l);
        editorEdit.commit();
    }

    @SuppressLint({"CommitPrefEdits"})
    public void clearState() {
        SharedPreferences sharedPreferences = this.a.getSharedPreferences("PEBBLE_STATE", 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        for (String str : sharedPreferences.getAll().keySet()) {
            if (!"NAV_SPEED_UNIT".equals(str)) {
                editorEdit.remove(str);
            }
        }
        editorEdit.commit();
    }

    public String getDirection() {
        return this.b;
    }

    public String getDistanceUnit() {
        return this.c;
    }

    public String getSpeed() {
        return this.j;
    }

    public String getSpeedUnit() {
        return this.k;
    }

    public String getEtaDistance() {
        return this.e;
    }

    public String getEtaDistanceUnit() {
        return this.f;
    }

    public String getEtaArrivalTime() {
        return this.g;
    }

    public NavDirectionIcon getTurn() {
        return this.h;
    }

    public String getGpsAccuracy() {
        return this.l;
    }

    public boolean updateDirection(String str) {
        if (CompareUtil.compare(str, getDirection())) {
            return false;
        }
        this.b = str;
        return true;
    }

    public boolean updateTurn(NavDirectionIcon navDirectionIcon) {
        if (CompareUtil.compare((Enum) navDirectionIcon, (Enum) getTurn())) {
            return false;
        }
        this.h = navDirectionIcon;
        return true;
    }

    public String getDistance() {
        return this.d;
    }

    public boolean updateDistance(String str, String str2) {
        if (CompareUtil.compare(str, getDistance()) && CompareUtil.compare(str2, getDistanceUnit())) {
            return false;
        }
        this.d = str;
        this.c = str2;
        return true;
    }

    public boolean updateEtaDistance(String str, String str2) {
        if (CompareUtil.compare(str, getEtaDistance()) && CompareUtil.compare(str2, getEtaDistanceUnit())) {
            return false;
        }
        this.e = str;
        this.f = str2;
        return true;
    }

    public boolean updateSpeed(String str, String str2) {
        if (CompareUtil.compare(str, getSpeed()) && CompareUtil.compare(str2, getSpeedUnit())) {
            return false;
        }
        this.j = str;
        this.k = str2;
        return true;
    }

    public boolean updateGpsAccuracy(String str) {
        if (CompareUtil.compare(str, getGpsAccuracy())) {
            return false;
        }
        this.l = str;
        return true;
    }

    public boolean updateEtaArrivalTime(String str) {
        if (CompareUtil.compare(str, getEtaArrivalTime())) {
            return false;
        }
        this.g = str;
        return true;
    }

    public synchronized void sendToPebble(PebbleMessageManager pebbleMessageManager) {
        if (pebbleMessageManager != null) {
            NavState navState = NavState.getInstance(this.a);
            if (updateDirection(navState.getLastDirection())) {
                Log.d("PebbleState", "updateDirection (send)");
                pebbleMessageManager.sendDirection(getDirection());
            }
            if (updateDistance(navState.getRawDistance(), navState.getRawDistanceUnits())) {
                Log.d("PebbleState", "updateDistance (send) - " + navState.getRawDistance() + " - " + navState.getRawDistanceUnits());
                pebbleMessageManager.sendDistance(getDistance(), getDistanceUnit());
            }
            if (updateTurn(navState.getTurn())) {
                Log.d("PebbleState", "updateTurn (send) : " + getTurn());
                pebbleMessageManager.sendIcon(getTurn());
            }
            if (updateEtaDistance(navState.getNavEstDist(), navState.getNavEstDistUnit())) {
                Log.d("PebbleState", "updateEtaDistance (send) - " + navState.getNavEstDist() + "- " + navState.getNavEstDistUnit());
                pebbleMessageManager.sendEtaDistance(getEtaDistance(), getEtaDistanceUnit());
            }
            if (updateEtaArrivalTime(navState.getNavEstArriveTime())) {
                Log.d("PebbleState", "updateEtaArrivalTime (send)");
                pebbleMessageManager.sendEtaArrivalTime(getEtaArrivalTime());
            }
            if (updateSpeed(navState.getSpeed(), navState.getSpeedUnit())) {
                Log.d("PebbleState", "updateSpeed (send)");
                pebbleMessageManager.sendSpeed(getSpeed(), getSpeedUnit());
            }
            if (updateGpsAccuracy(navState.getNavGpsAccuracyDesc())) {
                Log.d("PebbleState", "updateGpsAccuracy (send)");
                pebbleMessageManager.sendGpsAccuracy(getGpsAccuracy());
            }
            a();
        }
    }
}
