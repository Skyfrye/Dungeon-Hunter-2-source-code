package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.os.Process;

final class cb implements DialogInterface.OnClickListener {

    final /* synthetic */ Zirconia_DRM f96a;

    cb(Zirconia_DRM zirconia_DRM) {
        this.f96a = zirconia_DRM;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f96a.finish();
        Process.killProcess(Process.myPid());
    }
}
