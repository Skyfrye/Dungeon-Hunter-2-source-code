package com.gameloft.android.GAND.GloftD2SS.installer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class k extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GameInstaller f126a;

    k(GameInstaller gameInstaller) {
        this.f126a = gameInstaller;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (GameInstaller.access$000(this.f126a)) {
            GameInstaller gameInstaller = this.f126a;
            if (!GameInstaller.isAirplaneModeOn(context)) {
                return;
            }
        }
        if (!GameInstaller.access$000(this.f126a)) {
            GameInstaller.access$002(this.f126a, true);
        }
        GameInstaller.access$100(this.f126a);
    }
}
