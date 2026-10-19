package com.gameloft.android.GAND.GloftD2SS.iab;

import android.os.Looper;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.XPlayer;

/* JADX INFO: loaded from: classes.dex */
final class d implements Runnable {
    d() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.prepare();
        SamsungHelper.access$002(true);
        boolean z = false;
        do {
            try {
                XPlayer xPlayer = new XPlayer(new Device(SamsungHelper.access$100()));
                XPlayer.setGGIUID(InAppBilling.a(6, 0), InAppBilling.a(7, 1));
                String strA = InAppBilling.a(0, 119);
                String str = InAppBilling.j;
                xPlayer.a(0, strA);
                long jCurrentTimeMillis = 0;
                while (!xPlayer.e()) {
                    try {
                        Thread.sleep(50L);
                    } catch (Exception e) {
                    }
                    if (System.currentTimeMillis() - jCurrentTimeMillis > 1500) {
                        jCurrentTimeMillis = System.currentTimeMillis();
                    }
                }
                if (XPlayer.getLastErrorCode() == 0) {
                    z = true;
                }
                SamsungHelper.access$002(false);
            } catch (Exception e2) {
                SamsungHelper.access$002(false);
            }
        } while (!z);
        Looper.loop();
    }
}
