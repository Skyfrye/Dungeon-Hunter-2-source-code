package com.gameloft.android.GAND.GloftD2SS.installer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class k extends BroadcastReceiver {

    final /* synthetic */ GameInstaller f126a;

    k(GameInstaller gameInstaller) {
        this.f126a = gameInstaller;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f126a.bX) {
            GameInstaller gameInstaller = this.f126a;
            if (!GameInstaller.isAirplaneModeOn(context)) {
                return;
            }
        }
        if (!this.f126a.bX) {
            this.f126a.bX = true;
        }
        this.f126a.o();
    }
}
