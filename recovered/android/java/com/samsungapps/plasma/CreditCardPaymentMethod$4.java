package com.samsungapps.plasma;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
class CreditCardPaymentMethod$4 implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Button f236a;
    final /* synthetic */ EditText b;
    final /* synthetic */ CreditCardPaymentMethod c;

    CreditCardPaymentMethod$4(CreditCardPaymentMethod creditCardPaymentMethod, Button button, EditText editText) {
        this.c = creditCardPaymentMethod;
        this.f236a = button;
        this.b = editText;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.f236a.setEnabled(this.b.length() > 0);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
