package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;

final class an implements DialogInterface.OnCancelListener {

    final /* synthetic */ ah f50a;

    an(ah ahVar) {
        this.f50a = ahVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        GLiveMain.be = false;
    }
}
