package com.gameloft.android.GAND.GloftD2SS.installer;

import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;

final class c implements View.OnClickListener {

    final /* synthetic */ GameInstaller f118a;

    c(GameInstaller gameInstaller) {
        this.f118a = gameInstaller;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int id;
        try {
            id = ((Button) view).getId();
        } catch (Exception e) {
            id = ((ImageButton) view).getId();
        }
        this.f118a.b(id);
    }
}
