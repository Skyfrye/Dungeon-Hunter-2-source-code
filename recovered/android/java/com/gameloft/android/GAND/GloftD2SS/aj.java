package com.gameloft.android.GAND.GloftD2SS;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
final class aj implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ai f46a;

    aj(ai aiVar) {
        this.f46a = aiVar;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (i == 0) {
            GLiveMain.f20a.loadUrl(GLiveMain.ae.replace("FRIEND_ID", GLiveMain.z) + "1");
        }
        if (i == 1) {
            GLiveMain.f20a.loadUrl(GLiveMain.ae.replace("FRIEND_ID", GLiveMain.z) + "0");
        }
    }
}
