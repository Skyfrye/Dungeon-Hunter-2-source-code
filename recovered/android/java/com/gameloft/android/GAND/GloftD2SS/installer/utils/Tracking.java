package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import android.os.Build;
import android.os.Build$VERSION;
import android.provider.Settings$Secure;
import android.telephony.TelephonyManager;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.Encrypter;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.SUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Tracking {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f144a = 1;
    public static final int b = 2;
    static String c;
    static String d;
    static String e;
    static String f;
    static String g;
    static String h;
    static String i;
    private static String j = "D2SS";
    private static String k = "102";
    private static String l = "2.1";
    private static int m = 1500;
    private static String n = "http://ingameads.gameloft.com/redir/hdloading.php?game=#GAME#&country=#COUNTRY#&lg=#LANG#&ver=#IGP_VERSION#&device=#DEVICE#&f=#FIRMWARE#&udid=#ID#&androidid=#ANDROID_ID#&g_ver=#VERSION#&line_number=#LINE_NUMBER#";

    static /* synthetic */ String access$000() {
        return n;
    }

    static /* synthetic */ String access$100(String str) {
        return buildURL(str);
    }

    static /* synthetic */ int access$200() {
        return m;
    }

    private static String buildURL(String str) {
        String strCrypt = Encrypter.crypt(c);
        return str.replace("#GAME#", j).replace("#COUNTRY#", f).replace("#LANG#", e).replace("#VERSION#", k).replace("#DEVICE#", g).replace("#FIRMWARE#", h).replace("#ID#", strCrypt).replace("#ANDROID_ID#", d).replace("#IGP_VERSION#", l).replace("#LINE_NUMBER#", Encrypter.crypt(i)).replace(" ", "");
    }

    public static void init(TelephonyManager telephonyManager) {
        c = Device.getDeviceId();
        String string = Settings$Secure.getString(SUtils.getContext().getContentResolver(), "android_id");
        d = string;
        if (string == null) {
            d = "null";
        }
        Locale locale = Locale.getDefault();
        e = locale.getLanguage();
        f = locale.getCountry();
        g = Build.MANUFACTURER + "_" + Build.MODEL;
        h = Build$VERSION.RELEASE;
        String line1Number = telephonyManager.getLine1Number();
        i = line1Number;
        if (line1Number == null) {
            i = "00";
        }
    }

    public static void onLaunchGame() {
        onLaunchGame(2, "");
    }

    public static void onLaunchGame(int i2) {
        onLaunchGame(i2, "");
    }

    public static void onLaunchGame(int i2, String str) {
        new Thread(new k(str)).start();
    }
}
