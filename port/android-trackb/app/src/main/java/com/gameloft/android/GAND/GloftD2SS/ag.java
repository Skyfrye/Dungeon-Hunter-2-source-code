package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;

final class ag implements DialogInterface.OnCancelListener {

    final /* synthetic */ ad f43a;

    ag(ad adVar) {
        this.f43a = adVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        GLiveMain.bf = false;
    }
}
