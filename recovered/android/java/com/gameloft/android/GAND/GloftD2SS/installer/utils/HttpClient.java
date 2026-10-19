package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class HttpClient implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f139a = 60000;
    HttpURLConnection e;
    public static int c = 60000;
    public static final int b = 180000;
    public static int d = b;

    private String a(int i) {
        String headerField = this.e.getHeaderField(i);
        return headerField == null ? "" : headerField;
    }

    private long c(String str) {
        this.e = (HttpURLConnection) new URL(str).openConnection();
        return this.e.getContentLength();
    }

    private URL c() {
        if (this.e == null) {
            return null;
        }
        return this.e.getURL();
    }

    private String d(String str) {
        String headerField = this.e.getHeaderField(str);
        return headerField == null ? "" : headerField;
    }

    private void d() {
        if (this.e != null) {
            this.e.disconnect();
        }
    }

    public static void incrementConnectionTimeout() {
        if (c < 120000) {
            c += 12000;
        }
        if (d < 360000) {
            d += 36000;
        }
    }

    public final int a(String str, int i) {
        try {
            String strD = d(str);
            if (strD.compareTo("") != 0) {
                return Integer.parseInt(strD.replace(".", ""));
            }
            return -1;
        } catch (Exception e) {
            return -1;
        }
    }

    public final long a() {
        if (this.e != null) {
            return this.e.getContentLength();
        }
        return 0L;
    }

    public final InputStream a(String str) {
        this.e = (HttpURLConnection) new URL(str.replace(" ", "%20")).openConnection();
        this.e.setConnectTimeout(c);
        this.e.setReadTimeout(d);
        this.e.connect();
        return this.e.getInputStream();
    }

    public final InputStream a(String str, long j, long j2) {
        return a(str, j, 0L, 0L);
    }

    public final InputStream a(String str, long j, long j2, long j3) {
        this.e = (HttpURLConnection) new URL(str.replace(" ", "%20")).openConnection();
        this.e.setConnectTimeout(c);
        this.e.setReadTimeout(d);
        if (j3 > 0) {
            this.e.setRequestProperty("Range", "bytes=" + (j2 + j) + "-" + (j2 + j + j3));
        } else {
            this.e.setRequestProperty("Range", "bytes=" + (j2 + j) + "-");
        }
        this.e.connect();
        return this.e.getInputStream();
    }

    public final boolean a(String str, boolean z) {
        d(str);
        if (d(str).compareToIgnoreCase("no") == 0 || d(str).compareToIgnoreCase("0") == 0) {
            return false;
        }
        if (d(str).compareToIgnoreCase("yes") != 0 && d(str).compareToIgnoreCase("1") == 0) {
            return true;
        }
        return true;
    }

    public final String b(String str) {
        try {
            str = str.replace(" ", "%20");
            this.e = (HttpURLConnection) new URL(str).openConnection();
            this.e.setConnectTimeout(c);
            this.e.setReadTimeout(d);
            this.e.connect();
            this.e.getInputStream();
            return this.e.getURL().toString();
        } catch (Exception e) {
            return str;
        }
    }

    public final void b() {
        if (this.e != null) {
            this.e.disconnect();
        }
        this.e = null;
    }
}
