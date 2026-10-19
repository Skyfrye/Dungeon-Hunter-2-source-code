package com.gameloft.android.GAND.GloftD2SS.installer;

import android.widget.ProgressBar;
import com.gameloft.android.GAND.GloftD2SS.bq;

final class f implements Runnable {

    final /* synthetic */ GameInstaller f121a;

    f(GameInstaller gameInstaller) {
        this.f121a = gameInstaller;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            ProgressBar progressBar = (ProgressBar) this.f121a.findViewById(bq.data_downloader_linear_progress_bar);
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
