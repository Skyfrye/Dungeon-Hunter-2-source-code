package com.gameloft.android.GAND.GloftD2SS.installer;

import com.gameloft.android.GAND.GloftD2SS.installer.utils.DownloadComponent;
import java.util.Iterator;

final class m extends Thread {

    final /* synthetic */ GameInstaller f128a;

    m(GameInstaller gameInstaller) {
        this.f128a = gameInstaller;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Iterator it = this.f128a.bK.iterator();
        while (it.hasNext()) {
            ((DownloadComponent) it.next()).q();
        }
    }
}
