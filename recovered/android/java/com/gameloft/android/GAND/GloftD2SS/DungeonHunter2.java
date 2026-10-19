package com.gameloft.android.GAND.GloftD2SS;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.database.Cursor;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo$State;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.SUtils;
import com.gameloft.android.GAND.GloftD2SS.installer.GameInstaller;
import com.gameloft.android.GAND.GloftD2SS.installer.utils.Tracking;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class DungeonHunter2 extends Activity implements SensorEventListener {
    static int A = 0;
    static boolean B = false;
    static boolean C = false;
    static long D = 0;
    static boolean E = false;
    static boolean F = false;
    static final int G = 50000;
    public static int H = 0;
    private static GLSurfaceView I = null;
    private static byte[] J = null;
    private static byte[] K = null;
    private static byte[] L = null;
    private static boolean M = false;
    private static boolean N = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f4a = 0;
    static final int b = 1;
    static final int e = 5;
    static final String l = "DungeonHunter2";
    public static DungeonHunter2 o;
    public static int p;
    public static int q;
    public static boolean r;
    public static int s;
    static ConnectivityManager t;
    static NetworkInfo u;
    static WifiManager v;
    public static DungeonHunter2 w;
    public static int x;
    public static int y;
    public static int[] z;
    SensorManager h;
    Sensor i;
    Musicplayer j;
    static int c = 0;
    static boolean d = false;
    static int f = 0;
    static boolean g = false;
    public static boolean m = false;
    public static boolean n = false;
    boolean k = false;
    private boolean O = false;

    static {
        System.loadLibrary("DungeonHunter2");
        System.loadLibrary("StormGLOFT");
        p = -1;
        q = -1;
        t = null;
        u = null;
        v = null;
        z = new int[]{1, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127};
        A = 0;
        E = false;
        F = false;
        H = 0;
    }

    public static int DisableLaunchGame() {
        return f >= 5 ? 1 : 0;
    }

    public static void Exit() {
        o.finish();
        o = null;
        I = null;
        System.exit(0);
    }

    public static int Get_PhoneLanguage() {
        String language = Locale.getDefault().getLanguage();
        if (language.equals("en")) {
            return 0;
        }
        if (language.equals("fr")) {
            return 1;
        }
        if (language.equals("de")) {
            return 2;
        }
        if (language.equals("es")) {
            return 3;
        }
        if (language.equals("it")) {
            return 4;
        }
        if (language.equals("ja")) {
            return 5;
        }
        return language.equals("ko") ? 6 : 0;
    }

    public static int Get_PhoneManufacturer() {
        String str = Build.MANUFACTURER;
        if (str.equals("HTC")) {
            return 0;
        }
        if (str.equals("SHARP")) {
            return 2;
        }
        if (str.equals("motorola")) {
            return 3;
        }
        if (str.equals("Sony Ericsson")) {
            return 4;
        }
        return str.equals("LGE") ? 5 : 1;
    }

    public static int Get_PhoneModel() {
        String str = Build.MODEL;
        if (str.equals("PC36100") || str.equals("SGH-T959") || str.equals("LG-SU660")) {
            return 1;
        }
        return str.equals("SHW-M130L") ? 99 : 0;
    }

    public static void IncreaseLaunchTimes() {
        f++;
        SharedPreferences$Editor sharedPreferences$EditorEdit = w.getSharedPreferences("DungeonHunter2", 0).edit();
        sharedPreferences$EditorEdit.putInt("lastNumOfLaunchs", f + 1);
        sharedPreferences$EditorEdit.commit();
        sharedPreferences$EditorEdit.commit();
    }

    public static void NotifyTrophy(int i) {
        System.out.println("NotifyTrophy " + i);
        int length = GLiveMain.cS.length;
        if (i < 0 || i > length) {
            return;
        }
        try {
            int[] iArr = new int[length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr[i2] = 127;
            }
            File file = new File("/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files/androidTrophy.dat");
            if (file.exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader("/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files/androidTrophy.dat"));
                int i3 = 0;
                while (bufferedReader.ready()) {
                    iArr[i3] = Integer.parseInt(bufferedReader.readLine());
                    i3++;
                }
                bufferedReader.close();
            } else {
                file.createNewFile();
            }
            iArr[i] = 1;
            FileWriter fileWriter = new FileWriter(file, false);
            for (int i4 : iArr) {
                fileWriter.append((CharSequence) String.valueOf(i4));
                fileWriter.append('\n');
            }
            fileWriter.flush();
            fileWriter.close();
        } catch (Exception e2) {
        }
    }

    public static void OpenGLive(int i) {
        launchGLLive(i);
    }

    public static void OpenIGP(int i) {
        launchIGP(i);
    }

    public static byte[] VZGetGameName() {
        return VZBilling.GetGameName();
    }

    public static byte[] VZGetGamePrice() {
        return VZBilling.GetGamePrice();
    }

    public static byte[] VZGetLastServerMsg() {
        return VZBilling.GetLastServerMsg();
    }

    public static void VZInitMobileNetwork() {
        VZBilling.c = false;
        N = false;
        E = false;
        D = System.currentTimeMillis();
        if (v.getWifiState() == 3) {
            F = true;
            v.setWifiEnabled(false);
        }
    }

    public static int VZIsErrorOcurred() {
        return (E && !VZBilling.IsErrorOcurred()) ? 0 : 1;
    }

    public static int VZIsInProgress() {
        if (B && !VZBilling.IsInProgress()) {
            B = false;
            if (VZIsErrorOcurred() == 0) {
                VZBilling.RequestGameData();
                return 1;
            }
        } else if (C && !VZBilling.IsInProgress()) {
            C = false;
            if (VZIsErrorOcurred() == 0) {
                VZBilling.RequestGamePurchase();
                return 1;
            }
        }
        return !VZBilling.IsInProgress() ? 0 : 1;
    }

    public static int VZIsMobileNetworkReady() {
        if (N || System.currentTimeMillis() - D > 50000) {
            VZBilling.SetLastServerMsg("You need to be connected to the Verizon Network to continue.");
            N = true;
            return 1;
        }
        if (v.getWifiState() == 0) {
            return 0;
        }
        ConnectivityManager connectivityManager = t;
        ConnectivityManager connectivityManager2 = t;
        if (connectivityManager.getNetworkInfo(0).getState() != NetworkInfo$State.CONNECTED) {
            return 0;
        }
        E = true;
        return 1;
    }

    public static void VZRequestLogin() {
        B = true;
        VZBilling.RequestLogin();
    }

    public static void VZRequestPurchaseGame() {
        C = true;
        VZBilling.RequestGameCheckout();
    }

    public static void VZRestoreNetworkState() {
        if (F) {
            v.setWifiEnabled(true);
            F = false;
        }
    }

    private void a() {
        SharedPreferences sharedPreferences = getSharedPreferences("DungeonHunter2", 0);
        c = 0;
        c = sharedPreferences.getInt("playMode", 0);
        f = sharedPreferences.getInt("lastNumOfLaunchs", 0);
        sharedPreferences.edit().commit();
        d = true;
    }

    public static void initialize_Trophy(int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 127;
        }
    }

    public static boolean isDemo() {
        return c == 0;
    }

    public static int isSupportMM() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (((str.equals("samsung") || str.equals("Samsung")) && (str2.equals("SC-02B") || str2.equals("SHW-M110S") || str2.equals("GT-I9000") || str2.equals("SGH-T959") || str2.equals("SHW-M130L"))) || ((str.equals("Sony Ericsson") && str2.equals("X10i")) || !str.equals("HTC") || !str2.equals("HTC Desire"))) {
        }
        return -1;
    }

    public static int isWifiAlive() {
        NetworkInfo activeNetworkInfo = t.getActiveNetworkInfo();
        u = activeNetworkInfo;
        return (activeNetworkInfo == null || u.getType() != 1) ? 0 : 1;
    }

    public static void launchGLLive(int i) {
        if (i < 0) {
            i = 0;
        }
        x = i;
        Intent intent = new Intent(GameRenderer.f26a, (Class<?>) GLiveMain.class);
        intent.putExtra("language", i);
        intent.putExtra("gginame", "25483");
        GameRenderer.f26a.startActivity(intent);
        GLiveMain.cf = true;
    }

    public static void launchIGP(int i) {
        if (i < 0) {
            i = 0;
        }
        y = i;
        Intent intent = new Intent(GameRenderer.f26a, (Class<?>) IGPActivity.class);
        intent.putExtra("language", i);
        GameRenderer.f26a.startActivity(intent);
    }

    public static void lockDemo() {
        c = 0;
        SharedPreferences$Editor sharedPreferences$EditorEdit = w.getSharedPreferences("DungeonHunter2", 0).edit();
        sharedPreferences$EditorEdit.putInt("playMode", 0);
        sharedPreferences$EditorEdit.putInt("lastNumOfLaunchs", 0);
        sharedPreferences$EditorEdit.commit();
    }

    public static native void nativeAccelerometer(float f2, float f3, float f4);

    public static native int nativeCanInterrupt();

    public static native int nativeGetGameMusicVolume();

    public static native void nativeGetInfo(String str, String str2, String str3, String str4);

    public static native void nativeInit(int i);

    public static native void nativeKeyDown(int i);

    public static native void nativeKeyUp(int i);

    public static native void nativeOpenIGM();

    public static native void nativePause(int i);

    public static native void nativeResume(int i);

    public static native void nativeSetOrientation(int i);

    public static native void nativeSetPhone(int i, int i2);

    public static native int nativegetState(int i);

    public static native void nativeonTrackballEvent(int i);

    public static void openBrowser(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        try {
            GameRenderer.f26a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void readFromFile() {
    }

    public static void sendAppToBackground() {
        w.startActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME"));
    }

    public static int unlockDemo() {
        c = 1;
        SharedPreferences$Editor sharedPreferences$EditorEdit = w.getSharedPreferences("DungeonHunter2", 0).edit();
        sharedPreferences$EditorEdit.putInt("playMode", 1);
        sharedPreferences$EditorEdit.commit();
        return 0;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Locale locale = Locale.getDefault();
        locale.getISO3Language();
        locale.getISO3Country();
        this.k = true;
        super.onCreate(bundle);
        if (!GameInstaller.sbStarted) {
            System.out.println("------- Game::onCreate(), start installer ------");
            try {
                Intent intent = new Intent();
                intent.setClassName(getPackageName(), getPackageName() + ".installer.GameInstaller");
                startActivity(intent);
                finish();
                return;
            } catch (Exception e2) {
            }
        }
        if (!d) {
            SharedPreferences sharedPreferences = getSharedPreferences("DungeonHunter2", 0);
            c = 0;
            c = sharedPreferences.getInt("playMode", 0);
            f = sharedPreferences.getInt("lastNumOfLaunchs", 0);
            sharedPreferences.edit().commit();
            d = true;
        }
        getWindow().setFlags(1152, 1152);
        String str = Build.BOARD;
        String str2 = Build.BRAND;
        String str3 = Build.CPU_ABI;
        String str4 = Build.DEVICE;
        String str5 = Build.DISPLAY;
        String str6 = Build.FINGERPRINT;
        String str7 = Build.HOST;
        String str8 = Build.ID;
        String str9 = Build.MANUFACTURER;
        String str10 = Build.MODEL;
        String str11 = Build.PRODUCT;
        String str12 = Build.TAGS;
        String str13 = Build.TYPE;
        String str14 = Build.USER;
        String str15 = Build.PRODUCT;
        requestWindowFeature(1);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        nativeSetPhone(displayMetrics.widthPixels, displayMetrics.heightPixels);
        I = new GameGLSurfaceView(this);
        setContentView(I);
        o = this;
        w = this;
        t = (ConnectivityManager) getSystemService("connectivity");
        v = (WifiManager) getSystemService("wifi");
        Locale.getDefault().getCountry();
        ((TelephonyManager) getSystemService("phone")).getDeviceId();
        String str16 = Build.MANUFACTURER + "_" + Build.MODEL;
        String str17 = Build$VERSION.RELEASE;
        SUtils.setContext(this);
        this.j = new Musicplayer();
        Musicplayer musicplayer = this.j;
        Musicplayer.initMediaList();
        System.out.println("Tracking ------------------------");
        Tracking.init((TelephonyManager) getSystemService("phone"));
        Tracking.onLaunchGame();
        System.out.println("Tracking ++++++++++++++++++++++++");
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 27 || i == 80 || i == 27 || i == 84 || i == 82) {
            return true;
        }
        if (i == 24 || i == 25 || i == 27 || i == 80 || i == 4) {
            return false;
        }
        p = i;
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        int iNativegetState;
        if (i == 27 || i == 80 || i == 27) {
            return true;
        }
        if (i == 24 || i == 25 || i == 27 || i == 80) {
            r = true;
            GameGLSurfaceView.c = true;
            return false;
        }
        if (i == 82) {
            nativegetState(i);
        }
        if (i == 4 && (iNativegetState = nativegetState(i)) != 1 && iNativegetState == 2) {
            sendAppToBackground();
        }
        q = i;
        return true;
    }

    @Override // android.app.Activity
    protected void onPause() {
        while (nativeCanInterrupt() == 0) {
            try {
                Thread.sleep(10L);
            } catch (Exception e2) {
            }
        }
        super.onPause();
        I.onPause();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        if (GLMediaPlayer.M) {
            GLMediaPlayer.ResumeMovie();
        }
        super.onRestart();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        getWindow().setSoftInputMode(3);
        if (this.k || nativeGetGameMusicVolume() > 0) {
            this.k = false;
        } else {
            Intent intent = new Intent("com.android.music.musicservicecommand");
            intent.putExtra("command", "pause");
            sendBroadcast(intent);
        }
        I.onResume();
        this.h = (SensorManager) getSystemService("sensor");
        this.i = this.h.getDefaultSensor(1);
        this.h.registerListener(this, this.i, 1);
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        synchronized (this) {
            if (sensorEvent.sensor.getType() == 1) {
                nativeAccelerometer(sensorEvent.values[0], sensorEvent.values[1], sensorEvent.values[2]);
            }
            if (this.O) {
                if (sensorEvent.values[0] > 8.0f) {
                    nativeSetOrientation(1);
                    this.O = false;
                }
            } else if (sensorEvent.values[0] < -8.0f) {
                nativeSetOrientation(-1);
                this.O = true;
            }
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        this.h.unregisterListener(this);
        this.h = null;
        super.onStop();
    }

    @Override // android.app.Activity
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            nativeonTrackballEvent(0);
        } else {
            float x2 = motionEvent.getX() * motionEvent.getXPrecision();
            float y2 = motionEvent.getY() * motionEvent.getYPrecision();
            if (Math.abs(x2) > Math.abs(y2)) {
                if (x2 > 0.0f) {
                }
            } else if (Math.abs(x2) < Math.abs(y2)) {
                if (y2 > 0.0f) {
                    nativeonTrackballEvent(2);
                } else {
                    nativeonTrackballEvent(1);
                }
            }
        }
        return true;
    }

    @Override // android.app.Activity
    public void startManagingCursor(Cursor cursor) {
    }
}
