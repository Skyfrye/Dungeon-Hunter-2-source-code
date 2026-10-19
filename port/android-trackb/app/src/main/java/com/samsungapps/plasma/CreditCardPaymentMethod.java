package com.samsungapps.plasma;

import android.R;
import android.app.Dialog;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.HashMap;

final class CreditCardPaymentMethod extends SamsungAccountPaymentMethod {
    protected static final int c = 26225;
    protected static final int d = 26226;
    protected static final int e = 2230;
    protected static final int f = 6001;
    protected static final int g = 6014;
    protected static final int h = 9204;
    protected static final int i = 9205;
    protected static final int j = 9210;

    protected ArrayAdapter f232a = null;
    protected Dialog b = null;
    private String p = null;
    private String q = null;
    private String r = null;

    public class CreditCardType {

        protected String f237a = null;
        protected String b = null;

        protected CreditCardType() {
        }

        public String getCardName() {
            return this.f237a;
        }

        public String getCardType() {
            return this.b;
        }

        public void setCardName(String str) {
            this.f237a = str;
        }

        public void setCardType(String str) {
            this.b = str;
        }

        public String toString() {
            return getCardName();
        }
    }

    CreditCardPaymentMethod() {
        this.M = f;
    }

    @Override // com.samsungapps.plasma.g
    final String a() {
        return com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_CREDIT_CARD");
    }

    @Override // com.samsungapps.plasma.SamsungAccountPaymentMethod, com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i2, int i3, int i4, String str) {
        switch (i4) {
            case h /* 9204 */:
            case 9205:
            case j /* 9210 */:
                a(i2);
                this.k = this.t.a(com.samsungapps.plasma.c.a("IDS_SAPPS_HEADER_REGISTER_CREDIT_CARD"), b());
                break;
            default:
                if (i4 >= 5000 && i4 < 6000) {
                    this.t.b(i4, com.samsungapps.plasma.c.a("IDS_SAPPS_POP_CREDIT_CARD_NOT_RECOGNISED_PLEASE_CHECK_ENTERED_CARD_DETAILS_OR_USE_ANOTHER_ONE"));
                } else {
                    super.a(i2, i3, i4, str);
                }
                break;
        }
    }

    @Override // com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i2, m mVar) {
        if (mVar == null) {
        }
        ArrayList arrayListD = mVar.d();
        switch (mVar.c()) {
            case e /* 2230 */:
                if (this.f232a != null) {
                    this.f232a.clear();
                    if (arrayListD != null) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3;
                            if (i4 < arrayListD.size()) {
                                HashMap map = (HashMap) arrayListD.get(i4);
                                if (map != null) {
                                    CreditCardType creditCardType = new CreditCardType();
                                    creditCardType.setCardName((String) map.get("cardCompany"));
                                    creditCardType.setCardType((String) map.get("cardCompanyCode"));
                                    this.f232a.add(creditCardType);
                                }
                                i3 = i4 + 1;
                            }
                        }
                    }
                }
                break;
            case f /* 6001 */:
                this.t.b(i2, mVar);
                break;
            case g /* 6014 */:
                Toast.makeText(this.u, com.samsungapps.plasma.c.a("IDS_SAPPS_POP_YOUR_CREDIT_CARD_INFORMATION_HAS_BEEN_SUCCESSFULLY_UPDATED"), 1);
                if (this.k != null) {
                    this.k.dismiss();
                    this.k = null;
                }
                break;
            default:
                super.a(i2, mVar);
                break;
        }
    }

    @Override // com.samsungapps.plasma.SamsungAccountPaymentMethod
    protected final void a(final String str, final String str2) {
        if (!this.D.equals("UKR")) {
            this.p = str;
            this.q = str2;
            this.r = null;
            r();
            return;
        }
        LinearLayout linearLayout = new LinearLayout(this.u);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        layoutParams2.setMargins(0, 0, 0, 10);
        TextView textView = new TextView(this.u);
        textView.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_CREDIT_CARD"));
        linearLayout.addView(textView, layoutParams);
        final EditText editText = new EditText(this.u);
        editText.setHint(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_SECURITY_CODE"));
        editText.setInputType(129);
        editText.setKeyListener(new DigitsKeyListener(true, true));
        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(4)});
        linearLayout.addView(editText, layoutParams2);
        LinearLayout linearLayout2 = new LinearLayout(this.u);
        linearLayout.addView(linearLayout2, layoutParams);
        final Button button = new Button(this.u);
        button.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_SK3_PURCHASE"));
        button.setEnabled(false);
        linearLayout2.addView(button, new LinearLayout.LayoutParams(-1, -2, 1.0f));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.samsungapps.plasma.CreditCardPaymentMethod.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CreditCardPaymentMethod.this.b != null) {
                    CreditCardPaymentMethod.this.b.dismiss();
                    CreditCardPaymentMethod.this.b = null;
                }
                String string = editText.getText().toString();
                CreditCardPaymentMethod.this.p = str;
                CreditCardPaymentMethod.this.q = str2;
                CreditCardPaymentMethod.this.r = string;
                CreditCardPaymentMethod.this.r();
            }
        });
        editText.addTextChangedListener(new TextWatcher() { // from class: com.samsungapps.plasma.CreditCardPaymentMethod.4
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                button.setEnabled(editText.length() > 0);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }
        });
        this.b = this.t.a(com.samsungapps.plasma.c.a("IDS_SAPPS_HEADER_PAYMENT_INFORMATION"), linearLayout);
    }

    protected final boolean a(int i2) {
        l lVar = new l();
        lVar.b(e);
        lVar.a("searchCard");
        return this.t.a(i2, lVar, (h) this, true);
    }

    protected final boolean a(int i2, String str, String str2, String str3, String str4) {
        b bVarC = this.t.c();
        s();
        l lVar = new l();
        lVar.a(true);
        lVar.b(f);
        lVar.a("easybuyPurchaseItem");
        HashMap map = new HashMap();
        map.put("itemId", str);
        map.put("guid", this.I);
        map.put("imei", bVarC.a());
        map.put("loginID", str2);
        map.put("password", str3);
        map.put("transID", this.L);
        map.put("resultCode", String.valueOf(this.t.a()));
        if (str4 != null && str4.length() > 0) {
            map.put("cvs", str4);
        }
        lVar.a(map);
        return this.t.a(i2, lVar, (h) this, false);
    }

    protected final boolean a(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        l lVar = new l();
        lVar.a(true);
        lVar.b(g);
        lVar.a("registerCreditCardWithLoginInformation");
        HashMap map = new HashMap();
        map.put("emailID", str);
        map.put("password", str2);
        map.put("cardType", str3);
        map.put("cardNum", str4);
        map.put("expirationYear", str6);
        map.put("expirationMonth", str5);
        map.put("cvs", str7);
        lVar.a(map);
        return this.t.a(i2, lVar, (h) this, false);
    }

    @Override // com.samsungapps.plasma.SamsungAccountPaymentMethod
    protected final View b() {
        LinearLayout linearLayout = new LinearLayout(this.u);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        layoutParams2.setMargins(0, 0, 0, 10);
        TextView textView = new TextView(this.u);
        textView.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_CREDIT_CARD"));
        linearLayout.addView(textView, layoutParams);
        ArrayList arrayList = new ArrayList();
        final Spinner spinner = new Spinner(this.u);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.u, android.R.layout.simple_spinner_item, arrayList);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        TextView textView2 = new TextView(this.u);
        textView2.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_WAITING_ING"));
        textView2.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
        textView2.setGravity(19);
        textView2.setPadding(10, 10, 10, 10);
        textView2.setTextSize(15.0f);
        linearLayout.addView(textView2, layoutParams);
        spinner.setEmptyView(textView2);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        linearLayout.addView(spinner, layoutParams);
        this.f232a = arrayAdapter;
        final EditText editText = new EditText(this.u);
        editText.setHint(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_CARD_NUMBER"));
        editText.setInputType(2);
        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        linearLayout.addView(editText, layoutParams);
        final EditText editText2 = new EditText(this.u);
        editText2.setHint(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_SECURITY_CODE"));
        editText2.setInputType(129);
        editText2.setKeyListener(new DigitsKeyListener(true, true));
        editText2.setFilters(new InputFilter[]{new InputFilter.LengthFilter(4)});
        linearLayout.addView(editText2, layoutParams2);
        editText2.setNextFocusDownId(c);
        TextView textView3 = new TextView(this.u);
        textView3.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_EXPIRY_DATE"));
        linearLayout.addView(textView3, layoutParams);
        LinearLayout linearLayout2 = new LinearLayout(this.u);
        linearLayout2.setOrientation(0);
        linearLayout.addView(linearLayout2, layoutParams);
        final EditText editText3 = new EditText(this.u);
        editText3.setHint(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_MONTH") + " (MM)");
        editText3.setInputType(2);
        editText3.setFilters(new InputFilter[]{new InputFilter.LengthFilter(2)});
        linearLayout2.addView(editText3, layoutParams);
        editText3.setId(c);
        editText3.setNextFocusDownId(d);
        final EditText editText4 = new EditText(this.u);
        editText4.setHint(com.samsungapps.plasma.c.a("IDS_SAPPS_HEADER_YEAR") + " (YYYY)");
        editText4.setInputType(2);
        editText4.setFilters(new InputFilter[]{new InputFilter.LengthFilter(4)});
        linearLayout2.addView(editText4, layoutParams);
        editText4.setId(d);
        LinearLayout linearLayout3 = new LinearLayout(this.u);
        linearLayout.addView(linearLayout3, layoutParams);
        final Button button = new Button(this.u);
        button.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_SK3_REGISTER"));
        button.setEnabled(false);
        linearLayout3.addView(button, new LinearLayout.LayoutParams(-1, -2, 1.0f));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.samsungapps.plasma.CreditCardPaymentMethod.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CreditCardType creditCardType = (CreditCardType) spinner.getSelectedItem();
                CreditCardPaymentMethod.this.a(CreditCardPaymentMethod.this.F, CreditCardPaymentMethod.this.l, CreditCardPaymentMethod.this.m, creditCardType.getCardType(), editText.getText().toString(), editText3.getText().toString(), editText4.getText().toString(), editText2.getText().toString());
            }
        });
        TextWatcher textWatcher = new TextWatcher() { // from class: com.samsungapps.plasma.CreditCardPaymentMethod.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                button.setEnabled(editText.length() > 0 && editText3.length() > 0 && editText4.length() > 0 && editText2.length() > 0);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }
        };
        editText.addTextChangedListener(textWatcher);
        editText3.addTextChangedListener(textWatcher);
        editText4.addTextChangedListener(textWatcher);
        editText2.addTextChangedListener(textWatcher);
        return linearLayout;
    }

    @Override // com.samsungapps.plasma.g
    final boolean c() {
        return a(this.F, this.G, this.p, this.q, this.r);
    }
}
