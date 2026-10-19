package com.gameloft.android.GAND.GloftD2SS.billing.common;

import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.SUtils;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.XPlayer;
import java.util.Date;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class LManager {
    private static Device F = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f75a = "DungeonHunter2BInfo";
    public static final String b = "PREFERENCES_GAME_MESSAGE_SEND";
    public static final int c = 0;
    public static final int d = 1;
    public static final int e = 2;
    public static boolean h = false;
    private XPlayer G;
    private StringEncrypter H;
    private final String i = "PREFERENCES_GAME_UNLOCKED";
    private final String j = "PREFERENCES_NEED_VALIDATION_ON_SERVER";
    private final String k = "PREFERENCES_GAME_UNLOCK_CODE";
    private final String l = "PREFERENCES_GAME_RANDOM_CODE";
    private final String m = "PREFERENCES_GAME_SERVER_NUMBER";
    private final String n = "PREFERENCES_USER_IDVALID";
    private final String o = "PREFERENCES_USER_CC";
    private final String p = "PREFERENCES_USER_CC_LAST_NUMBERS";
    private final String q = "PREFERENCES_USER_EMAIL";
    private final String r = "PREFERENCES_USER_PASSWORD";
    private final String s = "PREFERENCES_USER_LAST_PAYMENT";
    public final int f = 1;
    public final int g = 2;
    private final int t = -1;
    private final int u = 0;
    private final int v = 1;
    private final int w = 0;
    private final int x = 1;
    private final int y = 3;
    private final String z = "PREFERENCES_FULL_LICENSE";
    private final String A = "PREFERENCES_MRC_ACTIVE";
    private final String B = "PREFERENCES_MRC_COUNT";
    private final String C = "PREFERENCES_MRC_VALID";
    private final String D = "PREFERENCES_MRC_LICENSE";
    private final String E = "$JS6&GJH5$3%H&4@KECVF$56$Y$N792$&44O8B";
    private final long I = -999;
    private final int J = 1;
    private final int K = 0;
    private final int L = 31;
    private final long M = 0;
    private final long N = 86400000;
    private final long O = 2678400000L;
    private final byte P = -1;
    private final byte Q = -1;
    private final byte R = 0;

    public LManager() {
        this.H = null;
        if (F == null) {
            F = new Device();
        }
        if (this.H == null) {
            StringBuilder sb = new StringBuilder(Device.f);
            Device device = F;
            this.H = new StringEncrypter(sb.append(Device.getIMEI()).toString());
        }
    }

    private static boolean ContainsUnlockCode(String str) {
        try {
            return Integer.parseInt(str.substring(str.indexOf("(") + 1, str.indexOf(")"))) != -1;
        } catch (Exception e2) {
            return false;
        }
    }

    private static boolean TrackingPurchaseFailed$134632() {
        return true;
    }

    private static boolean TrackingPurchaseSuccess$134632() {
        return true;
    }

    private int a() {
        return a("PREFERENCES_MRC_COUNT", -1);
    }

    private int a(String str, int i) {
        StringBuilder sb = new StringBuilder(Device.f);
        Device device = F;
        this.H = new StringEncrypter(sb.append(Device.getIMEI()).toString());
        String preferenceString = SUtils.getPreferenceString(str, f75a);
        if (preferenceString == "") {
            return -1;
        }
        try {
            String[] strArrSplit = this.H.b(preferenceString).split("#");
            if (strArrSplit.length != 3) {
                return -1;
            }
            String str2 = strArrSplit[1];
            Device device2 = F;
            if (str2.compareTo(Device.getIMEI()) == 0) {
                return Integer.parseInt(strArrSplit[2]);
            }
            return -1;
        } catch (Exception e2) {
            return -1;
        }
    }

    private String a(String str) {
        StringBuilder sbAppend = new StringBuilder().append(new Random(System.currentTimeMillis()).nextLong()).append("#");
        Device device = F;
        return this.H.a(sbAppend.append(Device.getIMEI()).append("#").append(str).toString());
    }

    private void a(boolean z) {
        SUtils.setPreference("PREFERENCES_GAME_UNLOCKED", 1, f75a);
        SUtils.setPreference("PREFERENCES_NEED_VALIDATION_ON_SERVER", false, f75a);
    }

    private int b() {
        return a("PREFERENCES_GAME_UNLOCKED", -1);
    }

    private String b(int i) {
        StringBuilder sb = new StringBuilder(Device.f);
        Device device = F;
        this.H = new StringEncrypter(sb.append(Device.getIMEI()).toString());
        StringBuilder sbAppend = new StringBuilder().append(new Random(System.currentTimeMillis()).nextLong()).append("#");
        Device device2 = F;
        return this.H.a(sbAppend.append(Device.getIMEI()).append("#").append(i).toString());
    }

    private String b(String str) {
        StringBuilder sb = new StringBuilder(Device.f);
        Device device = F;
        this.H = new StringEncrypter(sb.append(Device.getIMEI()).toString());
        String preferenceString = SUtils.getPreferenceString(str, f75a);
        if (preferenceString == "") {
            return preferenceString;
        }
        try {
            String strB = this.H.b(preferenceString);
            String[] strArrSplit = strB.split("#");
            if (strArrSplit.length != 3) {
                return strB;
            }
            String str2 = strArrSplit[1];
            Device device2 = F;
            return str2.compareTo(Device.getIMEI()) == 0 ? strArrSplit[2] : strB;
        } catch (Exception e2) {
            return preferenceString;
        }
    }

    private String c(int i) {
        return b(i);
    }

    private boolean c(String str) {
        try {
            int i = Integer.parseInt(str.substring(str.indexOf("(") + 1, str.indexOf(")")));
            if (!a(i)) {
                return false;
            }
            SUtils.setPreference("PREFERENCES_GAME_UNLOCK_CODE", Integer.valueOf(i), f75a);
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    private String d(int i) {
        return b(i);
    }

    private static void debugSavedValues() {
    }

    public static int getRandomCodeNumber() {
        return SUtils.getPreferenceInt("PREFERENCES_GAME_RANDOM_CODE", -1, f75a);
    }

    private static String getServerNumber() {
        return SUtils.getPreferenceString("PREFERENCES_GAME_SERVER_NUMBER", f75a);
    }

    private static int getUnlockCodeNumber() {
        return SUtils.getPreferenceInt("PREFERENCES_GAME_UNLOCK_CODE", -1, f75a);
    }

    public static void setRandomCodeNumber(int i) {
        SUtils.setPreference("PREFERENCES_GAME_RANDOM_CODE", Integer.valueOf(i), f75a);
    }

    private static void setServerNumber(String str) {
        SUtils.setPreference("PREFERENCES_GAME_SERVER_NUMBER", str, f75a);
    }

    private static void setUnlockCodeNumber(int i) {
        SUtils.setPreference("PREFERENCES_GAME_UNLOCK_CODE", Integer.valueOf(i), f75a);
    }

    private static long today() {
        return new Date().getTime();
    }

    public final boolean a(int i) {
        return i == (getRandomCodeNumber() ^ Device.h);
    }
}
