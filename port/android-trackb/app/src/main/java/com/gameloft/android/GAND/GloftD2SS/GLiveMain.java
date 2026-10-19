package com.gameloft.android.GAND.GloftD2SS;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.PaintDrawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
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
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsoluteLayout;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
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
import java.util.ArrayList;
import java.util.Locale;
import java.util.Stack;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

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
    public static int[] cq = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_HOME_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_HOME_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_HOME_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_HOME_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_HOME_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_HOME_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_HOME_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_HOME_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_HOME_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_HOME_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_HOME_ZT};
    public static int[] cr = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_OK_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_OK_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_OK_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_OK_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_OK_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_OK_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_OK_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_OK_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_OK_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_OK_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_OK_ZT};
    public static int[] cs = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_INBOX_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_INBOX_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_INBOX_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_INBOX_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_INBOX_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_INBOX_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_INBOX_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_INBOX_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_INBOX_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_INBOX_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_INBOX_ZT};
    public static int[] ct = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_FRIENDS_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_FRIENDS_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_FRIENDS_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_FRIENDS_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_FRIENDS_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_FRIENDS_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_FRIENDS_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_FRIENDS_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_FRIENDS_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_FRIENDS_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_FRIENDS_ZT};
    public static int[] cu = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_GAMES_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_GAMES_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_GAMES_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_GAMES_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_GAMES_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_GAMES_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_GAMES_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_GAMES_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_GAMES_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_GAMES_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_FOOTER_GAMES_ZT};
    public static int[] cv = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NO_RECIEPIENTS_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NO_RECIEPIENTS_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NO_RECIEPIENTS_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NO_RECIEPIENTS_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NO_RECIEPIENTS_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NO_RECIEPIENTS_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NO_RECIEPIENTS_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NO_RECIEPIENTS_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NO_RECIEPIENTS_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NO_RECIEPIENTS_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NO_RECIEPIENTS_ZT};
    public static int[] cw = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMPTY_MESSAGE_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMPTY_MESSAGE_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMPTY_MESSAGE_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMPTY_MESSAGE_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMPTY_MESSAGE_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMPTY_MESSAGE_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMPTY_MESSAGE_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMPTY_MESSAGE_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMPTY_MESSAGE_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMPTY_MESSAGE_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMPTY_MESSAGE_ZT};
    public static int[] cx = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DONE_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DONE_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DONE_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DONE_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DONE_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DONE_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DONE_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DONE_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DONE_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DONE_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DONE_ZT};
    public static int[] cy = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CANCEL_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CANCEL_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CANCEL_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CANCEL_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CANCEL_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CANCEL_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CANCEL_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CANCEL_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CANCEL_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CANCEL_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CANCEL_ZT};
    public static int[] cz = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_INTERACT_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_INTERACT_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_INTERACT_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_INTERACT_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_INTERACT_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_INTERACT_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_INTERACT_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_INTERACT_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_INTERACT_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_INTERACT_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_INTERACT_ZT};
    public static int[] cA = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMAIL_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMAIL_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMAIL_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMAIL_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMAIL_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMAIL_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMAIL_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMAIL_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMAIL_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMAIL_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EMAIL_ZT};
    public static int[] cB = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_ZT};
    public static int[] cC = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RECOMMEND_VIA_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RECOMMEND_VIA_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RECOMMEND_VIA_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RECOMMEND_VIA_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RECOMMEND_VIA_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RECOMMEND_VIA_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RECOMMEND_VIA_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RECOMMEND_VIA_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RECOMMEND_VIA_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RECOMMEND_VIA_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RECOMMEND_VIA_ZT};
    public static int[] cD = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_MESSAGE_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_MESSAGE_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_MESSAGE_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_MESSAGE_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_MESSAGE_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_MESSAGE_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_MESSAGE_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_MESSAGE_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_MESSAGE_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_MESSAGE_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_SEND_MESSAGE_ZT};
    public static int[] cE = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NEW_MESSAGE_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NEW_MESSAGE_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NEW_MESSAGE_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NEW_MESSAGE_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NEW_MESSAGE_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NEW_MESSAGE_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NEW_MESSAGE_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NEW_MESSAGE_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NEW_MESSAGE_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NEW_MESSAGE_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NEW_MESSAGE_ZT};
    public static int[] cF = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_COMPARE_GAMES_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_COMPARE_GAMES_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_COMPARE_GAMES_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_COMPARE_GAMES_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_COMPARE_GAMES_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_COMPARE_GAMES_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_COMPARE_GAMES_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_COMPARE_GAMES_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_COMPARE_GAMES_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_COMPARE_GAMES_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_COMPARE_GAMES_ZT};
    public static int[] cG = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CHALLENGE_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CHALLENGE_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CHALLENGE_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CHALLENGE_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CHALLENGE_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CHALLENGE_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CHALLENGE_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CHALLENGE_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CHALLENGE_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CHALLENGE_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_CHALLENGE_ZT};
    public static int[] cH = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DELETE_FRIEND_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DELETE_FRIEND_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DELETE_FRIEND_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DELETE_FRIEND_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DELETE_FRIEND_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DELETE_FRIEND_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DELETE_FRIEND_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DELETE_FRIEND_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DELETE_FRIEND_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DELETE_FRIEND_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_DELETE_FRIEND_ZT};
    public static int[] cI = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_ADD_FRIEND_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_ADD_FRIEND_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_ADD_FRIEND_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_ADD_FRIEND_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_ADD_FRIEND_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_ADD_FRIEND_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_ADD_FRIEND_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_ADD_FRIEND_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_ADD_FRIEND_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_ADD_FRIEND_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_ADD_FRIEND_ZT};
    public static int[] cJ = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EDIT_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EDIT_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EDIT_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EDIT_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EDIT_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EDIT_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EDIT_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EDIT_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EDIT_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EDIT_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_EDIT_ZT};
    public static int[] cK = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_ZT};
    public static int[] cL = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_UP_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_UP_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_UP_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_UP_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_UP_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_UP_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_UP_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_UP_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_UP_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_UP_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_UP_ZT};
    public static int[] cM = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_DOWN_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_DOWN_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_DOWN_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_DOWN_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_DOWN_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_DOWN_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_DOWN_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_DOWN_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_DOWN_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_DOWN_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_RATE_DOWN_ZT};
    public static int[] cN = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_LOADING_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_LOADING_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_LOADING_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_LOADING_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_LOADING_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_LOADING_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_LOADING_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_LOADING_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_LOADING_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_LOADING_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_LOADING_ZT};
    public static int[] cO = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_SUBJECT_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_SUBJECT_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_SUBJECT_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_SUBJECT_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_SUBJECT_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_SUBJECT_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_SUBJECT_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_SUBJECT_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_SUBJECT_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_SUBJECT_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_SUBJECT_ZT};
    public static int[] cP = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_TO_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_TO_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_TO_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_TO_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_TO_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_TO_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_TO_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_TO_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_TO_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_TO_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_TO_ZT};
    public static int[] cQ = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_INFO_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_INFO_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_INFO_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_INFO_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_INFO_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_INFO_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_INFO_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_INFO_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_INFO_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_INFO_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_TXT_INFO_ZT};
    public static int[] cR = {com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NET_ERROR_EN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NET_ERROR_FR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NET_ERROR_DE, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NET_ERROR_IT, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NET_ERROR_SP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NET_ERROR_JP, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NET_ERROR_KR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NET_ERROR_CN, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NET_ERROR_BR, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NET_ERROR_RU, com.gameloft.android.GAND.GloftD2SS.bu.GLIVE_NET_ERROR_ZT};
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

    final class GLiveJavaScriptInterface {

        int f21a = 0;

        GLiveJavaScriptInterface() {
        }

        public final void checkIsFriend(String str) {
            GLiveMain.v = str;
        }

        public final void getAutoLogin(String str) {
            GLiveMain.az = str;
        }

        public final void getCurentUserName(String str) {
            GLiveMain.A = str;
        }

        public final void getCurentUserUid(String str) {
            GLiveMain.z = str;
        }

        public final void getEmail(String str) {
            GLiveMain.ay = str;
        }

        public final void getFriendsMessages(String str) {
            GLiveMain.t = str;
        }

        public final void getGameId(String str) {
            GLiveMain.u = str;
        }

        public final void getGamesMessages(String str) {
            GLiveMain.s = str;
        }

        public final void getInboxMessages(String str) {
            GLiveMain.r = str;
        }

        public final void getPassword(String str) {
            GLiveMain.ax = str;
            if (!GLiveMain.cj || GLiveMain.aw.equals("") || GLiveMain.ax.equals("")) {
                return;
            }
            GLiveMain.as = GLiveMain.aw;
            GLiveMain.at = GLiveMain.ax;
            GLiveMain.this.a();
            GLiveMain.cj = false;
            if (GLiveMain.needToRemoveFacebook()) {
                GLiveMain.al = GLiveMain.ak.replace("LANG", GLiveMain.cp[GLiveMain.bQ]);
            } else {
                GLiveMain.al = GLiveMain.aj.replace("LANG", GLiveMain.cp[GLiveMain.bQ]);
            }
            String deviceId = Device.getDeviceId();
            String strCrypt = Encrypter.crypt(Locale.getDefault().getCountry());
            GLiveMain.ap = Encrypter.crypt(GLiveMain.ap);
            String strCrypt2 = Encrypter.crypt(deviceId);
            GLiveMain.as = Encrypter.crypt(GLiveMain.as);
            GLiveMain.at = Encrypter.crypt(GLiveMain.at);
            GLiveMain.ao = Encrypter.crypt(GLiveMain.ao);
            GLiveMain.aq = Encrypter.crypt(GLiveMain.aq);
            String strReplace = GLiveMain.al.replace("COUNTRY_DETECTED", strCrypt);
            GLiveMain.al = strReplace;
            String strReplace2 = strReplace.replace("UDIDPHONE", strCrypt2);
            GLiveMain.al = strReplace2;
            String strReplace3 = strReplace2.replace("GGIGAME", GLiveMain.ao);
            GLiveMain.al = strReplace3;
            String strReplace4 = strReplace3.replace("DEV_TOKEN", GLiveMain.ar);
            GLiveMain.al = strReplace4;
            String strReplace5 = strReplace4.replace("USER_NAME", GLiveMain.as);
            GLiveMain.al = strReplace5;
            String strReplace6 = strReplace5.replace("PASSWORD", GLiveMain.at);
            GLiveMain.al = strReplace6;
            String strReplace7 = strReplace6.replace("AUTOLOGIN", GLiveMain.az);
            GLiveMain.al = strReplace7;
            String strReplace8 = strReplace7.replace("DEVICE_ANDROID", GLiveMain.ap);
            GLiveMain.al = strReplace8;
            String strReplace9 = strReplace8.replace("FIRMWARE_ANDROID", GLiveMain.aq);
            GLiveMain.al = strReplace9;
            String strReplace10 = strReplace9.replace("SCREEN_HEIGHT", String.valueOf(GLiveMain.D));
            GLiveMain.al = strReplace10;
            GLiveMain.al = strReplace10.replaceAll(" ", "");
            GLiveMain.al += "&enc=1";
        }

        public final void getSubject(String str) {
            GLiveMain.y = str;
            GLiveMain.cc = GLiveMain.this.getString(GLiveMain.cO[GLiveMain.bQ]) + GLiveMain.y;
            GLiveMain.this.runOnUiThread(new aq(this));
        }

        public final void getUserID(String str) {
            GLiveMain.q = str;
            if (GLiveMain.bq > 0) {
                DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                HttpPost httpPost = new HttpPost(GLiveMain.ag + "/android_uid/" + GLiveMain.q + "/ggi_game/" + GLiveMain.ao);
                try {
                    ArrayList arrayList = new ArrayList(GLiveMain.bq);
                    for (int i = 0; i < GLiveMain.bq; i++) {
                        arrayList.add(new BasicNameValuePair("trophy_id[]", new StringBuilder().append(GLiveMain.bp[i]).toString()));
                    }
                    httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
                    defaultHttpClient.execute(httpPost);
                } catch (Exception e) {
                }
                GLiveMain.bq = 0;
            }
        }

        public final void getUserName(String str) {
            GLiveMain.aw = str;
        }

        public final void showAddFriendOption(String str) {
            GLiveMain.w = str;
        }

        public final void showRateOption(String str) {
            GLiveMain.x = str;
        }

        public final void showTitle(String str) {
            if (!GLiveMain.aK && GLiveMain.aQ.intValue() > 0) {
                Integer num = GLiveMain.aQ;
                GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - 1);
                Integer num2 = GLiveMain.aF;
                GLiveMain.aF = Integer.valueOf(GLiveMain.aF.intValue() - 1);
            }
            if (GLiveMain.aR) {
                Integer num3 = GLiveMain.aQ;
                GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() + 1);
                Integer num4 = GLiveMain.aF;
                GLiveMain.aF = Integer.valueOf(GLiveMain.aF.intValue() + 1);
                GLiveMain.this.runOnUiThread(new ap(this));
            } else if (GLiveMain.aQ.intValue() >= 0) {
                GLiveMain.aL[GLiveMain.aQ.intValue()] = str;
                Integer num5 = GLiveMain.aQ;
                GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() + 1);
                Integer num6 = GLiveMain.aF;
                GLiveMain.aF = Integer.valueOf(GLiveMain.aF.intValue() + 1);
                GLiveMain.cT = false;
                this.f21a = GLiveMain.aQ.intValue();
                GLiveMain.this.runOnUiThread(new ao(this));
            } else {
                Integer num7 = GLiveMain.aQ;
                GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() + 1);
                Integer num8 = GLiveMain.aF;
                GLiveMain.aF = Integer.valueOf(GLiveMain.aF.intValue() + 1);
            }
            GLiveMain.aR = false;
        }
    }

    final class HelloWebViewClient extends WebViewClient {

        ProgressDialog f22a;

        private HelloWebViewClient() {
            this.f22a = null;
        }

        /* synthetic */ HelloWebViewClient(GLiveMain gLiveMain, byte b) {
            this();
        }

        private static void CheckValidity(String str) {
            GLiveMain.aJ = true;
            GLiveMain.aK = true;
            if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/leaderboards/") && !str.startsWith("http://livewebapp.gameloft.com/glive/leaderboards")) {
                String str2 = (String) GLiveMain.aG.pop();
                GLiveMain.aG.push(new String(str2));
                if (GLiveMain.aD.compareTo(str2) != 0) {
                    GLiveMain.aJ = true;
                    GLiveMain.aK = true;
                }
            } else if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/leaderboards")) {
                GLiveMain.aD = str;
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/leaderboards/") && GLiveMain.aI) {
                GLiveMain.aK = true;
            }
            if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/ranking/") && !str.startsWith("http://livewebapp.gameloft.com/glive/ranking/")) {
                String str3 = (String) GLiveMain.aG.pop();
                GLiveMain.aG.push(new String(str3));
                if (GLiveMain.aD.compareTo(str3) != 0) {
                    GLiveMain.aJ = true;
                    GLiveMain.aK = true;
                }
            } else if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/ranking")) {
                GLiveMain.aD = str;
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/ranking") && GLiveMain.aI) {
                GLiveMain.aK = true;
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/fb_send/yes/fb_q/1") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/inv/fb_q/1") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/src/fb_q/1")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
                if (!GLiveMain.aG.empty()) {
                    GLiveMain.aD = (String) GLiveMain.aG.pop();
                }
                if (!GLiveMain.aH.empty()) {
                    GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
                }
            }
            if (str.equals("https://www.facebook.com/login.php?login_attempt=1&popup=1")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.equals("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/fb_send/yes") || str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/fb_send/yes/fb_in/1")) {
                if (!GLiveMain.aG.empty()) {
                    GLiveMain.aD = (String) GLiveMain.aG.pop();
                }
                if (!GLiveMain.aH.empty()) {
                    GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
                }
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/?iDelete=1&tweet=sent") || str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "?iDelete=1&tweet=sent")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/games/trophies/gid/" + GLiveMain.u + "/tid/") || (str.startsWith("http://livewebapp.gameloft.com/glive/games/trophies/gid/" + GLiveMain.u + "/id/") && str.contains("/fb_new/yes"))) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.indexOf("http://livewebapp.gameloft.com/glive/account/index/uid") != -1 && str.indexOf("Delete=") != -1) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.indexOf("http://livewebapp.gameloft.com/glive/friends/?iDelete=") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/friends?iDelete=") != -1) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
                if (!GLiveMain.aG.empty()) {
                    GLiveMain.aD = (String) GLiveMain.aG.pop();
                }
                if (!GLiveMain.aH.empty()) {
                    GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
                }
            }
            if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/login/recover-password")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if ((str.startsWith("http://livewebapp.gameloft.com/glive/account/username") || str.startsWith("http://livewebapp.gameloft.com/glive/account/password") || str.startsWith("http://livewebapp.gameloft.com/glive/account/email")) && GLiveMain.aD.compareTo(str) == 0) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/account/avatar") && str.startsWith("http://livewebapp.gameloft.com/glive/account/edit") && !GLiveMain.aI) {
                GLiveMain.aD = (String) GLiveMain.aG.pop();
                GLiveMain.aD = (String) GLiveMain.aG.pop();
                Integer numValueOf = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
                GLiveMain.aQ = numValueOf;
                GLiveMain.aQ = Integer.valueOf(numValueOf.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/friends?select=yes") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/index/select/yes?user_name=") || str.startsWith(GLiveMain.P)) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.startsWith(GLiveMain.U)) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (GLiveMain.aD.startsWith("http://wapshop.gameloft.com/wifi/hdplus_full_shop")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.startsWith("http://ingameads.gameloft.com/redir/?from") || str.startsWith("market://")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
        }

        private static void ReSetStack(String str) {
            if (str.compareTo(GLiveMain.al) == 0 || str.compareTo(GLiveMain.W) == 0 || str.compareTo(GLiveMain.X) == 0 || str.compareTo(GLiveMain.Y) == 0) {
                while (!GLiveMain.aG.empty()) {
                    GLiveMain.aG.pop();
                }
                while (!GLiveMain.aH.empty()) {
                    GLiveMain.aH.pop();
                }
                GLiveMain.aQ = 0;
                GLiveMain.aF = 0;
                GLiveMain.aD = str;
            }
        }

        private void a(String str) {
            if (str == null || str.length() <= 0) {
                return;
            }
            try {
                GLiveMain.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            } catch (Exception e) {
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            if (str.compareTo(GLiveMain.al) == 0 || str.compareTo(GLiveMain.W) == 0 || str.compareTo(GLiveMain.X) == 0 || str.compareTo(GLiveMain.Y) == 0) {
                while (!GLiveMain.aG.empty()) {
                    GLiveMain.aG.pop();
                }
                while (!GLiveMain.aH.empty()) {
                    GLiveMain.aH.pop();
                }
                GLiveMain.aQ = 0;
                GLiveMain.aF = 0;
                GLiveMain.aD = str;
            }
            GLiveMain.ci = str.indexOf("facebook.com") != -1;
            GLiveMain.ch = str.indexOf("twitter.com") != -1;
            if (GLiveMain.ci || GLiveMain.ch) {
                GLiveMain.updateWebView();
            }
            webView.loadUrl("javascript:window.GLIVE.getUserID(sUserUid)");
            webView.loadUrl("javascript:window.GLIVE.getInboxMessages(iInboxMessages)");
            webView.loadUrl("javascript:window.GLIVE.getGamesMessages(iGamesMessages)");
            webView.loadUrl("javascript:window.GLIVE.getFriendsMessages(iFriendsMessages)");
            webView.loadUrl("javascript:window.GLIVE.getGameId(iGameId)");
            webView.loadUrl("javascript:window.GLIVE.getSubject(sSubject)");
            webView.loadUrl("javascript:window.GLIVE.checkIsFriend(bIsFriend)");
            webView.loadUrl("javascript:window.GLIVE.showAddFriendOption(bShowAdd)");
            webView.loadUrl("javascript:window.GLIVE.showRateOption(bShowEvaluate)");
            webView.loadUrl("javascript:window.GLIVE.getCurentUserUid(iUserId)");
            webView.loadUrl("javascript:window.GLIVE.getCurentUserName(sUserName)");
            webView.loadUrl("javascript:window.GLIVE.showTitle(sTitle)");
            GLiveMain.aJ = true;
            GLiveMain.aK = true;
            if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/leaderboards/") && !str.startsWith("http://livewebapp.gameloft.com/glive/leaderboards")) {
                String str2 = (String) GLiveMain.aG.pop();
                GLiveMain.aG.push(new String(str2));
                if (GLiveMain.aD.compareTo(str2) != 0) {
                    GLiveMain.aJ = true;
                    GLiveMain.aK = true;
                }
            } else if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/leaderboards")) {
                GLiveMain.aD = str;
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/leaderboards/") && GLiveMain.aI) {
                GLiveMain.aK = true;
            }
            if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/ranking/") && !str.startsWith("http://livewebapp.gameloft.com/glive/ranking/")) {
                String str3 = (String) GLiveMain.aG.pop();
                GLiveMain.aG.push(new String(str3));
                if (GLiveMain.aD.compareTo(str3) != 0) {
                    GLiveMain.aJ = true;
                    GLiveMain.aK = true;
                }
            } else if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/ranking")) {
                GLiveMain.aD = str;
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/ranking") && GLiveMain.aI) {
                GLiveMain.aK = true;
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/fb_send/yes/fb_q/1") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/inv/fb_q/1") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/src/fb_q/1")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
                if (!GLiveMain.aG.empty()) {
                    GLiveMain.aD = (String) GLiveMain.aG.pop();
                }
                if (!GLiveMain.aH.empty()) {
                    GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
                }
            }
            if (str.equals("https://www.facebook.com/login.php?login_attempt=1&popup=1")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.equals("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/fb_send/yes") || str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/fb_send/yes/fb_in/1")) {
                if (!GLiveMain.aG.empty()) {
                    GLiveMain.aD = (String) GLiveMain.aG.pop();
                }
                if (!GLiveMain.aH.empty()) {
                    GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
                }
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "/?iDelete=1&tweet=sent") || str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/gid/" + GLiveMain.u + "?iDelete=1&tweet=sent")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/games/trophies/gid/" + GLiveMain.u + "/tid/") || (str.startsWith("http://livewebapp.gameloft.com/glive/games/trophies/gid/" + GLiveMain.u + "/id/") && str.contains("/fb_new/yes"))) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.indexOf("http://livewebapp.gameloft.com/glive/account/index/uid") != -1 && str.indexOf("Delete=") != -1) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.indexOf("http://livewebapp.gameloft.com/glive/friends/?iDelete=") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/friends?iDelete=") != -1) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
                if (!GLiveMain.aG.empty()) {
                    GLiveMain.aD = (String) GLiveMain.aG.pop();
                }
                if (!GLiveMain.aH.empty()) {
                    GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
                }
            }
            if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/login/recover-password")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if ((str.startsWith("http://livewebapp.gameloft.com/glive/account/username") || str.startsWith("http://livewebapp.gameloft.com/glive/account/password") || str.startsWith("http://livewebapp.gameloft.com/glive/account/email")) && GLiveMain.aD.compareTo(str) == 0) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (GLiveMain.aD.startsWith("http://livewebapp.gameloft.com/glive/account/avatar") && str.startsWith("http://livewebapp.gameloft.com/glive/account/edit") && !GLiveMain.aI) {
                GLiveMain.aD = (String) GLiveMain.aG.pop();
                GLiveMain.aD = (String) GLiveMain.aG.pop();
                Integer numValueOf = Integer.valueOf(GLiveMain.aQ.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
                GLiveMain.aQ = numValueOf;
                GLiveMain.aQ = Integer.valueOf(numValueOf.intValue() - ((Integer) GLiveMain.aH.pop()).intValue());
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/friends?select=yes") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/index/select/yes?user_name=") || str.startsWith(GLiveMain.P)) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.startsWith(GLiveMain.U)) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (GLiveMain.aD.startsWith("http://wapshop.gameloft.com/wifi/hdplus_full_shop")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (str.startsWith("http://ingameads.gameloft.com/redir/?from") || str.startsWith("market://")) {
                GLiveMain.aJ = false;
                GLiveMain.aK = false;
            }
            if (GLiveMain.aI) {
                GLiveMain.aD = str;
                GLiveMain.aF = 0;
                GLiveMain.aI = false;
            } else if (GLiveMain.aJ) {
                if (GLiveMain.aD.compareTo("") == 0) {
                    GLiveMain.aD = str;
                } else if (GLiveMain.aD.compareTo(str) != 0) {
                    if (GLiveMain.aF.intValue() > 0 && str.indexOf("wapshop.gameloft.com") == -1) {
                        GLiveMain.aG.push(new String(GLiveMain.aD));
                        GLiveMain.aD = str;
                        GLiveMain.aH.push(new Integer(GLiveMain.aF.intValue()));
                        GLiveMain.aF = 0;
                    }
                } else if (GLiveMain.aF.intValue() > 0 && !str.startsWith("http://twitter.com/oauth/authorize?oauth_token") && !str.startsWith("https://www.facebook.com/login.php?api_key") && !GLiveMain.aG.empty()) {
                    GLiveMain.aH.push(new Integer(((Integer) GLiveMain.aH.pop()).intValue() + GLiveMain.aF.intValue()));
                    GLiveMain.aF = 0;
                }
            }
            if (str.compareTo("http://livewebapp.gameloft.com/glive/") == 0) {
                GLiveMain.aU.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.selected);
                GLiveMain.aV.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.unselected);
                GLiveMain.aW.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.unselected);
                GLiveMain.aX.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.unselected);
            }
            if (!str.startsWith("http://livewebapp.gameloft.com/glive/games/show-game/") && !str.startsWith("http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id")) {
                if (GLiveMain.bi) {
                    GLiveMain.f.removeView(GLiveMain.aZ);
                }
                GLiveMain.bi = false;
            } else if (!GLiveMain.bi) {
                GLiveMain.bi = true;
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (GLiveMain.E * 45.0f), (int) (GLiveMain.F * 40.0f));
                layoutParams.addRule(15);
                layoutParams.addRule(11);
                GLiveMain.f.addView(GLiveMain.aZ, layoutParams);
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/account/index/uid/")) {
                webView.loadUrl("javascript:window.GLIVE.getCurentUserName(sUserName)");
                new Thread(new ar(this)).start();
            } else {
                if (GLiveMain.bm) {
                    GLiveMain.f.removeView(GLiveMain.bd);
                }
                GLiveMain.bm = false;
                if (GLiveMain.bn) {
                    GLiveMain.f.removeView(GLiveMain.i);
                    GLiveMain.f.removeView(GLiveMain.j);
                }
                GLiveMain.bn = false;
            }
            if (str.compareTo(GLiveMain.X) != 0 && str.compareTo("http://livewebapp.gameloft.com/glive/friends/") != 0 && str.indexOf("http://livewebapp.gameloft.com/glive/friends?iDelete") == -1 && str.indexOf("http://livewebapp.gameloft.com/glive/friends/index/page") == -1) {
                if (GLiveMain.bj) {
                    GLiveMain.f.removeView(GLiveMain.ba);
                }
                GLiveMain.bj = false;
            } else if (!GLiveMain.bj) {
                GLiveMain.bj = true;
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (GLiveMain.E * 45.0f), (int) (GLiveMain.F * 40.0f));
                layoutParams2.addRule(15);
                layoutParams2.addRule(11);
                GLiveMain.f.addView(GLiveMain.ba, layoutParams2);
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/login/index") || GLiveMain.cl || str.compareTo("http://livewebapp.gameloft.com/glive/") == 0 || str.startsWith("http://livewebapp.gameloft.com/glive/index/index") || str.compareTo(GLiveMain.al) == 0 || str.compareTo("http://livewebapp.gameloft.com/glive/login") == 0 || str.startsWith("http://livewebapp.gameloft.com/glive/login?iDelete")) {
                GLiveMain.aQ = 0;
                GLiveMain.aF = 0;
                if (!GLiveMain.bk) {
                    GLiveMain.bk = true;
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) (GLiveMain.E * 50.0f), (int) (GLiveMain.F * 45.0f));
                    layoutParams3.addRule(15);
                    layoutParams3.addRule(11);
                    GLiveMain.f.addView(GLiveMain.bb, layoutParams3);
                }
            } else {
                if (GLiveMain.bk) {
                    GLiveMain.f.removeView(GLiveMain.bb);
                }
                GLiveMain.bk = false;
            }
            if (str.compareTo(GLiveMain.af) != 0) {
                if (GLiveMain.bn) {
                    GLiveMain.f.removeView(GLiveMain.i);
                    GLiveMain.f.removeView(GLiveMain.j);
                }
                GLiveMain.bn = false;
            } else if (!GLiveMain.bn) {
                GLiveMain.bn = true;
                RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams((int) (GLiveMain.E * 122.0f), (int) (GLiveMain.F * 45.0f));
                layoutParams4.addRule(15);
                layoutParams4.addRule(11);
                GLiveMain.f.addView(GLiveMain.i, layoutParams4);
                GLiveMain.f.addView(GLiveMain.j, layoutParams4);
            }
            if (str.compareTo("http://livewebapp.gameloft.com/glive/") == 0 || str.compareTo(GLiveMain.al) == 0 || str.startsWith("http://livewebapp.gameloft.com/glive/index/index") || GLiveMain.cl) {
                GLiveMain.aQ = 0;
                GLiveMain.aF = 0;
                if (!GLiveMain.bl) {
                    GLiveMain.bl = true;
                    RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams((int) (GLiveMain.E * 40.0f), (int) (GLiveMain.F * 40.0f));
                    layoutParams5.addRule(15);
                    layoutParams5.addRule(9);
                    GLiveMain.f.addView(GLiveMain.bc, layoutParams5);
                }
                webView.loadUrl("javascript:window.GLIVE.getUserName(strUserName)");
                webView.loadUrl("javascript:window.GLIVE.getPassword(strPassword)");
                webView.loadUrl("javascript:window.GLIVE.getAutoLogin(blnRememberMe)");
            } else {
                if (GLiveMain.bl) {
                    GLiveMain.f.removeView(GLiveMain.bc);
                }
                GLiveMain.bl = false;
            }
            if (str.compareTo(GLiveMain.U) == 0 || str.indexOf("www.facebook.com") != -1) {
                GLiveMain.c.clearFocus();
                GLiveMain.c.requestFocus();
            }
            if (str.indexOf(GLiveMain.W) != -1) {
                if (!GLiveMain.bg) {
                    GLiveMain.bg = true;
                    RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams((int) (GLiveMain.E * 45.0f), (int) (GLiveMain.F * 40.0f));
                    layoutParams6.addRule(15);
                    layoutParams6.addRule(11);
                    GLiveMain.f.addView(GLiveMain.aY, layoutParams6);
                }
            } else if (str.indexOf("http://livewebapp.gameloft.com/glive/messages/sent") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/messages/friends") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/messages/plays") != -1 || str.indexOf(GLiveMain.Y) != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/friends/add-friends") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/login") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/?lg=") != -1 || str.indexOf("http://livewebapp.gameloft.com/glive/messages/show/mid") != -1) {
                if (GLiveMain.bg) {
                    GLiveMain.f.removeView(GLiveMain.aY);
                }
                GLiveMain.bg = false;
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/messages/") && !str.startsWith("http://livewebapp.gameloft.com/glive/messages/show/mid") && !str.startsWith("http://livewebapp.gameloft.com/glive/messages/show-sent/mid")) {
                GLiveMain.aQ = 0;
                GLiveMain.aF = 0;
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/messages/friend/uid/") || str.startsWith("http://livewebapp.gameloft.com/glive/messages/play/id/")) {
                Integer num = GLiveMain.aQ;
                GLiveMain.aQ = Integer.valueOf(GLiveMain.aQ.intValue() + 1);
                Integer num2 = GLiveMain.aF;
                GLiveMain.aF = Integer.valueOf(GLiveMain.aF.intValue() + 1);
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/logout") || str.startsWith("http://livewebapp.gameloft.com/glive/login?iDelete=2")) {
                GLiveMain.cj = false;
                GLiveMain.az = "0";
                GLiveMain.av = "0";
                GLiveMain.aw = "";
                GLiveMain.as = "";
                GLiveMain.ax = "";
                GLiveMain.at = "";
                GLiveMain.ay = "";
                GLiveMain.au = "";
                GLiveMain.this.a();
                if (GLiveMain.needToRemoveFacebook()) {
                    GLiveMain.al = GLiveMain.ak.replace("LANG", GLiveMain.cp[GLiveMain.bQ]);
                } else {
                    GLiveMain.al = GLiveMain.aj.replace("LANG", GLiveMain.cp[GLiveMain.bQ]);
                }
                String deviceId = Device.getDeviceId();
                String strCrypt = Encrypter.crypt(Locale.getDefault().getCountry());
                GLiveMain.ap = Encrypter.crypt(GLiveMain.ap);
                String strCrypt2 = Encrypter.crypt(deviceId);
                GLiveMain.as = Encrypter.crypt(GLiveMain.as);
                GLiveMain.at = Encrypter.crypt(GLiveMain.at);
                GLiveMain.ao = Encrypter.crypt(GLiveMain.ao);
                GLiveMain.aq = Encrypter.crypt(GLiveMain.aq);
                String strReplace = GLiveMain.al.replace("COUNTRY_DETECTED", strCrypt);
                GLiveMain.al = strReplace;
                String strReplace2 = strReplace.replace("UDIDPHONE", strCrypt2);
                GLiveMain.al = strReplace2;
                String strReplace3 = strReplace2.replace("GGIGAME", GLiveMain.ao);
                GLiveMain.al = strReplace3;
                String strReplace4 = strReplace3.replace("DEV_TOKEN", GLiveMain.ar);
                GLiveMain.al = strReplace4;
                String strReplace5 = strReplace4.replace("USER_NAME", GLiveMain.as);
                GLiveMain.al = strReplace5;
                String strReplace6 = strReplace5.replace("PASSWORD", GLiveMain.at);
                GLiveMain.al = strReplace6;
                String strReplace7 = strReplace6.replace("AUTOLOGIN", GLiveMain.az);
                GLiveMain.al = strReplace7;
                String strReplace8 = strReplace7.replace("DEVICE_ANDROID", GLiveMain.ap);
                GLiveMain.al = strReplace8;
                String strReplace9 = strReplace8.replace("FIRMWARE_ANDROID", GLiveMain.aq);
                GLiveMain.al = strReplace9;
                String strReplace10 = strReplace9.replace("SCREEN_HEIGHT", String.valueOf(GLiveMain.D));
                GLiveMain.al = strReplace10;
                GLiveMain.al = strReplace10.replaceAll(" ", "");
                String str4 = GLiveMain.al + "&enc=1";
                GLiveMain.al = str4;
                if (str4.indexOf("remember_me=1") != -1) {
                    GLiveMain.al = GLiveMain.al.replace("remember_me=1", "remember_me=");
                }
            }
            if (str.startsWith("http://livewebapp.gameloft.com/glive/login")) {
                GLiveMain.cj = true;
            }
            if (str.compareTo(GLiveMain.Z) == 0 || str.compareTo("http://livewebapp.gameloft.com/glive/info") == 0) {
                GLiveMain.cg = true;
            } else {
                GLiveMain.cg = false;
            }
            if (this.f22a != null) {
                try {
                    this.f22a.dismiss();
                } catch (Exception e) {
                }
                this.f22a = null;
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            if (this.f22a == null) {
                this.f22a = new ProgressDialog(GLiveMain.this);
                this.f22a.setProgressStyle(0);
                this.f22a.setMessage(GLiveMain.this.getString(GLiveMain.cN[GLiveMain.bQ], new Object[]{this}));
                this.f22a.setCanceledOnTouchOutside(false);
                try {
                    this.f22a.show();
                } catch (Exception e) {
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            sslErrorHandler.proceed();
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith("http://livewebapp.gameloft.com/scripts/banners_click.php")) {
                GLiveMain.cl = true;
            } else if ((GLiveMain.cl && str.startsWith("http://ingameads.gameloft.com/redir/?from")) || str.startsWith("market://")) {
                GLiveMain.cl = true;
            } else {
                GLiveMain.cl = false;
            }
            if (str.indexOf("http://dl.gameloft.com") != -1) {
                a(str);
                return false;
            }
            if (str.startsWith("http://ingameads.gameloft.com/redir/?from")) {
                a(str);
                return true;
            }
            if (str.indexOf("youtube.com") != -1) {
                a(str);
                return true;
            }
            if (str.startsWith("market://")) {
                a(str);
                return true;
            }
            if (str.compareTo(GLiveMain.P) == 0) {
                GLiveMain.c.removeView(GLiveMain.b);
                try {
                    GLiveMain.c.removeView(GLiveMain.m);
                } catch (Exception e) {
                }
                AbsoluteLayout.LayoutParams layoutParams = new AbsoluteLayout.LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0);
                GLiveMain.m.clearFocus();
                GLiveMain.ck = false;
                GLiveMain.c.addView(GLiveMain.m, layoutParams);
                GLiveMain.m.requestFocus();
                return true;
            }
            if (str.compareTo(GLiveMain.U) == 0) {
                GLiveMain.c.removeView(GLiveMain.f);
                GLiveMain.c.removeView(GLiveMain.d);
                GLiveMain.c.removeView(GLiveMain.e);
                GLiveMain.c.removeView(GLiveMain.f20a);
                GLiveMain.c.addView(GLiveMain.n, new AbsoluteLayout.LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0));
                GLiveMain.bh = true;
                GLiveMain.bN.setText("john@example.com, alex@example.com");
                GLiveMain.bN.setTextColor(-8750470);
                GLiveMain.bN.setTypeface(Typeface.defaultFromStyle(2));
                GLiveMain.bL.loadUrl(str);
                GLiveMain.bO = true;
                GLiveMain.bP = false;
            } else {
                if (str.startsWith("http://livewebapp.gameloft.com/glive/friends/index/select/yes?user_name=") || str.startsWith("http://livewebapp.gameloft.com/glive/friends/index/select/yes/?user_name=")) {
                    String[] strArrSplit = str.split("user_name=")[1].split("&user_id=");
                    GLiveMain.aM[GLiveMain.aO] = strArrSplit[0];
                    GLiveMain.aN[GLiveMain.aO] = strArrSplit[1];
                    GLiveMain.aO++;
                    GLiveMain.c.removeView(GLiveMain.b);
                    AbsoluteLayout.LayoutParams layoutParams2 = new AbsoluteLayout.LayoutParams(GLiveMain.B, GLiveMain.C, 0, 0);
                    GLiveMain.m.clearFocus();
                    GLiveMain.ck = false;
                    GLiveMain.c.addView(GLiveMain.m, layoutParams2);
                    GLiveMain.m.requestFocus();
                    GLiveMain.this.a(GLiveMain.aM[GLiveMain.aO - 1]);
                    return true;
                }
                if (str.compareTo("http://livewebapp.gameloft.com/glive/") == 0) {
                    GLiveMain.aQ = 0;
                    GLiveMain.aF = 0;
                    webView.loadUrl(str);
                    return true;
                }
                if (str.compareTo("about:blank") == 0) {
                    return true;
                }
                webView.loadUrl(str);
            }
            return true;
        }
    }

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
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(B, C - ((int) (F * 140.0f)));
        layoutParams.addRule(13);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(B, (int) (F * 70.0f));
        layoutParams2.addRule(12);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(B - 10, (int) (F * 70.0f));
        layoutParams3.addRule(10);
        layoutParams3.addRule(14);
        if (str4.equals("recover_password")) {
            str5 = ai + "?" + al.split("\\?")[1];
        } else {
            str5 = str4.equals("create_account") ? ah + "?" + al.split("\\?")[1] : al;
        }
        f20a.loadUrl(str5);
        f20a.requestFocus();
        c.addView(f20a, layoutParams);
        c.addView(f, layoutParams3);
        c.addView(d, layoutParams2);
        c.addView(e, layoutParams2);
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
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (E * 28.0f), (int) (F * 25.0f));
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
                    textView.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.badge1);
                } else {
                    textView.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.badge1_blue);
                }
                layoutParams = new RelativeLayout.LayoutParams((int) (E * 28.0f), (int) (F * 25.0f));
                break;
            case 2:
                if (i2 == 0) {
                    textView.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.badge2);
                } else {
                    textView.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.badge2_blue);
                }
                layoutParams = new RelativeLayout.LayoutParams((int) (E * 34.0f), (int) (F * 25.0f));
                break;
            case 3:
                if (i2 == 0) {
                    textView.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.badge3);
                } else {
                    textView.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.badge3_blue);
                }
                layoutParams = new RelativeLayout.LayoutParams((int) (E * 43.0f), (int) (F * 25.0f));
                break;
        }
        if (str.compareTo("0") == 0 || str.compareTo("") == 0) {
            textView.setVisibility(4);
        } else {
            textView.setVisibility(0);
        }
        layoutParams.addRule(6, aV.getId() + i2);
        layoutParams.addRule(1, cm.getId() + i2);
        d.addView(textView, layoutParams);
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
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (E * 28.0f), (int) (F * 28.0f));
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
                    textView.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.badge1);
                } else {
                    textView.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.badge1_blue);
                }
                layoutParams = new RelativeLayout.LayoutParams((int) (E * 28.0f), (int) (F * 25.0f));
                break;
            case 2:
                if (i2 == 0) {
                    textView.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.badge2);
                } else {
                    textView.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.badge2_blue);
                }
                layoutParams = new RelativeLayout.LayoutParams((int) (E * 34.0f), (int) (F * 25.0f));
                break;
            case 3:
                if (i2 == 0) {
                    textView.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.badge3);
                } else {
                    textView.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.badge3_blue);
                }
                layoutParams = new RelativeLayout.LayoutParams((int) (E * 43.0f), (int) (F * 25.0f));
                break;
        }
        if (str.compareTo("0") == 0 || str.compareTo("") == 0) {
            textView.setVisibility(4);
        } else {
            textView.setVisibility(0);
        }
        layoutParams.addRule(6, aV.getId() + i2);
        layoutParams.addRule(1, cm.getId() + i2);
        d.updateViewLayout(textView, layoutParams);
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
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (E * 144.0f), (int) (F * 40.0f));
            layoutParams.addRule(9);
            layoutParams.addRule(15);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (E * 144.0f), (int) (F * 40.0f));
            layoutParams2.addRule(9);
            layoutParams2.addRule(15);
            if (f != null && g != null) {
                f.addView(g, layoutParams);
                h.setGravity(17);
                f.addView(h, layoutParams2);
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
            SharedPreferences.Editor editorEdit = getSharedPreferences(O, 0).edit();
            editorEdit.putString("username", Encrypter.crypt(as));
            editorEdit.putString("password", Encrypter.crypt(at));
            editorEdit.commit();
        } catch (Exception e2) {
        }
    }

    public final void a(int i2) {
        AbsoluteLayout.LayoutParams layoutParams;
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
            new AbsoluteLayout.LayoutParams(rect.width() + 10, 24, 170, 5);
            if (by + rect.width() + 10 < bu) {
                layoutParams = new AbsoluteLayout.LayoutParams(rect.width() + 10, 24, by, bz);
                by = rect.width() + by + 10 + 5;
            } else {
                by = 8;
                bz = bz + 24 + 5;
                layoutParams = new AbsoluteLayout.LayoutParams(rect.width() + 10, 24, by, bz);
                by = rect.width() + by + 10 + 5;
                aP++;
            }
            textView.setOnClickListener(new t(this));
            k.addView(textView, i3 + 2, layoutParams);
        }
        if (aP <= 3) {
            k.updateViewLayout(bA, new AbsoluteLayout.LayoutParams(45, 46, B - 50, 25));
        }
    }

    public final void a(String str) {
        AbsoluteLayout.LayoutParams layoutParams;
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
        new AbsoluteLayout.LayoutParams(rect.width() + 10, 24, 170, 5);
        if (by + rect.width() + 10 < bu) {
            layoutParams = new AbsoluteLayout.LayoutParams(rect.width() + 10, 24, by, bz);
            by = rect.width() + by + 10 + 5;
        } else {
            by = 8;
            bz = bz + 24 + 5;
            layoutParams = new AbsoluteLayout.LayoutParams(rect.width() + 10, 24, by, bz);
            by = rect.width() + by + 10 + 5;
            aP++;
        }
        textView.setOnClickListener(new r(this));
        if (aP < 4) {
            k.addView(textView, (aO - 1) + 2, layoutParams);
            return;
        }
        k.updateViewLayout(bA, new AbsoluteLayout.LayoutParams(45, 46, B, 25));
        aO--;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        float f2;
        RelativeLayout.LayoutParams layoutParams;
        RelativeLayout.LayoutParams layoutParams2;
        RelativeLayout.LayoutParams layoutParams3;
        RelativeLayout.LayoutParams layoutParams4;
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
            aq = Build.VERSION.RELEASE;
            this.cd = ((WindowManager) getSystemService("window")).getDefaultDisplay();
            this.cd.getMetrics(new DisplayMetrics());
            B = this.cd.getWidth();
            C = this.cd.getHeight();
            if (Build.VERSION.SDK_INT == 11 || Build.VERSION.SDK_INT == 12) {
                D = C;
                C -= 48;
            } else if (Build.VERSION.SDK_INT == 13) {
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
            AbsoluteLayout.LayoutParams layoutParams5 = new AbsoluteLayout.LayoutParams(B - 70, 100, 60, 5);
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
            bL.setWebViewClient(new HelloWebViewClient(this, (byte) 0));
            bL.addJavascriptInterface(new GLiveJavaScriptInterface(), "GLIVE");
            AbsoluteLayout absoluteLayout4 = new AbsoluteLayout(this);
            l = new AbsoluteLayout(this);
            absoluteLayout4.setBackgroundColor(-8750470);
            bR.setText(getString(cy[bQ], new Object[]{this}));
            bR.setTextSize(0, 12.0f);
            bR.setOnClickListener(new s(this));
            bS.setText(getString(cB[bQ], new Object[]{this}));
            bS.setTextSize(0, 12.0f);
            bS.setOnClickListener(new v(this));
            AbsoluteLayout.LayoutParams layoutParams6 = new AbsoluteLayout.LayoutParams(90, 50, B - 93, 5);
            AbsoluteLayout.LayoutParams layoutParams7 = new AbsoluteLayout.LayoutParams(90, 50, 3, 5);
            AbsoluteLayout.LayoutParams layoutParams8 = new AbsoluteLayout.LayoutParams(B, 60, 0, 0);
            AbsoluteLayout.LayoutParams layoutParams9 = new AbsoluteLayout.LayoutParams(B, 130, 0, 60);
            AbsoluteLayout.LayoutParams layoutParams10 = new AbsoluteLayout.LayoutParams(B, C - 190, 0, 190);
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
            AbsoluteLayout.LayoutParams layoutParams11 = new AbsoluteLayout.LayoutParams(50, 40, 5, 15);
            AbsoluteLayout.LayoutParams layoutParams12 = new AbsoluteLayout.LayoutParams(B, 40, 5, 102);
            AbsoluteLayout.LayoutParams layoutParams13 = new AbsoluteLayout.LayoutParams(B, 1, 0, 105);
            AbsoluteLayout.LayoutParams layoutParams14 = new AbsoluteLayout.LayoutParams(B, 1, 0, 129);
            textView2.setTextSize(0, 15.0f);
            textView2.setTextColor(-16777216);
            bM.setTextSize(0, 20.0f);
            bM.setTextColor(-16777216);
            l.addView(bN, layoutParams5);
            l.addView(absoluteLayout, layoutParams13);
            l.addView(absoluteLayout2, layoutParams14);
            l.addView(textView2, 0, layoutParams11);
            l.addView(bM, 0, layoutParams12);
            l.setBackgroundColor(-1);
            n.addView(bL, layoutParams10);
            n.addView(absoluteLayout4, layoutParams8);
            absoluteLayout4.addView(bR, layoutParams6);
            absoluteLayout4.addView(bS, layoutParams7);
            absoluteLayout4.addView(bT, layoutParams8);
            n.addView(l, layoutParams9);
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
            b.setWebViewClient(new HelloWebViewClient(this, (byte) 0));
            ImageButton imageButton = new ImageButton(this);
            bA = imageButton;
            imageButton.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.add_new);
            bA.setOnClickListener(new x(this));
            absoluteLayout6.setBackgroundColor(-8750470);
            bU.setText(getString(cy[bQ], new Object[]{this}));
            bU.setTextSize(0, 12.0f);
            bU.setOnClickListener(new y(this));
            bV.setText(getString(cB[bQ], new Object[]{this}));
            bV.setTextSize(0, 12.0f);
            bV.setOnClickListener(new z(this));
            bo = new EditText(this);
            AbsoluteLayout.LayoutParams layoutParams15 = new AbsoluteLayout.LayoutParams(B - 20, (C - 60) - ((int) (F * 125.0f)), 10, ((int) (F * 115.0f)) + 60);
            int i2 = bQ == 2 ? 20 : 0;
            AbsoluteLayout.LayoutParams layoutParams16 = new AbsoluteLayout.LayoutParams(i2 + 90, 50, B - (i2 + 93), 5);
            AbsoluteLayout.LayoutParams layoutParams17 = new AbsoluteLayout.LayoutParams(90, 50, 3, 5);
            AbsoluteLayout.LayoutParams layoutParams18 = new AbsoluteLayout.LayoutParams(B, 50, 0, 0);
            AbsoluteLayout.LayoutParams layoutParams19 = new AbsoluteLayout.LayoutParams(B, (int) (F * 100.0f), 0, 60);
            AbsoluteLayout.LayoutParams layoutParams20 = new AbsoluteLayout.LayoutParams(B, 50, 0, 0);
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
            AbsoluteLayout.LayoutParams layoutParams21 = new AbsoluteLayout.LayoutParams((int) (E * 50.0f), (int) (F * 40.0f), (int) (E * 5.0f), (int) (F * 5.0f));
            textView5.setTextSize(0, 15.0f);
            textView5.setTextColor(-16777216);
            k.addView(textView5, 0, layoutParams21);
            k.setBackgroundColor(-1);
            k.addView(bA, 1, new AbsoluteLayout.LayoutParams((int) (E * 45.0f), (int) (F * 46.0f), B - ((int) (E * 50.0f)), (int) (F * 25.0f)));
            m.addView(k, layoutParams19);
            m.addView(absoluteLayout6, layoutParams18);
            absoluteLayout6.addView(bU, layoutParams16);
            absoluteLayout6.addView(bV, layoutParams17);
            absoluteLayout6.addView(bW, layoutParams20);
            m.addView(bo, layoutParams15);
            ImageButton imageButton2 = new ImageButton(this);
            aY = imageButton2;
            imageButton2.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.inbox_new_msg);
            aY.setOnTouchListener(new ac(this));
            CharSequence[][] charSequenceArr = {new CharSequence[]{getString(cA[0], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[1], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[2], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[3], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[4], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[5], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[6], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[7], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[8], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[9], new Object[]{this}), "Twitter", "Facebook"}, new CharSequence[]{getString(cA[10], new Object[]{this}), "Twitter", "Facebook"}};
            CharSequence[][] charSequenceArr2 = {new CharSequence[]{getString(cA[0], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[1], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[2], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[3], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[4], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[5], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[6], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[7], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[8], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[9], new Object[]{this}), "Twitter"}, new CharSequence[]{getString(cA[10], new Object[]{this}), "Twitter"}};
            ImageButton imageButton3 = new ImageButton(this);
            aZ = imageButton3;
            imageButton3.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.recommend);
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
            imageButton4.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.interact_new);
            bd.setOnTouchListener(new ah(this, charSequenceArr3, new CharSequence[][]{charSequenceArr7, charSequenceArr8, charSequenceArr9, charSequenceArr10, charSequenceArr11, charSequenceArr12, charSequenceArr13, charSequenceArr14, charSequenceArr15, charSequenceArr16, charSequenceArr17}, charSequenceArr4, charSequenceArr5, charSequenceArr6));
            ImageButton imageButton5 = new ImageButton(this);
            ba = imageButton5;
            imageButton5.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.add);
            ba.setOnTouchListener(new i(this));
            ImageButton imageButton6 = new ImageButton(this);
            bc = imageButton6;
            imageButton6.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.info);
            bc.setOnTouchListener(new j(this));
            ImageButton imageButton7 = new ImageButton(this);
            bb = imageButton7;
            imageButton7.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.back);
            bb.setOnTouchListener(new k(this));
            if (F < 1.0f) {
                f2 = (C == 320 && B == 240) ? 0.25f : 1.0f - E;
            } else {
                f2 = F > 1.0f ? E - 0.7f : 0.5f;
            }
            ImageButton imageButton8 = new ImageButton(this);
            aU = imageButton8;
            imageButton8.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.selected);
            aU.setImageResource(com.gameloft.android.GAND.GloftD2SS.bp.home);
            aU.setScaleType(ImageView.ScaleType.FIT_CENTER);
            aU.setPadding((int) (35.0f * f2), (int) (15.0f * f2), (int) (35.0f * f2), (int) ((5.0f * f2) + (F * 21.0f)));
            aU.setOnTouchListener(new l(this));
            ImageButton imageButton9 = new ImageButton(this);
            aV = imageButton9;
            imageButton9.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.unselected);
            aV.setImageResource(com.gameloft.android.GAND.GloftD2SS.bp.inbox);
            aV.setScaleType(ImageView.ScaleType.FIT_CENTER);
            aV.setPadding((int) (35.0f * f2), (int) (15.0f * f2), (int) (35.0f * f2), (int) ((5.0f * f2) + (F * 21.0f)));
            aV.setOnTouchListener(new m(this));
            ImageButton imageButton10 = new ImageButton(this);
            aW = imageButton10;
            imageButton10.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.unselected);
            aW.setImageResource(com.gameloft.android.GAND.GloftD2SS.bp.friends);
            aW.setScaleType(ImageView.ScaleType.FIT_CENTER);
            aW.setPadding((int) (35.0f * f2), (int) (15.0f * f2), (int) (35.0f * f2), (int) ((5.0f * f2) + (F * 21.0f)));
            aW.setOnTouchListener(new n(this));
            ImageButton imageButton11 = new ImageButton(this);
            aX = imageButton11;
            imageButton11.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.unselected);
            aX.setImageResource(com.gameloft.android.GAND.GloftD2SS.bp.games);
            aX.setScaleType(ImageView.ScaleType.FIT_CENTER);
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
            g.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.back_button);
            g.setOnTouchListener(new p(this));
            j = new TextView(this);
            ImageButton imageButton13 = new ImageButton(this);
            i = imageButton13;
            imageButton13.setBackgroundColor(0);
            i.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.interact);
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
            relativeLayout.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.footer);
            View view = new View(this);
            e = view;
            view.setEnabled(true);
            RelativeLayout relativeLayout2 = new RelativeLayout(this);
            f = relativeLayout2;
            relativeLayout2.setBackgroundResource(com.gameloft.android.GAND.GloftD2SS.bp.header);
            RelativeLayout.LayoutParams layoutParams22 = new RelativeLayout.LayoutParams(M, (int) (F * 35.0f));
            layoutParams22.addRule(13);
            f.addView(aS, layoutParams22);
            RelativeLayout.LayoutParams layoutParams23 = new RelativeLayout.LayoutParams(K, L);
            RelativeLayout.LayoutParams layoutParams24 = new RelativeLayout.LayoutParams(K, L);
            RelativeLayout.LayoutParams layoutParams25 = new RelativeLayout.LayoutParams(K, L);
            RelativeLayout.LayoutParams layoutParams26 = new RelativeLayout.LayoutParams(K, L);
            if (C == 320 && B == 240) {
                layoutParams = new RelativeLayout.LayoutParams(K, 15);
                layoutParams2 = new RelativeLayout.LayoutParams(K, 15);
                layoutParams3 = new RelativeLayout.LayoutParams(K, 15);
                layoutParams4 = new RelativeLayout.LayoutParams(K, 15);
            } else {
                layoutParams = new RelativeLayout.LayoutParams(K, (int) ((5.0f * f2) + (F * 21.0f)));
                layoutParams2 = new RelativeLayout.LayoutParams(K, (int) ((5.0f * f2) + (F * 21.0f)));
                layoutParams3 = new RelativeLayout.LayoutParams(K, (int) ((5.0f * f2) + (F * 21.0f)));
                layoutParams4 = new RelativeLayout.LayoutParams(K, (int) ((f2 * 5.0f) + (F * 21.0f)));
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
            RelativeLayout.LayoutParams layoutParams27 = new RelativeLayout.LayoutParams(N, L);
            RelativeLayout.LayoutParams layoutParams28 = new RelativeLayout.LayoutParams(N, L);
            RelativeLayout.LayoutParams layoutParams29 = new RelativeLayout.LayoutParams(N, L);
            RelativeLayout.LayoutParams layoutParams30 = new RelativeLayout.LayoutParams((int) (0.75d * ((double) K)), L);
            layoutParams30.addRule(5, aV.getId());
            RelativeLayout.LayoutParams layoutParams31 = new RelativeLayout.LayoutParams((int) (0.75d * ((double) K)), L);
            layoutParams31.addRule(5, aW.getId());
            RelativeLayout.LayoutParams layoutParams32 = new RelativeLayout.LayoutParams((int) (0.75d * ((double) K)), L);
            layoutParams32.addRule(5, aX.getId());
            layoutParams23.addRule(15);
            layoutParams23.addRule(0, view2.getId());
            layoutParams.addRule(8, aU.getId());
            layoutParams.addRule(5, aU.getId());
            layoutParams27.addRule(15);
            layoutParams27.addRule(0, aV.getId());
            layoutParams24.addRule(15);
            layoutParams24.addRule(0, view3.getId());
            layoutParams2.addRule(8, aV.getId());
            layoutParams2.addRule(5, aV.getId());
            layoutParams28.addRule(15);
            layoutParams28.addRule(14);
            layoutParams25.addRule(15);
            layoutParams25.addRule(1, view3.getId());
            layoutParams3.addRule(8, aW.getId());
            layoutParams3.addRule(5, aW.getId());
            layoutParams29.addRule(15);
            layoutParams29.addRule(1, aW.getId());
            layoutParams26.addRule(15);
            layoutParams26.addRule(1, view4.getId());
            layoutParams4.addRule(8, aX.getId());
            layoutParams4.addRule(5, aX.getId());
            d.addView(view2, layoutParams27);
            d.addView(view3, layoutParams28);
            d.addView(view4, layoutParams29);
            d.addView(aU, layoutParams23);
            d.addView(bX, layoutParams);
            d.addView(aV, layoutParams24);
            d.addView(bY, layoutParams2);
            d.addView(cm, layoutParams30);
            d.addView(aW, layoutParams25);
            d.addView(bZ, layoutParams3);
            d.addView(cn, layoutParams31);
            d.addView(aX, layoutParams26);
            d.addView(ca, layoutParams4);
            d.addView(co, layoutParams32);
            f20a.getSettings().setJavaScriptEnabled(true);
            // WebSettings.setAppCacheEnabled removed from the SDK (no-op since API 33)
            f20a.getSettings().setSupportZoom(false);
            f20a.getSettings().setDefaultTextEncodingName("utf-8");
            f20a.getSettings().setLightTouchEnabled(true);
            f20a.getSettings().setLoadsImagesAutomatically(true);
            f20a.getSettings().setSavePassword(false);
            WebView webView3 = f20a;
            WebView webView4 = f20a;
            webView3.setScrollBarStyle(0);
            f20a.addJavascriptInterface(new GLiveJavaScriptInterface(), "GLIVE");
            f20a.setWebViewClient(new HelloWebViewClient(this, (byte) 0));
            initBadge(bB, r, bH);
            initBadge(bD, t, bI);
            initBadge(bC, s, bJ);
            setContentView(c);
            c();
            a(bQ, ao, as, at, str);
            cj = true;
            TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
            cV = telephonyManager;
            PortCompat.listen(telephonyManager, this.dh, 32);   // Port (SDK1): SecurityException at targetSdk 31+
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

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 82) {
            return false;
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i2, KeyEvent keyEvent) {
        return i2 != 82;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
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
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (E * 45.0f), (int) (F * 40.0f));
                    layoutParams.addRule(15);
                    layoutParams.addRule(11);
                    f.addView(aZ, layoutParams);
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
                AbsoluteLayout.LayoutParams layoutParams2 = new AbsoluteLayout.LayoutParams(B, C, 0, 0);
                m.clearFocus();
                c.addView(m, layoutParams2);
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

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        cU = z2;
    }
}
