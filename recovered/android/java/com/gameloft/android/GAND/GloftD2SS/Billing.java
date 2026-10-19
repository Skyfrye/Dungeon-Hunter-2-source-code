package com.gameloft.android.GAND.GloftD2SS;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes.dex */
public final class Billing {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f3a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    public static final int f = 5;
    public static final int g = 6;
    public static final int h = 7;
    private static HttpsURLConnection m = null;
    private static InputStream n = null;
    private static OutputStream o = null;
    private static String p = null;
    private static boolean q = false;
    private static boolean r = false;
    private static int s = 0;
    private static String t = "";
    public String i = null;
    public String j = null;
    public String k = null;
    GetNpost l = new GetNpost();

    private int d() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int i = n.read();
                if (i == -1) {
                    break;
                }
                byteArrayOutputStream.write(i);
            }
            t = new String(byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.close();
            if (t != null) {
                return t.length();
            }
            return 0;
        } catch (IOException e2) {
            t = "";
            t = "<ResponseRootElement><code>-1</code><desc>A network error has occurred.\nPlease try again later.</desc></ResponseRootElement>";
            return 0;
        }
    }

    private void e() {
        r = false;
        s = 0;
        t = "";
        try {
            if (o != null) {
                o.close();
                o = null;
            }
        } catch (Exception e2) {
        }
    }

    private static int getLastError() {
        return s;
    }

    public static String getsResponse() {
        return t;
    }

    private static String getsUrl() {
        return p;
    }

    private static boolean inProcess() {
        return r;
    }

    private static boolean isConnected() {
        return q;
    }

    public static String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b2 : bArrDigest) {
                stringBuffer.append(Integer.toHexString(b2 & 255));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private static void setsResponse(String str) {
        t = str;
    }

    public static void setsUrl(String str) {
        p = str;
    }

    public final boolean a() {
        if (r || m == null) {
            s = 5;
        } else {
            try {
                m.setRequestMethod("POST");
                m.setRequestProperty("User-Agent", this.l.f27a);
                m.setRequestProperty("Connection", "Keep-Alive");
                if (this.j != null) {
                    m.setRequestProperty("x-mod-sc", this.j);
                    m.setRequestProperty("x-mod-rf", this.i);
                    m.setRequestProperty("x-mod-ss", this.k);
                }
                m.setRequestProperty("X-Method", "POST");
                m.setDoInput(true);
                m.setDoOutput(true);
                r = true;
                s = 0;
                n = m.getInputStream();
            } catch (IOException e2) {
                s = 4;
                t = "<ResponseRootElement><code>-1</code><desc>A network error has occurred.\nPlease try again later.</desc></ResponseRootElement>";
            }
        }
        return r;
    }

    public final boolean a(String str) {
        p = "https://vmediatest.verizonwireless.com/vShopWeb/VShop?" + str;
        c();
        try {
            System.setProperty("http.keepAlive", "false");
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(p).openConnection();
            m = httpsURLConnection;
            httpsURLConnection.setConnectTimeout(30000);
            m.setReadTimeout(7000);
            q = true;
        } catch (Exception e2) {
            s = 2;
            t = "<ResponseRootElement><code>-1</code><desc>A network error has occurred.\nPlease try again later.</desc></ResponseRootElement>";
        }
        return q;
    }

    public final int b() {
        int responseCode = -2;
        if (r) {
            try {
                responseCode = m.getResponseCode();
            } catch (IOException e2) {
                s = 6;
            }
            t = "Handling " + responseCode;
            switch (responseCode) {
                case 200:
                    if (d() > 0) {
                        s = 1;
                        int i = 0;
                        while (true) {
                            String headerFieldKey = m.getHeaderFieldKey(i);
                            String headerField = m.getHeaderField(i);
                            if (headerFieldKey != null || headerField != null) {
                                if (headerFieldKey != null && headerFieldKey.equals("x-mod-sc")) {
                                    this.j = headerField;
                                }
                                i++;
                            }
                        }
                    } else {
                        s = 6;
                    }
                    r = false;
                    break;
                case com.gameloft.android.GAND.GloftD2SS.installer.r.b /* 202 */:
                case 206:
                    s = 0;
                    break;
                case 408:
                case com.gameloft.android.GAND.GloftD2SS.installer.u.e /* 504 */:
                    s = 7;
                    r = false;
                    break;
                default:
                    s = 6;
                    r = false;
                    t = "<ResponseRootElement><code>-1</code><desc>A network error has occurred.\nPlease try again later.</desc></ResponseRootElement>";
                    break;
            }
        }
        return s;
    }

    public final void c() {
        try {
            if (m != null) {
                r = false;
                s = 0;
                t = "";
                try {
                    if (o != null) {
                        o.close();
                        o = null;
                    }
                } catch (Exception e2) {
                }
                if (n != null) {
                    n.close();
                    n = null;
                }
                m = null;
                q = false;
            }
        } catch (Exception e3) {
        }
    }
}
