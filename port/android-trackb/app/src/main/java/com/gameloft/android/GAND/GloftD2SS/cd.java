package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.view.KeyEvent;

final class cd implements DialogInterface.OnKeyListener {

    final /* synthetic */ Zirconia_DRM f98a;

    cd(Zirconia_DRM zirconia_DRM) {
        this.f98a = zirconia_DRM;
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            switch (keyEvent.getKeyCode()) {
                case 4:
                case 84:
                    return true;
            }
        }
        return false;
    }
}
