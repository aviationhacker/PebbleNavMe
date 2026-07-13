package android.support.v4.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.ResolveInfo;
import android.os.Build;
import defpackage.e;
import defpackage.f;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityServiceInfoCompat {
    public static final int CAPABILITY_CAN_FILTER_KEY_EVENTS = 8;
    public static final int CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 4;
    public static final int CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION = 2;
    public static final int CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT = 1;
    public static final int DEFAULT = 1;
    public static final int FEEDBACK_ALL_MASK = -1;
    public static final int FEEDBACK_BRAILLE = 32;
    public static final int FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 2;
    public static final int FLAG_REPORT_VIEW_IDS = 16;
    public static final int FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 8;
    public static final int FLAG_REQUEST_FILTER_KEY_EVENTS = 32;
    public static final int FLAG_REQUEST_TOUCH_EXPLORATION_MODE = 4;
    private static final d a;

    interface d {
        boolean a(AccessibilityServiceInfo accessibilityServiceInfo);

        String b(AccessibilityServiceInfo accessibilityServiceInfo);

        String c(AccessibilityServiceInfo accessibilityServiceInfo);

        ResolveInfo d(AccessibilityServiceInfo accessibilityServiceInfo);

        String e(AccessibilityServiceInfo accessibilityServiceInfo);

        int f(AccessibilityServiceInfo accessibilityServiceInfo);
    }

    static class c implements d {
        c() {
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.d
        public boolean a(AccessibilityServiceInfo accessibilityServiceInfo) {
            return false;
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.d
        public String b(AccessibilityServiceInfo accessibilityServiceInfo) {
            return null;
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.d
        public String c(AccessibilityServiceInfo accessibilityServiceInfo) {
            return null;
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.d
        public ResolveInfo d(AccessibilityServiceInfo accessibilityServiceInfo) {
            return null;
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.d
        public String e(AccessibilityServiceInfo accessibilityServiceInfo) {
            return null;
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.d
        public int f(AccessibilityServiceInfo accessibilityServiceInfo) {
            return 0;
        }
    }

    static class a extends c {
        a() {
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.c, android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.d
        public boolean a(AccessibilityServiceInfo accessibilityServiceInfo) {
            return e.a(accessibilityServiceInfo);
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.c, android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.d
        public String b(AccessibilityServiceInfo accessibilityServiceInfo) {
            return e.b(accessibilityServiceInfo);
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.c, android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.d
        public String c(AccessibilityServiceInfo accessibilityServiceInfo) {
            return e.c(accessibilityServiceInfo);
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.c, android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.d
        public ResolveInfo d(AccessibilityServiceInfo accessibilityServiceInfo) {
            return e.d(accessibilityServiceInfo);
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.c, android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.d
        public String e(AccessibilityServiceInfo accessibilityServiceInfo) {
            return e.e(accessibilityServiceInfo);
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.c, android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.d
        public int f(AccessibilityServiceInfo accessibilityServiceInfo) {
            return a(accessibilityServiceInfo) ? 1 : 0;
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.a, android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.c, android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.d
        public int f(AccessibilityServiceInfo accessibilityServiceInfo) {
            return f.a(accessibilityServiceInfo);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            a = new b();
        } else if (Build.VERSION.SDK_INT >= 14) {
            a = new a();
        } else {
            a = new c();
        }
    }

    private AccessibilityServiceInfoCompat() {
    }

    public static String getId(AccessibilityServiceInfo accessibilityServiceInfo) {
        return a.c(accessibilityServiceInfo);
    }

    public static ResolveInfo getResolveInfo(AccessibilityServiceInfo accessibilityServiceInfo) {
        return a.d(accessibilityServiceInfo);
    }

    public static String getSettingsActivityName(AccessibilityServiceInfo accessibilityServiceInfo) {
        return a.e(accessibilityServiceInfo);
    }

    public static boolean getCanRetrieveWindowContent(AccessibilityServiceInfo accessibilityServiceInfo) {
        return a.a(accessibilityServiceInfo);
    }

    public static String getDescription(AccessibilityServiceInfo accessibilityServiceInfo) {
        return a.b(accessibilityServiceInfo);
    }

    public static String feedbackTypeToString(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        while (i > 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i);
            i &= iNumberOfTrailingZeros ^ (-1);
            if (sb.length() > 1) {
                sb.append(", ");
            }
            switch (iNumberOfTrailingZeros) {
                case 1:
                    sb.append("FEEDBACK_SPOKEN");
                    break;
                case 2:
                    sb.append("FEEDBACK_HAPTIC");
                    break;
                case 4:
                    sb.append("FEEDBACK_AUDIBLE");
                    break;
                case 8:
                    sb.append("FEEDBACK_VISUAL");
                    break;
                case 16:
                    sb.append("FEEDBACK_GENERIC");
                    break;
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static String flagToString(int i) {
        switch (i) {
            case 1:
                return "DEFAULT";
            case 2:
                return "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS";
            case 4:
                return "FLAG_REQUEST_TOUCH_EXPLORATION_MODE";
            case 8:
                return "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
            case 16:
                return "FLAG_REPORT_VIEW_IDS";
            case 32:
                return "FLAG_REQUEST_FILTER_KEY_EVENTS";
            default:
                return null;
        }
    }

    public static int getCapabilities(AccessibilityServiceInfo accessibilityServiceInfo) {
        return a.f(accessibilityServiceInfo);
    }

    public static String capabilityToString(int i) {
        switch (i) {
            case 1:
                return "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT";
            case 2:
                return "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION";
            case 3:
            case 5:
            case 6:
            case 7:
            default:
                return "UNKNOWN";
            case 4:
                return "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
            case 8:
                return "CAPABILITY_CAN_FILTER_KEY_EVENTS";
        }
    }
}
