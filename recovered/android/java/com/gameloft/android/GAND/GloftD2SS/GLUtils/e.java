package com.gameloft.android.GAND.GloftD2SS.GLUtils;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
final class e implements X509TrustManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ HTTP f19a;

    e(HTTP http) {
        this.f19a = http;
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public final X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}
