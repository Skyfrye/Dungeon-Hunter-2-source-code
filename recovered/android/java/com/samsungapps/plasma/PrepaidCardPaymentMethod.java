package com.samsungapps.plasma;

import android.R$layout;
import android.text.method.DigitsKeyListener;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.AbsListView$LayoutParams;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
final class PrepaidCardPaymentMethod extends SamsungAccountPaymentMethod {
    protected static final int b = 6009;
    protected static final int c = 6015;
    protected static final int d = 9210;
    protected static final int e = 9214;
    protected static final int f = 9215;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ArrayAdapter f265a = null;
    private String g = null;
    private String h = null;

    PrepaidCardPaymentMethod() {
        this.M = b;
    }

    @Override // com.samsungapps.plasma.g
    final String a() {
        return c.a("IDS_SAPPS_BUTTON_PREPAID_CARD");
    }

    @Override // com.samsungapps.plasma.SamsungAccountPaymentMethod, com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i, int i2, int i3, String str) {
        switch (i3) {
            case d /* 9210 */:
            case e /* 9214 */:
            case f /* 9215 */:
                this.k = this.t.a(c.a("IDS_SAPPS_HEADER_PREPAID_CARD_REGISTRATION_ABB"), b());
                break;
            case Plasma.STATUS_CODE_INVALIDACCOUNT /* 9211 */:
            case 9212:
            case 9213:
            default:
                if (i3 >= 5000 && i3 < 6000) {
                    this.t.b(i3, c.a("IDS_SAPPS_POP_FAILED_TO_REGISTER_PREPAID_CARD"));
                } else {
                    super.a(i, i2, i3, str);
                }
                break;
        }
    }

    @Override // com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i, m mVar) {
        if (mVar == null) {
            return;
        }
        switch (mVar.c()) {
            case b /* 6009 */:
                this.t.b(i, mVar);
                return;
            case c /* 6015 */:
                Toast.makeText(this.u, c.a("IDS_SAPPS_BODY_PREPAID_CARD_REGISTERED_PAYMENTS_WILL_AUTOMATICALLY_BE_DEDUCTED_FROM_REGISTERED_CARD"), 1);
                if (this.k != null) {
                    this.k.dismiss();
                    this.k = null;
                }
                break;
        }
        super.a(i, mVar);
    }

    @Override // com.samsungapps.plasma.SamsungAccountPaymentMethod
    protected final void a(String str, String str2) {
        this.g = str;
        this.h = str2;
        r();
    }

    protected final boolean a(int i, String str, String str2, String str3, double d2, String str4) {
        b bVarC = this.t.c();
        s();
        l lVar = new l();
        lVar.a(true);
        lVar.b(b);
        lVar.a("appItemPurchasePrepaid");
        HashMap map = new HashMap();
        map.put("itemID", str);
        map.put("itemGroupID", this.I);
        map.put("imei", bVarC.a());
        map.put("itemPrice", String.valueOf(d2));
        map.put("paymentTypeId", str4);
        map.put("loginID", str2);
        map.put("password", str3);
        map.put("transID", this.L);
        map.put("mode", String.valueOf(this.t.a()));
        lVar.a(map);
        return this.t.a(i, lVar, (h) this, false);
    }

    protected final boolean a(int i, String str, String str2, String str3, String str4, String str5, String str6) {
        l lVar = new l();
        lVar.a(true);
        lVar.b(c);
        lVar.a("registerPrepaidCardWithLoginInformation");
        HashMap map = new HashMap();
        map.put("emailID", str);
        map.put("password", str2);
        map.put("cardCorpSEQ", str3);
        map.put("cardValue", str4);
        map.put("cardNumber", str5);
        map.put("cardPassword", str6);
        lVar.a(map);
        return this.t.a(i, lVar, (h) this, false);
    }

    @Override // com.samsungapps.plasma.SamsungAccountPaymentMethod
    protected final View b() {
        LinearLayout linearLayout = new LinearLayout(this.u);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        ViewGroup$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2, 1.0f);
        LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-1, -2, 1.0f);
        linearLayout$LayoutParams2.setMargins(0, 0, 0, 10);
        TextView textView = new TextView(this.u);
        textView.setText(c.a("IDS_SAPPS_BODY_NOTE_C_YOU_CAN_ONLY_USE_NATIONAL_PREPAID_CARDS"));
        linearLayout.addView(textView, linearLayout$LayoutParams2);
        TextView textView2 = new TextView(this.u);
        textView2.setText(c.a("IDS_SAPPS_BODY_PREPAID_CARD_TYPE_ABB"));
        linearLayout.addView(textView2, linearLayout$LayoutParams);
        ArrayList arrayList = new ArrayList();
        Spinner spinner = new Spinner(this.u);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.u, R$layout.simple_spinner_item, arrayList);
        arrayAdapter.setDropDownViewResource(R$layout.simple_spinner_dropdown_item);
        TextView textView3 = new TextView(this.u);
        textView3.setText(c.a("IDS_SAPPS_BODY_WAITING_ING"));
        textView3.setLayoutParams(new AbsListView$LayoutParams(-1, -2));
        textView3.setGravity(19);
        textView3.setPadding(10, 10, 10, 10);
        textView3.setTextSize(15.0f);
        linearLayout.addView(textView3, linearLayout$LayoutParams);
        spinner.setEmptyView(textView3);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        linearLayout.addView(spinner, linearLayout$LayoutParams);
        this.f265a = arrayAdapter;
        StringTokenizer stringTokenizer = new StringTokenizer(this.E, ";");
        while (stringTokenizer.hasMoreTokens()) {
            PrepaidCardPaymentMethod$PrepaidCardType prepaidCardPaymentMethod$PrepaidCardType = new PrepaidCardPaymentMethod$PrepaidCardType(this);
            StringTokenizer stringTokenizer2 = new StringTokenizer(stringTokenizer.nextToken(), "@");
            if (stringTokenizer2.hasMoreTokens()) {
                prepaidCardPaymentMethod$PrepaidCardType.setProviderName(stringTokenizer2.nextToken());
            }
            if (stringTokenizer2.hasMoreTokens()) {
                stringTokenizer2.nextToken();
            }
            if (stringTokenizer2.hasMoreTokens()) {
                prepaidCardPaymentMethod$PrepaidCardType.setTermsUrl(stringTokenizer2.nextToken());
            }
            if (stringTokenizer2.hasMoreTokens()) {
                prepaidCardPaymentMethod$PrepaidCardType.setProviderType(stringTokenizer2.nextToken());
            }
            this.f265a.add(prepaidCardPaymentMethod$PrepaidCardType);
        }
        TextView textView4 = new TextView(this.u);
        textView4.setText(c.a("IDS_SAPPS_BODY_PREPAID_CARD_INFORMATION_ABB"));
        linearLayout.addView(textView4, linearLayout$LayoutParams);
        EditText editText = new EditText(this.u);
        editText.setHint(c.a("IDS_SAPPS_BODY_PREPAID_CARD_FACE_VALUE") + " (" + this.z + ")");
        editText.setInputType(2);
        linearLayout.addView(editText, linearLayout$LayoutParams);
        EditText editText2 = new EditText(this.u);
        editText2.setHint(c.a("IDS_SAPPS_BODY_CARD_NUMBER"));
        editText2.setInputType(2);
        linearLayout.addView(editText2, linearLayout$LayoutParams);
        EditText editText3 = new EditText(this.u);
        editText3.setHint(c.a("IDS_SAPPS_BODY_SECURITY_CODE"));
        editText3.setInputType(129);
        editText3.setKeyListener(new DigitsKeyListener(true, true));
        linearLayout.addView(editText3, linearLayout$LayoutParams2);
        Button button = new Button(this.u);
        button.setText(c.a("IDS_SAPPS_HEADER_TERMS_AND_CONDITIONS"));
        linearLayout.addView(button, linearLayout$LayoutParams);
        button.setOnClickListener(new PrepaidCardPaymentMethod$1(this, spinner));
        CheckBox checkBox = new CheckBox(this.u);
        checkBox.setText(c.a("IDS_SAPPS_BODY_I_HAVE_READ_AND_ACCEPT_THE_TERMS_AND_CONDITIONS"));
        linearLayout.addView(checkBox, linearLayout$LayoutParams2);
        LinearLayout linearLayout2 = new LinearLayout(this.u);
        linearLayout.addView(linearLayout2, linearLayout$LayoutParams);
        Button button2 = new Button(this.u);
        button2.setText(c.a("IDS_SAPPS_SK3_REGISTER"));
        button2.setEnabled(false);
        linearLayout2.addView(button2, new LinearLayout$LayoutParams(-1, -2, 1.0f));
        button2.setOnClickListener(new PrepaidCardPaymentMethod$2(this, spinner, editText, editText2, editText3));
        PrepaidCardPaymentMethod$3 prepaidCardPaymentMethod$3 = new PrepaidCardPaymentMethod$3(this, button2, editText, editText2, editText3, checkBox);
        checkBox.setOnCheckedChangeListener(new PrepaidCardPaymentMethod$4(this, button2, editText, editText2, editText3, checkBox));
        editText.addTextChangedListener(prepaidCardPaymentMethod$3);
        editText2.addTextChangedListener(prepaidCardPaymentMethod$3);
        editText3.addTextChangedListener(prepaidCardPaymentMethod$3);
        return linearLayout;
    }

    @Override // com.samsungapps.plasma.g
    final boolean c() {
        return a(this.F, this.G, this.g, this.h, this.y, this.C);
    }
}
