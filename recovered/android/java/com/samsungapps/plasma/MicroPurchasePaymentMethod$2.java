package com.samsungapps.plasma;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class MicroPurchasePaymentMethod$2 implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ MicroPurchasePaymentMethod f245a;

    MicroPurchasePaymentMethod$2(MicroPurchasePaymentMethod microPurchasePaymentMethod) {
        this.f245a = microPurchasePaymentMethod;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        this.f245a.u.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://web.teledit.com/Danal/Notice/help/samsung/yak.html")));
    }
}
