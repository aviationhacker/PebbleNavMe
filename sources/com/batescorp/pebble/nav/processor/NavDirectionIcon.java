package com.batescorp.pebble.nav.processor;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.batescorp.pebble.nav.R;
import com.batescorp.pebble.nav.util.ImageUtil;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public enum NavDirectionIcon {
    BLANK(null, NavIconCode.IMG_NAVCHEVRON, NavTurnType.NONE),
    ARRIVE(Integer.valueOf(R.drawable.da_turn_arrive_white), NavIconCode.IMG_TURN_ARRIVE, NavTurnType.NONE),
    ARRIVE_RIGHT(Integer.valueOf(R.drawable.da_turn_arrive_right), NavIconCode.IMG_TURN_ARRIVE_RIGHT, NavTurnType.RIGHT),
    ARRIVE_LEFT(Integer.valueOf(R.drawable.da_turn_arrive_left), NavIconCode.IMG_TURN_ARRIVE_LEFT, NavTurnType.LEFT),
    DEPART(Integer.valueOf(R.drawable.da_turn_depart_white), NavIconCode.IMG_TURN_DEPART, NavTurnType.NONE),
    RIGHT(Integer.valueOf(R.drawable.da_turn_right_white), NavIconCode.IMG_TURN_RIGHT, NavTurnType.RIGHT),
    SLIGHT_RIGHT(Integer.valueOf(R.drawable.da_turn_slight_right_white), NavIconCode.IMG_TURN_SLIGHT_RIGHT, NavTurnType.RIGHT),
    SHARP_RIGHT(Integer.valueOf(R.drawable.da_turn_sharp_right_white), NavIconCode.IMG_TURN_SHARP_RIGHT, NavTurnType.RIGHT),
    LEFT(Integer.valueOf(R.drawable.da_turn_left_white), NavIconCode.IMG_TURN_LEFT, NavTurnType.LEFT),
    SLIGHT_LEFT(Integer.valueOf(R.drawable.da_turn_slight_left_white), NavIconCode.IMG_TURN_SLIGHT_LEFT, NavTurnType.LEFT),
    SHARP_LEFT(Integer.valueOf(R.drawable.da_turn_sharp_left_white), NavIconCode.IMG_TURN_SHARP_LEFT, NavTurnType.LEFT),
    STRAIGHT(Integer.valueOf(R.drawable.da_turn_straight_white), NavIconCode.IMG_TURN_STRAIGHT, NavTurnType.NONE),
    MERGE(Integer.valueOf(R.drawable.da_turn_generic_merge_white), NavIconCode.IMG_TURN_GENERIMG_MERGE, NavTurnType.NONE),
    EXIT_RAMP_RIGHT(Integer.valueOf(R.drawable.da_turn_ramp_right_white), NavIconCode.IMG_TURN_RAMP_RIGHT, NavTurnType.RIGHT),
    EXIT_RAMP_LEFT(Integer.valueOf(R.drawable.da_turn_ramp_left_white), NavIconCode.IMG_TURN_RAMP_LEFT, NavTurnType.LEFT),
    FORK_RIGHT(Integer.valueOf(R.drawable.da_turn_fork_right_white), NavIconCode.IMG_TURN_FORK_RIGHT, NavTurnType.RIGHT),
    FORK_LEFT(Integer.valueOf(R.drawable.da_turn_fork_left_white), NavIconCode.IMG_TURN_FORK_LEFT, NavTurnType.LEFT),
    NAV(null, NavIconCode.IMG_NAVCHEVRON, NavTurnType.NONE),
    CANCEL(null, NavIconCode.IMG_NAVCHEVRON, NavTurnType.NONE),
    UTURN_RIGHT(Integer.valueOf(R.drawable.da_turn_uturn_right_white), NavIconCode.IMG_TURN_UTURN_RIGHT, NavTurnType.RIGHT),
    UTURN_LEFT(Integer.valueOf(R.drawable.da_turn_uturn_left_white), NavIconCode.IMG_TURN_UTURN_LEFT, NavTurnType.LEFT),
    ROUND_RIGHT(Integer.valueOf(R.drawable.da_turn_generic_roundabout_right_white), NavIconCode.IMG_TURN_GENERIMG_ROUNDABOUT_RIGHT, NavTurnType.NONE),
    ROUND_LEFT(Integer.valueOf(R.drawable.da_turn_generic_roundabout_left_white), NavIconCode.IMG_TURN_GENERIMG_ROUNDABOUT_LEFT, NavTurnType.NONE),
    ROUND_EXIT_RIGHT(Integer.valueOf(R.drawable.da_turn_roundabout_exit_right_white), NavIconCode.IMG_TURN_ROUNDABOUT_EXIT_RIGHT, NavTurnType.RIGHT),
    ROUND_EXIT_LEFT(Integer.valueOf(R.drawable.da_turn_roundabout_exit_left_white), NavIconCode.IMG_TURN_ROUNDABOUT_EXIT_LEFT, NavTurnType.LEFT),
    ROUND_1_RIGHT(Integer.valueOf(R.drawable.da_turn_roundabout_1_right_white), NavIconCode.IMG_TURN_ROUNDABOUT_1_RIGHT, NavTurnType.NONE),
    ROUND_2_RIGHT(Integer.valueOf(R.drawable.da_turn_roundabout_2_right_white), NavIconCode.IMG_TURN_ROUNDABOUT_2_RIGHT, NavTurnType.NONE),
    ROUND_3_RIGHT(Integer.valueOf(R.drawable.da_turn_roundabout_3_right_white), NavIconCode.IMG_TURN_ROUNDABOUT_3_RIGHT, NavTurnType.NONE),
    ROUND_4_RIGHT(Integer.valueOf(R.drawable.da_turn_roundabout_4_right_white), NavIconCode.IMG_TURN_ROUNDABOUT_4_RIGHT, NavTurnType.NONE),
    ROUND_5_RIGHT(Integer.valueOf(R.drawable.da_turn_roundabout_5_right_white), NavIconCode.IMG_TURN_ROUNDABOUT_5_RIGHT, NavTurnType.NONE),
    ROUND_6_RIGHT(Integer.valueOf(R.drawable.da_turn_roundabout_6_right_white), NavIconCode.IMG_TURN_ROUNDABOUT_6_RIGHT, NavTurnType.NONE),
    ROUND_7_RIGHT(Integer.valueOf(R.drawable.da_turn_roundabout_7_right_white), NavIconCode.IMG_TURN_ROUNDABOUT_7_RIGHT, NavTurnType.NONE),
    ROUND_8_RIGHT(Integer.valueOf(R.drawable.da_turn_roundabout_8_right_white), NavIconCode.IMG_TURN_ROUNDABOUT_8_RIGHT, NavTurnType.NONE),
    ROUND_1_LEFT(Integer.valueOf(R.drawable.da_turn_roundabout_1_left_white), NavIconCode.IMG_TURN_ROUNDABOUT_1_LEFT, NavTurnType.NONE),
    ROUND_2_LEFT(Integer.valueOf(R.drawable.da_turn_roundabout_2_left_white), NavIconCode.IMG_TURN_ROUNDABOUT_2_LEFT, NavTurnType.NONE),
    ROUND_3_LEFT(Integer.valueOf(R.drawable.da_turn_roundabout_3_left_white), NavIconCode.IMG_TURN_ROUNDABOUT_3_LEFT, NavTurnType.NONE),
    ROUND_4_LEFT(Integer.valueOf(R.drawable.da_turn_roundabout_4_left_white), NavIconCode.IMG_TURN_ROUNDABOUT_4_LEFT, NavTurnType.NONE),
    ROUND_5_LEFT(Integer.valueOf(R.drawable.da_turn_roundabout_5_left_white), NavIconCode.IMG_TURN_ROUNDABOUT_5_LEFT, NavTurnType.NONE),
    ROUND_6_LEFT(Integer.valueOf(R.drawable.da_turn_roundabout_6_left_white), NavIconCode.IMG_TURN_ROUNDABOUT_6_LEFT, NavTurnType.NONE),
    ROUND_7_LEFT(Integer.valueOf(R.drawable.da_turn_roundabout_7_left_white), NavIconCode.IMG_TURN_ROUNDABOUT_7_LEFT, NavTurnType.NONE),
    ROUND_8_LEFT(Integer.valueOf(R.drawable.da_turn_roundabout_8_left_white), NavIconCode.IMG_TURN_ROUNDABOUT_8_LEFT, NavTurnType.NONE);

    static ConcurrentHashMap<NavDirectionIcon, Bitmap> a = new ConcurrentHashMap<>();
    static NavDirectionIcon b = null;
    static Bitmap c = null;
    private final Integer d;
    private final int e;
    private final NavTurnType f;

    NavDirectionIcon(Integer num, NavIconCode navIconCode, NavTurnType navTurnType) {
        this.d = num;
        this.e = navIconCode.getImageCode();
        this.f = navTurnType;
    }

    public static NavDirectionIcon fromBitmap(Context context, Bitmap bitmap) {
        NavDirectionIcon navDirectionIcon;
        double dDoubleValue;
        long jCurrentTimeMillis = System.currentTimeMillis();
        NavDirectionIcon navDirectionIcon2 = null;
        double d = Double.NEGATIVE_INFINITY;
        if (bitmap == null) {
            return BLANK;
        }
        Bitmap resizedBitmap = ImageUtil.getResizedBitmap(bitmap, 70, 70);
        if (c != null && Double.valueOf(ImageUtil.compare(resizedBitmap, c)).doubleValue() >= 99.0d) {
            navDirectionIcon2 = b;
        }
        if (navDirectionIcon2 == null) {
            NavDirectionIcon[] navDirectionIconArrValues = values();
            int length = navDirectionIconArrValues.length;
            int i = 0;
            NavDirectionIcon navDirectionIcon3 = navDirectionIcon2;
            while (i < length) {
                NavDirectionIcon navDirectionIcon4 = navDirectionIconArrValues[i];
                if (navDirectionIcon4.d == null) {
                    double d2 = d;
                    navDirectionIcon = navDirectionIcon3;
                    dDoubleValue = d2;
                } else {
                    Bitmap resizedBitmap2 = a.get(navDirectionIcon4);
                    if (resizedBitmap2 == null) {
                        resizedBitmap2 = ImageUtil.getResizedBitmap(BitmapFactory.decodeResource(context.getResources(), navDirectionIcon4.d.intValue()), 70, 70);
                        a.put(navDirectionIcon4, resizedBitmap2);
                    }
                    Double dValueOf = Double.valueOf(ImageUtil.compare(resizedBitmap, resizedBitmap2));
                    Log.d("NavDirectionIcon", "ObjectiveFidelity " + navDirectionIcon4.name() + " : " + dValueOf);
                    if (dValueOf.doubleValue() > d) {
                        dDoubleValue = dValueOf.doubleValue();
                        navDirectionIcon = navDirectionIcon4;
                    } else {
                        double d3 = d;
                        navDirectionIcon = navDirectionIcon3;
                        dDoubleValue = d3;
                    }
                }
                i++;
                navDirectionIcon3 = navDirectionIcon;
                d = dDoubleValue;
            }
            Log.d("NavDirectionIcon", "fromBitmap (" + (System.currentTimeMillis() - jCurrentTimeMillis) + ") - " + (navDirectionIcon3 == null ? "NOT FOUND" : navDirectionIcon3.name()));
            navDirectionIcon2 = navDirectionIcon3;
        }
        if (navDirectionIcon2 == null) {
            navDirectionIcon2 = NAV;
        }
        b = navDirectionIcon2;
        c = resizedBitmap;
        return navDirectionIcon2;
    }

    public static NavDirectionIcon fromInt(int i) {
        for (NavDirectionIcon navDirectionIcon : values()) {
            if (navDirectionIcon.ordinal() == i) {
                return navDirectionIcon;
            }
        }
        return null;
    }

    public int getWatchImageCode() {
        return this.e;
    }

    public boolean isStraight() {
        switch (this) {
            case STRAIGHT:
            case MERGE:
                return true;
            default:
                return false;
        }
    }

    public NavTurnType getTurnType() {
        return this.f;
    }
}
