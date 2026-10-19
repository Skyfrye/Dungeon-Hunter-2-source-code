package com.gameloft.android.GAND.GloftD2SS.installer;

import android.R$attr;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager$WifiLock;
import android.os.Build;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.PowerManager$WakeLock;
import android.os.StatFs;
import android.provider.Settings$System;
import android.support.v4.app.app;
import android.telephony.TelephonyManager;
import android.util.Pair;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View$OnClickListener;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import android.widget.RemoteViews;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.SUtils;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.XPlayer;
import com.gameloft.android.GAND.GloftD2SS.bp;
import com.gameloft.android.GAND.GloftD2SS.bu;
import com.gameloft.android.GAND.GloftD2SS.installer.utils.CRC;
import com.gameloft.android.GAND.GloftD2SS.installer.utils.DownloadComponent;
import com.gameloft.android.GAND.GloftD2SS.installer.utils.Downloader;
import com.gameloft.android.GAND.GloftD2SS.installer.utils.HttpClient;
import com.gameloft.android.GAND.GloftD2SS.installer.utils.Tracker;
import com.gameloft.android.GAND.GloftD2SS.installer.utils.Tracking;
import com.samsung.zirconia.Zirconia;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.SocketTimeoutException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public class GameInstaller extends Activity implements com.gameloft.android.GAND.GloftD2SS.installer.utils.c, Runnable {
    public static final int LAYOUT_BLACK = 24;
    public static final int LAYOUT_CHECKING_REQUIRED_FILES = 0;
    public static final int LAYOUT_CONFIRM_3G = 1;
    public static final int LAYOUT_CONFIRM_UPDATE = 2;
    public static final int LAYOUT_CONFIRM_WAITING_FOR_WIFI = 3;
    public static final int LAYOUT_DOWNLOAD_ANYTIME = 4;
    public static final int LAYOUT_DOWNLOAD_FILES = 5;
    public static final int LAYOUT_DOWNLOAD_FILES_CANCEL_QUESTION = 7;
    public static final int LAYOUT_DOWNLOAD_FILES_ERROR = 8;
    public static final int LAYOUT_DOWNLOAD_FILES_NO_WIFI_QUESTION = 9;
    public static final int LAYOUT_DOWNLOAD_FILES_QUESTION = 10;
    public static final int LAYOUT_LICENSE_INFO = 13;
    public static final int LAYOUT_LOGO = 14;
    public static final int LAYOUT_NO_DATA_CONNECTION_FOUND = 16;
    public static final int LAYOUT_RETRY_UPDATE_VERSION = 17;
    public static final int LAYOUT_SD_SPACE_INFO = 18;
    public static final int LAYOUT_SEARCHING_FOR_NEW_VERSION = 19;
    public static final int LAYOUT_SEARCHING_FOR_WIFI = 20;
    public static final int LAYOUT_SUCCESS_DOWNLOADED = 21;
    public static final int LAYOUT_UNZIP_FILES = 27;
    public static final int LAYOUT_UNZIP_FILES_CANCEL_QUESTION = 28;
    public static final int LAYOUT_VERIFYING_FILES = 22;
    public static final int LAYOUT_WAITING_FOR_WIFI = 23;
    public static TelephonyManager mDeviceInfo;
    private static AlertDialog m_Dialog;
    public static int m_iDownloadedSize;
    public static long m_iRealRequiredSize;
    public static Downloader m_pDownloader;
    WifiManager aD;
    ConnectivityManager aE;
    WifiManager$WifiLock aF;
    PowerManager$WakeLock aG;
    public DataInputStream aJ;
    public String aR;
    public int al;
    public int am;
    public String ao;
    public int aq;
    public int ar;
    public int as;
    NotificationManager b;
    private Device bS;
    private XPlayer bT;
    private com.gameloft.android.GAND.GloftD2SS.installer.utils.g bV;
    private com.gameloft.android.GAND.GloftD2SS.installer.utils.d bW;
    Vector bc;
    Notification bk;
    PendingIntent bl;
    private ArrayList cc;
    private Handler cj;
    DecimalFormat l;
    AssetManager s;
    HttpClient t;
    public static boolean sbStarted = false;
    public static boolean s_isPauseGame = false;
    public static GameInstaller m_sInstance = null;
    public static String mPreferencesName = "DungeonHunter2Prefs";
    private static boolean sUpdateAPK = true;
    public static String m_portalCode = "";
    public static String sd_folder = "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files";
    public static String DATA_PATH = sd_folder + "/";
    public static String LIBS_PATH = "/data/data/com.gameloft.android.GAND.GloftD2SS/libs/";
    public static boolean s_files_changed = false;
    public static String marketPath = Environment.getExternalStorageDirectory() + "/Android/obb/com.gameloft.android.GAND.GloftD2SS";
    static long slLastIndex = 0;
    public static Boolean isReached = null;
    public static boolean bIsPaused = false;
    private static long startTime = 0;
    private static int leftTapCount = 0;
    private static int rightTapCount = 0;
    private static int TAP_COUNT_MAX = 3;
    private static int m_toastSize = 0;
    private static int m_delayTime = 1500;
    private static int m_toastExtra = 20;
    private static Object m_objectToastLock = new Object();
    private static String m_errorMessage = "";
    private static String m_prevErrorMessage = "";
    private static boolean statePressA = false;
    private static boolean statePressB = false;
    private static boolean statePressC = false;
    private static long pack_biggestFile = -1;
    private static int pack_NoFiles = -1;
    private int br = -1;
    private boolean bs = true;
    private boolean bt = false;
    private final String bu = "http://www.google.com";
    private final String bv = "/data/data/com.gameloft.android.GAND.GloftD2SS/pack.info";
    private boolean bw = false;
    private int bx = 0;
    private final boolean by = false;
    private final boolean bz = false;
    private final boolean bA = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f113a = 7;
    private final int bB = 0;
    private final int bC = 1;
    private final int bD = 2;
    private int bE = 0;
    private boolean bF = false;
    private final int bG = 32768;
    private final int bH = 7176;
    private final String bI = "com.gameloft.android.GAND.GloftD2SS.DungeonHunter2";
    private String bJ = "";
    private ArrayList bK = new ArrayList();
    Vector c = null;
    Vector d = new Vector();
    Vector e = new Vector();
    long f = 0;
    long g = 0;
    long h = 0;
    boolean i = false;
    long j = 0;
    long k = 0;
    final int m = 0;
    final int n = -1;
    final int o = -2;
    final int p = -3;
    final int q = -4;
    final int r = -5;
    private int bL = 0;
    private boolean bM = false;
    private final int bN = 3000;
    private final int bO = 30000;
    private long bP = 0;
    private long bQ = 0;
    boolean u = false;
    public final int v = 0;
    public final int w = 1;
    public final int x = 2;
    public final int y = 3;
    public final int z = 4;
    public final int A = 5;
    public final int B = 6;
    public final int C = 7;
    public final int D = 8;
    public final int E = 9;
    public final int F = 10;
    public final int G = 11;
    public final int H = 12;
    public final int I = 13;
    public final int J = 14;
    public final int K = 19;
    public final int L = 20;
    public final int M = 21;
    public final int N = 23;
    public final int O = 24;
    public final int P = 25;
    public final int Q = 26;
    public final int R = 27;
    public final int S = 28;
    public final int T = 29;
    public final int U = 30;
    public final int V = 31;
    public final int W = 32;
    public final int X = 33;
    public final int Y = 41;
    public final int Z = -1;
    public final int aa = 0;
    public final int ab = 1;
    public final int ac = 2;
    public final int ad = 3;
    public final int ae = 4;
    public final int af = 5;
    public final int ag = 6;
    public final int ah = 7;
    public final int ai = 8;
    public final int aj = 9;
    public final int ak = 10;
    public int an = 0;
    public int at = 0;
    public int au = 1;
    public int av = 2;
    public int aw = 3;
    public final int ax = 0;
    public final int ay = 1;
    public final int az = 2;
    public final int aA = 3;
    public final int aB = 4;
    public int[] aC = {0, 0, 0, 0};
    private int bR = -1;
    public boolean aH = false;
    public boolean aI = false;
    FileOutputStream aK = null;
    int aL = 0;
    int aM = 0;
    com.gameloft.android.GAND.GloftD2SS.installer.utils.f aN = null;
    int aO = 0;
    public boolean aP = false;
    public boolean aQ = false;
    public boolean aS = true;
    public int aT = 0;
    public int aU = 0;
    public int aV = 0;
    public final int aW = 30;
    public boolean aX = false;
    public boolean aY = false;
    public boolean aZ = true;
    int ba = 0;
    NetworkInfo bb = null;
    private boolean bU = false;
    private boolean bX = false;
    private final int bY = 0;
    private final int bZ = 1;
    private final int ca = 2;
    private final int cb = 3;
    public boolean bd = false;
    BroadcastReceiver be = null;
    BroadcastReceiver bf = null;
    public boolean bg = false;
    public boolean bh = false;
    public boolean bi = true;
    private int cd = 0;
    private int ce = -1;
    private int cf = 0;
    private int cg = 0;
    public View$OnClickListener bj = new c(this);
    private long ch = 0;
    private long ci = 1000;
    private int ck = 0;
    public int ap = 0;

    public GameInstaller() {
        SUtils.setContext(this);
    }

    private String A() {
        String overriddenSetting = SUtils.getOverriddenSetting(SUtils.getPreferenceString("SDFolder", "", mPreferencesName) + "/qaTestingConfigs.txt", "DATA_LINK");
        if (overriddenSetting != null) {
            return overriddenSetting;
        }
        this.bt = false;
        String strReadFile = SUtils.ReadFile(2130968576);
        int iIndexOf = strReadFile.indexOf("DYNAMIC:") + 8;
        int iIndexOf2 = strReadFile.indexOf(13, iIndexOf);
        if (iIndexOf2 == -1) {
            iIndexOf2 = strReadFile.length();
        }
        return ((strReadFile.substring(iIndexOf, iIndexOf2) + "?model=" + SUtils.getPhoneModel() + "&device=" + SUtils.getPhoneDevice() + "&product=1196&version=1.0.2") + "&portal=" + m_portalCode).replaceAll("\\s+", "%20");
    }

    private int B() {
        File file;
        this.h = 0L;
        try {
            String preferenceString = SUtils.getPreferenceString("SDFolder", "", mPreferencesName);
            if (preferenceString.contains("com.gameloft.android.GAND.GloftD2SS")) {
                file = new File(preferenceString.substring(0, preferenceString.indexOf("com.gameloft.android.GAND.GloftD2SS")));
            } else {
                file = preferenceString == "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files" ? new File("/sdcard/") : new File(preferenceString);
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            StatFs statFs = new StatFs(file.getAbsolutePath());
            this.g = (int) ((((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks())) / 1048576);
            if (this.g == 0 && !a(0)) {
                this.aC[0] = hasSDCard();
            }
            Iterator it = this.bK.iterator();
            while (it.hasNext()) {
                this.h += ((DownloadComponent) it.next()).f();
            }
            if (this.h > 0) {
                this.h += 0;
            }
            return this.g <= this.h ? 1 : 0;
        } catch (Exception e) {
            return 1;
        }
    }

    private void C() {
        System.out.println("================ finishSuccess");
        setResult(1);
        finish();
    }

    private void D() {
        System.out.println("================ finishFail");
        setResult(2);
        finish();
    }

    private String E() {
        String str;
        String str2 = (((("1") + "0") + "0") + "0") + "8";
        switch (this.bE) {
            case 0:
                str = str2 + "1";
                break;
            case 1:
                str = str2 + "0";
                break;
            case 2:
                str = str2 + "2";
                break;
            default:
                str = str2 + "x";
                break;
        }
        return (str + "-samsung_a_store") + "-1196";
    }

    private void F() {
        this.bg = true;
        if (this.bf == null) {
            this.bi = true;
            this.bf = new l(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.STATE_CHANGE");
            registerReceiver(this.bf, intentFilter);
        }
    }

    private void G() {
        if (this.bf != null) {
            unregisterReceiver(this.bf);
            this.bf = null;
        }
    }

    private static String GetCurrentVersion(String str) {
        try {
            String[] strArrSplit = {""};
            if (!sUpdateAPK) {
                strArrSplit = str.split("SERVER_URL");
            }
            if (sUpdateAPK) {
                strArrSplit = str.split("DOWNLOAD_URL");
            }
            String[] strArrSplit2 = strArrSplit[0].split("VERSION_AVAILABLE");
            return strArrSplit2[1].substring(2, strArrSplit2[1].length() - 2);
        } catch (Exception e) {
            return "3.1.4";
        }
    }

    private static String GetLayoutName(int i) {
        switch (i) {
            case 0:
                return "LAYOUT_CHECKING_REQUIRED_FILES";
            case 1:
                return "LAYOUT_CONFIRM_3G";
            case 2:
                return "LAYOUT_CONFIRM_UPDATE";
            case 3:
                return "LAYOUT_CONFIRM_WAITING_FOR_WIFI";
            case 4:
                return "LAYOUT_DOWNLOAD_ANYTIME";
            case 5:
                return "LAYOUT_DOWNLOAD_FILES";
            case 6:
            case 11:
            case 12:
            case com.kddi.market.a.a.y /* 15 */:
            case 25:
            case XPlayer.S /* 26 */:
            case LAYOUT_UNZIP_FILES /* 27 */:
            case LAYOUT_UNZIP_FILES_CANCEL_QUESTION /* 28 */:
            case 29:
            case 30:
            case Zirconia.EZIRCONIA_CANNOT_CHECK /* 31 */:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            default:
                return "Unknown Layout(" + i + ")";
            case 7:
                return "LAYOUT_DOWNLOAD_FILES_CANCEL_QUESTION";
            case 8:
                return "LAYOUT_DOWNLOAD_FILES_ERROR";
            case 9:
                return "LAYOUT_DOWNLOAD_FILES_NO_WIFI_QUESTION";
            case LAYOUT_DOWNLOAD_FILES_QUESTION /* 10 */:
                return "LAYOUT_DOWNLOAD_FILES_QUESTION";
            case 13:
                return "LAYOUT_LICENSE_INFO";
            case 14:
                return "LAYOUT_LOGO";
            case 16:
                return "LAYOUT_NO_DATA_CONNECTION_FOUND";
            case 17:
                return "LAYOUT_RETRY_UPDATE_VERSION";
            case 18:
                return "LAYOUT_SD_SPACE_INFO";
            case 19:
                return "LAYOUT_SEARCHING_FOR_NEW_VERSION";
            case 20:
                return "LAYOUT_SEARCHING_FOR_WIFI";
            case 21:
                return "LAYOUT_SUCCESS_DOWNLOADED";
            case 22:
                return "LAYOUT_VERIFYING_FILES";
            case 23:
                return "LAYOUT_WAITING_FOR_WIFI";
            case LAYOUT_BLACK /* 24 */:
                return "LAYOUT_MAIN";
            case 41:
                return "GI_STATE_UNZIP_DOWNLOADED_FILES";
        }
    }

    private static String GetUrl(String str) {
        return str.substring(str.indexOf("http"));
    }

    private void H() {
        switch (this.ce) {
            case 1:
                b(2131427334);
                return;
            case 2:
                b(2131427334);
                return;
            case 3:
                b(2131427336);
                return;
            case 4:
                b(2131427332);
                return;
            case 5:
                b(2131427336);
                return;
            case 6:
            case 11:
            case 12:
            case 14:
            case com.kddi.market.a.a.y /* 15 */:
            case 19:
            case 22:
            case LAYOUT_BLACK /* 24 */:
            case 25:
            case XPlayer.S /* 26 */:
            default:
                return;
            case 7:
                b(2131427334);
                return;
            case 8:
                b(2131427334);
                return;
            case 9:
                if (this.bE != 1) {
                    return;
                }
                break;
            case LAYOUT_DOWNLOAD_FILES_QUESTION /* 10 */:
                b(2131427334);
                return;
            case 13:
                b(2131427332);
                return;
            case 16:
                b(2131427334);
                return;
            case 17:
                b(2131427334);
                return;
            case 18:
                b(2131427332);
                return;
            case 20:
                b(2131427336);
                return;
            case 21:
                b(2131427332);
                return;
            case 23:
                break;
            case LAYOUT_UNZIP_FILES /* 27 */:
                b(2131427336);
                return;
        }
        b(2131427334);
    }

    private void I() {
        if (this.b == null) {
            this.b = (NotificationManager) getSystemService("notification");
        }
        this.bl = PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) GameInstaller.class), 0);
        this.bk = new Notification();
        this.bk.icon = bp.icon;
        this.bk.when = System.currentTimeMillis();
        this.bk.contentIntent = this.bl;
    }

    private boolean J() {
        if (new File(DATA_PATH + "InsTime").exists()) {
            String[] strArrSplit = SUtils.ReadFile(DATA_PATH + "InsTime").split("/");
            long j = Long.parseLong(strArrSplit[0]);
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            if (strArrSplit.length > 2 || jCurrentTimeMillis - j < 0) {
                SaveDateLastUpdate(DATA_PATH);
            }
        } else {
            SaveDateLastUpdate(DATA_PATH);
        }
        return false;
    }

    private void K() {
        this.aR = Build.MANUFACTURER + Build.MODEL;
        pack_biggestFile = -1L;
        pack_NoFiles = 0;
        for (DownloadComponent downloadComponent : this.bK) {
            downloadComponent.a(this);
            pack_NoFiles += downloadComponent.m();
            if (pack_biggestFile < downloadComponent.l()) {
                pack_biggestFile = downloadComponent.l();
            }
        }
    }

    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x0008 */
    private boolean L() {
        boolean z = true;
        Iterator it = this.bK.iterator();
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                return z2;
            }
            z = !((DownloadComponent) it.next()).n() ? false : z2;
        }
    }

    private static boolean SaveDateLastUpdate(String str) {
        SUtils.WriteFile(str + "InsTime", String.format("%d/", Long.valueOf(System.currentTimeMillis() / 1000)));
        return true;
    }

    private void a(int i, int i2) {
        this.aC[i] = i2;
    }

    private void a(int i, String str, int i2, int i3) {
        if (i == 12) {
            try {
                if (System.currentTimeMillis() - this.ch <= this.ci) {
                    return;
                }
            } catch (Exception e) {
                return;
            }
        }
        if (this.bk == null) {
            if (this.b == null) {
                this.b = (NotificationManager) getSystemService("notification");
            }
            this.bl = PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) GameInstaller.class), 0);
            this.bk = new Notification();
            this.bk.icon = bp.icon;
            this.bk.when = System.currentTimeMillis();
            this.bk.contentIntent = this.bl;
        }
        switch (i) {
            case 12:
                this.bk.contentView = new RemoteViews(getApplicationContext().getPackageName(), 2130903048);
                this.bk.contentView.setProgressBar(2131427368, i2, i3, false);
                this.bk.contentView.setTextViewText(2131427367, str);
                this.bk.flags = 18;
                break;
            case 13:
                this.bk.contentView = new RemoteViews(getApplicationContext().getPackageName(), 2130903047);
                this.bk.contentView.setTextViewText(2131427367, getString(2131034183));
                this.bk.flags = 16;
                e(getString(2131034183));
                break;
            case 14:
                this.bk.contentView = new RemoteViews(getApplicationContext().getPackageName(), 2130903047);
                this.bk.contentView.setTextViewText(2131427367, getString(2131034184));
                this.bk.flags = 16;
                e(getString(2131034184));
                break;
        }
        this.bk.contentView.setImageViewResource(2131427365, bp.icon);
        this.bk.contentView.setTextViewText(2131427366, getString(bu.app_name));
        this.ch = System.currentTimeMillis();
        this.b.notify(7176, this.bk);
    }

    private void a(int i, boolean z) {
        runOnUiThread(new h(this, i, z));
    }

    private void a(long j) {
        if (sd_folder.equals("")) {
            for (Pair pair : this.bc) {
                if (((Long) pair.second).longValue() >= j) {
                    sd_folder = (String) pair.first;
                    SUtils.setPreference("SDFolder", sd_folder, mPreferencesName);
                    DATA_PATH = sd_folder + "/";
                    break;
                }
            }
        }
        if (sd_folder.equals("")) {
            sd_folder = "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files";
            DATA_PATH = sd_folder + "/";
            SUtils.setPreference("SDFolder", sd_folder, mPreferencesName);
        }
    }

    private void a(Context context) {
        this.bf = new l(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        context.registerReceiver(this.bf, intentFilter);
    }

    private void a(String str, String str2) {
        try {
            String str3 = str2 + "/pack.info";
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(str));
            com.gameloft.android.GAND.GloftD2SS.installer.utils.g gVar = new com.gameloft.android.GAND.GloftD2SS.installer.utils.g(this);
            int i = dataInputStream.readInt();
            FileOutputStream fileOutputStream = new FileOutputStream(str3);
            int i2 = 0;
            while (i2 < i) {
                int i3 = i - i2;
                if (i3 > 32768) {
                    i3 = 32768;
                }
                byte[] bArr = new byte[i3];
                dataInputStream.readFully(bArr);
                fileOutputStream.write(bArr);
                fileOutputStream.flush();
                i2 = i3 + i2;
            }
            fileOutputStream.close();
            Vector vectorA = gVar.a(str3);
            int size = vectorA.size();
            com.gameloft.android.GAND.GloftD2SS.installer.utils.b bVar = new com.gameloft.android.GAND.GloftD2SS.installer.utils.b(dataInputStream);
            byte[] bArr2 = new byte[32768];
            for (int i4 = 0; i4 < size && !this.u; i4++) {
                com.gameloft.android.GAND.GloftD2SS.installer.utils.f fVar = (com.gameloft.android.GAND.GloftD2SS.installer.utils.f) vectorA.elementAt(i4);
                new File(str2 + "/" + fVar.c());
                bVar.a(fVar.f());
                com.gameloft.android.GAND.GloftD2SS.installer.utils.l lVar = new com.gameloft.android.GAND.GloftD2SS.installer.utils.l(bVar);
                String str4 = str2 + "/" + fVar.a().replace(".\\\\", "").replace(".\\", "").replace("\\", "/") + "/" + lVar.getNextEntry().getName();
                String parent = str4.endsWith("/") ? str4 : new File(str4).getParent();
                if (parent != null) {
                    File file = new File(parent);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                }
                FileOutputStream fileOutputStream2 = new FileOutputStream(str4);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream2, bArr2.length);
                int i5 = 0;
                while (true) {
                    int i6 = lVar.read(bArr2, 0, 32768);
                    if (i6 < 0) {
                        break;
                    }
                    i5 += i6;
                    bufferedOutputStream.write(bArr2, 0, i6);
                }
                this.ba = (i5 / 1024) + this.ba;
                if (!bIsPaused) {
                    runOnUiThread(new a(this));
                }
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
                fileOutputStream2.close();
                lVar.closeEntry();
                bVar.b();
                bVar.a();
            }
        } catch (Exception e) {
        }
    }

    private void a(ArrayList arrayList) {
        this.cc = arrayList;
    }

    private boolean a(String str) {
        try {
            if (this.t == null) {
                this.t = new HttpClient();
            } else {
                this.t.b();
            }
            InputStream inputStreamA = this.t.a(str);
            if (inputStreamA == null) {
                this.bL = -2;
                addErrorNumber(v.f157a);
                return false;
            }
            if (this.aJ != null) {
                this.aJ.close();
                this.aJ = null;
            }
            this.aJ = new DataInputStream(inputStreamA);
            return true;
        } catch (FileNotFoundException e) {
            addErrorNumber(v.c);
            this.bL = -2;
            i();
            return false;
        } catch (SocketTimeoutException e2) {
            addErrorNumber(v.b);
            HttpClient httpClient = this.t;
            HttpClient.incrementConnectionTimeout();
            i();
            return false;
        } catch (Exception e3) {
            addErrorNumber(v.d);
            this.bL = -1;
            i();
            return false;
        }
    }

    private boolean a(String str, String str2, String str3, String str4) {
        String str5 = str4 + "/" + str3 + "/";
        try {
            Enumeration<? extends ZipEntry> enumerationEntries = new ZipFile(str2 + "/" + str).entries();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                String str6 = str5 + zipEntryNextElement.getName();
                File file = new File(str6);
                new File(file.getParent()).mkdirs();
                if (!str6.endsWith("/")) {
                    this.ba = (int) (((long) this.ba) + file.length());
                    boolean z = !CRC.isValidChecksum(file.getAbsolutePath(), zipEntryNextElement.getCrc());
                    if (file.exists() && !file.isDirectory() && (file.length() != zipEntryNextElement.getSize() || z)) {
                        file.delete();
                    }
                    p();
                }
            }
            return true;
        } catch (IOException e) {
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    private boolean a(String str, String str2, String str3, String str4, boolean z) {
        boolean z2 = false;
        String str5 = str4 + "/" + str3 + "/";
        try {
            ZipFile zipFile = new ZipFile(str2 + "/" + str);
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            while (enumerationEntries.hasMoreElements() && !this.u) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                String str6 = str5 + zipEntryNextElement.getName();
                File file = new File(str6);
                new File(file.getParent()).mkdirs();
                if (file.exists() && !file.isDirectory()) {
                    this.ba = (int) ((file.length() / 1024) + ((long) this.ba));
                } else if (!str6.endsWith("/")) {
                    z2 = true;
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(zipEntryNextElement));
                    byte[] bArr = new byte[16384];
                    FileOutputStream fileOutputStream = new FileOutputStream(str6);
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream, bArr.length);
                    while (true) {
                        int i = bufferedInputStream.read(bArr, 0, bArr.length);
                        if (i == -1 || this.u) {
                            break;
                        }
                        bufferedOutputStream.write(bArr, 0, i);
                        this.ba = (i / 1024) + this.ba;
                        p();
                    }
                    p();
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    fileOutputStream.close();
                    bufferedInputStream.close();
                }
            }
            return z2;
        } catch (IOException e) {
            return z2;
        } catch (Exception e2) {
            return z2;
        }
    }

    static /* synthetic */ boolean access$000(GameInstaller gameInstaller) {
        return gameInstaller.bX;
    }

    static /* synthetic */ boolean access$002(GameInstaller gameInstaller, boolean z) {
        gameInstaller.bX = z;
        return z;
    }

    static /* synthetic */ void access$100(GameInstaller gameInstaller) {
        gameInstaller.o();
    }

    static /* synthetic */ int access$1000(GameInstaller gameInstaller) {
        return gameInstaller.bx;
    }

    static /* synthetic */ int access$1100(GameInstaller gameInstaller) {
        return gameInstaller.bR;
    }

    static /* synthetic */ void access$200(GameInstaller gameInstaller, int i) {
        gameInstaller.c(i);
    }

    static /* synthetic */ ArrayList access$300(GameInstaller gameInstaller) {
        return gameInstaller.bK;
    }

    static /* synthetic */ int access$402(GameInstaller gameInstaller, int i) {
        gameInstaller.cf = i;
        return i;
    }

    static /* synthetic */ int access$500(GameInstaller gameInstaller) {
        return gameInstaller.ce;
    }

    static /* synthetic */ int access$502(GameInstaller gameInstaller, int i) {
        gameInstaller.ce = i;
        return i;
    }

    static /* synthetic */ int access$600(GameInstaller gameInstaller) {
        return gameInstaller.cg;
    }

    static /* synthetic */ int access$602(GameInstaller gameInstaller, int i) {
        gameInstaller.cg = i;
        return i;
    }

    static /* synthetic */ void access$700(GameInstaller gameInstaller, int i, boolean z) {
        gameInstaller.a(i, z);
    }

    static /* synthetic */ void access$800(GameInstaller gameInstaller, int i, boolean z) {
        gameInstaller.b(i, z);
    }

    static /* synthetic */ int access$900(GameInstaller gameInstaller) {
        return gameInstaller.bE;
    }

    /* JADX DEBUG: TODO: convert one arg to string using `String.valueOf()`, args: r3v0 */
    public static void addErrorNumber(int i) {
        synchronized (m_objectToastLock) {
            if (!m_errorMessage.contains(new StringBuilder().append(i).toString())) {
                m_errorMessage += " " + i;
            }
        }
    }

    private void b(int i, int i2) {
        this.cc = new ArrayList();
        this.cc.clear();
        runOnUiThread(new b(this, i, i2, getApplicationContext()));
    }

    private void b(int i, boolean z) {
        runOnUiThread(new i(this, i, z));
    }

    private void b(String str, String str2) {
        this.cj.post(new e(this, str2, null));
    }

    private boolean b(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        new j(this, str).start();
        while (isReached == null && System.currentTimeMillis() - jCurrentTimeMillis < 2000) {
        }
        if (isReached == null) {
            isReached = false;
        }
        return isReached.booleanValue();
    }

    private long c(String str) {
        boolean z = true;
        try {
            File file = new File(str + "/");
            if (file.exists()) {
                z = false;
            } else {
                file.mkdirs();
            }
            StatFs statFs = new StatFs(str);
            this.g = (int) ((((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks())) / 1048576);
            if (z || file.list().length == 0) {
                if (file.getAbsolutePath().endsWith("/files") || file.getAbsolutePath().endsWith("/files/")) {
                    file.delete();
                    new File(file.getAbsolutePath().substring(0, file.getAbsolutePath().lastIndexOf("/files"))).delete();
                } else {
                    file.delete();
                }
            }
            this.aC[0] = 1;
            return this.g;
        } catch (Exception e) {
            return 0L;
        }
    }

    private void c() {
        for (int i = 0; i < this.aC.length; i++) {
            this.aC[i] = 0;
        }
    }

    private void c(int i) {
        while (true) {
            if (i == 1 || i == 14 || i == 5 || i == 31) {
                clearErrorHistory();
            }
            switch (i) {
                case 1:
                    b(2130903040, 13);
                    break;
                case 3:
                    this.bP = System.currentTimeMillis();
                    b(2130903044, 14);
                    if (this.bJ == "") {
                        j();
                    }
                    Tracking.onLaunchGame(1);
                    this.bE = t();
                    Tracker.launchInstallerTracker(this.bE, u());
                    break;
                case 4:
                    b(2130903040, 18);
                    break;
                case 5:
                    b(2130903042, 9);
                    break;
                case 6:
                    PackageManager packageManager = getApplicationContext().getPackageManager();
                    if ((this.bE == 0 || this.bE == 2) && packageManager.checkPermission("android.permission.CHANGE_WIFI_STATE", "com.gameloft.android.GAND.GloftD2SS") == 0) {
                        b(2130903042, 20);
                    } else {
                        try {
                            Intent intent = m_portalCode.equals("amazon") ? new Intent("android.settings.WIRELESS_SETTINGS") : new Intent("android.settings.WIFI_SETTINGS");
                            intent.setFlags(268435456);
                            startActivity(intent);
                            this.bF = true;
                        } catch (Exception e) {
                        }
                    }
                    break;
                case 7:
                    this.bg = true;
                    if (this.bf == null) {
                        this.bi = true;
                        this.bf = new l(this);
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
                        registerReceiver(this.bf, intentFilter);
                    }
                    this.bQ = System.currentTimeMillis();
                    b(2130903040, 23);
                    break;
                case 8:
                    b(2130903040, 3);
                    break;
                case 9:
                    b(2130903040, 10);
                    break;
                case LAYOUT_DOWNLOAD_FILES_QUESTION /* 10 */:
                    b(2130903040, 1);
                    break;
                case 11:
                    b(2130903040, 16);
                    break;
                case 13:
                    b(2130903042, 21);
                    if (this.bg || !this.bd) {
                        if (this.bd) {
                            Intent intent2 = getIntent();
                            try {
                                intent2.addFlags(4194304);
                                intent2.addFlags(com.gameloft.android.GAND.GloftD2SS.installer.utils.c.bm);
                                intent2.addFlags(536870912);
                                startActivity(intent2);
                                break;
                            } catch (Exception e2) {
                            }
                        } else {
                            a(13, "", 0, 0);
                        }
                    }
                    if (a(3)) {
                        saveVersion("102");
                    }
                    break;
                case 14:
                    if (this.ce != 4) {
                        b(2130903040, 8);
                        new m(this).start();
                        if (this.bg || !this.bd) {
                            if (!this.bd) {
                                a(14, "", 0, 0);
                            } else {
                                Intent intent3 = getIntent();
                                try {
                                    intent3.addFlags(4194304);
                                    intent3.addFlags(com.gameloft.android.GAND.GloftD2SS.installer.utils.c.bm);
                                    intent3.addFlags(536870912);
                                    startActivity(intent3);
                                } catch (Exception e3) {
                                }
                            }
                        }
                    }
                    break;
                case 19:
                    b(2130903040, 4);
                    break;
                case 20:
                    b(2130903041, 22);
                    break;
                case 21:
                    if (!this.aQ && this.aS) {
                        i = 23;
                    }
                    break;
                case LAYOUT_BLACK /* 24 */:
                    b(2130903042, 19);
                    break;
                case LAYOUT_UNZIP_FILES /* 27 */:
                    b(2130903040, 2);
                    break;
                case LAYOUT_UNZIP_FILES_CANCEL_QUESTION /* 28 */:
                    b(2130903040, 17);
                    break;
            }
        }
        this.ar = this.aq;
        this.aq = i;
        if (this.al != 5) {
            this.al = -1;
        }
    }

    private static void cancelDialog() {
        if (m_Dialog != null) {
            m_Dialog.cancel();
        }
    }

    private static void clearErrorHistory() {
        m_prevErrorMessage = m_errorMessage;
        m_errorMessage = "";
    }

    private static void createNoMedia(String str) {
        if (str == null) {
            return;
        }
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(str + "/.nomedia");
            if (file2.exists()) {
                return;
            }
            file2.createNewFile();
        } catch (Exception e) {
        }
    }

    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x0008 */
    private int d() {
        int iG = 0;
        Iterator it = this.bK.iterator();
        while (true) {
            int i = iG;
            if (!it.hasNext()) {
                return i;
            }
            iG = ((DownloadComponent) it.next()).g() + i;
        }
    }

    /* JADX DEBUG: TODO: convert one arg to string using `String.valueOf()`, args: (wrap long:ARITH) */
    private String d(String str) {
        return str.replace("$", new StringBuilder().append((this.f / 1048576) + 1).toString());
    }

    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x0008 */
    private int e() {
        int iH = 0;
        Iterator it = this.bK.iterator();
        while (true) {
            int i = iH;
            if (!it.hasNext()) {
                return i;
            }
            iH = ((DownloadComponent) it.next()).h() + i;
        }
    }

    private void e(String str) {
        this.cj.post(new e(this, str, null));
    }

    private int f() {
        boolean z;
        if (this.aq == 20) {
            findViewById(2131427338);
            Iterator it = this.bK.iterator();
            while (it.hasNext()) {
                ((DownloadComponent) it.next()).h();
            }
            this.e.size();
        }
        this.j = 0L;
        this.k = 0L;
        this.h = 0L;
        m_iRealRequiredSize = 0L;
        this.ba = 0;
        long jF = 0;
        int i = 0;
        for (DownloadComponent downloadComponent : this.bK) {
            if (downloadComponent.a(this.i) == 1) {
                m_iRealRequiredSize += downloadComponent.e();
                i = 1;
            }
            this.j += downloadComponent.i();
            this.k += downloadComponent.j();
            if (!downloadComponent.k()) {
                jF += downloadComponent.f();
            }
            if (this.aq == 20) {
                this.ba = downloadComponent.h() + this.ba;
                p();
            }
        }
        if (this.aq == 20) {
            for (int i2 = 0; i2 < this.e.size(); i2++) {
                String strB = ((com.gameloft.android.GAND.GloftD2SS.installer.utils.f) this.e.get(i2)).b();
                Iterator it2 = this.bK.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
                Iterator it3 = this.bK.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        z = false;
                        break;
                    }
                    if (((DownloadComponent) it3.next()).a(strB)) {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    File file = new File((strB.startsWith("main") || strB.startsWith("patch")) ? marketPath + ((com.gameloft.android.GAND.GloftD2SS.installer.utils.f) this.e.get(i2)).a().replace(".\\\\", "").replace(".\\", "").replace("\\", "/") + "/" + ((com.gameloft.android.GAND.GloftD2SS.installer.utils.f) this.e.get(i2)).b() : DATA_PATH + ((com.gameloft.android.GAND.GloftD2SS.installer.utils.f) this.e.get(i2)).a().replace(".\\\\", "").replace(".\\", "").replace("\\", "/") + "/" + ((com.gameloft.android.GAND.GloftD2SS.installer.utils.f) this.e.get(i2)).b());
                    if (file.exists()) {
                        file.delete();
                    }
                }
                this.ba++;
                p();
            }
        }
        if (jF > 0) {
            a(jF);
        }
        return i;
    }

    private void f(String str) {
        this.bK.add(new DownloadComponent(str, ""));
    }

    private boolean g() {
        boolean z = false;
        if (new File(DATA_PATH).exists()) {
            String strReadFile = SUtils.ReadFile("/data/data/com.gameloft.android.GAND.GloftD2SS/prefs/gl_ver");
            z = strReadFile == null || strReadFile.length() <= 0 || strReadFile.compareTo("102") != 0;
            if (z) {
                SUtils.setPreference("ZipHasCRCtest", true, mPreferencesName);
            }
        }
        return z;
    }

    private static String getSDFolder() {
        return sd_folder;
    }

    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x0007 */
    private static long getZipRealSpace(ZipFile zipFile) {
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        long size = 0;
        while (true) {
            long j = size;
            if (!enumerationEntries.hasMoreElements()) {
                return j;
            }
            size = j + enumerationEntries.nextElement().getSize();
        }
    }

    private void h() {
        saveVersion("102");
    }

    private static int hasNativeError() {
        return 0;
    }

    private static int hasSDCard() {
        String externalStorageState = Environment.getExternalStorageState();
        return ("mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState)) ? 0 : 1;
    }

    private void i() {
        try {
            if (this.aJ != null) {
                this.aJ.close();
                this.aJ = null;
            }
            if (this.aK != null) {
                this.aK.close();
                this.aK = null;
            }
            if (this.t != null) {
                this.t.b();
            }
        } catch (Exception e) {
        }
    }

    public static boolean isAirplaneModeOn(Context context) {
        return Settings$System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    private static boolean isEnoughInternalSpace() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        statFs.getBlockSize();
        statFs.getAvailableBlocks();
        return true;
    }

    private static boolean isKoreanOperator() {
        return mDeviceInfo.getNetworkOperatorName().toLowerCase().equals("SKTelecom") || mDeviceInfo.getNetworkOperatorName().toLowerCase().equals("olleh") || mDeviceInfo.getNetworkOperatorName().toLowerCase().equals("AT&T") || mDeviceInfo.getNetworkOperatorName().toLowerCase().equals("LG U+");
    }

    private void j() {
        String overriddenSetting = SUtils.getOverriddenSetting(SUtils.getPreferenceString("SDFolder", "", mPreferencesName) + "/qaTestingConfigs.txt", "DATA_LINK");
        if (overriddenSetting == null) {
            this.bt = false;
            String strReadFile = SUtils.ReadFile(2130968576);
            int iIndexOf = strReadFile.indexOf("DYNAMIC:") + 8;
            int iIndexOf2 = strReadFile.indexOf(13, iIndexOf);
            if (iIndexOf2 == -1) {
                iIndexOf2 = strReadFile.length();
            }
            overriddenSetting = ((strReadFile.substring(iIndexOf, iIndexOf2) + "?model=" + SUtils.getPhoneModel() + "&device=" + SUtils.getPhoneDevice() + "&product=1196&version=1.0.2") + "&portal=" + m_portalCode).replaceAll("\\s+", "%20");
        }
        this.bJ = overriddenSetting;
        System.out.println("SERVER_URL: " + this.bJ);
    }

    private boolean k() {
        if (SUtils.getPreferenceString("SDFolder", "", mPreferencesName).equals("")) {
            long zipRealSpace = 0;
            for (DownloadComponent downloadComponent : this.bK) {
                try {
                    zipRealSpace += getZipRealSpace(new ZipFile(((downloadComponent.f137a.startsWith("main") || downloadComponent.f137a.startsWith("patch")) ? marketPath : DATA_PATH) + "/" + downloadComponent.f137a));
                } catch (Exception e) {
                }
            }
            if (zipRealSpace > 0) {
                a(zipRealSpace / 1048576);
            }
        }
        String preferenceString = SUtils.getPreferenceString("SDFolder", "", mPreferencesName);
        File file = preferenceString.contains("com.gameloft.android.GAND.GloftD2SS") ? new File(preferenceString.substring(0, preferenceString.indexOf("com.gameloft.android.GAND.GloftD2SS"))) : preferenceString == "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files" ? new File("/sdcard/") : new File(preferenceString);
        if (!file.exists()) {
            file.mkdirs();
        }
        StatFs statFs = new StatFs(file.getAbsolutePath());
        long blockSize = ((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks());
        this.g = (int) (blockSize / 1048576);
        long size = 0;
        for (DownloadComponent downloadComponent2 : this.bK) {
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = new ZipFile(((downloadComponent2.f137a.startsWith("main") || downloadComponent2.f137a.startsWith("patch")) ? marketPath : DATA_PATH) + "/" + downloadComponent2.f137a).entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    File file2 = new File(DATA_PATH + "/" + zipEntryNextElement.getName());
                    if (file2.exists()) {
                        long size2 = zipEntryNextElement.getSize() - file2.length();
                        size = size2 > 0 ? size + size2 : size;
                    } else {
                        size += zipEntryNextElement.getSize();
                    }
                }
            } catch (IOException e2) {
            }
        }
        if (size < blockSize) {
            return true;
        }
        this.j = size;
        this.h = (int) (size / 1048576);
        return false;
    }

    private void l() {
        if (this.al == -1) {
            if (this.aq != 12) {
                if (this.al != 5) {
                    this.al = 0;
                }
                try {
                    Thread.sleep(50L);
                    return;
                } catch (Exception e) {
                    return;
                }
            }
            if (this.ar != 9 && this.ar != 10) {
                if (this.al != 5) {
                    this.al = 0;
                    return;
                }
                return;
            }
            this.an = this.d.size();
            this.al = 6;
        }
        switch (this.aq) {
            case 0:
                c(2);
                break;
            case 2:
                if (!this.aY) {
                    this.aY = true;
                    if (this.bJ.equals("")) {
                        j();
                    }
                    this.bK.add(new DownloadComponent(this.bJ, ""));
                    for (int i = 0; i < this.aC.length; i++) {
                        this.aC[i] = 0;
                    }
                    String overriddenSetting = SUtils.getOverriddenSetting(DATA_PATH + "qaTestingConfigs.txt", "SKIP_VALIDATION");
                    if (overriddenSetting == null || !overriddenSetting.equals("1")) {
                        K();
                        this.ap = 0;
                        if (e() <= 0) {
                            c(3);
                        } else {
                            this.aC[0] = hasSDCard();
                            this.aC[3] = g() ? 1 : 0;
                            this.aC[2] = f();
                            if (a(2)) {
                                this.aC[1] = B();
                            }
                            if (a(0) || a(1) || a(2) || a(3)) {
                                c(3);
                            } else {
                                c(21);
                            }
                        }
                    } else {
                        c(21);
                        this.bL = 0;
                        this.aQ = true;
                        this.aS = true;
                    }
                }
                break;
            case 3:
                if (System.currentTimeMillis() - this.bP > 3000) {
                    s_files_changed = true;
                    if (e() <= 0) {
                        if (!u()) {
                            addErrorNumber(s.b);
                            c(5);
                        } else if (!u() || b(this.bJ)) {
                            c(12);
                        } else {
                            addErrorNumber(q.b);
                            c(14);
                        }
                    } else if (a(0) || a(1)) {
                        c(4);
                    } else if (a(3)) {
                        c(20);
                    } else if (!u()) {
                        addErrorNumber(s.f133a);
                        c(5);
                    } else if (!u() || b(this.bJ)) {
                        c(12);
                    } else {
                        addErrorNumber(q.f131a);
                        c(14);
                    }
                }
                break;
            case 5:
                if (this.al == 0) {
                    if (this.bE == 0 || this.bE == 2) {
                        a(2131427334, true);
                        b(2131427341, false);
                    }
                    this.al = 1;
                }
                break;
            case 6:
                if ((this.bE == 0 || this.bE == 2) && getApplicationContext().getPackageManager().checkPermission("android.permission.CHANGE_WIFI_STATE", "com.gameloft.android.GAND.GloftD2SS") == 0) {
                    int iV = v();
                    if (this.bg) {
                        if (iV > 0) {
                            if (this.bf != null) {
                                unregisterReceiver(this.bf);
                                this.bf = null;
                            }
                        } else if (iV < 0) {
                            c(7);
                        }
                    } else if (iV < 0) {
                        if (this.ar == 8) {
                            c(7);
                        } else {
                            c(8);
                        }
                    }
                    break;
                } else if (this.bF && u()) {
                    c(12);
                    this.bF = false;
                    break;
                }
                break;
            case 7:
                if (this.bd && System.currentTimeMillis() - this.bQ > 30000) {
                    moveTaskToBack(true);
                    break;
                }
                break;
            case 12:
                if (this.al == 0) {
                    this.ba = 0;
                    this.aM = 0;
                    this.al = 2;
                } else {
                    m();
                }
                break;
            case 13:
                if (this.al == 0) {
                    if (this.aX) {
                        Tracker.downloadFinishTracker(this.bE, this.bR == 0);
                        a(2131427332, true);
                        b(2131427341, false);
                        this.aX = false;
                        o();
                    }
                    this.al = 1;
                }
                break;
            case 20:
                this.i = true;
                if (L()) {
                    K();
                }
                int iF = f();
                if (d() > 0) {
                    this.i = false;
                    saveVersion("102");
                    this.aC[0] = hasSDCard();
                    this.aC[2] = iF;
                    this.aC[1] = B();
                    if (a(0) || a(1)) {
                        c(4);
                    } else {
                        c(9);
                    }
                } else {
                    saveVersion("102");
                    c(21);
                }
                break;
            case 23:
            case LAYOUT_BLACK /* 24 */:
            case 25:
            case LAYOUT_UNZIP_FILES /* 27 */:
            case LAYOUT_UNZIP_FILES_CANCEL_QUESTION /* 28 */:
            case 29:
            case 30:
                r();
                break;
            case 41:
                this.ba = 0;
                SUtils.getPreferenceString("ExtraFile", "", mPreferencesName);
                SUtils.getPreferenceString("MainFileName", "", "ExpansionPrefs");
                SUtils.getPreferenceString("PatchFileName", "", "ExpansionPrefs");
                if (SUtils.getPreferenceBoolean("ZipHasCRCtest", false, mPreferencesName)) {
                    b(2130903041, 22);
                    for (DownloadComponent downloadComponent : this.bK) {
                        if (downloadComponent.f137a.startsWith("main")) {
                            a(downloadComponent.f137a, marketPath, "", DATA_PATH);
                        }
                    }
                    for (DownloadComponent downloadComponent2 : this.bK) {
                        if (downloadComponent2.f137a.startsWith("patch")) {
                            a(downloadComponent2.f137a, marketPath, "", DATA_PATH);
                        }
                    }
                    for (DownloadComponent downloadComponent3 : this.bK) {
                        if (!downloadComponent3.f137a.startsWith("main") && !downloadComponent3.f137a.startsWith("patch")) {
                            a(downloadComponent3.f137a, DATA_PATH, "", DATA_PATH);
                        }
                    }
                }
                this.ba = 0;
                b(2130903041, 27);
                for (DownloadComponent downloadComponent4 : this.bK) {
                    if (!downloadComponent4.f137a.startsWith("main") && !downloadComponent4.f137a.startsWith("patch")) {
                        a(downloadComponent4.f137a, DATA_PATH, "", DATA_PATH, false);
                    }
                }
                for (DownloadComponent downloadComponent5 : this.bK) {
                    if (downloadComponent5.f137a.startsWith("patch")) {
                        a(downloadComponent5.f137a, marketPath, "", DATA_PATH, false);
                    }
                }
                for (DownloadComponent downloadComponent6 : this.bK) {
                    if (downloadComponent6.f137a.startsWith("main")) {
                        a(downloadComponent6.f137a, marketPath, "", DATA_PATH, false);
                    }
                }
                SUtils.setPreference("ZipHasCRCtest", false, mPreferencesName);
                if (!this.u) {
                    this.aS = true;
                    this.bL = 0;
                    c(21);
                }
                break;
        }
    }

    private static void loadPreferences$552c4e01() {
    }

    private void m() {
        switch (this.al) {
            case 2:
                n();
                this.t = new HttpClient();
                this.bL = 0;
                this.al = 10;
                b(2130903042, 0);
                break;
            case 3:
                if (!a(this.bJ)) {
                    addErrorNumber(r.d);
                    c(14);
                    if (this.t != null) {
                        this.t.b();
                        this.t = null;
                    }
                } else if (L()) {
                    K();
                    this.al = 8;
                } else {
                    addErrorNumber(r.c);
                    c(14);
                }
                break;
            case 5:
            case 7:
                if ((this.bR == 1 && !u()) || (this.bR == 0 && (u() || !w()))) {
                    Iterator it = this.bK.iterator();
                    while (it.hasNext()) {
                        ((DownloadComponent) it.next()).v();
                    }
                    addErrorNumber(s.g);
                    c(14);
                    return;
                }
                Iterator it2 = this.bK.iterator();
                while (it2.hasNext()) {
                    ((DownloadComponent) it2.next()).r();
                }
                m_iDownloadedSize = 0;
                Iterator it3 = this.bK.iterator();
                while (it3.hasNext()) {
                    m_iDownloadedSize = ((int) ((DownloadComponent) it3.next()).t()) + m_iDownloadedSize;
                }
                this.ba = m_iDownloadedSize >> 10;
                Iterator it4 = this.bK.iterator();
                boolean z = true;
                while (it4.hasNext()) {
                    z = !((DownloadComponent) it4.next()).s() ? false : z;
                }
                if (z) {
                    c(13);
                }
                Iterator it5 = this.bK.iterator();
                boolean z2 = false;
                while (it5.hasNext()) {
                    z2 = ((DownloadComponent) it5.next()).u() ? true : z2;
                }
                if (z2) {
                    addErrorNumber(p.f130a);
                    c(14);
                }
                break;
                break;
            case 6:
                n();
                for (DownloadComponent downloadComponent : this.bK) {
                    if (downloadComponent.a().startsWith("patch") || downloadComponent.a().startsWith("main")) {
                        downloadComponent.b(marketPath);
                    } else {
                        downloadComponent.b(sd_folder);
                    }
                }
                for (DownloadComponent downloadComponent2 : this.bK) {
                    if (downloadComponent2.d() != SUtils.getPreferenceInt("CurrentVersion" + downloadComponent2.a(), 0, mPreferencesName)) {
                        downloadComponent2.c();
                        SUtils.setPreference("CurrentVersion" + downloadComponent2.a(), Integer.valueOf(downloadComponent2.d()), mPreferencesName);
                        SUtils.setPreference("IsGenericBuild" + downloadComponent2.a(), Boolean.valueOf(downloadComponent2.b()), mPreferencesName);
                    }
                }
                this.al = 7;
                break;
            case 8:
                this.ap = 0;
                this.aC[0] = hasSDCard();
                this.aC[3] = g() ? 1 : 0;
                this.aC[2] = f();
                if (a(2)) {
                    this.aC[1] = B();
                }
                if (e() <= 0) {
                    addErrorNumber(r.b);
                    c(14);
                } else if (a(0) || a(1)) {
                    c(4);
                } else if (a(3)) {
                    c(20);
                } else if (!a(2)) {
                    this.al = 9;
                } else if (d() <= 0) {
                    addErrorNumber(r.f132a);
                    c(14);
                } else {
                    c(9);
                }
                break;
            case 9:
                for (DownloadComponent downloadComponent3 : this.bK) {
                    if (downloadComponent3.d() != SUtils.getPreferenceInt("CurrentVersion" + downloadComponent3.a(), 0, mPreferencesName)) {
                        downloadComponent3.c();
                        SUtils.setPreference("CurrentVersion" + downloadComponent3.a(), Integer.valueOf(downloadComponent3.d()), mPreferencesName);
                        SUtils.setPreference("IsGenericBuild" + downloadComponent3.a(), Boolean.valueOf(downloadComponent3.b()), mPreferencesName);
                    }
                }
                SaveDateLastUpdate(DATA_PATH);
                c(13);
                break;
            case LAYOUT_DOWNLOAD_FILES_QUESTION /* 10 */:
                if (this.bJ.equals("")) {
                    j();
                }
                if (this.bt) {
                    this.br = 1;
                    this.bs = false;
                    for (DownloadComponent downloadComponent4 : this.bK) {
                        downloadComponent4.c();
                        SUtils.setPreference("CurrentVersion" + downloadComponent4.a(), Integer.valueOf(this.br), mPreferencesName);
                        SUtils.setPreference("IsGenericBuild" + downloadComponent4.a(), Boolean.valueOf(this.bs), mPreferencesName);
                    }
                    this.al = 3;
                } else {
                    for (DownloadComponent downloadComponent5 : this.bK) {
                        if (downloadComponent5.o()) {
                            downloadComponent5.p();
                            if (downloadComponent5.d() != SUtils.getPreferenceInt("CurrentVersion" + downloadComponent5.a(), 0, mPreferencesName)) {
                                downloadComponent5.c();
                                SUtils.setPreference("CurrentVersion" + downloadComponent5.a(), Integer.valueOf(downloadComponent5.d()), mPreferencesName);
                                SUtils.setPreference("IsGenericBuild" + downloadComponent5.a(), Boolean.valueOf(downloadComponent5.b()), mPreferencesName);
                            }
                        }
                    }
                    this.al = 3;
                }
                break;
        }
        if (this.bg && !this.bd && this.aq == 14) {
            this.ap = 0;
            f();
            i();
            c(7);
        }
        p();
        if (this.aq == 12) {
            if (this.aq != 12 || this.al == 7 || (this.al == 5 && bIsPaused)) {
                float f = (float) (((this.k / 1024.0d) + ((double) this.ba)) / 1024.0d);
                float f2 = (float) (this.j / 1048576.0d);
                if (f > f2) {
                    f = f2;
                }
                String strReplace = getString(2131034192).replace("{SIZE}", this.l.format(f)).replace("{TOTAL_SIZE}", this.l.format(f2));
                if (bIsPaused || this.al == 5) {
                    if (bIsPaused) {
                        a(12, strReplace, (int) ((this.j / 1024) + 1), ((int) (this.k / 1024)) + this.ba);
                    }
                } else {
                    runOnUiThread(new g(this, strReplace));
                }
            }
        }
    }

    private void n() {
        if (this.bR != 0) {
            this.bX = isAirplaneModeOn(this);
            if (this.aF == null) {
                this.aF = this.aD.createWifiLock(1, "Installer");
            }
            if (!this.aF.isHeld()) {
                this.aF.acquire();
            }
            if (this.aG == null) {
                this.aG = ((PowerManager) getSystemService("power")).newWakeLock(1, "Installer_PowerLock");
            }
            if (this.aG.isHeld()) {
                return;
            }
            this.aG.acquire();
        }
    }

    private void o() {
        if (this.bR != 0) {
            if (this.aF != null) {
                if (this.aF.isHeld()) {
                    this.aF.release();
                }
                this.aF = null;
            }
            if (this.aG != null) {
                if (this.aG.isHeld()) {
                    this.aG.release();
                }
                this.aG = null;
            }
        }
    }

    private static String ovWifiMode() {
        String overriddenSetting = SUtils.getOverriddenSetting(DATA_PATH + "qaTestingConfigs.txt", "WIFI_MODE");
        if (overriddenSetting != null) {
            return overriddenSetting;
        }
        return null;
    }

    private void p() {
        if ((this.aq == 12 || this.aq == 20 || this.aq == 41) && this.al != 5) {
            if ((this.aq != 12 || this.al == 7) && !bIsPaused) {
                runOnUiThread(new f(this));
            }
        }
    }

    private void q() {
        if (this.aq != 12) {
            return;
        }
        if (this.aq != 12 || this.al == 7 || (this.al == 5 && bIsPaused)) {
            float f = (float) (((this.k / 1024.0d) + ((double) this.ba)) / 1024.0d);
            float f2 = (float) (this.j / 1048576.0d);
            if (f > f2) {
                f = f2;
            }
            String strReplace = getString(2131034192).replace("{SIZE}", this.l.format(f)).replace("{TOTAL_SIZE}", this.l.format(f2));
            if (!bIsPaused && this.al != 5) {
                runOnUiThread(new g(this, strReplace));
            } else if (bIsPaused) {
                a(12, strReplace, (int) ((this.j / 1024) + 1), ((int) (this.k / 1024)) + this.ba);
            }
        }
    }

    private void r() {
        boolean z = false;
        switch (this.aq) {
            case 23:
                if (this.bJ == "") {
                    j();
                }
                if (!sUpdateAPK) {
                    if (!this.aQ && !this.bU) {
                        J();
                    }
                    this.aQ = true;
                    this.aS = true;
                    c(21);
                }
                if (sUpdateAPK) {
                    StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                    statFs.getBlockSize();
                    statFs.getAvailableBlocks();
                    if (this.aS && !this.aQ && !this.bU) {
                        J();
                    }
                    this.bU = false;
                    this.aQ = false;
                    sUpdateAPK = false;
                    c(23);
                    return;
                }
                break;
            case LAYOUT_BLACK /* 24 */:
                if (!sUpdateAPK) {
                    this.t = new HttpClient();
                    Iterator it = this.bK.iterator();
                    while (it.hasNext()) {
                        z = ((DownloadComponent) it.next()).o() ? true : z;
                    }
                    if (z) {
                        c(25);
                    }
                }
                if (sUpdateAPK) {
                    this.bT.a("https://secure.gameloft.com/partners/android/update_check.php", "key=" + SUtils.ReadFile(2130968581));
                    c(25);
                }
                break;
            case 25:
                if (!sUpdateAPK) {
                    boolean z2 = false;
                    for (DownloadComponent downloadComponent : this.bK) {
                        downloadComponent.p();
                        z2 = (downloadComponent.b() || !SUtils.getPreferenceBoolean("IsGenericBuild" + downloadComponent.a(), false, mPreferencesName)) ? downloadComponent.d() > SUtils.getPreferenceInt(new StringBuilder("CurrentVersion").append(downloadComponent.a()).toString(), 0, mPreferencesName) ? true : z2 : true;
                    }
                    if (z2) {
                        c(27);
                    } else {
                        SaveDateLastUpdate(DATA_PATH);
                        this.aS = true;
                        this.bL = 0;
                        c(21);
                    }
                }
                if (sUpdateAPK) {
                    while (!this.bT.f()) {
                        try {
                            Thread.sleep(50L);
                        } catch (Exception e) {
                        }
                    }
                    if (this.bT.w == null) {
                        c(28);
                    } else {
                        if (this.bT.w.contains("Error: No live release")) {
                            this.aS = true;
                            this.bL = 0;
                            this.bU = false;
                            this.aQ = false;
                            this.aS = false;
                            sUpdateAPK = false;
                            c(23);
                            return;
                        }
                        String strTrim = "";
                        String strTrim2 = "";
                        try {
                            strTrim = SUtils.ReadFile(2130968579).trim();
                            strTrim2 = GetCurrentVersion(this.bT.w).trim();
                        } catch (Exception e2) {
                            this.bU = false;
                        }
                        if (strTrim.compareTo(strTrim2) == 0) {
                            this.bL = 0;
                            this.bU = false;
                            this.aQ = false;
                            this.aS = false;
                            sUpdateAPK = false;
                            c(23);
                            return;
                        }
                        c(27);
                    }
                }
                break;
            case LAYOUT_UNZIP_FILES /* 27 */:
                this.aS = true;
                break;
            case 30:
                if (!sUpdateAPK) {
                    c(12);
                }
                if (sUpdateAPK) {
                    try {
                        String str = this.bT.w;
                        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str.substring(str.indexOf("http")))));
                        this.aS = false;
                        break;
                    } catch (Exception e3) {
                    }
                    c(21);
                }
                break;
        }
        if (this.bU) {
            return;
        }
        getClass();
        c(21);
    }

    private static String readVersion() {
        return SUtils.ReadFile("/data/data/com.gameloft.android.GAND.GloftD2SS/prefs/gl_ver");
    }

    private void s() {
        c(2);
    }

    private static void saveVersion(String str) {
        try {
            File file = new File("/data/data/com.gameloft.android.GAND.GloftD2SS/prefs/gl_ver");
            if (file.exists()) {
                file.delete();
            } else {
                new File(file.getParent()).mkdirs();
            }
            SUtils.WriteFile("/data/data/com.gameloft.android.GAND.GloftD2SS/prefs/gl_ver", str);
        } catch (Exception e) {
        }
    }

    public static void startGame() {
        sbStarted = true;
        System.out.println("================ finishSuccess b");
        m_sInstance.C();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x006c, code lost:
    
        if (r3 == 0) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int t() {
        String overriddenSetting = SUtils.getOverriddenSetting(DATA_PATH + "qaTestingConfigs.txt", "WIFI_MODE");
        if (overriddenSetting == null) {
            overriddenSetting = null;
        }
        if (overriddenSetting != null) {
            if (overriddenSetting.equals("WIFI_ONLY") || overriddenSetting.equals("TRUE")) {
                return 1;
            }
            if (overriddenSetting.equals("WIFI_3G") || overriddenSetting.equals("FALSE")) {
                return 0;
            }
            if (overriddenSetting.equals("WIFI_3G_ORANGE_IL")) {
                return 2;
            }
        }
        int phoneType = mDeviceInfo.getPhoneType();
        TelephonyManager telephonyManager = mDeviceInfo;
        if (phoneType != 2) {
            int simState = mDeviceInfo.getSimState();
            TelephonyManager telephonyManager2 = mDeviceInfo;
            if (simState != 1) {
                int simState2 = mDeviceInfo.getSimState();
                TelephonyManager telephonyManager3 = mDeviceInfo;
            }
            return 1;
        }
        this.bS = new Device();
        this.bT = new XPlayer(this.bS);
        this.bT.a();
        while (!this.bT.b()) {
            try {
                Thread.sleep(50L);
            } catch (Exception e) {
            }
        }
        XPlayer xPlayer = this.bT;
        if (XPlayer.getWHTTP().t == null) {
            return 0;
        }
        if (XPlayer.getLastErrorCode() == 0) {
            XPlayer xPlayer2 = this.bT;
            if (XPlayer.getWHTTP().t.equals("WIFI_ONLY")) {
                return 1;
            }
            XPlayer xPlayer3 = this.bT;
            if (XPlayer.getWHTTP().t.equals("WIFI_3G")) {
                return 0;
            }
            XPlayer xPlayer4 = this.bT;
            if (XPlayer.getWHTTP().t.equals("WIFI_3G_ORANGE_IL")) {
                return 2;
            }
        }
        return 0;
    }

    private boolean u() {
        return this.aD.isWifiEnabled() && ((this.aE == null || this.aE.getNetworkInfo(1) == null) ? false : this.aE.getNetworkInfo(1).isConnected());
    }

    private int v() {
        int i = 0;
        switch (this.aU) {
            case 0:
                if (!this.aD.isWifiEnabled()) {
                    this.aD.setWifiEnabled(true);
                    this.aU--;
                }
                break;
            case 1:
                if (this.aF == null) {
                    this.aF = this.aD.createWifiLock(1, "Installer");
                    this.aU--;
                }
                break;
            case 2:
                if (!this.aF.isHeld()) {
                    this.aF.acquire();
                    this.aU--;
                }
                break;
            case 3:
                if (this.aD.getConnectionInfo() != null) {
                    this.aV = 0;
                } else {
                    this.aU--;
                    this.aV++;
                    try {
                        Thread.sleep(1000L);
                        break;
                    } catch (Exception e) {
                    }
                    if (this.aV > 30) {
                        if (this.t == null) {
                            i = -1;
                        } else {
                            this.t.b();
                            this.t = null;
                            i = -1;
                        }
                    }
                }
                break;
            case 4:
                if (!u()) {
                    this.aU--;
                    this.aV++;
                    try {
                        Thread.sleep(1000L);
                        break;
                    } catch (Exception e2) {
                    }
                    if (this.aV > 30) {
                        if (this.bb == null && this.t != null) {
                            this.t.b();
                            this.t = null;
                        }
                        this.aU = -1;
                        this.aV = 0;
                        i = -1;
                    }
                } else {
                    this.aV = -1;
                    this.aU = 0;
                    this.bR = 1;
                    c(12);
                    this.aH = true;
                    i = 1;
                }
                break;
        }
        this.aU++;
        return i;
    }

    private boolean w() {
        if (this.bE == 1) {
            return false;
        }
        this.bb = this.aE.getActiveNetworkInfo();
        return (this.bb == null || this.bb.getType() == 1 || !this.bb.isConnected()) ? false : true;
    }

    private void x() {
        String[] list = new File("/data/data/com.gameloft.android.GAND.GloftD2SS").list();
        for (int i = 0; i < list.length; i++) {
            if (list[i].startsWith("pack") && list[i].endsWith(".info")) {
                try {
                    this.e.addAll(new com.gameloft.android.GAND.GloftD2SS.installer.utils.g(this).a("/data/data/com.gameloft.android.GAND.GloftD2SS/" + list[i]));
                } catch (Exception e) {
                }
            }
        }
        for (int i2 = 0; i2 < this.e.size(); i2++) {
        }
    }

    private Vector y() {
        BufferedReader bufferedReader;
        Vector vector = new Vector();
        try {
            try {
                File externalFilesDir = getExternalFilesDir(null);
                if (externalFilesDir != null) {
                    vector.add(externalFilesDir.getAbsolutePath());
                    if (externalFilesDir.exists() || externalFilesDir.list().length == 0) {
                        externalFilesDir.delete();
                        new File(externalFilesDir.getAbsolutePath().substring(0, externalFilesDir.getAbsolutePath().lastIndexOf("/files"))).delete();
                    }
                }
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (line.contains("/mnt/sdcard") || line.contains("/storage/sdcard")) {
                        if (!line.contains("android_secure")) {
                            String strSubstring = line.substring(line.indexOf(32) + 1);
                            vector.add(strSubstring.substring(0, strSubstring.indexOf(32)) + "/Android/data/com.gameloft.android.GAND.GloftD2SS/files");
                        }
                    }
                }
            } catch (Exception e) {
            }
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream("/proc/mounts"));
            bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream));
            bufferedReader.close();
            dataInputStream.close();
        } catch (Exception e2) {
        }
        vector.add("/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files");
        return vector;
    }

    private String z() {
        if (Build$VERSION.SDK_INT < 8) {
            return "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files";
        }
        try {
            new Vector().add("/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files");
            Vector<String> vectorY = y();
            for (String str : vectorY) {
                File file = new File(str);
                if (file.exists() && file.list().length > 0) {
                    return str;
                }
            }
            this.bc = new Vector();
            for (String str2 : vectorY) {
                this.bc.add(new Pair(str2, Long.valueOf(c(str2))));
            }
            return "";
        } catch (Exception e) {
            return "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files";
        }
    }

    public final String a(int i, String str, String str2) {
        String string = getString(i);
        if (str == null) {
            str = "{SIZE}";
        }
        return string.replace(str, str2);
    }

    public final ArrayList a() {
        return this.cc;
    }

    public final boolean a(int i) {
        return this.aC[i] == 1;
    }

    final void b() {
        this.b = (NotificationManager) getSystemService("notification");
        this.b.cancel(7176);
    }

    public final void b(int i) {
        switch (this.ce) {
            case 1:
                if (i == 2131427332) {
                    if (this.aD.isWifiEnabled() && getApplicationContext().getPackageManager().checkPermission("android.permission.CHANGE_WIFI_STATE", "com.gameloft.android.GAND.GloftD2SS") == 0) {
                        this.aD.setWifiEnabled(false);
                        try {
                            Thread.sleep(50L);
                            break;
                        } catch (Exception e) {
                        }
                        this.aI = true;
                    }
                    if (!w()) {
                        c(11);
                    } else {
                        this.bR = 0;
                        c(12);
                    }
                } else if (i == 2131427334) {
                    c(19);
                }
                break;
            case 2:
                if (i == 2131427332) {
                    saveVersion("0.0.1");
                    c(30);
                } else if (i == 2131427334) {
                    c(21);
                }
                break;
            case 3:
                if (i == 2131427332) {
                    c(6);
                } else if (i == 2131427334) {
                    if (this.aD.isWifiEnabled() && getApplicationContext().getPackageManager().checkPermission("android.permission.CHANGE_WIFI_STATE", "com.gameloft.android.GAND.GloftD2SS") == 0) {
                        this.aD.setWifiEnabled(false);
                        try {
                            Thread.sleep(50L);
                            break;
                        } catch (Exception e2) {
                        }
                        this.aI = true;
                    }
                    if (!w()) {
                        c(11);
                    } else {
                        this.bR = 0;
                        c(12);
                    }
                } else if (i == 2131427336) {
                    if (this.t != null) {
                        this.t.b();
                        this.t = null;
                    }
                    this.aS = false;
                    c(19);
                }
                break;
            case 4:
                if (i == 2131427332) {
                    this.aS = false;
                    c(21);
                    D();
                }
                break;
            case 5:
                if (i == 2131427336 && this.aq == 12) {
                    this.am = this.al;
                    this.al = 5;
                    b(2130903040, 7);
                    break;
                }
                break;
            case 7:
                if (i == 2131427332) {
                    new d(this).start();
                    c(19);
                    try {
                        this.aS = false;
                        i();
                        com.gameloft.android.GAND.GloftD2SS.installer.utils.f fVar = (com.gameloft.android.GAND.GloftD2SS.installer.utils.f) this.d.get(this.ap);
                        File file = new File(DATA_PATH + fVar.a().replace(".\\\\", "").replace(".\\", "").replace("\\", "/") + "/" + fVar.c());
                        if (file.exists()) {
                            file.delete();
                        }
                    } catch (Exception e3) {
                        return;
                    }
                    break;
                } else if (i == 2131427334 && this.aq == 12) {
                    this.al = this.am;
                    b(2130903041, 5);
                    break;
                }
                break;
            case 8:
                if (i == 2131427332) {
                    this.ap = 0;
                    i();
                    if (!u()) {
                        addErrorNumber(s.e);
                        c(5);
                    } else {
                        c(12);
                    }
                } else if (i == 2131427334) {
                    if (this.t != null) {
                        this.t.b();
                        this.t = null;
                    }
                    this.aS = false;
                    c(19);
                }
                break;
            case 9:
                if (i == 2131427332) {
                    c(6);
                } else if (i == 2131427334) {
                    if (this.bE != 1) {
                        if (this.aD.isWifiEnabled() && getApplicationContext().getPackageManager().checkPermission("android.permission.CHANGE_WIFI_STATE", "com.gameloft.android.GAND.GloftD2SS") == 0) {
                            this.aD.setWifiEnabled(false);
                            try {
                                Thread.sleep(50L);
                                break;
                            } catch (Exception e4) {
                            }
                            this.aI = true;
                        }
                        if (!w()) {
                            c(11);
                        } else {
                            this.bR = 0;
                            c(12);
                        }
                    } else {
                        c(19);
                    }
                }
                break;
            case LAYOUT_DOWNLOAD_FILES_QUESTION /* 10 */:
                if (i == 2131427332) {
                    if (this.bR != 0) {
                        this.bR = 1;
                        if (!u()) {
                            addErrorNumber(s.f);
                            c(5);
                        }
                    } else if (u()) {
                        this.bR = 1;
                        addErrorNumber(u.r);
                        c(14);
                    }
                    if (!this.aX) {
                        Tracker.downloadStartTracker(this.bE, this.bR == 0);
                        this.aX = true;
                    }
                    createNoMedia(DATA_PATH);
                    this.bL = 0;
                    c(12);
                    b(2130903041, 5);
                } else if (i == 2131427334) {
                    c(19);
                }
                break;
            case 13:
                if (i == 2131427332) {
                    this.aS = false;
                    c(21);
                    D();
                }
                break;
            case 16:
                if (i == 2131427332) {
                    c(6);
                } else if (i == 2131427334) {
                    if (this.t != null) {
                        this.t.b();
                        this.t = null;
                    }
                    this.aS = false;
                    c(19);
                }
                break;
            case 17:
                if (i == 2131427332) {
                    c(24);
                } else if (i == 2131427334) {
                    this.bL = 0;
                    c(21);
                }
                break;
            case 18:
                if (i == 2131427332) {
                    this.aS = false;
                    c(21);
                    D();
                }
                break;
            case 20:
                if (i == 2131427336) {
                    if (this.t != null) {
                        this.t.b();
                        this.t = null;
                    }
                    this.aS = false;
                    c(19);
                }
                break;
            case 21:
                if (i == 2131427332) {
                    this.aS = true;
                    this.bL = 0;
                    c(21);
                }
                break;
            case 23:
                if (i == 2131427332) {
                    moveTaskToBack(true);
                } else if (i == 2131427334) {
                    this.bg = false;
                    this.aS = false;
                    c(19);
                }
                break;
            case LAYOUT_UNZIP_FILES /* 27 */:
                if (i == 2131427336) {
                    b(2130903040, 28);
                }
                break;
            case LAYOUT_UNZIP_FILES_CANCEL_QUESTION /* 28 */:
                if (i == 2131427332) {
                    this.u = true;
                    c(19);
                } else if (i == 2131427334) {
                    b(2130903041, 27);
                }
                break;
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        app.gNqiLZCfXGHuEzImzgaetFpIrYUjZHk(this);
        Intent intent = getIntent();
        if (SUtils.getPreferenceString("SDFolder", "", mPreferencesName).equals("")) {
            sd_folder = z();
            SUtils.setPreference("SDFolder", sd_folder, mPreferencesName);
        } else {
            sd_folder = SUtils.getPreferenceString("SDFolder", "", mPreferencesName);
        }
        DATA_PATH = sd_folder + "/";
        if (intent != null && intent.getExtras() != null && intent.getExtras().getBoolean("finishGame")) {
            D();
            return;
        }
        this.cj = new Handler(Looper.getMainLooper());
        RelativeLayout relativeLayout = new RelativeLayout(this);
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
        relativeLayout$LayoutParams.addRule(15);
        relativeLayout$LayoutParams.addRule(14);
        relativeLayout.addView(new ProgressBar(this, null, R$attr.progressBarStyleLarge), relativeLayout$LayoutParams);
        setContentView(relativeLayout);
        m_portalCode = "samsung_a_store";
        this.aD = (WifiManager) getSystemService("wifi");
        mDeviceInfo = (TelephonyManager) getSystemService("phone");
        this.aE = (ConnectivityManager) getSystemService("connectivity");
        this.bW = new com.gameloft.android.GAND.GloftD2SS.installer.utils.d();
        this.bW.a(this);
        x();
        if (g() || this.bt) {
            String[] list = new File("/data/data/com.gameloft.android.GAND.GloftD2SS").list();
            for (int i = 0; i < list.length; i++) {
                if (list[i].startsWith("pack") && list[i].endsWith(".info")) {
                    try {
                        File file = new File("/data/data/com.gameloft.android.GAND.GloftD2SS/" + list[i]);
                        if (file.exists()) {
                            file.delete();
                        }
                    } catch (Exception e) {
                    }
                }
            }
        }
        this.bL = 0;
        this.aS = false;
        Tracking.init(mDeviceInfo);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.AIRPLANE_MODE");
        this.be = new k(this);
        registerReceiver(this.be, intentFilter);
        m_sInstance = this;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.t != null) {
            this.t.b();
            this.t = null;
        }
        o();
        if (this.be != null) {
            unregisterReceiver(this.be);
            this.be = null;
        }
        m_sInstance = null;
        this.s = null;
        if (sbStarted) {
            return;
        }
        D();
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return (i == 25 || i == 24 || i == 27) ? false : true;
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getRepeatCount() != 0) {
            return (i == 25 || i == 24 || i == 27) ? false : true;
        }
        switch (this.ce) {
            case 1:
                b(2131427334);
                return true;
            case 2:
                b(2131427334);
                return true;
            case 3:
                b(2131427336);
                return true;
            case 4:
                b(2131427332);
                return true;
            case 5:
                b(2131427336);
                return true;
            case 6:
            case 11:
            case 12:
            case 14:
            case com.kddi.market.a.a.y /* 15 */:
            case 19:
            case 22:
            case LAYOUT_BLACK /* 24 */:
            case 25:
            case XPlayer.S /* 26 */:
            default:
                return true;
            case 7:
                b(2131427334);
                return true;
            case 8:
                b(2131427334);
                return true;
            case 9:
                if (this.bE != 1) {
                    return true;
                }
                break;
            case LAYOUT_DOWNLOAD_FILES_QUESTION /* 10 */:
                b(2131427334);
                return true;
            case 13:
                b(2131427332);
                return true;
            case 16:
                b(2131427334);
                return true;
            case 17:
                b(2131427334);
                return true;
            case 18:
                b(2131427332);
                return true;
            case 20:
                b(2131427336);
                return true;
            case 21:
                b(2131427332);
                return true;
            case 23:
                break;
            case LAYOUT_UNZIP_FILES /* 27 */:
                b(2131427336);
                return true;
        }
        b(2131427334);
        return true;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        bIsPaused = true;
        if (m_Dialog != null) {
            m_Dialog.cancel();
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
    }

    @Override // android.app.Activity
    protected void onResume() {
        if (this.ce != -1) {
            b(this.cf, this.ce);
        }
        super.onResume();
        bIsPaused = false;
        if (this.bE == 1 && this.bF && this.aq != 1) {
            if (u()) {
                c(12);
            }
            this.bF = false;
        }
        b();
    }

    @Override // android.app.Activity
    protected void onStart() {
        System.out.println("======================= onStart installer");
        super.onStart();
        if (this.bM) {
            return;
        }
        this.bM = true;
        this.s = getAssets();
        new Thread(this).start();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (m_toastSize == 0 && m_toastSize == 0) {
            m_toastSize = Integer.parseInt(getString(2131230754).replaceAll("[\\D]+[^.]", "")) + 25 + m_toastExtra;
        }
        int action = motionEvent.getAction();
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        defaultDisplay.getHeight();
        if (motionEvent.getX() < m_toastSize && motionEvent.getY() < m_toastSize) {
            switch (action) {
                case 1:
                    if (leftTapCount != 0 && System.currentTimeMillis() - startTime >= m_delayTime) {
                        leftTapCount = 0;
                        return false;
                    }
                    leftTapCount++;
                    startTime = System.currentTimeMillis();
                    if (!statePressA && !statePressB && !statePressC) {
                        statePressA = true;
                    } else if (statePressA && statePressB && !statePressC) {
                        statePressC = true;
                    } else {
                        statePressC = false;
                        statePressB = false;
                        statePressA = true;
                    }
                    if (leftTapCount != TAP_COUNT_MAX) {
                        return false;
                    }
                    leftTapCount = 0;
                    if (m_prevErrorMessage == "") {
                        return false;
                    }
                    if (this.aq != 1 && this.aq != 14 && this.aq != 5 && this.aq != 31) {
                        return false;
                    }
                    StringBuilder sb = new StringBuilder();
                    m_Dialog = new AlertDialog$Builder(this).setNeutralButton("Close", (DialogInterface$OnClickListener) null).create();
                    sb.append("Configuration: " + E());
                    sb.append("\nDevice: " + Build.MANUFACTURER + " " + Build.MODEL + " " + Build$VERSION.RELEASE);
                    sb.append("\nGame: " + getString(bu.app_name) + " 1.0.2");
                    sb.append("\nError:" + m_prevErrorMessage);
                    m_Dialog.setMessage(sb.toString());
                    m_Dialog.setTitle("Installer version 3.5.2861");
                    m_Dialog.show();
                    return true;
                default:
                    return false;
            }
        }
        if (motionEvent.getX() >= width || motionEvent.getX() <= width - m_toastSize || motionEvent.getY() >= m_toastSize) {
            statePressC = false;
            statePressB = false;
            statePressA = false;
            rightTapCount = 0;
            return false;
        }
        leftTapCount = 0;
        switch (action) {
            case 1:
                if (System.currentTimeMillis() - startTime >= m_delayTime) {
                    statePressC = false;
                    statePressB = false;
                    statePressA = false;
                    rightTapCount = 0;
                    return false;
                }
                if (statePressA && !statePressB) {
                    startTime = System.currentTimeMillis();
                    statePressB = true;
                    return false;
                }
                if (!statePressA || !statePressB || !statePressC) {
                    statePressC = false;
                    statePressB = false;
                    statePressA = false;
                    return false;
                }
                statePressC = false;
                statePressB = false;
                statePressA = false;
                m_Dialog = new AlertDialog$Builder(this).setNeutralButton("Close", (DialogInterface$OnClickListener) null).create();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Configuration: " + E());
                sb2.append("\nInstallation Path: " + DATA_PATH);
                sb2.append("\nBiggest file: " + (pack_biggestFile != -1 ? new DecimalFormat("#,##0.00").format((pack_biggestFile >> 10) / 1024.0d) + " MB" : ""));
                sb2.append("\nNumber of files: " + (pack_NoFiles != -1 ? Integer.valueOf(pack_NoFiles) : ""));
                m_Dialog.setMessage(sb2.toString());
                m_Dialog.setTitle("Installer version 3.5.2861");
                m_Dialog.show();
                return true;
            default:
                return false;
        }
    }

    @Override // android.app.Activity, android.view.Window$Callback
    public void onWindowFocusChanged(boolean z) {
        this.bd = z;
        s_isPauseGame = !z;
        this.bQ = System.currentTimeMillis();
    }

    @Override // java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.aq = 0;
        this.al = 0;
        this.bL = 0;
        this.aS = true;
        this.aX = false;
        this.l = new DecimalFormat("#,##0.00");
        while (this.aq != 21 && !sbStarted) {
            this.aP = false;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (bIsPaused) {
                if ((this.aq != 12 && this.aq != 20) || (this.aq == 12 && this.al != 7 && this.al != 5)) {
                    try {
                        Thread.sleep(50L);
                    } catch (Exception e) {
                    }
                } else if (this.aq == 12 && this.al == 7) {
                    try {
                        Thread.sleep(100L);
                    } catch (Exception e2) {
                    }
                }
            }
            l();
            if (this.aq != 12 || this.al != 7) {
                try {
                    Thread.sleep(20L);
                } catch (Exception e3) {
                }
            } else if (System.currentTimeMillis() - jCurrentTimeMillis == 0) {
                try {
                    Thread.sleep(50L);
                } catch (Exception e4) {
                }
            } else {
                try {
                    Thread.sleep(50 / (System.currentTimeMillis() - jCurrentTimeMillis));
                } catch (Exception e5) {
                }
            }
            this.aP = true;
        }
        if (this.bL == 0 && this.aS) {
            new File(LIBS_PATH + "/libsampleSandBox.so");
            new File(LIBS_PATH + "/libsampleSandBox.so");
            if (getApplicationContext().getPackageManager().checkPermission("android.permission.CHANGE_WIFI_STATE", "com.gameloft.android.GAND.GloftD2SS") == 0) {
                if (this.aH) {
                    this.aD.setWifiEnabled(false);
                } else if (this.aI) {
                    this.aD.setWifiEnabled(true);
                }
            }
            createNoMedia(DATA_PATH);
            Tracking.onLaunchGame(2);
            sbStarted = true;
            Intent intent = new Intent();
            intent.setClassName(getPackageName(), "com.gameloft.android.GAND.GloftD2SS.DungeonHunter2");
            while (s_isPauseGame) {
                try {
                    Thread.sleep(100L);
                } catch (Exception e6) {
                }
            }
            startActivity(intent);
        }
        if (this.bL != 0 || !this.aS) {
            D();
            return;
        }
        String preferenceString = SUtils.getPreferenceString("SDFolder", "", mPreferencesName);
        if (preferenceString.equals("")) {
            a(0L);
            createNoMedia(preferenceString);
            SaveDateLastUpdate(preferenceString);
        }
        C();
    }
}
