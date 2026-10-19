package com.gameloft.android.GAND.GloftD2SS.installer;

import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes.dex */
final class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f124a;
    final /* synthetic */ boolean b;
    final /* synthetic */ GameInstaller c;

    i(GameInstaller gameInstaller, int i, boolean z) {
        this.c = gameInstaller;
        this.f124a = i;
        this.b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            ((ProgressBar) this.c.findViewById(this.f124a)).setVisibility(this.b ? 0 : 8);
        } catch (Exception e) {
        }
    }
}
