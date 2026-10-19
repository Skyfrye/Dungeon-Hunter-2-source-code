package com.gameloft.android.GAND.GloftD2SS.installer;

import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes.dex */
final class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GameInstaller f116a;

    a(GameInstaller gameInstaller) {
        this.f116a = gameInstaller;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            ProgressBar progressBar = (ProgressBar) this.f116a.findViewById(2131427338);
            if (progressBar != null) {
                progressBar.setProgress(this.f116a.ba);
            }
        } catch (Exception e) {
        }
    }
}
