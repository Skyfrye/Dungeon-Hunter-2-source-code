package com.samsungapps.plasma;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;
import android.widget.Spinner;

/* JADX INFO: loaded from: classes.dex */
class MicroPurchasePaymentMethod$1 implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Spinner f244a;
    final /* synthetic */ EditText b;
    final /* synthetic */ EditText c;
    final /* synthetic */ EditText d;
    final /* synthetic */ MicroPurchasePaymentMethod e;

    MicroPurchasePaymentMethod$1(MicroPurchasePaymentMethod microPurchasePaymentMethod, Spinner spinner, EditText editText, EditText editText2, EditText editText3) {
        this.e = microPurchasePaymentMethod;
        this.f244a = spinner;
        this.b = editText;
        this.c = editText2;
        this.d = editText3;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        String str = (String) this.f244a.getSelectedItem();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append((CharSequence) this.b.getText());
        stringBuffer.append((CharSequence) this.c.getText());
        MicroPurchasePaymentMethod.a(this.e, str);
        MicroPurchasePaymentMethod.b(this.e, this.d.getText().toString());
        MicroPurchasePaymentMethod.c(this.e, stringBuffer.toString());
        MicroPurchasePaymentMethod.d(this.e, null);
        MicroPurchasePaymentMethod.a(this.e, false);
        MicroPurchasePaymentMethod.b(this.e, false);
        this.e.r();
    }
}
