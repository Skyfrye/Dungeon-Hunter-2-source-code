package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.view.KeyEvent;

final class ca implements DialogInterface.OnKeyListener {

    final /* synthetic */ Zirconia_DRM f95a;

    ca(Zirconia_DRM zirconia_DRM) {
        this.f95a = zirconia_DRM;
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
