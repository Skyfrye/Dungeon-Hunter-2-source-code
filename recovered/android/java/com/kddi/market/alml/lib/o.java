package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

/* JADX INFO: loaded from: classes.dex */
final class o implements DialogInterface$OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ALMLClient f214a;

    o(ALMLClient aLMLClient) {
        this.f214a = aLMLClient;
    }

    @Override // android.content.DialogInterface$OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        ALMLClient.access$15(this.f214a, -6, null, null, null);
    }
}
