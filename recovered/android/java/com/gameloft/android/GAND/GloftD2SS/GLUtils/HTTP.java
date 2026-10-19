package com.gameloft.android.GAND.GloftD2SS.GLUtils;

import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy$Type;
import java.net.SocketException;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.HttpConnection;

/* JADX INFO: loaded from: classes.dex */
public final class HTTP implements Config, Runnable {
    public static String w = null;
    private String A;
    public String t;
    private String z;
    private final int x = 16;
    private Thread y = null;
    private HttpConnection B = null;
    private HttpURLConnection C = null;
    private HttpsURLConnection D = null;
    private InputStream E = null;
    private OutputStream F = null;
    boolean u = false;
    public boolean v = false;

    public HTTP() {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{new e(this)}, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
            HttpsURLConnection.setDefaultHostnameVerifier(new d(this));
        } catch (Exception e) {
        }
    }

    private boolean d() {
        return this.v;
    }

    private boolean e() {
        return this.z.indexOf("https") != -1;
    }

    private static void onValidationHandled() {
        ConnectionTimer.stop();
    }

    public final void a(String str, String str2) {
        while (this.u) {
            try {
                if (System.currentTimeMillis() - XPlayer.bj > 60000) {
                    b();
                }
                synchronized (this) {
                    try {
                        wait(50L);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Exception e) {
            }
        }
        this.u = true;
        this.z = str + (str.indexOf("?") > 0 ? "&" : "?") + str2;
        if (XPlayer.bh.equals("TextHtml") || XPlayer.bh.equals("texthtml") || XPlayer.bh.equals("TEXTHTML")) {
            this.z += "&texthtml=1";
        } else if (XPlayer.bh.equals("TextPlain") || XPlayer.bh.equals("textplain") || XPlayer.bh.equals("TEXTPLAIN")) {
            this.z += "&textplain=1";
        }
        if (this.y != null) {
            try {
                this.y.join();
            } catch (Exception e2) {
            }
        }
        ConnectionTimer.start(60000L);
        this.v = false;
        this.y = new Thread(this);
        this.y.start();
    }

    public final boolean a() {
        return this.u;
    }

    public final void b() {
        if (this.B != null) {
            try {
                synchronized (this.B) {
                    this.E.close();
                }
            } catch (Exception e) {
            }
            try {
                synchronized (this.B) {
                    this.B.close();
                }
            } catch (Exception e2) {
            }
        }
        this.E = null;
        this.B = null;
        this.y = null;
        System.gc();
        this.u = false;
    }

    public final void c() {
        b();
        this.t = null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.z.indexOf("https") != -1) {
            try {
                this.v = false;
                a carrier = XPlayer.getCarrier();
                System.setProperty("http.keepAlive", "false");
                URL url = new URL(this.z);
                if (carrier.a()) {
                    this.D = (HttpsURLConnection) url.openConnection(new Proxy(Proxy$Type.HTTP, new InetSocketAddress(InetAddress.getByName(carrier.b()), carrier.c())));
                } else {
                    this.D = (HttpsURLConnection) url.openConnection();
                }
                this.D.setRequestMethod("GET");
                this.D.setRequestProperty("Connection", "close");
                HttpsURLConnection httpsURLConnection = this.D;
                XPlayer.getDevice();
                httpsURLConnection.setRequestProperty("User-Agent", Device.getUserAgent());
                if (w != null) {
                    this.D.setRequestProperty("x-up-subno", w);
                }
                this.D.setRequestProperty("x-gl-d", SUtils.GetSerialKey());
                this.D.setRequestProperty("x-android-os-build-model", Build.MODEL);
                HttpsURLConnection httpsURLConnection2 = this.D;
                XPlayer.getDevice();
                httpsURLConnection2.setRequestProperty("x-up-gl-subno", Device.getLineNumber());
                HttpsURLConnection httpsURLConnection3 = this.D;
                XPlayer.getDevice();
                httpsURLConnection3.setRequestProperty("x-up-gl-imei", Device.getIMEI());
                this.D.setRequestProperty("x-up-gl-ggi", "52297");
                HttpsURLConnection httpsURLConnection4 = this.D;
                XPlayer.getDevice();
                httpsURLConnection4.setRequestProperty("x-up-gl-gamecode  ", Device.getDemoCode());
                if (XPlayer.C != null) {
                    this.D.setRequestProperty("x-up-gl-acnum", XPlayer.C);
                }
                if (XPlayer.E != "") {
                    this.D.setRequestProperty("x-up-gl-purchaseid", XPlayer.E);
                }
                if (Config.b_ != null) {
                    this.D.setRequestProperty("x-up-calling-line-id", Config.b_);
                }
                if (Config.c_ != null) {
                    this.D.setRequestProperty("x-up-uplink", Config.c_);
                }
                if (Config.d_ != null) {
                    this.D.setRequestProperty("x-Nokia-MSISDN", Config.d_);
                }
                if (this.D.getResponseCode() != 200) {
                    b();
                    this.v = true;
                    this.u = false;
                    ConnectionTimer.stop();
                    return;
                }
                synchronized (this.D) {
                    this.E = this.D.getInputStream();
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[16];
                int i = 0;
                while (i != -1) {
                    i = this.E.read(bArr, 0, 16);
                    if (i != -1) {
                        byteArrayOutputStream.write(bArr, 0, i);
                    }
                }
                this.t = byteArrayOutputStream.toString();
                this.t.split("\n");
            } catch (SocketException e) {
                this.v = true;
                this.u = false;
                XPlayer.setLastErrorMessage(-2);
            } catch (UnknownHostException e2) {
                this.v = true;
                this.u = false;
                XPlayer.setLastErrorMessage(-2);
            } catch (Exception e3) {
                this.v = true;
                this.u = false;
            }
            b();
            this.u = false;
            ConnectionTimer.stop();
            return;
        }
        try {
            this.v = false;
            a carrier2 = XPlayer.getCarrier();
            System.setProperty("http.keepAlive", "false");
            URL url2 = new URL(this.z);
            if (carrier2.a()) {
                this.C = (HttpURLConnection) url2.openConnection(new Proxy(Proxy$Type.HTTP, new InetSocketAddress(InetAddress.getByName(carrier2.b()), carrier2.c())));
            } else {
                this.C = (HttpURLConnection) url2.openConnection();
            }
            this.C.setRequestMethod("GET");
            this.C.setRequestProperty("Connection", "close");
            HttpURLConnection httpURLConnection = this.C;
            XPlayer.getDevice();
            httpURLConnection.setRequestProperty("User-Agent", Device.getUserAgent());
            if (w != null) {
                this.C.setRequestProperty("x-up-subno", w);
            }
            this.C.setRequestProperty("x-gl-d", SUtils.GetSerialKey());
            this.C.setRequestProperty("x-android-os-build-model", Build.MODEL);
            HttpURLConnection httpURLConnection2 = this.C;
            XPlayer.getDevice();
            httpURLConnection2.setRequestProperty("x-up-gl-subno", Device.getLineNumber());
            HttpURLConnection httpURLConnection3 = this.C;
            XPlayer.getDevice();
            httpURLConnection3.setRequestProperty("x-up-gl-imei", Device.getIMEI());
            this.C.setRequestProperty("x-up-gl-ggi", "52297");
            HttpURLConnection httpURLConnection4 = this.C;
            XPlayer.getDevice();
            httpURLConnection4.setRequestProperty("x-up-gl-gamecode  ", Device.getDemoCode());
            if (XPlayer.C != null) {
                this.C.setRequestProperty("x-up-gl-acnum", XPlayer.C);
            }
            if (XPlayer.E != "") {
                this.C.setRequestProperty("x-up-gl-purchaseid", XPlayer.E);
            }
            if (Config.b_ != null) {
                this.C.setRequestProperty("x-up-calling-line-id", Config.b_);
            }
            if (Config.c_ != null) {
                this.C.setRequestProperty("x-up-uplink", Config.c_);
            }
            if (Config.d_ != null) {
                this.C.setRequestProperty("x-Nokia-MSISDN", Config.d_);
            }
            if (this.C.getResponseCode() != 200) {
                b();
                this.v = true;
                this.u = false;
                ConnectionTimer.stop();
                return;
            }
            synchronized (this.C) {
                this.E = this.C.getInputStream();
            }
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[16];
            int i2 = 0;
            while (i2 != -1) {
                i2 = this.E.read(bArr2, 0, 16);
                if (i2 != -1) {
                    byteArrayOutputStream2.write(bArr2, 0, i2);
                }
            }
            this.t = byteArrayOutputStream2.toString();
            b();
            this.u = false;
            ConnectionTimer.stop();
        } catch (SocketException e4) {
            this.v = true;
            this.u = false;
            XPlayer.setLastErrorMessage(-2);
        } catch (UnknownHostException e5) {
            this.v = true;
            this.u = false;
            XPlayer.setLastErrorMessage(-2);
        } catch (Exception e6) {
            this.v = true;
            this.u = false;
        }
    }
}
