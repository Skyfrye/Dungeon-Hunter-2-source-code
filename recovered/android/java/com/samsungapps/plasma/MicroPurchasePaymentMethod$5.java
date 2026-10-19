package com.samsungapps.plasma;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
class MicroPurchasePaymentMethod$5 implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f250a;
    final /* synthetic */ EditText b;
    final /* synthetic */ Button c;
    final /* synthetic */ EditText d;
    final /* synthetic */ EditText e;
    final /* synthetic */ EditText f;
    final /* synthetic */ CheckBox g;
    final /* synthetic */ Button h;
    final /* synthetic */ Button i;
    final /* synthetic */ LinearLayout j;
    final /* synthetic */ Spinner k;
    final /* synthetic */ TextView l;
    final /* synthetic */ LinearLayout m;
    final /* synthetic */ MicroPurchasePaymentMethod n;

    MicroPurchasePaymentMethod$5(MicroPurchasePaymentMethod microPurchasePaymentMethod, String str, EditText editText, Button button, EditText editText2, EditText editText3, EditText editText4, CheckBox checkBox, Button button2, Button button3, LinearLayout linearLayout, Spinner spinner, TextView textView, LinearLayout linearLayout2) {
        this.n = microPurchasePaymentMethod;
        this.f250a = str;
        this.b = editText;
        this.c = button;
        this.d = editText2;
        this.e = editText3;
        this.f = editText4;
        this.g = checkBox;
        this.h = button2;
        this.i = button3;
        this.j = linearLayout;
        this.k = spinner;
        this.l = textView;
        this.m = linearLayout2;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        boolean z = this.f250a != null && this.f250a.length() > 0 && this.f250a.equals(this.b.getText().toString());
        this.c.setEnabled(this.b.length() > 0 && this.d.length() > 0 && this.e.length() > 0 && (z || this.f.length() > 0) && this.g.isChecked());
        this.h.setEnabled(this.b.length() > 0 && this.d.length() > 0 && this.e.length() > 0);
        if (editable == this.b.getEditableText()) {
            if (z) {
                this.i.setVisibility(0);
                this.j.setVisibility(8);
                this.k.setVisibility(8);
                this.l.setVisibility(8);
                this.m.setVisibility(8);
                return;
            }
            this.i.setVisibility(8);
            this.j.setVisibility(0);
            this.k.setVisibility(0);
            this.l.setVisibility(0);
            this.m.setVisibility(0);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
