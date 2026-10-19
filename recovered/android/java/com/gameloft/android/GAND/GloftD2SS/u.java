package com.gameloft.android.GAND.GloftD2SS;

import android.telephony.PhoneStateListener;

/* JADX INFO: loaded from: classes.dex */
final class u extends PhoneStateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
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
