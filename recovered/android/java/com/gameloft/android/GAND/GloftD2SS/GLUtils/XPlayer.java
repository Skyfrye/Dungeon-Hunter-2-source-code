package com.gameloft.android.GAND.GloftD2SS.GLUtils;

import com.gameloft.android.GAND.GloftD2SS.GLBluetoothService;
import com.gameloft.android.GAND.GloftD2SS.billing.common.LManager;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class XPlayer implements Config, com.gameloft.android.GAND.GloftD2SS.billing.common.b {
    public static final boolean F = true;
    public static final int G = 60000;
    public static final int H = 15000;
    public static final boolean I = false;
    public static final boolean J = false;
    public static final String K = "eBFyC3+q+/A2AYUKclS/w1D1ENkvNoVcrGXq7CvZ1Oo=";
    public static final String L = "TzmUL0kURnAGxKcCxRCfrVD1ENkvNoVcrGXq7CvZ1Oo=";
    public static final int M = -100;
    public static final int N = -2;
    public static final int O = -1;
    public static final int P = 0;
    public static final int Q = 1;
    public static final int R = 25;
    public static final int S = 26;
    public static final int T = 40;
    public static final int U = 10001;
    public static final int V = 10002;
    public static final int W = 10003;
    public static final int X = 10004;
    public static final int Y = 10005;
    public static final int Z = 10009;
    public static final int aA = 100008;
    public static final int aB = 100009;
    public static final int aC = 100011;
    public static final int aD = 100012;
    public static final int aE = 100020;
    public static final int aF = 900001;
    public static final int aG = 900002;
    public static final int aH = 900003;
    public static final int aI = 900004;
    public static final int aJ = 900005;
    public static final int aK = 900021;
    public static final int aL = 900022;
    public static final int aM = 900023;
    public static final int aN = 900024;
    public static final int aO = 900025;
    public static final int aP = 900026;
    public static final int aQ = 900030;
    public static final int aR = 900157;
    public static final int aS = 1;
    public static final int aT = 2;
    public static final int aU = 1;
    public static final int aV = 10003;
    public static final int aW = 10010;
    public static final int aX = 1;
    public static final int aY = 4;
    public static final int aZ = 5;
    public static final int aa = 40010;
    public static final int ab = 40030;
    public static final int ac = 40040;
    public static final int ad = 40041;
    public static final int ae = 42020;
    public static final int af = 63490;
    public static final int ag = 99999;
    public static final int ah = 1;
    public static final int ai = 2;
    public static final int aj = 0;
    public static final int ak = 0;
    public static final int al = 1;
    public static final int am = 2;
    public static final int an = 3;
    public static final int ao = 4;
    public static final int ap = 5;
    public static final int aq = 100001;
    public static final int ar = 100002;
    public static final int as = 100003;
    public static final int at = 100004;
    public static final int au = 100005;
    public static final int av = 100006;
    public static final int aw = 200005;
    public static final int ax = 200006;
    public static final int ay = 100004;
    public static final int az = 100006;
    private static final byte bA = 0;
    private static final byte bB = 1;
    private static final byte bC = 2;
    private static final byte bD = 1;
    private static final byte bE = 1;
    private static final byte bF = 2;
    private static final byte bG = 3;
    private static int bI = 0;
    public static final int ba = 8;
    public static final int bb = 9;
    public static final int bc = 12;
    public static final int bd = 13;
    public static final int be = 14;
    public static final int bf = 999999;
    protected static HTTP bi = null;
    public static long bj = 0;
    private static final String bt = "T7WxMl1MuYnllpIJnNJtoFD1ENkvNoVcrGXq7CvZ1Oo=";
    private static final String bu = "RS4zxSt6TWQHptj38oDsSlD1ENkvNoVcrGXq7CvZ1Oo=";
    private static final String bv = "X/UdzsidlhgyU1XvCAmFlFD1ENkvNoVcrGXq7CvZ1Oo=";
    private static final String bw = "wX4NLAtn5Jp0o/qCUQHvXVD1ENkvNoVcrGXq7CvZ1Oo=";
    private static final String bx = "vmumwPhxuzoLGRoR4dvl9FD1ENkvNoVcrGXq7CvZ1Oo=";
    private static final String by = "3JHvql5Lf+PtFSCKPZM28s1Z+25b0rLO39DqQFrYGtZQ9RDZLzaFXKxl6uwr2dTq";
    private static final String bz = "TRkoKdbYEkMNHnxr3n5YFFD1ENkvNoVcrGXq7CvZ1Oo=";
    static Device t;
    private String bH;
    public String w;
    public static String z = null;
    public static String A = null;
    public static String B = null;
    private static String bs = null;
    public static String C = null;
    public static String D = null;
    public static String E = "";
    public static long bg = 0;
    public static String bh = null;
    public static XPlayer$Error[] bk = new XPlayer$Error[0];
    public final String u = "https://secure.gameloft.com/tryandbuy/notifications/";
    public final String v = "http://ingameads.gameloft.com/redir/hdloading.php";
    public final String x = "https://secure.gameloft.com/android/3g_carrier.php";
    com.gameloft.android.GAND.GloftD2SS.billing.common.c y = null;
    private int br = -1;

    public XPlayer(Device device) {
        t = device;
        HTTP.w = a_;
        bh = null;
        if (this.bH != null && this.bH.length() != 0) {
            String str = HTTP.w;
            this.bH = this.bH.trim();
        }
        bi = new HTTP();
        if (bh == null) {
            bh = "";
        } else {
            bh = bh.trim();
        }
    }

    private static String GetResultValue(int i) {
        switch (i) {
            case 0:
                return bv;
            case 1:
                return by;
            case 2:
                return bx;
            case 3:
                return bw;
            default:
                return "INVALID_VALUE";
        }
    }

    private String a(int i) {
        String strBuildBaseTracking = buildBaseTracking();
        switch (i) {
            case 0:
                return strBuildBaseTracking + "&action=HTTPBillingSuccess";
            case 1:
                return strBuildBaseTracking + "&action=PSMSBillingSuccess";
            case 2:
            case 3:
            case 4:
                return strBuildBaseTracking + "&action=CCBillingSuccess";
            default:
                return strBuildBaseTracking;
        }
    }

    private void a(com.gameloft.android.GAND.GloftD2SS.billing.common.c cVar) {
        this.y = cVar;
    }

    private String b(int i) {
        String strBuildBaseTracking = buildBaseTracking();
        switch (i) {
            case 0:
                return strBuildBaseTracking + "&action=HTTPBillingError|" + bI;
            case 1:
                return strBuildBaseTracking + "&action=PSMSBillingError";
            case 2:
            case 3:
            case 4:
                return strBuildBaseTracking + "&action=CCBillingError|" + bI;
            default:
                return strBuildBaseTracking;
        }
    }

    private void b(String str) {
        bi.b();
        String str2 = buildBaseTracking() + str;
        this.bH = "http://ingameads.gameloft.com/redir/hdloading.php";
        bI = -100;
        bj = System.currentTimeMillis();
        bi.a(this.bH, str2);
    }

    private static String buildBaseTracking() {
        StringBuilder sb = new StringBuilder("version=2&game=");
        Device device = t;
        StringBuilder sbAppend = sb.append(Device.getDemoCode()).append("&network_country_ISO=");
        Device device2 = t;
        StringBuilder sbAppend2 = sbAppend.append(Device.getNetworkCountryIso()).append("&network_operator=");
        Device device3 = t;
        StringBuilder sbAppend3 = sbAppend2.append(Device.getNetworkOperator()).append("&network_operator_name=");
        Device device4 = t;
        StringBuilder sbAppend4 = sbAppend3.append(Device.getNetworkOperatorName()).append("&sim_country_iso=");
        Device device5 = t;
        StringBuilder sbAppend5 = sbAppend4.append(Device.getSimCountryIso()).append("&sim_operator=");
        Device device6 = t;
        StringBuilder sbAppend6 = sbAppend5.append(Device.getSimOperator()).append("&sim_operator_name=");
        Device device7 = t;
        StringBuilder sbAppend7 = sbAppend6.append(Device.getSimOperatorName()).append("&is_network_roaming=");
        Device device8 = t;
        StringBuilder sbAppend8 = sbAppend7.append(Device.getIsRoaming()).append("&android_build_device=");
        Device device9 = t;
        StringBuilder sbAppend9 = sbAppend8.append(Device.getDevice()).append("&android_build_model=");
        Device device10 = t;
        return sbAppend9.append(Device.getPhoneModel()).append("&d=").append(SUtils.GetSerialKey()).toString();
    }

    private void c(int i) {
        bi.b();
        String strBuildBaseTracking = buildBaseTracking();
        switch (i) {
            case 0:
                strBuildBaseTracking = strBuildBaseTracking + "&action=HTTPBillingSuccess";
                break;
            case 1:
                strBuildBaseTracking = strBuildBaseTracking + "&action=PSMSBillingSuccess";
                break;
            case 2:
            case 3:
            case 4:
                strBuildBaseTracking = strBuildBaseTracking + "&action=CCBillingSuccess";
                break;
        }
        this.bH = "https://secure.gameloft.com/tryandbuy/notifications/";
        bI = -100;
        bj = System.currentTimeMillis();
        bi.a(this.bH, strBuildBaseTracking);
    }

    private static void cancel() {
        bj = 0L;
        bi.b();
    }

    private static void cleanup() {
        bj = 0L;
        bi.c();
    }

    private void d(int i) {
        bi.b();
        String strBuildBaseTracking = buildBaseTracking();
        switch (i) {
            case 0:
                strBuildBaseTracking = strBuildBaseTracking + "&action=HTTPBillingError|" + bI;
                break;
            case 1:
                strBuildBaseTracking = strBuildBaseTracking + "&action=PSMSBillingError";
                break;
            case 2:
            case 3:
            case 4:
                strBuildBaseTracking = strBuildBaseTracking + "&action=CCBillingError|" + bI;
                break;
        }
        this.bH = "https://secure.gameloft.com/tryandbuy/notifications/";
        bI = -100;
        bj = System.currentTimeMillis();
        bi.a(this.bH, strBuildBaseTracking);
    }

    private static String encodeQuery(String str) {
        return Encoder.String2Blob(str);
    }

    private com.gameloft.android.GAND.GloftD2SS.billing.common.c g() {
        return this.y;
    }

    public static a getCarrier() {
        Device device = t;
        return Device.getCarrier();
    }

    public static Device getDevice() {
        return t;
    }

    public static int getLastErrorCode() {
        return bI;
    }

    public static String getLastErrorCodeString() {
        return z != null ? z : "ERROR";
    }

    public static String getLastErrorMessage() {
        return "";
    }

    public static int getLastErrorMessageId() {
        for (int i = 0; i < bk.length; i++) {
            if (bI == XPlayer$Error.access$000(bk[i])) {
                return XPlayer$Error.access$100(bk[i]);
            }
        }
        return 2131034549;
    }

    public static String getUMPMO1() {
        return A != null ? A : "ERROR";
    }

    public static String getUMPMO2() {
        return B != null ? B : "ERROR";
    }

    private static String getValue(String str, int i) {
        int i2 = 0;
        int iIndexOf = str.indexOf(124, 1);
        int i3 = i;
        while (i3 > 0) {
            if (i2 == -1) {
                return null;
            }
            i3--;
            i2 = iIndexOf;
            iIndexOf = str.indexOf(124, iIndexOf + 1);
        }
        if (i2 == -1) {
            return null;
        }
        if (iIndexOf == -1) {
            iIndexOf = str.length();
        }
        if (i > 0) {
            i2++;
        }
        if (i2 == iIndexOf) {
            return "";
        }
        if (i2 > iIndexOf) {
            return null;
        }
        try {
            char[] cArr = new char[iIndexOf - i2];
            str.getChars(i2, iIndexOf, cArr, 0);
            return new String(cArr);
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    public static HTTP getWHTTP() {
        return bi;
    }

    private void h() {
        HTTP.w = a_;
        bh = null;
        if (this.bH == null || this.bH.length() == 0) {
            return;
        }
        String str = HTTP.w;
        this.bH = this.bH.trim();
    }

    private boolean i() {
        if (bi.a()) {
            if (System.currentTimeMillis() - bj <= 8000) {
                return false;
            }
            cancel();
            bI = -2;
            return true;
        }
        if (bi.v) {
            return true;
        }
        if (bi.t != null && bi.t != "") {
            String value = getValue(bi.t, 0);
            if (value != null) {
                try {
                    if (Encrypter.crypt(value).equals(bu)) {
                        bI = Integer.parseInt(getValue(bi.t, 1));
                        return true;
                    }
                } catch (NumberFormatException e) {
                    bI = 40;
                    getValue(bi.t, 1);
                    return true;
                }
            }
            if (value != null && Encrypter.crypt(value).equals(bt)) {
                bI = 0;
                return true;
            }
        }
        bI = 40;
        return true;
    }

    private boolean j() {
        if (bi.a()) {
            if (System.currentTimeMillis() - bj <= 8000) {
                return false;
            }
            cancel();
            bI = -2;
            return true;
        }
        if (bi.v) {
            return true;
        }
        if (bi.t != null && bi.t != "") {
            String value = getValue(bi.t, 0);
            if (value != null) {
                try {
                    if (Encrypter.crypt(value).equals(bu)) {
                        bI = Integer.parseInt(getValue(bi.t, 1));
                        return true;
                    }
                } catch (NumberFormatException e) {
                    bI = 40;
                    getValue(bi.t, 1);
                    return true;
                }
            }
            if (value != null && Encrypter.crypt(value).equals(bt)) {
                bI = 0;
                return true;
            }
        }
        bI = 40;
        return true;
    }

    private boolean k() {
        if (bi.a()) {
            if (System.currentTimeMillis() - bj <= 8000) {
                return false;
            }
            cancel();
            bI = -2;
            return true;
        }
        if (bi.v) {
            return true;
        }
        if (bi.t != null && bi.t != "") {
            String value = getValue(bi.t, 0);
            if (value != null) {
                try {
                    if (Encrypter.crypt(value).equals(bu)) {
                        bI = Integer.parseInt(getValue(bi.t, 1));
                        return true;
                    }
                } catch (NumberFormatException e) {
                    bI = 40;
                    getValue(bi.t, 1);
                    return true;
                }
            }
            if (value.equals(bt)) {
                bI = 0;
                return true;
            }
        }
        bI = 40;
        return true;
    }

    protected static final String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : bArrDigest) {
                String hexString = Integer.toHexString(b & 255);
                while (hexString.length() < 2) {
                    hexString = "0" + hexString;
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            return "";
        }
    }

    public static void sendIABProfileRequest(String str) {
        bi.b();
        Locale locale = Locale.getDefault();
        StringBuilder sbAppend = new StringBuilder().append("").append("game=");
        Device device = t;
        Device device2 = t;
        StringBuilder sbAppend2 = sbAppend.append(Device.ValidateStringforURL(Device.getDemoCode())).append("&network_country_ISO=");
        Device device3 = t;
        Device device4 = t;
        StringBuilder sbAppend3 = sbAppend2.append(Device.ValidateStringforURL(Device.getNetworkCountryIso())).append("&network_operator=");
        Device device5 = t;
        Device device6 = t;
        StringBuilder sbAppend4 = sbAppend3.append(Device.ValidateStringforURL(Device.getNetworkOperator())).append("&network_operator_name=");
        Device device7 = t;
        StringBuilder sbAppend5 = sbAppend4.append(Device.getNetworkOperatorName()).append("&sim_country_iso=");
        Device device8 = t;
        Device device9 = t;
        StringBuilder sbAppend6 = sbAppend5.append(Device.ValidateStringforURL(Device.getSimCountryIso())).append("&sim_operator=");
        Device device10 = t;
        Device device11 = t;
        StringBuilder sbAppend7 = sbAppend6.append(Device.ValidateStringforURL(Device.getSimOperator())).append("&sim_operator_name=");
        Device device12 = t;
        StringBuilder sbAppend8 = sbAppend7.append(Device.getSimOperatorName()).append("&line_number=");
        Device device13 = t;
        Device device14 = t;
        StringBuilder sbAppend9 = sbAppend8.append(Device.ValidateStringforURL(Device.getLineNumber())).append("&is_network_roaming=");
        Device device15 = t;
        StringBuilder sbAppend10 = sbAppend9.append(Device.getIsRoaming()).append("&android_build_device=");
        Device device16 = t;
        StringBuilder sbAppend11 = sbAppend10.append(Device.getDevice()).append("&android_build_model=");
        Device device17 = t;
        StringBuilder sbAppend12 = sbAppend11.append(Device.getPhoneModel()).append("&supportswap=1&supports_sms=1").append("&game_version=102").append("&lang=");
        Device device18 = t;
        String string = sbAppend12.append(Device.ValidateStringforURL(locale.getLanguage().toLowerCase())).toString();
        bI = -100;
        bj = System.currentTimeMillis();
        bi.a(str, string);
    }

    public static void setGGIUID(String str, String str2) {
        C = str2;
        D = str;
    }

    public static void setLastErrorMessage(int i) {
        bI = i;
    }

    private static String toIntegerFormat(String str) {
        char[] charArray = str.toCharArray();
        String str2 = "";
        for (int i = 0; i < charArray.length; i++) {
            if (charArray[i] != '.' && charArray[i] != ',') {
                str2 = str2 + charArray[i];
            }
        }
        return str2;
    }

    public final void a() {
        bi.b();
        String strBuildBaseTracking = buildBaseTracking();
        this.bH = "https://secure.gameloft.com/android/3g_carrier.php";
        bI = -100;
        bj = System.currentTimeMillis();
        bi.a(this.bH, strBuildBaseTracking);
    }

    public final void a(int i, String str) {
        this.br = 0;
        bi.b();
        SUtils.getLManager();
        Device device = t;
        LManager.setRandomCodeNumber(Device.createUniqueCode());
        StringBuilder sbAppend = new StringBuilder("b=").append(str).append(GLBluetoothService.f6a);
        Device device2 = t;
        StringBuilder sbAppend2 = sbAppend.append(Device.ValidateStringforURL(t.e().b())).append(GLBluetoothService.f6a);
        Device device3 = t;
        StringBuilder sbAppend3 = sbAppend2.append(Device.ValidateStringforURL(t.e().c())).append(GLBluetoothService.f6a);
        Device device4 = t;
        StringBuilder sbAppend4 = sbAppend3.append(Device.ValidateStringforURL(t.e().o())).append(GLBluetoothService.f6a);
        SUtils.getLManager();
        String string = sbAppend4.append(LManager.getRandomCodeNumber()).toString();
        this.bH = t.e().n();
        bI = -100;
        bj = System.currentTimeMillis();
        bi.a(this.bH, string);
    }

    public final void a(String str) {
        bi.b();
        String str2 = buildBaseTracking() + str;
        this.bH = "https://secure.gameloft.com/tryandbuy/notifications/";
        bI = -100;
        bj = System.currentTimeMillis();
        bi.a(this.bH, str2);
    }

    public final void a(String str, String str2) {
        this.w = null;
        bi.b();
        bI = -100;
        bj = System.currentTimeMillis();
        bi.a(str, str2);
    }

    public final boolean b() {
        if (bi.a()) {
            if (System.currentTimeMillis() - bj <= 8000) {
                return false;
            }
            cancel();
            bI = -2;
            return true;
        }
        if (bi.v) {
            return true;
        }
        if (bi.t == null || bi.t == "") {
            bI = 40;
            return true;
        }
        String str = bi.t;
        if (str.equals("WIFI_ONLY") || str.equals("WIFI_3G") || str.equals("WIFI_3G_ORANGE_IL")) {
            bI = 0;
            return true;
        }
        bI = 40;
        return true;
    }

    public final boolean c() {
        if (bi.a()) {
            if (System.currentTimeMillis() - bj <= 8000) {
                return false;
            }
            cancel();
            bI = -2;
            return true;
        }
        if (bi.v) {
            return true;
        }
        if (bi.t != null && bi.t != "") {
            String value = getValue(bi.t, 0);
            if (value != null) {
                try {
                    if (Encrypter.crypt(value).equals(bu)) {
                        bI = Integer.parseInt(getValue(bi.t, 1));
                        return true;
                    }
                } catch (NumberFormatException e) {
                    bI = 40;
                    getValue(bi.t, 1);
                    return true;
                }
            }
            if (value != null && Encrypter.crypt(value).equals(bt)) {
                bI = 0;
                return true;
            }
        }
        bI = 40;
        return true;
    }

    public final boolean d() {
        if (bi.a()) {
            if (System.currentTimeMillis() - bj <= 10000) {
                return false;
            }
            cancel();
            bI = -2;
            return true;
        }
        if (bi.v) {
            return true;
        }
        if (bi.t == null || bi.t == "") {
            bI = 40;
            return true;
        }
        bI = 0;
        if (!bi.t.contains("error")) {
            return true;
        }
        bI = 40;
        return true;
    }

    public final boolean e() {
        if (bi.a()) {
            if (System.currentTimeMillis() - bj <= 60000) {
                return false;
            }
            cancel();
            bI = -2;
            C = null;
            D = null;
            return true;
        }
        C = null;
        D = null;
        if (bi.v) {
            return true;
        }
        if (bi.t != null && bi.t != "") {
            if (bi.t.indexOf(GLBluetoothService.f6a) == -1) {
                bi.t = Encoder.Blob2String(bi.t);
            }
            String value = getValue(bi.t, 0);
            if (value != null) {
                try {
                    if (Encrypter.crypt(value).equals(bu)) {
                        bI = Integer.parseInt(getValue(bi.t, 1));
                        return true;
                    }
                } catch (NumberFormatException e) {
                    bI = 40;
                    String value2 = getValue(bi.t, 1);
                    if (!value2.contains("PB")) {
                        return true;
                    }
                    try {
                        bI = Integer.parseInt(value2.substring(2, value2.length()));
                        return true;
                    } catch (NumberFormatException e2) {
                        return true;
                    }
                }
            }
            if (value != null && Encrypter.crypt(value).equals(bt)) {
                if (SUtils.getLManager().a(Integer.parseInt(getValue(bi.t, 2)))) {
                    bI = 0;
                    return true;
                }
                bI = 40;
                return true;
            }
        }
        bI = 40;
        return true;
    }

    public final boolean f() {
        this.w = null;
        if (bi.a()) {
            if (System.currentTimeMillis() - bj <= 15000) {
                return false;
            }
            cancel();
            bI = -2;
            return true;
        }
        if (bi.v) {
            return true;
        }
        String str = bi.t;
        if (str.contains("VERSION_AVAILABLE") && str.contains("DOWNLOAD_URL")) {
            this.w = str;
            return true;
        }
        if (str.contains("Error: No live release")) {
            this.w = str;
            return true;
        }
        if (str.contains("Error")) {
            return true;
        }
        bI = 40;
        return false;
    }
}
