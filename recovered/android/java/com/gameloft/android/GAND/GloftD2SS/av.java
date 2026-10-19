package com.gameloft.android.GAND.GloftD2SS;

import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes.dex */
final class av extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ProgressDialog f58a;
    final /* synthetic */ IGPActivity b;

    private av(IGPActivity iGPActivity) {
        this.b = iGPActivity;
        this.f58a = null;
    }

    /* synthetic */ av(IGPActivity iGPActivity, byte b) {
        this(iGPActivity);
    }

    private void a(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        try {
            this.b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        if (this.f58a != null) {
            try {
                this.f58a.dismiss();
            } catch (Exception e) {
            }
            this.f58a = null;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (str.startsWith(IGPActivity.k)) {
            IGPActivity.b = true;
        } else if (!str.startsWith(IGPActivity.l) && str.indexOf("ingameads.gameloft.com") != -1) {
            IGPActivity.b = false;
        }
        if (this.f58a == null) {
            try {
                this.f58a = new ProgressDialog(this.b);
                this.f58a.setProgressStyle(0);
                this.f58a.setMessage(this.b.getString(IGPActivity.m[IGPActivity.c], new Object[]{this}));
                this.f58a.show();
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
        if (str.startsWith("http://ingameads.gameloft.com/redir/?from")) {
            if (str != null && str.length() > 0) {
                try {
                    this.b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                } catch (Exception e) {
                }
            }
        } else if (str.startsWith(IGPActivity.j)) {
            this.b.a();
        } else if (str.startsWith("vnd.youtube:")) {
            IGPActivity.access$100(this.b, str);
        } else {
            webView.loadUrl(str);
        }
        return true;
    }
}
