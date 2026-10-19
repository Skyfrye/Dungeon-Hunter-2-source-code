package com.samsungapps.plasma;

import android.R$layout;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
final class CyberCashPaymentMethod extends g {
    protected static final String e = ";";
    protected static final int f = 6006;
    protected static final int g = 9216;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ArrayAdapter f238a = null;
    private CyberCashPaymentMethod$CyberCashType h = null;
    private String i = null;
    private String j = null;
    protected int b = -1;
    protected String c = null;
    protected String d = null;

    CyberCashPaymentMethod() {
        this.M = f;
    }

    static /* synthetic */ CyberCashPaymentMethod$CyberCashType a(CyberCashPaymentMethod cyberCashPaymentMethod, CyberCashPaymentMethod$CyberCashType cyberCashPaymentMethod$CyberCashType) {
        cyberCashPaymentMethod.h = cyberCashPaymentMethod$CyberCashType;
        return cyberCashPaymentMethod$CyberCashType;
    }

    static /* synthetic */ String a(CyberCashPaymentMethod cyberCashPaymentMethod, String str) {
        cyberCashPaymentMethod.i = str;
        return str;
    }

    static /* synthetic */ String b(CyberCashPaymentMethod cyberCashPaymentMethod, String str) {
        cyberCashPaymentMethod.j = str;
        return str;
    }

    @Override // com.samsungapps.plasma.g
    final String a() {
        return c.a("IDS_SAPPS_BUTTON_CYBERCASH");
    }

    @Override // com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i, int i2, int i3, String str) {
        switch (i3) {
            case g /* 9216 */:
                this.t.b(i3, c.a("IDS_SAPPS_HEADER_INVALID_EMAIL_OR_PASSWORD"));
                break;
            default:
                super.a(i, i2, i3, str);
                break;
        }
    }

    @Override // com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i, m mVar) {
        if (mVar == null) {
        }
        switch (mVar.c()) {
            case f /* 6006 */:
                this.t.b(i, mVar);
                break;
            default:
                super.a(i, mVar);
                break;
        }
    }

    protected final boolean a(int i, String str, String str2, String str3, double d, String str4, String str5) {
        b bVarC = this.t.c();
        s();
        l lVar = new l();
        lVar.a(true);
        lVar.b(f);
        lVar.a("appItemPurchaseCyberCash");
        HashMap map = new HashMap();
        map.put("itemID", str);
        map.put("itemGroupID", this.I);
        map.put("imei", bVarC.a());
        map.put("itemPrice", String.valueOf(d));
        map.put("paymentTypeId", str4);
        map.put("Company", str5);
        map.put("loginID", str2);
        map.put("password", str3);
        map.put("transID", this.L);
        map.put("resultCode", String.valueOf(this.t.a()));
        lVar.a(map);
        return this.t.a(i, lVar, (h) this, false);
    }

    @Override // com.samsungapps.plasma.g
    protected final boolean a_() {
        return true;
    }

    @Override // com.samsungapps.plasma.g
    final boolean c() {
        return a(this.F, this.G, this.i, this.j, this.y, this.h.getProviderType(), this.h.getProviderName());
    }

    @Override // com.samsungapps.plasma.g
    final View d() {
        LinearLayout linearLayout = new LinearLayout(this.u);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        ViewGroup$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2, 1.0f);
        LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-1, -2, 1.0f);
        linearLayout$LayoutParams2.setMargins(0, 0, 0, 10);
        TextView textView = new TextView(this.u);
        textView.setText(c.a("IDS_SAPPS_BODY_PAYMENT_METHOD"));
        linearLayout.addView(textView, linearLayout$LayoutParams);
        ArrayList arrayList = new ArrayList();
        Spinner spinner = new Spinner(this.u);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.u, R$layout.simple_spinner_item, arrayList);
        arrayAdapter.setDropDownViewResource(R$layout.simple_spinner_dropdown_item);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        linearLayout.addView(spinner, linearLayout$LayoutParams);
        this.f238a = arrayAdapter;
        StringTokenizer stringTokenizer = new StringTokenizer(this.E, e);
        while (stringTokenizer.hasMoreTokens()) {
            CyberCashPaymentMethod$CyberCashType cyberCashPaymentMethod$CyberCashType = new CyberCashPaymentMethod$CyberCashType(this);
            StringTokenizer stringTokenizer2 = new StringTokenizer(stringTokenizer.nextToken(), "@");
            if (stringTokenizer2.hasMoreTokens()) {
                cyberCashPaymentMethod$CyberCashType.setProviderName(stringTokenizer2.nextToken());
            }
            if (stringTokenizer2.hasMoreTokens()) {
                cyberCashPaymentMethod$CyberCashType.setProviderType(stringTokenizer2.nextToken());
            }
            if (stringTokenizer2.hasMoreTokens()) {
                cyberCashPaymentMethod$CyberCashType.setTermsUrl(stringTokenizer2.nextToken());
            }
            this.f238a.add(cyberCashPaymentMethod$CyberCashType);
        }
        EditText editText = new EditText(this.u);
        editText.setHint(c.a("IDS_SAPPS_BODY_ID"));
        editText.setInputType(33);
        linearLayout.addView(editText, linearLayout$LayoutParams);
        EditText editText2 = new EditText(this.u);
        editText2.setHint(c.a("IDS_SAPPS_BODY_PASSWORD"));
        editText2.setInputType(129);
        linearLayout.addView(editText2, linearLayout$LayoutParams2);
        LinearLayout linearLayout2 = new LinearLayout(this.u);
        linearLayout.addView(linearLayout2, linearLayout$LayoutParams);
        Button button = new Button(this.u);
        button.setText(c.a("IDS_SAPPS_SK3_PURCHASE"));
        button.setEnabled(false);
        linearLayout2.addView(button, new LinearLayout$LayoutParams(-1, -2, 1.0f));
        button.setOnClickListener(new CyberCashPaymentMethod$1(this, spinner, editText, editText2));
        CyberCashPaymentMethod$2 cyberCashPaymentMethod$2 = new CyberCashPaymentMethod$2(this, button, editText, editText2);
        editText.addTextChangedListener(cyberCashPaymentMethod$2);
        editText2.addTextChangedListener(cyberCashPaymentMethod$2);
        Date dateB = this.t.b();
        Date date = new Date();
        if (dateB != null && date.before(dateB)) {
            if (this.b >= 0) {
                spinner.setSelection(this.b);
            }
            if (this.c != null) {
                editText.setText(this.c);
            }
            if (this.d != null) {
                editText2.setText(this.d);
            }
        }
        return linearLayout;
    }
}
