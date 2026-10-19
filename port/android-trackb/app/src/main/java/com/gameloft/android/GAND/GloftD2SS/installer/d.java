package com.gameloft.android.GAND.GloftD2SS.installer;

import com.gameloft.android.GAND.GloftD2SS.installer.utils.DownloadComponent;
import java.util.Iterator;

final class d extends Thread {

    final /* synthetic */ GameInstaller f119a;

    d(GameInstaller gameInstaller) {
        this.f119a = gameInstaller;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Iterator it = this.f119a.bK.iterator();
        while (it.hasNext()) {
            ((DownloadComponent) it.next()).q();
        }
    }
}
