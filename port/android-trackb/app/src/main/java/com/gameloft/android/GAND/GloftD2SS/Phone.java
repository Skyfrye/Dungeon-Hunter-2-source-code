package com.gameloft.android.GAND.GloftD2SS;

import android.telephony.TelephonyManager;

/**
 * Track B addition: permission-safe telephony reads. Since Android 10/11 most TelephonyManager identity getters throw
 * SecurityException without READ_PHONE_STATE / READ_PHONE_NUMBERS (a runtime permission we deliberately never request: the game must run
 * without phone identity). Each getter returns what the original code sees on a device without that data: null for identifiers, "" for
 * operator strings, SIM_STATE_UNKNOWN (0), PHONE_TYPE_NONE (0), not roaming.
 */
public final class Phone {
    private Phone() {
    }

    public static String line1(TelephonyManager t) {
        try {
            return t.getLine1Number();
        } catch (Throwable e) {
            return null;
        }
    }

    public static String subscriberId(TelephonyManager t) {
        try {
            return t.getSubscriberId();
        } catch (Throwable e) {
            return null;
        }
    }

    public static String deviceId(TelephonyManager t) {
        try {
            return t.getDeviceId();
        } catch (Throwable e) {
            return null;
        }
    }

    private static String nz(String s) {
        return s == null ? "" : s;
    }

    public static String networkOperator(TelephonyManager t) {
        try {
            return nz(t.getNetworkOperator());
        } catch (Throwable e) {
            return "";
        }
    }

    public static String networkOperatorName(TelephonyManager t) {
        try {
            return nz(t.getNetworkOperatorName());
        } catch (Throwable e) {
            return "";
        }
    }

    public static String simOperator(TelephonyManager t) {
        try {
            return nz(t.getSimOperator());
        } catch (Throwable e) {
            return "";
        }
    }

    public static String simOperatorName(TelephonyManager t) {
        try {
            return nz(t.getSimOperatorName());
        } catch (Throwable e) {
            return "";
        }
    }

    public static String networkCountryIso(TelephonyManager t) {
        try {
            return nz(t.getNetworkCountryIso());
        } catch (Throwable e) {
            return "";
        }
    }

    public static String simCountryIso(TelephonyManager t) {
        try {
            return nz(t.getSimCountryIso());
        } catch (Throwable e) {
            return "";
        }
    }

    public static boolean isNetworkRoaming(TelephonyManager t) {
        try {
            return t.isNetworkRoaming();
        } catch (Throwable e) {
            return false;
        }
    }

    public static int simState(TelephonyManager t) {
        try {
            return t.getSimState();
        } catch (Throwable e) {
            return 0;
        }
    }

    public static int phoneType(TelephonyManager t) {
        try {
            return t.getPhoneType();
        } catch (Throwable e) {
            return 0;
        }
    }
}
