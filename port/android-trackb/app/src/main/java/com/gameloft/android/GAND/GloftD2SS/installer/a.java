package com.gameloft.android.GAND.GloftD2SS.installer;

import android.widget.ProgressBar;
import com.gameloft.android.GAND.GloftD2SS.bq;

final class a implements Runnable {

    final /* synthetic */ GameInstaller f116a;

    a(GameInstaller gameInstaller) {
        this.f116a = gameInstaller;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            ProgressBar progressBar = (ProgressBar) this.f116a.findViewById(bq.data_downloader_linear_progress_bar);
            if (progressBar != null) {
                progressBar.setProgress(this.f116a.ba);
            }
        } catch (Exception e) {
        }
    }
}
