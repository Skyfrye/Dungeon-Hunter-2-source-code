package com.samsungapps.plasma;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class MicroPurchasePaymentMethod$3$2 implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ MicroPurchasePaymentMethod$3 f248a;

    MicroPurchasePaymentMethod$3$2(MicroPurchasePaymentMethod$3 microPurchasePaymentMethod$3) {
        this.f248a = microPurchasePaymentMethod$3;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
