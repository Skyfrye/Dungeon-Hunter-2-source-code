package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.os.Process;

final class by implements DialogInterface.OnClickListener {

    final /* synthetic */ Zirconia_DRM f92a;

    by(Zirconia_DRM zirconia_DRM) {
        this.f92a = zirconia_DRM;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f92a.finish();
        Process.killProcess(Process.myPid());
    }
}
