package com.kddi.market.alml.lib;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
final class k implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ALMLClient f210a;
    private final /* synthetic */ Activity b;

    k(ALMLClient aLMLClient, Activity activity) {
        this.f210a = aLMLClient;
        this.b = activity;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case -2:
                break;
            case -1:
                this.b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://market.kddi.com/update_info/")));
                break;
            default:
                return;
        }
        ALMLClient.access$15(this.f210a, -54, null, null, null);
    }
}
