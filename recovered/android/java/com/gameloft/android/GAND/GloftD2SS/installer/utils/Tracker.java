package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.XPlayer;

/* JADX INFO: loaded from: classes.dex */
public class Tracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f143a = "DungeonHunter2TInfo";
    public static final String b = "Launchinstaller";
    public static final String c = "Downloadstart";
    public static final String d = "Downloadfinish";
    public static final String e = "UnsupportedDevice";
    public static final String f = "A";
    public static final String g = "B";
    public static final String h = "Wifi";
    public static final String i = "3G";
    public static final String j = "NOWifi";
    public static final int k = 0;
    public static final int l = 1;
    public static final int m = 2;
    static Device n = null;
    static XPlayer o = null;
    public static final int q = 0;
    public static final int r = 1;
    public static final int s = 2;
    public static final int t = 3;
    public static boolean p = false;
    private static String v = "";
    public static final Object u = new Object();

    public static void UnsupportedDeviceTracker() {
        sendInstallerTrackingOptions(0, 3, false, false, "");
    }

    static /* synthetic */ String access$000(int i2, int i3, boolean z, boolean z2, String str) {
        return getQryRequestType(i2, i3, z, z2, str);
    }

    static /* synthetic */ String access$100() {
        return v;
    }

    public static void downloadFinishTracker(int i2, boolean z) {
        sendInstallerTrackingOptions(i2, 2, z, false, "");
    }

    public static void downloadStartTracker(int i2, boolean z) {
        sendInstallerTrackingOptions(i2, 1, z, false, "");
    }

    private static String getQryRequestType(int i2, int i3, boolean z, boolean z2, String str) {
        switch (i3) {
            case 0:
                return (("&action=" + b) + (i2 == 1 ? f : g)) + (!z2 ? j : "");
            case 1:
                String str2 = "&action=" + c;
                if (i2 == 1) {
                    return str2 + f;
                }
                return (str2 + g) + (z ? i : h);
            case 2:
                String str3 = "&action=" + d;
                if (i2 == 1) {
                    return str3 + f;
                }
                return (str3 + g) + (z ? i : h);
            case 3:
                return "&action=" + e;
            default:
                return "&action=";
        }
    }

    public static void launchInstallerTracker(int i2, boolean z) {
        sendInstallerTrackingOptions(i2, 0, false, z, "");
    }

    public static void sendInstallerTrackingOptions(int i2, int i3, boolean z, boolean z2, String str) {
        new j(i2, i3, z, z2, str).start();
    }

    public static void setUserID(String str) {
        v = str;
    }
}
