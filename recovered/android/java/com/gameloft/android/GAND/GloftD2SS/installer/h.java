package com.gameloft.android.GAND.GloftD2SS.installer;

import android.widget.Button;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
final class h implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f123a;
    final /* synthetic */ boolean b;
    final /* synthetic */ GameInstaller c;

    h(GameInstaller gameInstaller, int i, boolean z) {
        this.c = gameInstaller;
        this.f123a = i;
        this.b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            ((FrameLayout) ((Button) this.c.findViewById(this.f123a)).getParent()).setVisibility(this.b ? 0 : 8);
        } catch (Exception e) {
        }
    }
}
