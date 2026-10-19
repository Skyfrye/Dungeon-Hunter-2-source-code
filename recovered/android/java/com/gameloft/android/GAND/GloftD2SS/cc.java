package com.gameloft.android.GAND.GloftD2SS;

import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
final class cc implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Zirconia_DRM f97a;

    cc(Zirconia_DRM zirconia_DRM) {
        this.f97a = zirconia_DRM;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setComponent(new ComponentName("com.android.settings", "com.android.settings.wifi.WifiSettings"));
        intent.setFlags(268435456);
        this.f97a.startActivity(intent);
    }
}
