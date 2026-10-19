package com.gameloft.android.GAND.GloftD2SS.installer;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.gameloft.android.GAND.GloftD2SS.bq;
import com.gameloft.android.GAND.GloftD2SS.bs;

final class e implements Runnable {

    final /* synthetic */ String f120a;
    final /* synthetic */ String b;
    final /* synthetic */ GameInstaller c;

    e(GameInstaller gameInstaller, String str, String str2) {
        this.c = gameInstaller;
        this.f120a = str;
        this.b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View viewInflate = this.c.getLayoutInflater().inflate(bs.gi_layout_download_toast_message, (ViewGroup) this.c.findViewById(bq.toast_layout));
        ((TextView) viewInflate.findViewById(bq.data_downloader_toast_message)).setText(this.f120a);
        if (this.b != null) {
            ((TextView) viewInflate.findViewById(bq.data_downloader_toast_title)).setText(this.b);
        }
        Toast toast = new Toast(this.c.getApplicationContext());
        toast.setGravity(17, 0, 0);
        toast.setDuration(1);
        toast.setView(viewInflate);
    }
}
