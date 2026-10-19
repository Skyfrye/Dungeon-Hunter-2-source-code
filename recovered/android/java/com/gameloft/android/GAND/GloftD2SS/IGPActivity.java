package com.gameloft.android.GAND.GloftD2SS;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.provider.Settings$Secure;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.KeyEvent;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.Encrypter;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.SUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class IGPActivity extends Activity {
    public static RelativeLayout o;
    public static WebView p;
    private Display s;
    private PhoneStateListener t = new au(this);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f28a = false;
    public static boolean b = false;
    public static int c = 0;
    public static boolean d = false;
    public static TelephonyManager e = null;
    static int f = 480;
    static int g = 800;
    public static String h = "http://ingameads.gameloft.com/redir/android/index.php?from=GAME_CODE&lg=LANGUAGE&udid=UDIDPHONE&d=DEVICE_ANDROID&f=FIRMWARE_ANDROID&ver=GAME_VERSION&country=COUNTRY_DETECTED&height=DEVICE_HEIGHT";
    public static String i = "";
    public static String j = "http://signal-back.com";
    public static String k = "http://ingameads.gameloft.com/redir/android/index.php?page=gameinformation";
    public static String l = "http://ingameads.gameloft.com/redir/?from=";
    public static int[] m = {2131034593, 2131034594, 2131034595, 2131034596, 2131034597, 2131034598, 2131034599, 2131034600, 2131034601};
    public static String[] n = {"EN", "FR", "DE", "IT", "SP", "JP", "KR", "CN", "BR"};
    static boolean q = false;
    static int r = 0;

    public IGPActivity() {
        SUtils.setContext(this);
    }

    /* JADX DEBUG: TODO: convert one arg to string using `String.valueOf()`, args: (wrap int:SGET) */
    private void a(int i2, String str) {
        d = true;
        c = i2;
        getSystemService("phone");
        String deviceId = Device.getDeviceId();
        if (deviceId == null) {
            deviceId = "GLOFT_EMU_001";
        }
        String country = Locale.getDefault().getCountry();
        String str2 = Build.MANUFACTURER + "_" + Build.MODEL;
        String str3 = Build$VERSION.RELEASE;
        String strCrypt = Encrypter.crypt(deviceId);
        String strReplace = h.replace("LANGUAGE", n[c]);
        i = strReplace;
        String strReplace2 = strReplace.replace("GAME_CODE", str);
        i = strReplace2;
        String strReplace3 = strReplace2.replace("COUNTRY_DETECTED", country);
        i = strReplace3;
        String strReplace4 = strReplace3.replace("UDIDPHONE", strCrypt);
        i = strReplace4;
        String strReplace5 = strReplace4.replace("DEVICE_ANDROID", str2);
        i = strReplace5;
        String strReplace6 = strReplace5.replace("FIRMWARE_ANDROID", str3);
        i = strReplace6;
        String strReplace7 = strReplace6.replace("GAME_VERSION", "1.0.2");
        i = strReplace7;
        String strReplace8 = strReplace7.replace("DEVICE_HEIGHT", new StringBuilder().append(g).toString());
        i = strReplace8;
        i = strReplace8.replaceAll(" ", "");
        i += "&enc=1";
        p.loadUrl(i);
        o.addView(p, new RelativeLayout$LayoutParams(f, g));
        p.requestFocus();
    }

    private void a(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        if (getPackageManager().queryIntentActivities(intent, 65536).size() == 0) {
            intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.youtube.com/watch?v=" + str.replace("vnd.youtube:", "")));
        }
        startActivity(intent);
    }

    static /* synthetic */ void access$100(IGPActivity iGPActivity, String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        if (iGPActivity.getPackageManager().queryIntentActivities(intent, 65536).size() == 0) {
            intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.youtube.com/watch?v=" + str.replace("vnd.youtube:", "")));
        }
        iGPActivity.startActivity(intent);
    }

    private String b() {
        String strC = c();
        if (strC == null) {
            strC = Build$VERSION.SDK_INT >= 9 ? Build.SERIAL : null;
            if (strC == "unknown") {
                strC = null;
            }
            if (strC == null && (strC = getSerialNo()) == null && (strC = e()) == null) {
                strC = Settings$Secure.getString(getApplicationContext().getContentResolver(), "android_id");
                if (strC.length() <= 0) {
                    strC = null;
                }
                if (strC != null) {
                }
            }
        }
        return strC;
    }

    private String c() {
        try {
            String deviceId = ((TelephonyManager) getApplicationContext().getSystemService("phone")).getDeviceId();
            if (deviceId.length() > 0) {
                return deviceId;
            }
            return null;
        } catch (Exception e2) {
        }
    }

    private String d() {
        String string = Settings$Secure.getString(getApplicationContext().getContentResolver(), "android_id");
        if (string.length() > 0) {
            return string;
        }
        return null;
    }

    private String e() {
        try {
            String macAddress = ((WifiManager) getApplicationContext().getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (macAddress != null && macAddress.length() > 0) {
                return macAddress.replaceAll(":", "");
            }
        } catch (Exception e2) {
        }
        return null;
    }

    private static String getSerial() {
        String str = Build$VERSION.SDK_INT >= 9 ? Build.SERIAL : null;
        if (str != "unknown") {
            return str;
        }
        return null;
    }

    private static String getSerialNo() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "ro.serialno");
            if (str.length() <= 0 || str == "unknown") {
                return null;
            }
            return str;
        } catch (Exception e2) {
        }
    }

    public static native void nativeInit();

    public final void a() {
        try {
            f28a = false;
            startActivity(new Intent(this, (Class<?>) DungeonHunter2.class));
            finish();
            o.removeView(p);
        } catch (Exception e2) {
        }
    }

    /* JADX DEBUG: TODO: convert one arg to string using `String.valueOf()`, args: (wrap int:SGET) */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (DungeonHunter2.w == null) {
            a();
            return;
        }
        getWindow().addFlags(1024);
        getWindow().clearFlags(2048);
        TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
        e = telephonyManager;
        telephonyManager.listen(this.t, 32);
        this.s = ((WindowManager) getSystemService("window")).getDefaultDisplay();
        g = this.s.getHeight();
        f = this.s.getWidth();
        o = new RelativeLayout(this);
        WebView webView = new WebView(this);
        p = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        p.getSettings().setAppCacheEnabled(false);
        p.getSettings().setSupportZoom(false);
        p.getSettings().setDefaultTextEncodingName("utf-8");
        p.getSettings().setLightTouchEnabled(true);
        p.getSettings().setLoadsImagesAutomatically(true);
        p.setWebViewClient(new av(this, (byte) 0));
        p.setVerticalScrollBarEnabled(false);
        setContentView(o);
        Intent intent = getIntent();
        int i2 = intent.getExtras() != null ? intent.getExtras().getInt("language") : c;
        if (i2 < 0 || i2 > n.length) {
            i2 = 0;
        }
        d = true;
        c = i2;
        getSystemService("phone");
        String deviceId = Device.getDeviceId();
        if (deviceId == null) {
            deviceId = "GLOFT_EMU_001";
        }
        String country = Locale.getDefault().getCountry();
        String str = Build.MANUFACTURER + "_" + Build.MODEL;
        String str2 = Build$VERSION.RELEASE;
        String strCrypt = Encrypter.crypt(deviceId);
        String strReplace = h.replace("LANGUAGE", n[c]);
        i = strReplace;
        String strReplace2 = strReplace.replace("GAME_CODE", "D2SS");
        i = strReplace2;
        String strReplace3 = strReplace2.replace("COUNTRY_DETECTED", country);
        i = strReplace3;
        String strReplace4 = strReplace3.replace("UDIDPHONE", strCrypt);
        i = strReplace4;
        String strReplace5 = strReplace4.replace("DEVICE_ANDROID", str);
        i = strReplace5;
        String strReplace6 = strReplace5.replace("FIRMWARE_ANDROID", str2);
        i = strReplace6;
        String strReplace7 = strReplace6.replace("GAME_VERSION", "1.0.2");
        i = strReplace7;
        String strReplace8 = strReplace7.replace("DEVICE_HEIGHT", new StringBuilder().append(g).toString());
        i = strReplace8;
        i = strReplace8.replaceAll(" ", "");
        i += "&enc=1";
        p.loadUrl(i);
        o.addView(p, new RelativeLayout$LayoutParams(f, g));
        p.requestFocus();
        f28a = true;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            if (e != null) {
                e.listen(this.t, 0);
            }
            e = null;
        } catch (Exception e2) {
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 82) {
            return false;
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyLongPress(int i2, KeyEvent keyEvent) {
        return i2 != 82;
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return true;
        }
        if (b) {
            p.goBack();
        } else {
            a();
        }
        return false;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (r == 2) {
            moveTaskToBack(true);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window$Callback
    public void onWindowFocusChanged(boolean z) {
        if (z && r == 2) {
            moveTaskToBack(true);
        } else {
            d = z;
        }
    }
}
