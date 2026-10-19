package com.gameloft.android.GAND.GloftD2SS.installer;

import com.gameloft.android.GAND.GloftD2SS.installer.utils.DownloadComponent;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class m extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GameInstaller f128a;

    m(GameInstaller gameInstaller) {
        this.f128a = gameInstaller;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Iterator it = GameInstaller.access$300(this.f128a).iterator();
        while (it.hasNext()) {
            ((DownloadComponent) it.next()).q();
        }
    }
}
