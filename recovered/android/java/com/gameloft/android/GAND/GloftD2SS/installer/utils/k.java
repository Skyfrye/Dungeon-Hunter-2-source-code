package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes.dex */
final class k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f154a;

    k(String str) {
        this.f154a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((Tracking.access$100(Tracking.access$000()) + this.f154a) + "&enc=1").openConnection();
            httpURLConnection.setConnectTimeout(Tracking.access$200());
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Connection", "close");
            httpURLConnection.getResponseCode();
        } catch (UnknownHostException e) {
        } catch (Exception e2) {
        }
    }
}
