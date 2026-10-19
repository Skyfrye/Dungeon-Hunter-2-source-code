package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.SUtils;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.XPlayer;

/* JADX INFO: loaded from: classes.dex */
final class j extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f153a;
    final /* synthetic */ int b;
    final /* synthetic */ boolean c;
    final /* synthetic */ boolean d;
    final /* synthetic */ String e;

    j(int i, int i2, boolean z, boolean z2, String str) {
        this.f153a = i;
        this.b = i2;
        this.c = z;
        this.d = z2;
        this.e = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        synchronized (Tracker.u) {
            String strAccess$000 = Tracker.access$000(this.f153a, this.b, this.c, this.d, this.e);
            if (this.b == 0 && this.d && SUtils.getPreferenceBoolean(strAccess$000, false, Tracker.f143a)) {
                return;
            }
            Device device = new Device();
            Tracker.n = device;
            device.a(Tracker.access$100());
            XPlayer xPlayer = new XPlayer(Tracker.n);
            Tracker.o = xPlayer;
            xPlayer.a(strAccess$000);
            while (!Tracker.o.c()) {
                try {
                    Thread.sleep(100L);
                } catch (Exception e) {
                }
            }
            if (XPlayer.getLastErrorCode() == 0) {
                SUtils.setPreference(strAccess$000, true, Tracker.f143a);
            }
        }
    }
}
