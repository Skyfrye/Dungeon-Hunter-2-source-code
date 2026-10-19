package com.gameloft.android.GAND.GloftD2SS;

import android.telephony.PhoneStateListener;

final class u extends PhoneStateListener {

    final /* synthetic */ GLiveMain f171a;

    u(GLiveMain gLiveMain) {
        this.f171a = gLiveMain;
    }

    @Override // android.telephony.PhoneStateListener
    public final void onCallStateChanged(int i, String str) {
        GLiveMain.cW = i;
        super.onCallStateChanged(i, str);
    }
}
