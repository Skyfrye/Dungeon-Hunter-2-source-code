package com.gameloft.android.GAND.GloftD2SS.installer;

import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
final class j extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f125a;
    final /* synthetic */ GameInstaller b;

    j(GameInstaller gameInstaller, String str) {
        this.b = gameInstaller;
        this.f125a = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f125a).openConnection();
            httpURLConnection.connect();
            GameInstaller.isReached = Boolean.TRUE;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        } catch (Exception e) {
            GameInstaller.isReached = Boolean.FALSE;
        }
    }
}
