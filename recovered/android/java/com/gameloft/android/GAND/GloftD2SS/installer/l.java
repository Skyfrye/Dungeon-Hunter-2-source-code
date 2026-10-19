package com.gameloft.android.GAND.GloftD2SS.installer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;

/* JADX INFO: loaded from: classes.dex */
final class l extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GameInstaller f127a;

    l(GameInstaller gameInstaller) {
        this.f127a = gameInstaller;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (this.f127a.bi) {
            this.f127a.bi = false;
            return;
        }
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        if ("android.net.wifi.STATE_CHANGE".equals(action) && wifiManager.getWifiState() == 3 && this.f127a.aq != 6) {
            GameInstaller.access$200(this.f127a, 6);
        }
    }
}
