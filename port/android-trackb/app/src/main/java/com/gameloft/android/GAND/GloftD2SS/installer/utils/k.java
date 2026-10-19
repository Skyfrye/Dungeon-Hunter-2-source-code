package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;

final class k implements Runnable {

    final /* synthetic */ String f154a;

    k(String str) {
        this.f154a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((Tracking.buildURL(Tracking.n) + this.f154a) + "&enc=1").openConnection();
            httpURLConnection.setConnectTimeout(Tracking.m);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Connection", "close");
            httpURLConnection.getResponseCode();
        } catch (UnknownHostException e) {
        } catch (Exception e2) {
        }
    }
}
