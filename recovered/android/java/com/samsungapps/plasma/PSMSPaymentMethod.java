package com.samsungapps.plasma;

import android.R$style;
import android.app.Dialog;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.telephony.SmsManager;
import android.text.InputFilter;
import android.text.InputFilter$LengthFilter;
import android.text.method.DigitsKeyListener;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
final class PSMSPaymentMethod extends SamsungAccountPaymentMethod {
    protected static final int b = 6017;
    protected static final int c = 6018;
    protected static final int d = 6019;
    protected static final String e = "IAPPSMSBilling";
    protected static final String f = "IAPPSMSMODeliveryResult";
    protected static final String g = "IAPPSMSConfirmSMSPurchaseNS";
    private PSMSPaymentMethod$a i;
    private BroadcastReceiver h = new PSMSPaymentMethod$7(this);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Dialog f252a = null;
    private ProgressDialog j = null;
    private PSMSPaymentMethod$c p = PSMSPaymentMethod$c.ERROR;
    private PSMSPaymentMethod$b q = PSMSPaymentMethod$b.NORMAL;
    private final String r = "ACTION_MSG_SENT";

    PSMSPaymentMethod() {
        this.M = c;
    }

    static /* synthetic */ ProgressDialog a(PSMSPaymentMethod pSMSPaymentMethod) {
        return pSMSPaymentMethod.j;
    }

    static /* synthetic */ ProgressDialog a(PSMSPaymentMethod pSMSPaymentMethod, ProgressDialog progressDialog) {
        pSMSPaymentMethod.j = progressDialog;
        return progressDialog;
    }

    static /* synthetic */ PSMSPaymentMethod$b a(PSMSPaymentMethod pSMSPaymentMethod, PSMSPaymentMethod$b pSMSPaymentMethod$b) {
        pSMSPaymentMethod.q = pSMSPaymentMethod$b;
        return pSMSPaymentMethod$b;
    }

    private void a(PSMSPaymentMethod$c pSMSPaymentMethod$c) {
        this.p = pSMSPaymentMethod$c;
    }

    static /* synthetic */ void a(PSMSPaymentMethod pSMSPaymentMethod, PSMSPaymentMethod$c pSMSPaymentMethod$c) {
        pSMSPaymentMethod.p = pSMSPaymentMethod$c;
    }

    private boolean a(m mVar) {
        HashMap map;
        ArrayList arrayListD = mVar.d();
        if (arrayListD == null || (map = (HashMap) arrayListD.get(0)) == null) {
            return false;
        }
        this.i = new PSMSPaymentMethod$a(this, null);
        return PSMSPaymentMethod$a.a(this.i, map, this.t.a() != 0);
    }

    static /* synthetic */ void b(PSMSPaymentMethod pSMSPaymentMethod) {
        pSMSPaymentMethod.u();
    }

    private boolean b(String str, String str2) {
        b bVarC = this.t.c();
        s();
        l lVar = new l();
        lVar.a(true);
        lVar.b(b);
        lVar.a(e);
        HashMap map = new HashMap();
        map.put("itemID", this.G);
        map.put("itemGroupID", this.I);
        map.put("imei", bVarC.a());
        map.put("mcc", String.valueOf(bVarC.b()));
        map.put("mnc", String.valueOf(bVarC.c()));
        map.put("reserved01", "");
        map.put("reserved02", "");
        map.put("reserved03", "");
        map.put("reserved04", "");
        map.put("reserved05", "");
        map.put("loginID", str);
        map.put("password", str2);
        map.put("transID", this.L);
        map.put("mode", String.valueOf(this.t.a()));
        lVar.a(map);
        return this.t.a(this.F, lVar, (h) this, false);
    }

    private View c(String str, String str2) {
        LinearLayout linearLayout = new LinearLayout(this.u);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        ViewGroup$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2);
        LinearLayout linearLayout2 = new LinearLayout(this.u);
        linearLayout2.setOrientation(1);
        TextView textView = new TextView(this.u);
        textView.setText(this.x);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setTextAppearance(this.u, R$style.TextAppearance.Large);
        textView.setPadding(10, 0, 10, 10);
        linearLayout2.addView(textView, linearLayout$LayoutParams);
        TextView textView2 = new TextView(this.u);
        textView2.setText(i.a(this.y, this.z, this.A, this.B));
        textView2.setTextAppearance(this.u, R$style.TextAppearance.Medium);
        textView2.setPadding(10, 0, 10, 10);
        linearLayout2.addView(textView2, linearLayout$LayoutParams);
        linearLayout.addView(linearLayout2, linearLayout$LayoutParams);
        ScrollView scrollView = new ScrollView(this.u);
        linearLayout.addView(scrollView, new LinearLayout$LayoutParams(-1, -1, 1.0f));
        LinearLayout linearLayout3 = new LinearLayout(this.u);
        linearLayout3.setOrientation(1);
        linearLayout3.setPadding(7, 7, 7, 7);
        scrollView.addView(linearLayout3, new LinearLayout$LayoutParams(-1, -1));
        TextView textView3 = new TextView(this.u);
        textView3.setLineSpacing(2.0f, 1.0f);
        textView3.setTextAppearance(this.u, R$style.TextAppearance);
        textView3.setText(str);
        LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-1, -1);
        linearLayout$LayoutParams2.setMargins(7, 7, 7, 7);
        linearLayout3.addView(textView3, linearLayout$LayoutParams2);
        LinearLayout linearLayout4 = new LinearLayout(this.u);
        linearLayout.addView(linearLayout4, linearLayout$LayoutParams);
        Button button = new Button(this.u);
        button.setText(str2);
        linearLayout4.addView(button, new LinearLayout$LayoutParams(-1, -2));
        button.setOnClickListener(new PSMSPaymentMethod$4(this));
        return linearLayout;
    }

    static /* synthetic */ PSMSPaymentMethod$a c(PSMSPaymentMethod pSMSPaymentMethod) {
        return pSMSPaymentMethod.i;
    }

    static /* synthetic */ BroadcastReceiver d(PSMSPaymentMethod pSMSPaymentMethod) {
        return pSMSPaymentMethod.h;
    }

    private void u() {
        switch (this.p) {
            case WAIT_CONFIRM_RANDOMKEY:
                this.f252a = this.t.a(c.a("IDS_SAPPS_BODY_CONFIRM_PASSWORD"), b());
                break;
            case WAIT_CONFIRM_TNC:
                this.f252a = this.t.a(c.a("Terms and conditions"), b(), true);
                break;
            case WAIT_CONFIRM_PAYMENTINFORMATION:
                this.f252a = this.t.a(c.a("Payment information"), b(), true);
                break;
            case INIT_PURCHASE:
                if (!b(this.l, this.m)) {
                    this.p = PSMSPaymentMethod$c.ERROR;
                } else {
                    this.p = PSMSPaymentMethod$c.SEND_SMS;
                }
                break;
            case SEND_SMS:
                if (!y()) {
                    this.p = PSMSPaymentMethod$c.ERROR;
                    this.t.b(Plasma.STATUS_CODE_PROCESSERROR, c.a("IDS_SAPPS_POP_FAILED_TO_SEND_MESSAGE"));
                } else {
                    switch (this.q) {
                        case AGREE_TNC:
                            this.p = PSMSPaymentMethod$c.WAIT_CONFIRM_PAYMENTINFORMATION;
                            this.q = PSMSPaymentMethod$b.CONFIRM_PAYMENT;
                            break;
                        default:
                            this.p = PSMSPaymentMethod$c.CHECK_MO_DELIVERY;
                            break;
                    }
                    if (this.t.a() != 0) {
                        a.a("Send fake message on developer mode.");
                        if (this.j != null) {
                            this.j.dismiss();
                            this.j = null;
                        }
                        this.j = ProgressDialog.show(this.u, "", c.a("IDS_SAPPS_BODY_WAITING_ING"), false);
                        new PSMSPaymentMethod$1(this).sendEmptyMessageDelayed(0, 3000L);
                    }
                }
                break;
            case CHECK_MO_DELIVERY:
                if (!v()) {
                    this.p = PSMSPaymentMethod$c.ERROR;
                } else {
                    this.p = PSMSPaymentMethod$c.CONFIRM_PURCHASE;
                }
                break;
            case CONFIRM_PURCHASE:
                w();
                this.p = PSMSPaymentMethod$c.COMPLETED;
                break;
        }
        if (this.f252a != null) {
            this.f252a.setOnCancelListener(new PSMSPaymentMethod$2(this));
            this.f252a.setOnDismissListener(new PSMSPaymentMethod$3(this));
        }
    }

    private boolean v() {
        l lVar = new l();
        lVar.a(true);
        lVar.b(c);
        lVar.a(f);
        HashMap map = new HashMap();
        map.put("paymentID", PSMSPaymentMethod$a.f(this.i));
        map.put("result", "1");
        lVar.a(map);
        return this.t.a(this.F, lVar, (h) this, false);
    }

    private boolean w() {
        PSMSPaymentMethod$a.g(this.i);
        a.a("Retry count left " + PSMSPaymentMethod$a.e(this.i));
        l lVar = new l();
        lVar.a(true);
        lVar.b(d);
        lVar.a(g);
        HashMap map = new HashMap();
        map.put("orderID", PSMSPaymentMethod$a.h(this.i));
        map.put("paymentID", PSMSPaymentMethod$a.f(this.i));
        if (PSMSPaymentMethod$a.e(this.i) <= 0) {
            map.put("lastReqYn", "Y");
        } else {
            map.put("lastReqYn", "N");
        }
        lVar.a(map);
        return this.t.a(this.F, lVar, (h) this, false, PSMSPaymentMethod$a.i(this.i) * 1000);
    }

    private View x() {
        LinearLayout linearLayout = new LinearLayout(this.u);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        ViewGroup$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2);
        LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-1, -2);
        linearLayout$LayoutParams2.setMargins(0, 0, 0, 10);
        EditText editText = new EditText(this.u);
        editText.setHint(c.a("IDS_SAPPS_BODY_PASSWORD"));
        editText.setInputType(129);
        editText.setKeyListener(new DigitsKeyListener(true, true));
        editText.setFilters(new InputFilter[]{new InputFilter$LengthFilter(4)});
        linearLayout.addView(editText, linearLayout$LayoutParams2);
        TextView textView = new TextView(this.u);
        textView.setText(PSMSPaymentMethod$a.j(this.i));
        textView.setTextSize(30.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        linearLayout.addView(textView, linearLayout$LayoutParams2);
        String str = String.format(this.A ? "%.2f" : "%.0f", Double.valueOf(this.y));
        TextView textView2 = new TextView(this.u);
        TextView textView3 = new TextView(this.u);
        TextView textView4 = new TextView(this.u);
        textView2.setTextAppearance(this.u, R$style.TextAppearance.Medium);
        textView2.setText(c.a("IDS_SAPPS_BODY_ENTER_NUMBERS_ABOVE_TO_BUY"));
        String strA = c.a("IDS_SAPPS_BODY_PS_APPLICATION_IS_PS_TL");
        textView3.setTextAppearance(this.u, R$style.TextAppearance.Medium);
        textView3.setText(String.format(strA, this.x, str));
        textView4.setTextAppearance(this.u, R$style.TextAppearance.Medium);
        textView4.setText(c.a("IDS_SAPPS_BODY_NOT_ENOUGTH_BALANCE_AND_NOTIFICATION_MSG_BASARI"));
        linearLayout.addView(textView2, linearLayout$LayoutParams);
        linearLayout.addView(textView3, linearLayout$LayoutParams2);
        LinearLayout$LayoutParams linearLayout$LayoutParams3 = new LinearLayout$LayoutParams(-1, -2);
        linearLayout$LayoutParams3.setMargins(0, 20, 0, 40);
        linearLayout.addView(textView4, linearLayout$LayoutParams3);
        LinearLayout linearLayout2 = new LinearLayout(this.u);
        linearLayout.addView(linearLayout2, linearLayout$LayoutParams);
        Button button = new Button(this.u);
        button.setText(c.a("IDS_SAPPS_SK3_CONFIRM"));
        button.setEnabled(false);
        linearLayout2.addView(button, new LinearLayout$LayoutParams(-1, -2));
        button.setOnClickListener(new PSMSPaymentMethod$5(this, editText));
        editText.addTextChangedListener(new PSMSPaymentMethod$6(this, button, editText));
        return linearLayout;
    }

    private boolean y() {
        boolean z;
        a.a("Send to SMS...");
        if (PSMSPaymentMethod$a.k(this.i) || this.t.a() != 0) {
            return true;
        }
        int i = this.q == PSMSPaymentMethod$b.CONFIRM_PAYMENT ? 1 : 0;
        try {
            String str = (String) PSMSPaymentMethod$a.l(this.i).get(i);
            String str2 = (String) PSMSPaymentMethod$a.m(this.i).get(i);
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(str2);
            PendingIntent broadcast = PendingIntent.getBroadcast(this.u, 0, new Intent("ACTION_MSG_SENT"), 1073741824);
            ArrayList<PendingIntent> arrayList2 = new ArrayList<>();
            arrayList2.add(broadcast);
            SmsManager smsManager = SmsManager.getDefault();
            this.u.registerReceiver(this.h, new IntentFilter("ACTION_MSG_SENT"));
            if (this.j != null) {
                this.j.dismiss();
                this.j = null;
            }
            this.j = ProgressDialog.show(this.u, "", c.a("IDS_SAPPS_BODY_WAITING_ING"), false);
            smsManager.sendMultipartTextMessage(str, null, arrayList, arrayList2, null);
            z = true;
        } catch (IllegalArgumentException e2) {
            a.a(e2);
            z = false;
        } catch (IndexOutOfBoundsException e3) {
            a.a(e3);
            z = false;
        } catch (Exception e4) {
            a.a(e4);
            z = false;
        }
        return z;
    }

    @Override // com.samsungapps.plasma.g
    final String a() {
        return c.a("IDS_SAPPS_HEADER_PHONE_BILL");
    }

    @Override // com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i, int i2) {
        switch (i2) {
            case d /* 6019 */:
                u();
                break;
            default:
                this.p = PSMSPaymentMethod$c.ERROR;
                super.a(i, i2);
                break;
        }
    }

    @Override // com.samsungapps.plasma.SamsungAccountPaymentMethod, com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i, int i2, int i3, String str) {
        super.a(i, i2, i3, str);
    }

    @Override // com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i, m mVar) {
        if (mVar == null) {
            this.p = PSMSPaymentMethod$c.ERROR;
            this.t.b(Plasma.STATUS_CODE_PROCESSERROR, (String) null);
        }
        switch (mVar.c()) {
            case b /* 6017 */:
                if (!a(mVar)) {
                    a.a("PSMS cannot initialized");
                    this.p = PSMSPaymentMethod$c.ERROR;
                    this.t.b(Plasma.STATUS_CODE_PROCESSERROR, (String) null);
                } else {
                    if (PSMSPaymentMethod$a.c(this.i)) {
                        this.p = PSMSPaymentMethod$c.WAIT_CONFIRM_TNC;
                        this.q = PSMSPaymentMethod$b.AGREE_TNC;
                    } else if (PSMSPaymentMethod$a.d(this.i)) {
                        this.p = PSMSPaymentMethod$c.WAIT_CONFIRM_RANDOMKEY;
                    }
                    u();
                }
                break;
            case c /* 6018 */:
                u();
                break;
            case d /* 6019 */:
                String str = (String) ((HashMap) mVar.d().get(0)).get("successYn");
                boolean z = (str != null && str.equals("1")) || PSMSPaymentMethod$a.e(this.i) <= 0;
                a.a("isSuccessPurchase = " + z);
                if (!z) {
                    a(PSMSPaymentMethod$c.CONFIRM_PURCHASE);
                    u();
                } else {
                    this.t.b(i, mVar);
                }
                break;
            default:
                a(PSMSPaymentMethod$c.ERROR);
                super.a(i, mVar);
                break;
        }
    }

    @Override // com.samsungapps.plasma.SamsungAccountPaymentMethod
    protected final void a(String str, String str2) {
        r();
    }

    @Override // com.samsungapps.plasma.SamsungAccountPaymentMethod
    protected final View b() {
        switch (this.p) {
            case WAIT_CONFIRM_RANDOMKEY:
                return x();
            case WAIT_CONFIRM_TNC:
                return c(PSMSPaymentMethod$a.a(this.i), c.a("IDS_SAPPS_SK3_AGREE"));
            case WAIT_CONFIRM_PAYMENTINFORMATION:
                return c(PSMSPaymentMethod$a.b(this.i), c.a("IDS_SAPPS_SK3_PURCHASE"));
            default:
                return null;
        }
    }

    @Override // com.samsungapps.plasma.g
    final boolean c() {
        this.p = PSMSPaymentMethod$c.INIT_PURCHASE;
        u();
        return this.p != PSMSPaymentMethod$c.ERROR;
    }
}
