package com.gameloft.android.GAND.GloftD2SS;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences$Editor;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.PaintDrawable;
import android.os.Build;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewManager;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.AbsoluteLayout;
import android.widget.AbsoluteLayout$LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView$ScaleType;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import android.widget.TextView;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.Encrypter;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.SUtils;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.XPlayer;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.Locale;
import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public class GLiveMain extends Activity {
    public static final String O = "GLPrefsFile";
    static final String P = "http://livewebapp.gameloft.com/glive/signal-back";
    static final String Q = "http://livewebapp.gameloft.com/glive/messages/send-message/android_uid/";
    static final String R = "http://livewebapp.gameloft.com/glive/messages/sent/";
    static final String S = "http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id/";
    static final String T = "http://livewebapp.gameloft.com/glive/friends/add-friends/";
    static final String U = "http://livewebapp.gameloft.com/glive/friends/show-invite-email";
    static final String V = "http://livewebapp.gameloft.com/glive/friends/?select=yes";
    static final String W = "http://livewebapp.gameloft.com/glive/messages/index";
    static final String X = "http://livewebapp.gameloft.com/glive/friends";
    static final String Y = "http://livewebapp.gameloft.com/glive/games";
    static final String Z = "http://livewebapp.gameloft.com/glive/info/";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static WebView f20a = null;
    public static TextView aS = null;
    public static ImageButton aU = null;
    public static ImageButton aV = null;
    public static ImageButton aW = null;
    public static ImageButton aX = null;
    public static ImageButton aY = null;
    public static ImageButton aZ = null;
    static final String aa = "http://livewebapp.gameloft.com/glive/challenges/create-challenge?challenged_user_id=";
    static final String ab = "http://livewebapp.gameloft.com/glive/games/compare/uid/";
    static final String ac = "http://livewebapp.gameloft.com/glive/friends/delete-friend/uid/";
    static final String ad = "http://livewebapp.gameloft.com/glive/account/add-friend/uid/";
    public static final String aj = "http://livewebapp.gameloft.com/glive/?lg=LANG&country=COUNTRY_DETECTED&d=DEVICE_ANDROID&f=FIRMWARE_ANDROID&udid=UDIDPHONE&GGI=GGIGAME&device_token=DEV_TOKEN&username=USER_NAME&pass=PASSWORD&remember_me=AUTOLOGIN&type=ANDROID&height=SCREEN_HEIGHT&fb=1";
    public static final String ak = "http://livewebapp.gameloft.com/glive/?lg=LANG&country=COUNTRY_DETECTED&d=DEVICE_ANDROID&f=FIRMWARE_ANDROID&udid=UDIDPHONE&GGI=GGIGAME&device_token=DEV_TOKEN&username=USER_NAME&pass=PASSWORD&remember_me=AUTOLOGIN&type=ANDROID&height=SCREEN_HEIGHT";
    public static WebView b = null;
    public static ImageButton bA = null;
    public static TextView bB = null;
    public static TextView bC = null;
    public static TextView bD = null;
    public static AlertDialog bK = null;
    public static WebView bL = null;
    public static TextView bM = null;
    public static EditText bN = null;
    public static Button bR = null;
    public static Button bS = null;
    public static TextView bT = null;
    public static Button bU = null;
    public static Button bV = null;
    public static TextView bW = null;
    public static TextView bX = null;
    public static TextView bY = null;
    public static TextView bZ = null;
    public static ImageButton ba = null;
    public static ImageButton bb = null;
    public static ImageButton bc = null;
    public static ImageButton bd = null;
    public static EditText bo = null;
    static final int br = 24;
    static final int bs = 40;
    static final int bt = 8;
    static final int bv = 5;
    static final int bw = 5;
    static final int bx = 8;
    public static int by = 0;
    public static int bz = 0;
    public static RelativeLayout c = null;
    private static final String cY = "androidTrophy.dat";
    private static final String cZ = "user.dat";
    public static TextView ca = null;
    public static boolean cb = false;
    public static String cc = null;
    public static String ce = null;
    public static boolean cj = false;
    public static View cm = null;
    public static View cn = null;
    public static View co = null;
    public static RelativeLayout d = null;
    private static final String da = "skt_user.dat";
    public static View e;
    public static RelativeLayout f;
    public static ImageButton g;
    public static TextView h;
    public static ImageButton i;
    public static TextView j;
    public static AbsoluteLayout k;
    public static AbsoluteLayout l;
    public static AbsoluteLayout m;
    public static AbsoluteLayout n;
    public Activity aT;
    public Display cd;
    private PhoneStateListener dh = new u(this);
    ViewManager p;
    public static int o = 0;
    public static String q = "";
    public static String r = "0";
    public static String s = "0";
    public static String t = "0";
    public static String u = "";
    public static String v = "";
    public static String w = "";
    public static String x = "";
    public static String y = "";
    public static String z = "";
    public static String A = "";
    static int B = 480;
    static int C = 800;
    static int D = 800;
    static float E = 1.0f;
    static float F = 1.0f;
    static int G = 77;
    static int H = 65;
    static int I = 20;
    static int J = 160;
    static int K = G;
    static int L = H;
    static int M = J;
    static int N = I;
    public static String ae = "http://livewebapp.gameloft.com/glive/friends/evaluate/fid/FRIEND_ID/value/";
    public static String af = "http://livewebapp.gameloft.com/glive/account";
    public static String ag = "http://livewebapp.gameloft.com/glive/index/add-trophy";
    public static String ah = "https://livewebapp.gameloft.com/glive/account/creation/";
    public static String ai = "https://livewebapp.gameloft.com/glive/login/recover-password/";
    public static String al = "";
    public static String am = "http://livewebapp.gameloft.com/glive/games/recommend-via-twitter/id/";
    public static String an = "http://livewebapp.gameloft.com/glive/games/show-game/gid/GAMEID/fb_send/yes";
    public static String ao = "";
    public static String ap = "";
    public static String aq = "";
    public static String ar = "";
    public static String as = "";
    public static String at = "";
    public static String au = "";
    public static String av = "";
    public static String aw = "";
    public static String ax = "";
    public static String ay = "";
    public static String az = "";
    public static String aA = "";
    public static String aB = "";
    public static String aC = "";
    public static String aD = "";
    public static String aE = "";
    public static Integer aF = 0;
    public static Stack aG = new Stack();
    public static Stack aH = new Stack();
    public static boolean aI = false;
    public static boolean aJ = true;
    public static boolean aK = true;
    public static String[] aL = new String[200];
    public static String[] aM = new String[100];
    public static String[] aN = new String[100];
    public static int aO = 0;
    public static int aP = 1;
    public static Integer aQ = 0;
    public static boolean aR = false;
    public static boolean be = false;
    public static boolean bf = false;
    public static boolean bg = false;
    public static boolean bh = false;
    public static boolean bi = false;
    public static boolean bj = false;
    public static boolean bk = false;
    public static boolean bl = false;
    public static boolean bm = false;
    public static boolean bn = false;
    public static int[] bp = new int[100];
    public static int bq = 0;
    static final int bu = (B - 40) - 10;
    public static int bE = ((B / 2) - (I / 2)) - G;
    static final int bF = ((B / 2) - (I / 2)) - G;
    public static int bG = 3;
    public static int bH = 0;
    public static int bI = 1;
    public static int bJ = 2;
    public static boolean bO = true;
    public static boolean bP = false;
    public static int bQ = 0;
    public static boolean cf = false;
    public static boolean cg = false;
    public static boolean ch = false;
    public static boolean ci = false;
    public static boolean ck = false;
    public static boolean cl = false;
    public static String[] cp = {"EN", "FR", "DE", "IT", "SP", "JP", "KR", "CN", "BR", "RU", "ZT"};
    public static int[] cq = {2131034241, 2131034242, 2131034243, 2131034244, 2131034245, 2131034246, 2131034247, 2131034248, 2131034249, 2131034250, 2131034251};
    public static int[] cr = {2131034252, 2131034253, 2131034254, 2131034255, 2131034256, 2131034257, 2131034258, 2131034259, 2131034260, 2131034261, 2131034262};
    public static int[] cs = {2131034263, 2131034264, 2131034265, 2131034266, 2131034267, 2131034268, 2131034269, 2131034270, 2131034271, 2131034272, 2131034273};
    public static int[] ct = {2131034274, 2131034275, 2131034276, 2131034277, 2131034278, 2131034279, 2131034280, 2131034281, 2131034282, 2131034283, 2131034284};
    public static int[] cu = {2131034285, 2131034286, 2131034287, 2131034288, 2131034289, 2131034290, 2131034291, 2131034292, 2131034293, 2131034294, 2131034295};
    public static int[] cv = {2131034296, 2131034297, 2131034298, 2131034299, 2131034300, 2131034301, 2131034302, 2131034303, 2131034304, 2131034305, 2131034306};
    public static int[] cw = {2131034307, 2131034308, 2131034309, 2131034310, 2131034311, 2131034312, 2131034313, 2131034314, 2131034315, 2131034316, 2131034317};
    public static int[] cx = {2131034318, 2131034319, 2131034320, 2131034321, 2131034322, 2131034323, 2131034324, 2131034325, 2131034326, 2131034327, 2131034328};
    public static int[] cy = {2131034329, 2131034330, 2131034331, 2131034332, 2131034333, 2131034334, 2131034335, 2131034336, 2131034337, 2131034338, 2131034339};
    public static int[] cz = {2131034340, 2131034341, 2131034342, 2131034343, 2131034344, 2131034345, 2131034346, 2131034347, 2131034348, 2131034349, 2131034350};
    public static int[] cA = {2131034351, 2131034352, 2131034353, 2131034354, 2131034355, 2131034356, 2131034357, 2131034358, 2131034359, 2131034360, 2131034361};
    public static int[] cB = {2131034362, 2131034363, 2131034364, 2131034365, 2131034366, 2131034367, 2131034368, 2131034369, 2131034370, 2131034371, 2131034372};
    public static int[] cC = {2131034373, 2131034374, 2131034375, 2131034376, 2131034377, 2131034378, 2131034379, 2131034380, 2131034381, 2131034382, 2131034383};
    public static int[] cD = {2131034384, 2131034385, 2131034386, 2131034387, 2131034388, 2131034389, 2131034390, 2131034391, 2131034392, 2131034393, 2131034394};
    public static int[] cE = {2131034395, 2131034396, 2131034397, 2131034398, 2131034399, 2131034400, 2131034401, 2131034402, 2131034403, 2131034404, 2131034405};
    public static int[] cF = {2131034406, 2131034407, 2131034408, 2131034409, 2131034410, 2131034411, 2131034412, 2131034413, 2131034414, 2131034415, 2131034416};
    public static int[] cG = {2131034417, 2131034418, 2131034419, 2131034420, 2131034421, 2131034422, 2131034423, 2131034424, 2131034425, 2131034426, 2131034427};
    public static int[] cH = {2131034428, 2131034429, 2131034430, 2131034431, 2131034432, 2131034433, 2131034434, 2131034435, 2131034436, 2131034437, 2131034438};
    public static int[] cI = {2131034439, 2131034440, 2131034441, 2131034442, 2131034443, 2131034444, 2131034445, 2131034446, 2131034447, 2131034448, 2131034449};
    public static int[] cJ = {2131034450, 2131034451, 2131034452, 2131034453, 2131034454, 2131034455, 2131034456, 2131034457, 2131034458, 2131034459, 2131034460};
    public static int[] cK = {2131034461, 2131034462, 2131034463, 2131034464, 2131034465, 2131034466, 2131034467, 2131034468, 2131034469, 2131034470, 2131034471};
    public static int[] cL = {2131034472, 2131034473, 2131034474, 2131034475, 2131034476, 2131034477, 2131034478, 2131034479, 2131034480, 2131034481, 2131034482};
    public static int[] cM = {2131034483, 2131034484, 2131034485, 2131034486, 2131034487, 2131034488, 2131034489, 2131034490, 2131034491, 2131034492, 2131034493};
    public static int[] cN = {2131034494, 2131034495, 2131034496, 2131034497, 2131034498, 2131034499, 2131034500, 2131034501, 2131034502, 2131034503, 2131034504};
    public static int[] cO = {2131034505, 2131034506, 2131034507, 2131034508, 2131034509, 2131034510, 2131034511, 2131034512, 2131034513, 2131034514, 2131034515};
    public static int[] cP = {2131034516, 2131034517, 2131034518, 2131034519, 2131034520, 2131034521, 2131034522, 2131034523, 2131034524, 2131034525, 2131034526};
    public static int[] cQ = {2131034527, 2131034528, 2131034529, 2131034530, 2131034531, 2131034532, 2131034533, 2131034534, 2131034535, 2131034536, 2131034537};
    public static int[] cR = {2131034538, 2131034539, 2131034540, 2131034541, 2131034542, 2131034543, 2131034544, 2131034545, 2131034546, 2131034547, 2131034548};
    public static int[] cS = {127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127};
    private static String db = "";
    private static String dc = "";
    private static String dd = "";
    private static String de = "";
    private static String df = "";
    private static String dg = "";
    static boolean cT = true;
    static boolean cU = false;
    public static TelephonyManager cV = null;
    static int cW = 0;
    static boolean cX = false;

    public GLiveMain() {
        SUtils.setContext(this);
    }

    public static boolean Autologin() {
        return az.compareTo("1") == 0;
    }

    public static String Password() {
        return ax;
    }

    public static String UserName() {
        return aw;
    }

    private void a(int i2, String str, String str2, String str3, String str4) {
        String str5;
        bQ = i2;
        ao = str;
        as = str2;
        at = str3;
        aQ = 0;
        aF = 0;
        if (needToRemoveFacebook()) {
            al = ak.replace("LANG", cp[bQ]);
        } else {
            al = aj.replace("LANG", cp[bQ]);
        }
        String deviceId = Device.getDeviceId();
        if (bk) {
            f.removeView(bb);
        }
        bk = false;
        if (bl) {
            f.removeView(bc);
        }
        bl = false;
        String strCrypt = Encrypter.crypt(Locale.getDefault().getCountry());
        ap = Encrypter.crypt(ap);
        String strCrypt2 = Encrypter.crypt(deviceId);
        as = Encrypter.crypt(as);
        at = Encrypter.crypt(at);
        ao = Encrypter.crypt(ao);
        aq = Encrypter.crypt(aq);
        String strReplace = al.replace("COUNTRY_DETECTED", strCrypt);
        al = strReplace;
        String strReplace2 = strReplace.replace("UDIDPHONE", strCrypt2);
        al = strReplace2;
        String strReplace3 = strReplace2.replace("GGIGAME", ao);
        al = strReplace3;
        String strReplace4 = strReplace3.replace("DEV_TOKEN", ar);
        al = strReplace4;
        String strReplace5 = strReplace4.replace("USER_NAME", as);
        al = strReplace5;
        String strReplace6 = strReplace5.replace("PASSWORD", at);
        al = strReplace6;
        String strReplace7 = strReplace6.replace("AUTOLOGIN", az);
        al = strReplace7;
        String strReplace8 = strReplace7.replace("DEVICE_ANDROID", ap);
        al = strReplace8;
        String strReplace9 = strReplace8.replace("FIRMWARE_ANDROID", aq);
        al = strReplace9;
        String strReplace10 = strReplace9.replace("SCREEN_HEIGHT", String.valueOf(D));
        al = strReplace10;
        al = strReplace10.replaceAll(" ", "");
        al += "&enc=1";
        j.setText(getString(cJ[bQ], new Object[]{this}));
        autoScaleTextViewTextToWidth(j, 122, 13);
        j.setGravity(17);
        j.invalidate();
        bR.setText(getString(cy[bQ], new Object[]{this}));
        bS.setText(getString(cB[bQ], new Object[]{this}));
        bT.setText(getString(cE[bQ], new Object[]{this}));
        bU.setText(getString(cy[bQ], new Object[]{this}));
        bV.setText(getString(cB[bQ], new Object[]{this}));
        bW.setText(getString(cE[bQ], new Object[]{this}));
        bX.setText(getString(cq[bQ], new Object[]{this}));
        autoScaleTextViewTextToWidth(bX, G, 13);
        bY.setText(getString(cs[bQ], new Object[]{this}));
        autoScaleTextViewTextToWidth(bY, G, 13);
        bZ.setText(getString(ct[bQ], new Object[]{this}));
        autoScaleTextViewTextToWidth(bZ, G, 13);
        ca.setText(getString(cu[bQ], new Object[]{this}));
        autoScaleTextViewTextToWidth(ca, G, 13);
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(B, C - ((int) (F * 140.0f)));
        relativeLayout$LayoutParams.addRule(13);
        RelativeLayout$LayoutParams relativeLayout$LayoutParams2 = new RelativeLayout$LayoutParams(B, (int) (F * 70.0f));
        relativeLayout$LayoutParams2.addRule(12);
        RelativeLayout$LayoutParams relativeLayout$LayoutParams3 = new RelativeLayout$LayoutParams(B - 10, (int) (F * 70.0f));
        relativeLayout$LayoutParams3.addRule(10);
        relativeLayout$LayoutParams3.addRule(14);
        if (str4.equals("recover_password")) {
            str5 = ai + "?" + al.split("\\?")[1];
        } else {
            str5 = str4.equals("create_account") ? ah + "?" + al.split("\\?")[1] : al;
        }
        f20a.loadUrl(str5);
        f20a.requestFocus();
        c.addView(f20a, relativeLayout$LayoutParams);
        c.addView(f, relativeLayout$LayoutParams3);
        c.addView(d, relativeLayout$LayoutParams2);
        c.addView(e, relativeLayout$LayoutParams2);
    }

    public static void autoScaleTextViewTextToWidth(TextView textView, int i2, int i3) {
        String str = textView.getText().toString() + "p";
        Rect rect = new Rect();
        int i4 = 25;
        textView.setTextColor(-1);
        textView.setGravity(1);
        textView.setTextSize(25.0f);
        textView.setLines(1);
        textView.getPaint().getTextBounds(str, 0, str.length(), rect);
        if (str == "") {
            rect.setEmpty();
        }
        int i5 = 11;
        if (C == 320 && B == 240) {
            i5 = 10;
        }
        while (true) {
            if ((rect.width() <= E * i2 && rect.height() <= F * i3) || i4 < i5) {
                break;
            }
            i4--;
            textView.setTextSize(0, i4);
            textView.getPaint().getTextBounds(str, 0, str.length(), rect);
        }
        textView.setGravity(17);
        textView.invalidate();
    }

    private void b() {
        try {
            String sDFolder = setSDFolder();
            File file = new File(sDFolder + "/androidTrophy.dat");
            if (!file.exists()) {
                file = new File(sDFolder + "/", cY);
            }
            FileWriter fileWriter = new FileWriter(file, false);
            initialize_Trophy(cS);
            for (int i2 = 0; i2 < cS.length; i2++) {
                fileWriter.append((CharSequence) String.valueOf(cS[i2]));
                fileWriter.append('\n');
            }
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e2) {
        }
    }

    private void c() {
        try {
            String sDFolder = setSDFolder();
            if (new File(sDFolder + "/androidTrophy.dat").exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(sDFolder + "/androidTrophy.dat"));
                initialize_Trophy(cS);
                int i2 = 0;
                while (bufferedReader.ready()) {
                    cS[i2] = Integer.parseInt(bufferedReader.readLine());
                    i2++;
                }
                bufferedReader.close();
                for (int i3 = 0; i3 < cS.length; i3++) {
                    if (cS[i3] != 127) {
                        notifyTrophy(i3);
                    }
                }
            }
        } catch (IOException e2) {
        }
    }

    private void d() {
        try {
            String sDFolder = setSDFolder();
            if (new File(sDFolder + "/skt_user.dat").exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(sDFolder + "/skt_user.dat"));
                if (bufferedReader.ready()) {
                    db = bufferedReader.readLine();
                }
                if (bufferedReader.ready()) {
                    dc = bufferedReader.readLine();
                }
                if (bufferedReader.ready()) {
                    dd = bufferedReader.readLine();
                }
                bufferedReader.close();
            }
        } catch (IOException e2) {
        }
    }

    private void e() {
        try {
            String sDFolder = setSDFolder();
            if (new File(sDFolder + "/user.dat").exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(sDFolder + "/user.dat"));
                while (bufferedReader.ready()) {
                    bufferedReader.readLine();
                }
                bufferedReader.close();
            }
        } catch (IOException e2) {
        }
    }

    private static void initBadge(TextView textView, String str, int i2) {
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (E * 28.0f), (int) (F * 25.0f));
        textView.setText(str);
        if (str.length() > 3) {
            textView.setText("99+");
        }
        textView.setTextColor(-1);
        textView.setTextSize(0, (int) (E * 14.0f));
        textView.setGravity(17);
        switch (textView.getText().length()) {
            case 1:
                if (i2 == 0) {
                    textView.setBackgroundResource(2130837515);
                } else {
                    textView.setBackgroundResource(2130837516);
                }
                relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (E * 28.0f), (int) (F * 25.0f));
                break;
            case 2:
                if (i2 == 0) {
                    textView.setBackgroundResource(2130837517);
                } else {
                    textView.setBackgroundResource(2130837518);
                }
                relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (E * 34.0f), (int) (F * 25.0f));
                break;
            case 3:
                if (i2 == 0) {
                    textView.setBackgroundResource(2130837519);
                } else {
                    textView.setBackgroundResource(2130837520);
                }
                relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (E * 43.0f), (int) (F * 25.0f));
                break;
        }
        if (str.compareTo("0") == 0 || str.compareTo("") == 0) {
            textView.setVisibility(4);
        } else {
            textView.setVisibility(0);
        }
        relativeLayout$LayoutParams.addRule(6, aV.getId() + i2);
        relativeLayout$LayoutParams.addRule(1, cm.getId() + i2);
        d.addView(textView, relativeLayout$LayoutParams);
    }

    private static void initialize_Trophy(int[] iArr) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = 127;
        }
    }

    public static native void nativeInit();

    public static boolean needToRemoveFacebook() {
        String lowerCase = Build.MANUFACTURER.toLowerCase();
        String lowerCase2 = Build.MODEL.toLowerCase();
        return (lowerCase.indexOf("motorola") != -1 && lowerCase2.compareTo("milestone") == 0) || !(lowerCase.indexOf("samsung") == -1 || lowerCase2.indexOf("i400") == -1);
    }

    public static void notifyTrophy(int i2) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        bp[bq] = i2;
        bq++;
    }

    private static String setSDFolder() {
        return SUtils.getPreferenceString("SDFolder", "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files", "DungeonHunter2Prefs");
    }

    public static void updateBadge(TextView textView, String str, int i2) {
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (E * 28.0f), (int) (F * 28.0f));
        textView.setText(str);
        if (str.length() > 3) {
            textView.setText("99+");
        }
        textView.setTextColor(-1);
        textView.setTextSize(0, (int) (E * 14.0f));
        textView.setGravity(17);
        switch (textView.getText().length()) {
            case 1:
                if (i2 == 0) {
                    textView.setBackgroundResource(2130837515);
                } else {
                    textView.setBackgroundResource(2130837516);
                }
                relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (E * 28.0f), (int) (F * 25.0f));
                break;
            case 2:
                if (i2 == 0) {
                    textView.setBackgroundResource(2130837517);
                } else {
                    textView.setBackgroundResource(2130837518);
                }
                relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (E * 34.0f), (int) (F * 25.0f));
                break;
            case 3:
                if (i2 == 0) {
                    textView.setBackgroundResource(2130837519);
                } else {
                    textView.setBackgroundResource(2130837520);
                }
                relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (E * 43.0f), (int) (F * 25.0f));
                break;
        }
        if (str.compareTo("0") == 0 || str.compareTo("") == 0) {
            textView.setVisibility(4);
        } else {
            textView.setVisibility(0);
        }
        relativeLayout$LayoutParams.addRule(6, aV.getId() + i2);
        relativeLayout$LayoutParams.addRule(1, cm.getId() + i2);
        d.updateViewLayout(textView, relativeLayout$LayoutParams);
    }

    public static void updateWebView() {
        updateBadge(bB, r, bH);
        updateBadge(bD, t, bI);
        updateBadge(bC, s, bJ);
        bM.setText(cc);
        bB.invalidate();
        bD.invalidate();
        bC.invalidate();
        bM.invalidate();
        if (ch) {
            aS.setText("Twitter");
        } else if (ci) {
            aS.setText("Facebook");
        } else if (cT) {
            if (aQ.intValue() <= 0 || aL[aQ.intValue() - 1] == null) {
                aS.setText("");
            } else {
                aS.setText(aL[aQ.intValue() - 1]);
            }
        }
        autoScaleTextViewTextToWidth(aS, J, 25);
        aS.setGravity(17);
        aS.invalidate();
        if (aQ.intValue() > 1) {
            String url = f20a.getUrl();
            aB = url;
            if (url.indexOf(Y) != -1) {
                aA = "";
            }
            if (aB.indexOf("http://livewebapp.gameloft.com/glive/leaderboards/index/gid/") != -1 && aA.compareTo("") == 0) {
                aA = aL[aQ.intValue() - 2];
            }
            if (aB.indexOf("http://livewebapp.gameloft.com/glive/leaderboards/index/gid") == -1 && aB.indexOf("http://livewebapp.gameloft.com/glive/leaderboards/national/gid/") == -1 && aB.indexOf("http://livewebapp.gameloft.com/glive/leaderboards/friends/gid/") == -1) {
                if (aB.compareTo(af + "/username") == 0) {
                    if (A.length() > 15) {
                        h.setText(A.substring(0, 14) + "...");
                    } else {
                        h.setText(A);
                    }
                } else if (aB.indexOf("http://livewebapp.gameloft.com/glive/login/recover-password") != -1) {
                    if (aL[0].length() > 15) {
                        h.setText(aL[0].substring(0, 14) + "...");
                    } else {
                        h.setText(aL[0]);
                    }
                } else if (aL[aQ.intValue() - 2].length() > 15) {
                    h.setText(aL[aQ.intValue() - 2].substring(0, 14) + "...");
                } else {
                    h.setText(aL[aQ.intValue() - 2]);
                }
            } else if (aA.length() > 15) {
                h.setText(aA.substring(0, 14) + "...");
            } else {
                h.setText(aA);
            }
            autoScaleTextViewTextToWidth(h, 144, 11);
            h.setGravity(17);
            h.invalidate();
        }
        if (aQ.intValue() > 1 && o == 0) {
            RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (E * 144.0f), (int) (F * 40.0f));
            relativeLayout$LayoutParams.addRule(9);
            relativeLayout$LayoutParams.addRule(15);
            RelativeLayout$LayoutParams relativeLayout$LayoutParams2 = new RelativeLayout$LayoutParams((int) (E * 144.0f), (int) (F * 40.0f));
            relativeLayout$LayoutParams2.addRule(9);
            relativeLayout$LayoutParams2.addRule(15);
            if (f != null && g != null) {
                f.addView(g, relativeLayout$LayoutParams);
                h.setGravity(17);
                f.addView(h, relativeLayout$LayoutParams2);
                o++;
            }
        } else if (aQ.intValue() < 2 && o != 0) {
            f.removeView(g);
            f.removeView(h);
            o = 0;
        }
        for (int i2 = 0; i2 < aQ.intValue(); i2++) {
        }
    }

    public final void a() {
        try {
            SharedPreferences$Editor sharedPreferences$EditorEdit = getSharedPreferences(O, 0).edit();
            sharedPreferences$EditorEdit.putString("username", Encrypter.crypt(as));
            sharedPreferences$EditorEdit.putString("password", Encrypter.crypt(at));
            sharedPreferences$EditorEdit.commit();
        } catch (Exception e2) {
        }
    }

    public final void a(int i2) {
        AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams;
        k.removeViews(2, aO);
        while (i2 < aO - 1) {
            aM[i2] = aM[i2 + 1];
            aN[i2] = aN[i2 + 1];
            i2++;
        }
        aO--;
        by = 40;
        bz = 8;
        aP = 1;
        for (int i3 = 0; i3 < aO; i3++) {
            TextView textView = new TextView(this.aT);
            textView.setId(i3);
            Rect rect = new Rect();
            textView.setText(aM[i3]);
            textView.setTextSize(0, 18.0f);
            textView.setTextColor(-1);
            textView.getPaint().getTextBounds(aM[i3], 0, aM[i3].length(), rect);
            PaintDrawable paintDrawable = new PaintDrawable(-10716998);
            paintDrawable.setCornerRadius(6.0f);
            textView.setBackgroundDrawable(paintDrawable);
            textView.setGravity(17);
            new AbsoluteLayout$LayoutParams(rect.width() + 10, 24, 170, 5);
            if (by + rect.width() + 10 < bu) {
                absoluteLayout$LayoutParams = new AbsoluteLayout$LayoutParams(rect.width() + 10, 24, by, bz);
                by = rect.width() + by + 10 + 5;
            } else {
                by = 8;
                bz = bz + 24 + 5;
                absoluteLayout$LayoutParams = new AbsoluteLayout$LayoutParams(rect.width() + 10, 24, by, bz);
                by = rect.width() + by + 10 + 5;
                aP++;
            }
            textView.setOnClickListener(new t(this));
            k.addView(textView, i3 + 2, absoluteLayout$LayoutParams);
        }
        if (aP <= 3) {
            k.updateViewLayout(bA, new AbsoluteLayout$LayoutParams(45, 46, B - 50, 25));
        }
    }

    public final void a(String str) {
        AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams;
        String strDecode = URLDecoder.decode(str);
        TextView textView = new TextView(this.aT);
        textView.setId(aO - 1);
        Rect rect = new Rect();
        textView.setText(strDecode);
        textView.setTextSize(0, 18.0f);
        textView.setTextColor(-1);
        textView.getPaint().getTextBounds(strDecode, 0, strDecode.length(), rect);
        PaintDrawable paintDrawable = new PaintDrawable(-10716998);
        paintDrawable.setCornerRadius(6.0f);
        textView.setBackgroundDrawable(paintDrawable);
        textView.setGravity(17);
        new AbsoluteLayout$LayoutParams(rect.width() + 10, 24, 170, 5);
        if (by + rect.width() + 10 < bu) {
            absoluteLayout$LayoutParams = new AbsoluteLayout$LayoutParams(rect.width() + 10, 24, by, bz);
            by = rect.width() + by + 10 + 5;
        } else {
            by = 8;
            bz = bz + 24 + 5;
            absoluteLayout$LayoutParams = new AbsoluteLayout$LayoutParams(rect.width() + 10, 24, by, bz);
            by = rect.width() + by + 10 + 5;
            aP++;
        }
        textView.setOnClickListener(new r(this));
        if (aP < 4) {
            k.addView(textView, (aO - 1) + 2, absoluteLayout$LayoutParams);
            return;
        }
        k.updateViewLayout(bA, new AbsoluteLayout$LayoutParams(45, 46, B, 25));
        aO--;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        float f2;
        RelativeLayout$LayoutParams relativeLayout$LayoutParams;
        RelativeLayout$LayoutParams relativeLayout$LayoutParams2;
        RelativeLayout$LayoutParams relativeLayout$LayoutParams3;
        RelativeLayout$LayoutParams relativeLayout$LayoutParams4;
        try {
            if (DungeonHunter2.w == null) {
                new Intent(this, (Class<?>) DungeonHunter2.class);
                finish();
                super.onCreate(bundle);
                cf = false;
            } else {
                super.onCreate(bundle);
                cf = true;
            }
            getWindow().setFlags(1024, 1024);
            getWindow().setSoftInputMode(32);
            bq = 0;
            Intent intent = getIntent();
            bQ = intent.getExtras().getInt("language");
            ao = intent.getExtras().getString("gginame");
            String string = intent.getExtras().getString("goto_page");
            String str = string == null ? "index" : string;
            this.aT = this;
            ap = Build.MANUFACTURER + "_" + Build.MODEL;
            aq = Build$VERSION.RELEASE;
            this.cd = ((WindowManager) getSystemService("window")).getDefaultDisplay();
            this.cd.getMetrics(new DisplayMetrics());
            B = this.cd.getWidth();
            C = this.cd.getHeight();
            if (Build$VERSION.SDK_INT == 11 || Build$VERSION.SDK_INT == 12) {
                D = C;
                C -= 48;
            } else if (Build$VERSION.SDK_INT == 13) {
                D = C + 48;
            } else if (ap.toLowerCase().contains("kindle")) {
                D = C;
                C -= 20;
            } else {
                D = C;
            }
            f20a = new WebView(this);
            if (B > 480) {
                if (f20a.getSettings().getUserAgentString().contains("Mobile")) {
                    E = B / 480.0f;
                } else {
                    E = 1.0f;
                }
            } else if (B == 240) {
                E = 0.6f;
            } else {
                E = B / 480.0f;
            }
            if (C > 800) {
                if (f20a.getSettings().getUserAgentString().contains("Mobile")) {
                    F = C / 800.0f;
                } else {
                    F = 1.0f;
                }
            } else if (C == 320) {
                F = 0.6f;
            } else {
                F = C / 800.0f;
            }
            if (B >= 480) {
                J = B - ((int) (330.0f * E));
            } else if (B == 240) {
                J = 100;
            } else {
                J = 160;
            }
            K = (int) (E * G);
            L = (int) (F * H);
            M = (int) (E * J);
            N = (int) (E * I);
            EditText editText = new EditText(this);
            bN = editText;
            editText.setOnClickListener(new h(this));
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams = new AbsoluteLayout$LayoutParams(B - 70, 100, 60, 5);
            bN.setGravity(48);
            bN.setMaxLines(3);
            bN.setTextSize(0, 20.0f);
            bN.setMaxWidth(B - 70);
            bN.setText("john@example.com, alex@example.com");
            bN.setTextColor(-8750470);
            bN.setTypeface(Typeface.defaultFromStyle(2));
            AbsoluteLayout absoluteLayout = new AbsoluteLayout(this);
            AbsoluteLayout absoluteLayout2 = new AbsoluteLayout(this);
            absoluteLayout.setBackgroundColor(-8750470);
            absoluteLayout2.setBackgroundColor(-8750470);
            AbsoluteLayout absoluteLayout3 = new AbsoluteLayout(this);
            n = absoluteLayout3;
            absoluteLayout3.setBackgroundColor(-8750470);
            bR = new Button(this);
            bS = new Button(this);
            WebView webView = new WebView(this);
            bL = webView;
            webView.getSettings().setJavaScriptEnabled(true);
            bL.setScrollBarStyle(0);
            bL.setWebViewClient(new GLiveMain$HelloWebViewClient(this, (byte) 0));
            bL.addJavascriptInterface(new GLiveMain$GLiveJavaScriptInterface(this), "GLIVE");
            AbsoluteLayout absoluteLayout4 = new AbsoluteLayout(this);
            l = new AbsoluteLayout(this);
            absoluteLayout4.setBackgroundColor(-8750470);
            bR.setText(getString(cy[bQ], new Object[]{this}));
            bR.setTextSize(0, 12.0f);
            bR.setOnClickListener(new s(this));
            bS.setText(getString(cB[bQ], new Object[]{this}));
            bS.setTextSize(0, 12.0f);
            bS.setOnClickListener(new v(this));
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams2 = new AbsoluteLayout$LayoutParams(90, 50, B - 93, 5);
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams3 = new AbsoluteLayout$LayoutParams(90, 50, 3, 5);
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams4 = new AbsoluteLayout$LayoutParams(B, 60, 0, 0);
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams5 = new AbsoluteLayout$LayoutParams(B, 130, 0, 60);
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams6 = new AbsoluteLayout$LayoutParams(B, C - 190, 0, 190);
            TextView textView = new TextView(this);
            bT = textView;
            textView.setText(getString(cE[bQ], new Object[]{this}));
            bT.setTextSize(0, (int) (E * 26.0f));
            bT.setTextColor(-1);
            bT.setGravity(17);
            TextView textView2 = new TextView(this);
            TextView textView3 = new TextView(this);
            bM = textView3;
            textView3.setText(getString(cO[bQ]) + y);
            textView2.setText(getString(cP[bQ], new Object[]{this}));
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams7 = new AbsoluteLayout$LayoutParams(50, 40, 5, 15);
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams8 = new AbsoluteLayout$LayoutParams(B, 40, 5, 102);
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams9 = new AbsoluteLayout$LayoutParams(B, 1, 0, 105);
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams10 = new AbsoluteLayout$LayoutParams(B, 1, 0, 129);
            textView2.setTextSize(0, 15.0f);
            textView2.setTextColor(-16777216);
            bM.setTextSize(0, 20.0f);
            bM.setTextColor(-16777216);
            l.addView(bN, absoluteLayout$LayoutParams);
            l.addView(absoluteLayout, absoluteLayout$LayoutParams9);
            l.addView(absoluteLayout2, absoluteLayout$LayoutParams10);
            l.addView(textView2, 0, absoluteLayout$LayoutParams7);
            l.addView(bM, 0, absoluteLayout$LayoutParams8);
            l.setBackgroundColor(-1);
            n.addView(bL, absoluteLayout$LayoutParams6);
            n.addView(absoluteLayout4, absoluteLayout$LayoutParams4);
            absoluteLayout4.addView(bR, absoluteLayout$LayoutParams2);
            absoluteLayout4.addView(bS, absoluteLayout$LayoutParams3);
            absoluteLayout4.addView(bT, absoluteLayout$LayoutParams4);
            n.addView(l, absoluteLayout$LayoutParams5);
            AbsoluteLayout absoluteLayout5 = new AbsoluteLayout(this);
            m = absoluteLayout5;
            absoluteLayout5.setBackgroundColor(-8750470);
            bU = new Button(this);
            bV = new Button(this);
            AbsoluteLayout absoluteLayout6 = new AbsoluteLayout(this);
            k = new AbsoluteLayout(this);
            WebView webView2 = new WebView(this);
            b = webView2;
            webView2.getSettings().setJavaScriptEnabled(true);
            b.setWebViewClient(new GLiveMain$HelloWebViewClient(this, (byte) 0));
            ImageButton imageButton = new ImageButton(this);
            bA = imageButton;
            imageButton.setBackgroundResource(2130837505);
            bA.setOnClickListener(new x(this));
            absoluteLayout6.setBackgroundColor(-8750470);
            bU.setText(getString(cy[bQ], new Object[]{this}));
            bU.setTextSize(0, 12.0f);
            bU.setOnClickListener(new y(this));
            bV.setText(getString(cB[bQ], new Object[]{this}));
            bV.setTextSize(0, 12.0f);
            bV.setOnClickListener(new z(this));
            bo = new EditText(this);
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams11 = new AbsoluteLayout$LayoutParams(B - 20, (C - 60) - ((int) (F * 125.0f)), 10, ((int) (F * 115.0f)) + 60);
            int i2 = bQ == 2 ? 20 : 0;
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams12 = new AbsoluteLayout$LayoutParams(i2 + 90, 50, B - (i2 + 93), 5);
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams13 = new AbsoluteLayout$LayoutParams(90, 50, 3, 5);
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams14 = new AbsoluteLayout$LayoutParams(B, 50, 0, 0);
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams15 = new AbsoluteLayout$LayoutParams(B, (int) (F * 100.0f), 0, 60);
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams16 = new AbsoluteLayout$LayoutParams(B, 50, 0, 0);
            PaintDrawable paintDrawable = new PaintDrawable(-1);
            paintDrawable.setCornerRadius(9.0f);
            bo.setBackgroundDrawable(paintDrawable);
            bo.setGravity(48);
            bo.setMaxLines(15);
            bo.setMaxWidth(B - 20);
            TextView textView4 = new TextView(this);
            bW = textView4;
            textView4.setText(getString(cE[bQ], new Object[]{this}));
            bW.setTextSize(0, (int) (E * 26.0f));
            bW.setTextColor(-1);
            bW.setGravity(17);
            TextView textView5 = new TextView(this);
            textView5.setText(getString(cP[bQ], new Object[]{this}));
            AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams17 = new AbsoluteLayout$LayoutParams((int) (E * 50.0f), (int) (F * 40.0f), (int) (E * 5.0f), (int) (F * 5.0f));
            textView5.setTextSize(0, 15.0f);
            textView5.setTextColor(-16777216);
            k.addView(textView5, 0, absoluteLayout$LayoutParams17);
            k.setBackgroundColor(-1);
            k.addView(bA, 1, new AbsoluteLayout$LayoutParams((int) (E * 45.0f), (int) (F * 46.0f), B - ((int) (E * 50.0f)), (int) (F * 25.0f)));
            m.addView(k, absoluteLayout$LayoutParams15);
            m.addView(absoluteLayout6, absoluteLayout$LayoutParams14);
            absoluteLayout6.addView(bU, absoluteLayout$LayoutParams12);
            absoluteLayout6.addView(bV, absoluteLayout$LayoutParams13);
            absoluteLayout6.addView(bW, absoluteLayout$LayoutParams16);
            m.addView(bo, absoluteLayout$LayoutParams11);
            ImageButton imageButton2 = new ImageButton(this);
            aY = imageButton2;
            imageButton2.setBackgroundResource(2130837557);
            aY.setOnTouchListener(new ac(this));
            CharSequence[][] charSequenceArr = {new CharSequence[]{getString(cA[0], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[1], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[2], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[3], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[4], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[5], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[6], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[7], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[8], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[9], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[10], new Object[]{this}), "Twitter", "Facebook"}};
            CharSequence[][] charSequenceArr2 = {new CharSequence[]{getString(cA[0], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[1], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[2], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[3], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[4], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[5], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[6], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[7], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[8], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[9], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[10], new Object[]{this}), "Twitter"}};
            ImageButton imageButton3 = new ImageButton(this);
            aZ = imageButton3;
            imageButton3.setBackgroundResource(2130837580);
            aZ.setOnTouchListener(new ad(this, charSequenceArr2, charSequenceArr));
            CharSequence[][] charSequenceArr3 = {new CharSequence[]{getString(cG[0], new Object[]{this}), getString(cD[0], new Object[]{this}), getString(cF[0], new Object[]{this}), getString(cK[0], new Object[]{this}), getString(cH[0], new Object[]{this})}, new CharSequence[]{getString(cG[1], new Object[]{this}), getString(cD[1], new Object[]{this}), getString(cF[1], new Object[]{this}), getString(cK[1], new Object[]{this}), getString(cH[1], new Object[]{this})}, new CharSequence[]{getString(cG[2], new Object[]{this}), getString(cD[2], new Object[]{this}), getString(cF[2], new Object[]{this}), getString(cK[2], new Object[]{this}), getString(cH[2], new Object[]{this})}, new CharSequence[]{getString(cG[3], new Object[]{this}), getString(cD[3], new Object[]{this}), getString(cF[3], new Object[]{this}), getString(cK[3], new Object[]{this}), getString(cH[3], new Object[]{this})}, new CharSequence[]{getString(cG[4], new Object[]{this}), getString(cD[4], new Object[]{this}), getString(cF[4], new Object[]{this}), getString(cK[4], new Object[]{this}), getString(cH[4], new Object[]{this})}, new CharSequence[]{getString(cG[5], new Object[]{this}), getString(cD[5], new Object[]{this}), getString(cF[5], new Object[]{this}), getString(cK[5], new Object[]{this}), getString(cH[5], new Object[]{this})}, new CharSequence[]{getString(cG[6], new Object[]{this}), getString(cD[6], new Object[]{this}), getString(cF[6], new Object[]{this}), getString(cK[6], new Object[]{this}), getString(cH[6], new Object[]{this})}, new CharSequence[]{getString(cG[7], new Object[]{this}), getString(cD[7], new Object[]{this}), getString(cF[7], new Object[]{this}), getString(cK[7], new Object[]{this}), getString(cH[7], new Object[]{this})}, new CharSequence[]{getString(cG[8], new Object[]{this}), getString(cD[8], new Object[]{this}), getString(cF[8], new Object[]{this}), getString(cK[8], new Object[]{this}), getString(cH[8], new Object[]{this})}, new CharSequence[]{getString(cG[9], new Object[]{this}), getString(cD[9], new Object[]{this}), getString(cF[9], new Object[]{this}), getString(cK[9], new Object[]{this}), getString(cH[9], new Object[]{this})}, new CharSequence[]{getString(cG[10], new Object[]{this}), getString(cD[10], new Object[]{this}), getString(cF[10], new Object[]{this}), getString(cK[10], new Object[]{this}), getString(cH[10], new Object[]{this})}};
            CharSequence[][] charSequenceArr4 = {new CharSequence[]{getString(cG[0], new Object[]{this}), getString(cD[0], new Object[]{this}), getString(cF[0], new Object[]{this}), getString(cH[0], new Object[]{this})}, new CharSequence[]{getString(cG[1], new Object[]{this}), getString(cD[1], new Object[]{this}), getString(cF[1], new Object[]{this}), getString(cH[1], new Object[]{this})}, new CharSequence[]{getString(cG[2], new Object[]{this}), getString(cD[2], new Object[]{this}), getString(cF[2], new Object[]{this}), getString(cH[2], new Object[]{this})}, new CharSequence[]{getString(cG[3], new Object[]{this}), getString(cD[3], new Object[]{this}), getString(cF[3], new Object[]{this}), getString(cH[3], new Object[]{this})}, new CharSequence[]{getString(cG[4], new Object[]{this}), getString(cD[4], new Object[]{this}), getString(cF[4], new Object[]{this}), getString(cH[4], new Object[]{this})}, new CharSequence[]{getString(cG[5], new Object[]{this}), getString(cD[5], new Object[]{this}), getString(cF[5], new Object[]{this}), getString(cH[5], new Object[]{this})}, new CharSequence[]{getString(cG[6], new Object[]{this}), getString(cD[6], new Object[]{this}), getString(cF[6], new Object[]{this}), getString(cH[6], new Object[]{this})}, new CharSequence[]{getString(cG[7], new Object[]{this}), getString(cD[7], new Object[]{this}), getString(cF[7], new Object[]{this}), getString(cH[7], new Object[]{this})}, new CharSequence[]{getString(cG[8], new Object[]{this}), getString(cD[8], new Object[]{this}), getString(cF[8], new Object[]{this}), getString(cH[8], new Object[]{this})}, new CharSequence[]{getString(cG[9], new Object[]{this}), getString(cD[9], new Object[]{this}), getString(cF[9], new Object[]{this}), getString(cH[9], new Object[]{this})}, new CharSequence[]{getString(cG[10], new Object[]{this}), getString(cD[10], new Object[]{this}), getString(cF[10], new Object[]{this}), getString(cH[10], new Object[]{this})}};
            CharSequence[][] charSequenceArr5 = {new CharSequence[]{getString(cD[0], new Object[]{this}), getString(cF[0], new Object[]{this}), getString(cI[0], new Object[]{this})}, new CharSequence[]{getString(cD[1], new Object[]{this}), getString(cF[1], new Object[]{this}), getString(cI[1], new Object[]{this})}, new CharSequence[]{getString(cD[2], new Object[]{this}), getString(cF[2], new Object[]{this}), getString(cI[2], new Object[]{this})}, new CharSequence[]{getString(cD[3], new Object[]{this}), getString(cF[3], new Object[]{this}), getString(cI[3], new Object[]{this})}, new CharSequence[]{getString(cD[4], new Object[]{this}), getString(cF[4], new Object[]{this}), getString(cI[4], new Object[]{this})}, new CharSequence[]{getString(cD[5], new Object[]{this}), getString(cF[5], new Object[]{this}), getString(cI[5], new Object[]{this})}, new CharSequence[]{getString(cD[6], new Object[]{this}), getString(cF[6], new Object[]{this}), getString(cI[6], new Object[]{this})}, new CharSequence[]{getString(cD[7], new Object[]{this}), getString(cF[7], new Object[]{this}), getString(cI[7], new Object[]{this})}, new CharSequence[]{getString(cD[8], new Object[]{this}), getString(cF[8], new Object[]{this}), getString(cI[8], new Object[]{this})}, new CharSequence[]{getString(cD[9], new Object[]{this}), getString(cF[9], new Object[]{this}), getString(cI[9], new Object[]{this})}, new CharSequence[]{getString(cD[10], new Object[]{this}), getString(cF[10], new Object[]{this}), getString(cI[10], new Object[]{this})}};
            CharSequence[][] charSequenceArr6 = {new CharSequence[]{getString(cD[0], new Object[]{this}), getString(cF[0], new Object[]{this})}, new CharSequence[]{getString(cD[1], new Object[]{this}), getString(cF[1], new Object[]{this})}, new CharSequence[]{getString(cD[2], new Object[]{this}), getString(cF[2], new Object[]{this})}, new CharSequence[]{getString(cD[3], new Object[]{this}), getString(cF[3], new Object[]{this})}, new CharSequence[]{getString(cD[4], new Object[]{this}), getString(cF[4], new Object[]{this})}, new CharSequence[]{getString(cD[5], new Object[]{this}), getString(cF[5], new Object[]{this})}, new CharSequence[]{getString(cD[6], new Object[]{this}), getString(cF[6], new Object[]{this})}, new CharSequence[]{getString(cD[7], new Object[]{this}), getString(cF[7], new Object[]{this})}, new CharSequence[]{getString(cD[8], new Object[]{this}), getString(cF[8], new Object[]{this})}, new CharSequence[]{getString(cD[9], new Object[]{this}), getString(cF[9], new Object[]{this})}, new CharSequence[]{getString(cD[10], new Object[]{this}), getString(cF[10], new Object[]{this})}};
            CharSequence[] charSequenceArr7 = {getString(cL[0], new Object[]{this}), getString(cM[0], new Object[]{this})};
            CharSequence[] charSequenceArr8 = {getString(cL[1], new Object[]{this}), getString(cM[1], new Object[]{this})};
            CharSequence[] charSequenceArr9 = {getString(cL[2], new Object[]{this}), getString(cM[2], new Object[]{this})};
            CharSequence[] charSequenceArr10 = {getString(cL[3], new Object[]{this}), getString(cM[3], new Object[]{this})};
            CharSequence[] charSequenceArr11 = {getString(cL[4], new Object[]{this}), getString(cM[4], new Object[]{this})};
            CharSequence[] charSequenceArr12 = {getString(cL[5], new Object[]{this}), getString(cM[5], new Object[]{this})};
            CharSequence[] charSequenceArr13 = {getString(cL[6], new Object[]{this}), getString(cM[6], new Object[]{this})};
            CharSequence[] charSequenceArr14 = {getString(cL[7], new Object[]{this}), getString(cM[7], new Object[]{this})};
            CharSequence[] charSequenceArr15 = {getString(cL[8], new Object[]{this}), getString(cM[8], new Object[]{this})};
            CharSequence[] charSequenceArr16 = {getString(cL[9], new Object[]{this}), getString(cM[9], new Object[]{this})};
            CharSequence[] charSequenceArr17 = {getString(cL[10], new Object[]{this}), getString(cM[10], new Object[]{this})};
            cc = getString(cO[bQ]) + y;
            ImageButton imageButton4 = new ImageButton(this);
            bd = imageButton4;
            imageButton4.setBackgroundResource(2130837563);
            bd.setOnTouchListener(new ah(this, charSequenceArr3, new CharSequence[][]{charSequenceArr7, charSequenceArr8, charSequenceArr9, charSequenceArr10, charSequenceArr11, charSequenceArr12, charSequenceArr13, charSequenceArr14, charSequenceArr15, charSequenceArr16, charSequenceArr17}, charSequenceArr4, charSequenceArr5, charSequenceArr6));
            ImageButton imageButton5 = new ImageButton(this);
            ba = imageButton5;
            imageButton5.setBackgroundResource(2130837504);
            ba.setOnTouchListener(new i(this));
            ImageButton imageButton6 = new ImageButton(this);
            bc = imageButton6;
            imageButton6.setBackgroundResource(2130837560);
            bc.setOnTouchListener(new j(this));
            ImageButton imageButton7 = new ImageButton(this);
            bb = imageButton7;
            imageButton7.setBackgroundResource(2130837507);
            bb.setOnTouchListener(new k(this));
            if (F < 1.0f) {
                f2 = (C == 320 && B == 240) ? 0.25f : 1.0f - E;
            } else {
                f2 = F > 1.0f ? E - 0.7f : 0.5f;
            }
            ImageButton imageButton8 = new ImageButton(this);
            aU = imageButton8;
            imageButton8.setBackgroundResource(2130837582);
            aU.setImageResource(2130837549);
            aU.setScaleType(ImageView$ScaleType.FIT_CENTER);
            aU.setPadding((int) (35.0f * f2), (int) (15.0f * f2), (int) (35.0f * f2), (int) ((5.0f * f2) + (F * 21.0f)));
            aU.setOnTouchListener(new l(this));
            ImageButton imageButton9 = new ImageButton(this);
            aV = imageButton9;
            imageButton9.setBackgroundResource(2130837587);
            aV.setImageResource(2130837556);
            aV.setScaleType(ImageView$ScaleType.FIT_CENTER);
            aV.setPadding((int) (35.0f * f2), (int) (15.0f * f2), (int) (35.0f * f2), (int) ((5.0f * f2) + (F * 21.0f)));
            aV.setOnTouchListener(new m(this));
            ImageButton imageButton10 = new ImageButton(this);
            aW = imageButton10;
            imageButton10.setBackgroundResource(2130837587);
            aW.setImageResource(2130837538);
            aW.setScaleType(ImageView$ScaleType.FIT_CENTER);
            aW.setPadding((int) (35.0f * f2), (int) (15.0f * f2), (int) (35.0f * f2), (int) ((5.0f * f2) + (F * 21.0f)));
            aW.setOnTouchListener(new n(this));
            ImageButton imageButton11 = new ImageButton(this);
            aX = imageButton11;
            imageButton11.setBackgroundResource(2130837587);
            aX.setImageResource(2130837540);
            aX.setScaleType(ImageView$ScaleType.FIT_CENTER);
            aX.setPadding((int) (35.0f * f2), (int) (15.0f * f2), (int) (35.0f * f2), (int) ((5.0f * f2) + (F * 21.0f)));
            aX.setOnTouchListener(new o(this));
            bX = new TextView(this);
            bY = new TextView(this);
            bZ = new TextView(this);
            ca = new TextView(this);
            h = new TextView(this);
            ImageButton imageButton12 = new ImageButton(this);
            g = imageButton12;
            imageButton12.setBackgroundColor(0);
            g.setBackgroundResource(2130837508);
            g.setOnTouchListener(new p(this));
            j = new TextView(this);
            ImageButton imageButton13 = new ImageButton(this);
            i = imageButton13;
            imageButton13.setBackgroundColor(0);
            i.setBackgroundResource(2130837562);
            i.setOnTouchListener(new q(this));
            aS = new TextView(this);
            bB = new TextView(this);
            bC = new TextView(this);
            bD = new TextView(this);
            aL[0] = "";
            if (aQ.intValue() <= 0) {
                aS.setText("");
            } else {
                aS.setText(aL[aQ.intValue() - 1]);
            }
            autoScaleTextViewTextToWidth(aS, J, 25);
            aS.setGravity(17);
            aS.invalidate();
            bX.setText(getString(cq[bQ], new Object[]{this}));
            autoScaleTextViewTextToWidth(bX, G, 13);
            bY.setText(getString(cs[bQ], new Object[]{this}));
            autoScaleTextViewTextToWidth(bY, G, 13);
            bZ.setText(getString(ct[bQ], new Object[]{this}));
            autoScaleTextViewTextToWidth(bZ, G, 13);
            ca.setText(getString(cu[bQ], new Object[]{this}));
            autoScaleTextViewTextToWidth(ca, G, 13);
            c = new RelativeLayout(this);
            RelativeLayout relativeLayout = new RelativeLayout(this);
            d = relativeLayout;
            relativeLayout.setBackgroundResource(2130837536);
            View view = new View(this);
            e = view;
            view.setEnabled(true);
            RelativeLayout relativeLayout2 = new RelativeLayout(this);
            f = relativeLayout2;
            relativeLayout2.setBackgroundResource(2130837548);
            RelativeLayout$LayoutParams relativeLayout$LayoutParams5 = new RelativeLayout$LayoutParams(M, (int) (F * 35.0f));
            relativeLayout$LayoutParams5.addRule(13);
            f.addView(aS, relativeLayout$LayoutParams5);
            RelativeLayout$LayoutParams relativeLayout$LayoutParams6 = new RelativeLayout$LayoutParams(K, L);
            RelativeLayout$LayoutParams relativeLayout$LayoutParams7 = new RelativeLayout$LayoutParams(K, L);
            RelativeLayout$LayoutParams relativeLayout$LayoutParams8 = new RelativeLayout$LayoutParams(K, L);
            RelativeLayout$LayoutParams relativeLayout$LayoutParams9 = new RelativeLayout$LayoutParams(K, L);
            if (C == 320 && B == 240) {
                relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(K, 15);
                relativeLayout$LayoutParams2 = new RelativeLayout$LayoutParams(K, 15);
                relativeLayout$LayoutParams3 = new RelativeLayout$LayoutParams(K, 15);
                relativeLayout$LayoutParams4 = new RelativeLayout$LayoutParams(K, 15);
            } else {
                relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(K, (int) ((5.0f * f2) + (F * 21.0f)));
                relativeLayout$LayoutParams2 = new RelativeLayout$LayoutParams(K, (int) ((5.0f * f2) + (F * 21.0f)));
                relativeLayout$LayoutParams3 = new RelativeLayout$LayoutParams(K, (int) ((5.0f * f2) + (F * 21.0f)));
                relativeLayout$LayoutParams4 = new RelativeLayout$LayoutParams(K, (int) ((f2 * 5.0f) + (F * 21.0f)));
            }
            aU.setId(XPlayer.U);
            aV.setId(XPlayer.V);
            aW.setId(10003);
            aX.setId(XPlayer.X);
            View view2 = new View(this);
            view2.setVisibility(4);
            view2.setId(20001);
            View view3 = new View(this);
            view3.setVisibility(4);
            view3.setId(20002);
            View view4 = new View(this);
            view4.setVisibility(4);
            view4.setId(20003);
            View view5 = new View(this);
            cm = view5;
            view5.setVisibility(4);
            cm.setId(30001);
            View view6 = new View(this);
            cn = view6;
            view6.setVisibility(4);
            cn.setId(30002);
            View view7 = new View(this);
            co = view7;
            view7.setVisibility(4);
            co.setId(30003);
            RelativeLayout$LayoutParams relativeLayout$LayoutParams10 = new RelativeLayout$LayoutParams(N, L);
            RelativeLayout$LayoutParams relativeLayout$LayoutParams11 = new RelativeLayout$LayoutParams(N, L);
            RelativeLayout$LayoutParams relativeLayout$LayoutParams12 = new RelativeLayout$LayoutParams(N, L);
            RelativeLayout$LayoutParams relativeLayout$LayoutParams13 = new RelativeLayout$LayoutParams((int) (0.75d * ((double) K)), L);
            relativeLayout$LayoutParams13.addRule(5, aV.getId());
            RelativeLayout$LayoutParams relativeLayout$LayoutParams14 = new RelativeLayout$LayoutParams((int) (0.75d * ((double) K)), L);
            relativeLayout$LayoutParams14.addRule(5, aW.getId());
            RelativeLayout$LayoutParams relativeLayout$LayoutParams15 = new RelativeLayout$LayoutParams((int) (0.75d * ((double) K)), L);
            relativeLayout$LayoutParams15.addRule(5, aX.getId());
            relativeLayout$LayoutParams6.addRule(15);
            relativeLayout$LayoutParams6.addRule(0, view2.getId());
            relativeLayout$LayoutParams.addRule(8, aU.getId());
            relativeLayout$LayoutParams.addRule(5, aU.getId());
            relativeLayout$LayoutParams10.addRule(15);
            relativeLayout$LayoutParams10.addRule(0, aV.getId());
            relativeLayout$LayoutParams7.addRule(15);
            relativeLayout$LayoutParams7.addRule(0, view3.getId());
            relativeLayout$LayoutParams2.addRule(8, aV.getId());
            relativeLayout$LayoutParams2.addRule(5, aV.getId());
            relativeLayout$LayoutParams11.addRule(15);
            relativeLayout$LayoutParams11.addRule(14);
            relativeLayout$LayoutParams8.addRule(15);
            relativeLayout$LayoutParams8.addRule(1, view3.getId());
            relativeLayout$LayoutParams3.addRule(8, aW.getId());
            relativeLayout$LayoutParams3.addRule(5, aW.getId());
            relativeLayout$LayoutParams12.addRule(15);
            relativeLayout$LayoutParams12.addRule(1, aW.getId());
            relativeLayout$LayoutParams9.addRule(15);
            relativeLayout$LayoutParams9.addRule(1, view4.getId());
            relativeLayout$LayoutParams4.addRule(8, aX.getId());
            relativeLayout$LayoutParams4.addRule(5, aX.getId());
            d.addView(view2, relativeLayout$LayoutParams10);
            d.addView(view3, relativeLayout$LayoutParams11);
            d.addView(view4, relativeLayout$LayoutParams12);
            d.addView(aU, relativeLayout$LayoutParams6);
            d.addView(bX, relativeLayout$LayoutParams);
            d.addView(aV, relativeLayout$LayoutParams7);
            d.addView(bY, relativeLayout$LayoutParams2);
            d.addView(cm, relativeLayout$LayoutParams13);
            d.addView(aW, relativeLayout$LayoutParams8);
            d.addView(bZ, relativeLayout$LayoutParams3);
            d.addView(cn, relativeLayout$LayoutParams14);
            d.addView(aX, relativeLayout$LayoutParams9);
            d.addView(ca, relativeLayout$LayoutParams4);
            d.addView(co, relativeLayout$LayoutParams15);
            f20a.getSettings().setJavaScriptEnabled(true);
            f20a.getSettings().setAppCacheEnabled(false);
            f20a.getSettings().setSupportZoom(false);
            f20a.getSettings().setDefaultTextEncodingName("utf-8");
            f20a.getSettings().setLightTouchEnabled(true);
            f20a.getSettings().setLoadsImagesAutomatically(true);
            f20a.getSettings().setSavePassword(false);
            WebView webView3 = f20a;
            WebView webView4 = f20a;
            webView3.setScrollBarStyle(0);
            f20a.addJavascriptInterface(new GLiveMain$GLiveJavaScriptInterface(this), "GLIVE");
            f20a.setWebViewClient(new GLiveMain$HelloWebViewClient(this, (byte) 0));
            initBadge(bB, r, bH);
            initBadge(bD, t, bI);
            initBadge(bC, s, bJ);
            setContentView(c);
            c();
            a(bQ, ao, as, at, str);
            cj = true;
            TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
            cV = telephonyManager;
            telephonyManager.listen(this.dh, 32);
        } catch (RuntimeException e2) {
            cf = false;
            new Intent(this, (Class<?>) DungeonHunter2.class);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            if (cV != null) {
                cV.listen(this.dh, 0);
            }
        } catch (Exception e2) {
        }
        cV = null;
        this.dh = null;
        as = "";
        at = "";
        db = "";
        dc = "";
        dd = "";
        super.onDestroy();
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
        if (i2 == 4) {
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(f20a.getWindowToken(), 0);
            if (c != null && c.getFocusedChild() == m) {
                c.addView(f20a);
                c.addView(f);
                c.addView(d);
                c.addView(e);
                ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(bo.getWindowToken(), 0);
                ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(bN.getWindowToken(), 0);
                c.removeView(m);
                k.removeViews(2, aO);
                f20a.requestFocus();
                aP = 1;
                return false;
            }
            if (c != null && c.getChildCount() > 0 && c.getChildAt(c.getChildCount() - 1) == n) {
                c.addView(f20a);
                c.addView(f);
                c.addView(d);
                c.addView(e);
                ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(bo.getWindowToken(), 0);
                ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(bN.getWindowToken(), 0);
                c.removeView(n);
                f20a.requestFocus();
                if (!bi && bP) {
                    bi = true;
                    RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int) (E * 45.0f), (int) (F * 40.0f));
                    relativeLayout$LayoutParams.addRule(15);
                    relativeLayout$LayoutParams.addRule(11);
                    f.addView(aZ, relativeLayout$LayoutParams);
                }
                return false;
            }
            if ((aQ.intValue() == 1 || aQ.intValue() == 0) && !ck) {
                cf = false;
                new Intent(this, (Class<?>) DungeonHunter2.class);
                finish();
                c.removeView(d);
                c.removeView(e);
                c.removeView(f);
                c.removeView(f20a);
                return false;
            }
            if (!aG.empty()) {
                aD = (String) aG.pop();
                aI = true;
                f20a.loadUrl(aD);
                aQ = Integer.valueOf(aQ.intValue() - Integer.valueOf(((Integer) aH.pop()).intValue() + 1).intValue());
            }
            if (aQ.intValue() < 2) {
                f.removeView(g);
                f.removeView(h);
                o = 0;
                aR = true;
            }
            if (ck) {
                c.removeView(b);
                try {
                    c.removeView(m);
                } catch (Exception e2) {
                }
                AbsoluteLayout$LayoutParams absoluteLayout$LayoutParams = new AbsoluteLayout$LayoutParams(B, C, 0, 0);
                m.clearFocus();
                c.addView(m, absoluteLayout$LayoutParams);
                m.requestFocus();
                ck = false;
            }
        }
        return true;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        cf = true;
        cl = false;
        super.onResume();
        if (cW == 2) {
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
    public void onWindowFocusChanged(boolean z2) {
        cU = z2;
    }
}
