package com.gameloft.android.GAND.GloftD2SS;

import android.content.Intent;
import android.telephony.PhoneStateListener;

/* JADX INFO: loaded from: classes.dex */
final class au extends PhoneStateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ IGPActivity f57a;

    au(IGPActivity iGPActivity) {
        this.f57a = iGPActivity;
    }

    @Override // android.telephony.PhoneStateListener
    public final void onCallStateChanged(int i, String str) {
        switch (i) {
            case 0:
                if (IGPActivity.q) {
                    IGPActivity.q = false;
                    if (IGPActivity.r == 1 || IGPActivity.r == 2) {
                        try {
                            Thread.sleep(3000L);
                            break;
                        } catch (Exception e) {
                        }
                        this.f57a.startActivity(new Intent(this.f57a, (Class<?>) DungeonHunter2.class));
                    }
                }
                break;
            case 1:
                String str2 = "Ringing (" + str + ")";
                IGPActivity.q = IGPActivity.d;
                this.f57a.moveTaskToBack(true);
                break;
        }
        IGPActivity.r = i;
        super.onCallStateChanged(i, str);
    }
}
