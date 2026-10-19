package com.samsungapps.plasma;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Spinner;

/* JADX INFO: loaded from: classes.dex */
class PrepaidCardPaymentMethod$1 implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Spinner f266a;
    final /* synthetic */ PrepaidCardPaymentMethod b;

    PrepaidCardPaymentMethod$1(PrepaidCardPaymentMethod prepaidCardPaymentMethod, Spinner spinner) {
        this.b = prepaidCardPaymentMethod;
        this.f266a = spinner;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        this.b.u.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(((PrepaidCardPaymentMethod$PrepaidCardType) this.f266a.getSelectedItem()).getTermsUrl())));
    }
}
