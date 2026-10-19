package com.gameloft.android.GAND.GloftD2SS.GLUtils;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes.dex */
final class d implements HostnameVerifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ HTTP f18a;

    d(HTTP http) {
        this.f18a = http;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        return true;
    }
}
