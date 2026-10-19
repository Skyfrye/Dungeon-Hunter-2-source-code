package com.samsungapps.plasma;

import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
class MicroPurchasePaymentMethod$6 implements CompoundButton$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f251a;
    final /* synthetic */ EditText b;
    final /* synthetic */ Button c;
    final /* synthetic */ EditText d;
    final /* synthetic */ EditText e;
    final /* synthetic */ EditText f;
    final /* synthetic */ CheckBox g;
    final /* synthetic */ MicroPurchasePaymentMethod h;

    MicroPurchasePaymentMethod$6(MicroPurchasePaymentMethod microPurchasePaymentMethod, String str, EditText editText, Button button, EditText editText2, EditText editText3, EditText editText4, CheckBox checkBox) {
        this.h = microPurchasePaymentMethod;
        this.f251a = str;
        this.b = editText;
        this.c = button;
        this.d = editText2;
        this.e = editText3;
        this.f = editText4;
        this.g = checkBox;
    }

    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.c.setEnabled(this.b.length() > 0 && this.d.length() > 0 && this.e.length() > 0 && ((this.f251a != null && this.f251a.equals(this.b.getText().toString())) || this.f.length() > 0) && this.g.isChecked());
    }
}
