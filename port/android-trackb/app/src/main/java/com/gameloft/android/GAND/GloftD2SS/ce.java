package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;

final class ce implements DialogInterface.OnClickListener {

    final /* synthetic */ Zirconia_DRM f99a;

    ce(Zirconia_DRM zirconia_DRM) {
        this.f99a = zirconia_DRM;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f99a.finish();
    }
}
