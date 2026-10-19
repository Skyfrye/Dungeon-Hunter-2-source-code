package com.gameloft.android.GAND.GloftD2SS.installer;

import android.widget.TextView;
import com.gameloft.android.GAND.GloftD2SS.bq;

final class g implements Runnable {

    final /* synthetic */ String f122a;
    final /* synthetic */ GameInstaller b;

    g(GameInstaller gameInstaller, String str) {
        this.b = gameInstaller;
        this.f122a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            TextView textView = (TextView) this.b.findViewById(bq.data_downloader_progress_text);
            if (textView != null) {
                textView.setVisibility(0);
                textView.setText(this.f122a);
            }
        } catch (Exception e) {
        }
    }
}
