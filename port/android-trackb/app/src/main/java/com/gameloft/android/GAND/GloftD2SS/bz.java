package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;

final class bz implements DialogInterface.OnClickListener {

    final /* synthetic */ Zirconia_DRM f93a;

    bz(Zirconia_DRM zirconia_DRM) {
        this.f93a = zirconia_DRM;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (this.f93a.b()) {
            this.f93a.b(false);
        } else {
            this.f93a.d = true;
            this.f93a.d();
        }
    }
}
