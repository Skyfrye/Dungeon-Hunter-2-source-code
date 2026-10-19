package com.gameloft.android.GAND.GloftD2SS.GLUtils;

import android.app.Activity;
import android.net.ConnectivityManager;
import android.net.NetworkInfo$State;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager$WifiLock;
import android.os.Build;
import android.os.Build$VERSION;
import android.provider.Settings$Secure;
import android.telephony.TelephonyManager;
import android.webkit.WebView;
import com.gameloft.android.GAND.GloftD2SS.billing.common.AServerInfo;
import java.io.File;
import java.net.URLEncoder;
import java.util.Locale;
import java.util.Random;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class Device {
    private static final int A = 1111;
    private static String B = null;
    private static int C = 0;
    public static final boolean b = true;
    public static final boolean c = false;
    public static final boolean d = false;
    public static final boolean e = true;
    public static final String f = "H229";
    public static final int h = 53412;
    public static WifiManager i = null;
    private static boolean u = false;
    private static a x = null;
    private static final int z = 9999;
    private String D;
    public final String g;
    WifiManager$WifiLock k;
    private final String v;
    private AServerInfo w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[][] f12a = {new String[]{"eng", "en"}, new String[]{"fra", "fr"}, new String[]{"deu", "de"}, new String[]{"esl", "es"}, new String[]{"spa", "es"}, new String[]{"ita", "it"}, new String[]{"jpn", "jp"}, new String[]{"por", "br"}, new String[]{"por", "pt"}};
    private static String l = null;
    private static String m = null;
    private static String n = null;
    private static String o = null;
    private static String p = null;
    private static String q = null;
    private static String r = null;
    private static String s = null;
    private static String t = null;
    private static WebView y = null;
    static ConnectivityManager j = null;
    private static byte[] E = {0};

    public Device() {
        this.v = "4";
        this.g = "1";
        this.D = "";
        InitDeviceValues();
    }

    public Device(AServerInfo aServerInfo) {
        this();
        this.w = aServerInfo;
    }

    private static void DisableWifi() {
        i.setWifiEnabled(false);
    }

    private static void EnableWifi() {
        i.setWifiEnabled(true);
    }

    private static void InitDeviceValues() {
        String str;
        if (j == null) {
            j = (ConnectivityManager) SUtils.getContext().getSystemService("connectivity");
        }
        TelephonyManager telephonyManager = (TelephonyManager) SUtils.getContext().getSystemService("phone");
        switch (telephonyManager.getSimState()) {
            case 1:
                str = "SIM_ABSENT";
                break;
            case 2:
                str = "SIM_PIN_REQUIRED";
                break;
            case 3:
                str = "SIM_PUK_REQUIRED";
                break;
            default:
                str = "SIM_ERROR_UNKNOWN";
                break;
        }
        if (l == null) {
            l = getDeviceId();
        }
        if (n == null) {
            n = telephonyManager.getNetworkOperator();
        }
        if (n.trim().length() == 0) {
            n = str;
        }
        if (o == null) {
            o = ValidateStringforURL(telephonyManager.getNetworkOperatorName());
        }
        if (o.trim().length() == 0) {
            o = str;
        }
        if (p == null) {
            p = telephonyManager.getSimOperator();
        }
        if (p.trim().length() == 0) {
            p = str;
        }
        if (q == null) {
            q = ValidateStringforURL(telephonyManager.getSimOperatorName());
        }
        if (q.trim().length() == 0) {
            q = str;
        }
        if (r == null || r.equals("00")) {
            r = telephonyManager.getLine1Number();
        }
        if (r == null) {
            r = "00";
        }
        if (s == null) {
            s = telephonyManager.getNetworkCountryIso();
        }
        if (t == null) {
            t = telephonyManager.getSimCountryIso();
        }
        u = telephonyManager.isNetworkRoaming();
        C = createUniqueCode();
        B = getLanguage(Locale.getDefault().getISO3Language());
        try {
            if (m == null) {
                ((Activity) SUtils.getContext()).runOnUiThread(new b());
            }
        } catch (ClassCastException e2) {
        }
        x = new a();
    }

    private static boolean IsConnectionReady() {
        ConnectivityManager connectivityManager = j;
        ConnectivityManager connectivityManager2 = j;
        return connectivityManager.getNetworkInfo(0).getState() == NetworkInfo$State.CONNECTED;
    }

    private static boolean IsWifiDisabling() {
        return i.getWifiState() == 0;
    }

    public static boolean IsWifiEnable() {
        WifiManager wifiManager = (WifiManager) SUtils.getContext().getSystemService("wifi");
        i = wifiManager;
        return wifiManager.getWifiState() == 3;
    }

    private static boolean IsWifiEnabling() {
        return i.getWifiState() == 2;
    }

    public static String ValidateStringforURL(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Exception e2) {
            return str;
        }
    }

    private void a(AServerInfo aServerInfo) {
        this.w = aServerInfo;
    }

    public static byte[] a() {
        return l == null ? E : l.getBytes();
    }

    static /* synthetic */ WebView access$000() {
        return y;
    }

    static /* synthetic */ WebView access$002(WebView webView) {
        y = webView;
        return webView;
    }

    static /* synthetic */ String access$102(String str) {
        m = str;
        return str;
    }

    public static byte[] b() {
        return o == null ? E : o.getBytes();
    }

    public static byte[] c() {
        return r == null ? E : r.getBytes();
    }

    public static int createUniqueCode() {
        return (int) ((new Random().nextDouble() * 8889.0d) + 1111.0d);
    }

    public static byte[] d() {
        return "1.0.2".getBytes();
    }

    public static synchronized String d1() {
        String deviceId;
        String str;
        if (SUtils.getContext() == null) {
            deviceId = null;
        } else {
            deviceId = ((TelephonyManager) SUtils.getContext().getSystemService("phone")).getDeviceId();
            if (deviceId == null && (Build$VERSION.SDK_INT < 9 || (deviceId = Build.SERIAL) == null || deviceId == "unknown")) {
                try {
                    Class<?> cls = Class.forName("android.os.SystemProperties");
                    deviceId = (String) cls.getMethod("get", String.class).invoke(cls, "ro.serialno");
                    if (deviceId == null || deviceId.length() <= 0 || deviceId == "unknown") {
                        deviceId = Settings$Secure.getString(SUtils.getContext().getContentResolver(), "android_id");
                        if ((deviceId == null || deviceId.length() <= 0) && ((deviceId = SUtils.ReadFile((str = SUtils.getPreferenceString("SDFolder", "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files", "DungeonHunter2Prefs") + "/.nomedia"))) == null || deviceId.length() == 0)) {
                            deviceId = UUID.randomUUID().toString().replaceAll("-", "");
                            SUtils.WriteFile(str, deviceId);
                            try {
                                File file = new File(str);
                                if (file.exists()) {
                                    file.setReadOnly();
                                }
                            } catch (Exception e2) {
                            }
                        }
                    }
                } catch (Exception e3) {
                }
            }
        }
        return deviceId;
    }

    public static void e(int i2) {
        C = i2;
    }

    public static byte[] f() {
        return getUserAgent().getBytes();
    }

    private String g() {
        return this.D;
    }

    private static String getBillingVersion() {
        return "1";
    }

    public static a getCarrier() {
        return x;
    }

    public static String getDemoCode() {
        return f;
    }

    public static String getDevice() {
        return ValidateStringforURL(Build.DEVICE);
    }

    public static String getDeviceId() {
        return (!IsWifiEnable() || Build.MODEL == null || Build.DEVICE == null) ? d1() : d1();
    }

    public static byte[] getHostName() {
        return (Build.MODEL + "_" + Build.PRODUCT).getBytes();
    }

    public static String getIMEI() {
        return l;
    }

    public static boolean getIsRoaming() {
        return u;
    }

    private static String getLanguage(String str) {
        for (int i2 = 0; i2 < f12a.length; i2++) {
            if (str.compareToIgnoreCase(f12a[i2][0]) == 0) {
                return f12a[i2][1];
            }
        }
        return "en";
    }

    public static String getLineNumber() {
        return r;
    }

    private static String getLocale() {
        return B;
    }

    public static String getNetworkCountryIso() {
        return s;
    }

    public static String getNetworkOperator() {
        return n;
    }

    public static String getNetworkOperatorName() {
        return o;
    }

    public static String getPhoneModel() {
        return ValidateStringforURL(Build.MODEL);
    }

    private static String getProfileType() {
        return "4";
    }

    public static String getSimCountryIso() {
        return t;
    }

    public static String getSimOperator() {
        return p;
    }

    public static String getSimOperatorName() {
        return q;
    }

    public static int getUniqueCode() {
        return C;
    }

    public static String getUserAgent() {
        return m;
    }

    public static void init() {
        InitDeviceValues();
    }

    public static native void nativeInit();

    public final void a(String str) {
        this.D = str;
    }

    public final AServerInfo e() {
        return this.w;
    }
}
