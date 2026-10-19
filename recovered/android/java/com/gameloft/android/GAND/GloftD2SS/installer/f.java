package com.gameloft.android.GAND.GloftD2SS.installer;

import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes.dex */
final class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GameInstaller f121a;

    f(GameInstaller gameInstaller) {
        this.f121a = gameInstaller;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            ProgressBar progressBar = (ProgressBar) this.f121a.findViewById(2131427338);
            if (progressBar != null) {
                if (this.f121a.aq == 20 || this.f121a.aq == 41) {
                    progressBar.setProgress(this.f121a.ba);
                } else {
                    progressBar.setProgress(((int) (this.f121a.k / 1024)) + this.f121a.ba);
                }
            }
        } catch (Exception e) {
        }
    }
}
