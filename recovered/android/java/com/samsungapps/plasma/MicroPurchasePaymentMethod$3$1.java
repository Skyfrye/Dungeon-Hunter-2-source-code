package com.samsungapps.plasma;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class MicroPurchasePaymentMethod$3$1 implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ MicroPurchasePaymentMethod$3 f247a;

    MicroPurchasePaymentMethod$3$1(MicroPurchasePaymentMethod$3 microPurchasePaymentMethod$3) {
        this.f247a = microPurchasePaymentMethod$3;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f247a.f246a.setText("");
    }
}
