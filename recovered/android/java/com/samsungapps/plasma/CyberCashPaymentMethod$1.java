package com.samsungapps.plasma;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;
import android.widget.Spinner;

/* JADX INFO: loaded from: classes.dex */
class CyberCashPaymentMethod$1 implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Spinner f239a;
    final /* synthetic */ EditText b;
    final /* synthetic */ EditText c;
    final /* synthetic */ CyberCashPaymentMethod d;

    CyberCashPaymentMethod$1(CyberCashPaymentMethod cyberCashPaymentMethod, Spinner spinner, EditText editText, EditText editText2) {
        this.d = cyberCashPaymentMethod;
        this.f239a = spinner;
        this.b = editText;
        this.c = editText2;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        CyberCashPaymentMethod$CyberCashType cyberCashPaymentMethod$CyberCashType = (CyberCashPaymentMethod$CyberCashType) this.f239a.getSelectedItem();
        String string = this.b.getText().toString();
        String string2 = this.c.getText().toString();
        int selectedItemPosition = this.f239a.getSelectedItemPosition();
        CyberCashPaymentMethod.a(this.d, string);
        CyberCashPaymentMethod.b(this.d, string2);
        CyberCashPaymentMethod.a(this.d, cyberCashPaymentMethod$CyberCashType);
        this.d.r();
        this.d.c = string;
        this.d.d = string2;
        this.d.b = selectedItemPosition;
    }
}
