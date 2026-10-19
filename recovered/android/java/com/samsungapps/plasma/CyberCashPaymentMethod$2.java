package com.samsungapps.plasma;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
class CyberCashPaymentMethod$2 implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Button f240a;
    final /* synthetic */ EditText b;
    final /* synthetic */ EditText c;
    final /* synthetic */ CyberCashPaymentMethod d;

    CyberCashPaymentMethod$2(CyberCashPaymentMethod cyberCashPaymentMethod, Button button, EditText editText, EditText editText2) {
        this.d = cyberCashPaymentMethod;
        this.f240a = button;
        this.b = editText;
        this.c = editText2;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.f240a.setEnabled(this.b.length() > 0 && this.c.length() > 0);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
