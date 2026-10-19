package com.gameloft.android.GAND.GloftD2SS.GLUtils;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

final class d implements HostnameVerifier {

    final /* synthetic */ HTTP f18a;

    d(HTTP http) {
        this.f18a = http;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        return true;
    }
}
