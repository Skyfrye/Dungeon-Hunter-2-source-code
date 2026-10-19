package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.content.DialogInterface$OnKeyListener;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes.dex */
final class bx implements DialogInterface$OnKeyListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Zirconia_DRM f91a;

    bx(Zirconia_DRM zirconia_DRM) {
        this.f91a = zirconia_DRM;
    }

    @Override // android.content.DialogInterface$OnKeyListener
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
