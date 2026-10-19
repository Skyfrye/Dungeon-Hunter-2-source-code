package com.gameloft.android.GAND.GloftD2SS.iab;

import android.os.Looper;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.XPlayer;

final class d implements Runnable {
    d() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.prepare();
        boolean unused = SamsungHelper.h = true;
        boolean z = false;
        do {
            try {
                XPlayer xPlayer = new XPlayer(new Device(SamsungHelper.f));
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
                boolean unused2 = SamsungHelper.h = false;
            } catch (Exception e2) {
                boolean unused3 = SamsungHelper.h = false;
            }
        } while (!z);
        Looper.loop();
    }
}
