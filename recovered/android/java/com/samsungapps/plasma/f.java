package com.samsungapps.plasma;

import android.os.Handler;
import android.os.Message;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;

/* JADX INFO: loaded from: classes.dex */
final class f extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f291a = 200;
    static final int b = 61185;
    static final int c = 61186;
    static final int d = 61187;
    private static final String k = "Content-Type";
    private static final String l = "text/xml";
    private static final int m = 30000;
    private static final int n = 30000;
    private static final int o = 60000;
    private static final int p = 60000;
    private Handler h;
    private int e = -1;
    private String f = null;
    private String g = null;
    private boolean i = false;
    private int j = 0;

    f(Handler handler) {
        this.h = null;
        this.h = handler;
    }

    final int a() {
        return this.e;
    }

    final void a(int i) {
        this.e = i;
    }

    final void a(String str) {
        this.f = str;
    }

    final void a(boolean z) {
        this.i = z;
    }

    final String b() {
        return this.f;
    }

    final void b(int i) {
        this.j = i;
    }

    final void b(String str) {
        this.g = str;
    }

    final String c() {
        return this.g;
    }

    final boolean d() {
        return this.i;
    }

    final int e() {
        return this.j;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        int statusCode;
        int i = 60000;
        int i2 = 30000;
        if (this.f == null || this.g == null) {
            return;
        }
        if (this.j > 0) {
            try {
                Thread.sleep(this.j);
            } catch (InterruptedException e) {
                a.a(e);
            }
        }
        if (this.i) {
            i2 = 60000;
        } else {
            i = 30000;
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, i2);
        HttpConnectionParams.setSoTimeout(basicHttpParams, i);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
        HttpPost httpPost = new HttpPost(this.f);
        httpPost.setHeader(k, l);
        String string = "";
        try {
            httpPost.setEntity(new StringEntity(this.g, "UTF-8"));
            HttpResponse httpResponseExecute = defaultHttpClient.execute(httpPost);
            statusCode = httpResponseExecute.getStatusLine().getStatusCode();
            string = EntityUtils.toString(httpResponseExecute.getEntity());
        } catch (UnsupportedEncodingException e2) {
            statusCode = d;
            a.a(e2);
        } catch (ClientProtocolException e3) {
            statusCode = c;
            a.a(e3);
        } catch (IOException e4) {
            statusCode = b;
            a.a(e4);
        }
        if (this.h != null) {
            this.h.sendMessage(Message.obtain(this.h, this.e, statusCode, 0, string));
        }
    }
}
