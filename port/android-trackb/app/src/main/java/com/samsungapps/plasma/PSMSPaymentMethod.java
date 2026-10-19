package com.samsungapps.plasma;

import android.R;
import android.app.Dialog;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Message;
import android.telephony.SmsManager;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;

final class PSMSPaymentMethod extends SamsungAccountPaymentMethod {
    protected static final int b = 6017;
    protected static final int c = 6018;
    protected static final int d = 6019;
    protected static final String e = "IAPPSMSBilling";
    protected static final String f = "IAPPSMSMODeliveryResult";
    protected static final String g = "IAPPSMSConfirmSMSPurchaseNS";
    private a i;
    private BroadcastReceiver h = new BroadcastReceiver() { // from class: com.samsungapps.plasma.PSMSPaymentMethod.7
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (PSMSPaymentMethod.this.j != null) {
                PSMSPaymentMethod.this.j.dismiss();
                PSMSPaymentMethod.this.j = null;
            }
            PSMSPaymentMethod.this.u.unregisterReceiver(PSMSPaymentMethod.this.h);
            int resultCode = getResultCode();
            if (resultCode == -1) {
                com.samsungapps.plasma.a.a("SMS message sent");
                PSMSPaymentMethod.this.u();
            } else {
                com.samsungapps.plasma.a.a("SMS send failed code = " + resultCode);
                PSMSPaymentMethod.this.p = PaymentState.ERROR;
                PSMSPaymentMethod.this.t.b(Plasma.STATUS_CODE_PROCESSERROR, com.samsungapps.plasma.c.a("IDS_SAPPS_POP_FAILED_TO_SEND_MESSAGE"));
            }
        }
    };

    protected Dialog f252a = null;
    private ProgressDialog j = null;
    private PaymentState p = PaymentState.ERROR;
    private PaymentMode q = PaymentMode.NORMAL;
    private final String r = "ACTION_MSG_SENT";

    final class a {

        static final int f261a = 5;
        static final int b = 5;
        private String d;
        private String e;
        private ArrayList f;
        private ArrayList g;
        private String h;
        private String i;
        private String j;
        private boolean k;
        private int l;
        private int m;

        private a() {
            this.l = 5;
            this.m = 5;
        }

        public boolean a() {
            return this.h != null && this.h.length() > 0;
        }

        private boolean a(String str) {
            return str != null && str.length() > 0;
        }

        public boolean a(HashMap map, boolean z) {
            this.d = (String) map.get("paymentID");
            if (a(this.d)) {
                this.e = (String) map.get("orderID");
                if (a(this.e)) {
                    String str = (String) map.get("shortCode");
                    String str2 = (String) map.get("message");
                    this.f = com.samsungapps.plasma.i.a(str, ";");
                    this.g = com.samsungapps.plasma.i.a(str2, ";");
                    if (z || (!this.f.isEmpty() && !this.g.isEmpty())) {
                        this.h = (String) map.get("randomKey");
                        this.i = (String) map.get("confirmMsg");
                        this.j = (String) map.get("tncMsg");
                        if (com.samsungapps.plasma.i.b("sendSMS") == 0) {
                            this.k = true;
                        }
                        this.l = com.samsungapps.plasma.i.b("retryCount");
                        if (this.l < 0) {
                            this.l = 5;
                        }
                        this.m = com.samsungapps.plasma.i.b("responseTime");
                        if (this.m < 0) {
                            this.m = 5;
                        }
                        return true;
                    }
                }
            }
            return false;
        }

        public boolean b() {
            return this.j != null && this.j.length() > 0;
        }

        static /* synthetic */ int g(a aVar) {
            int i = aVar.l;
            aVar.l = i - 1;
            return i;
        }
    }

    enum PaymentMode {
        NORMAL,
        AGREE_TNC,
        CONFIRM_PAYMENT
    }

    enum PaymentState {
        ERROR,
        INIT_PURCHASE,
        WAIT_CONFIRM_TNC,
        WAIT_CONFIRM_PAYMENTINFORMATION,
        WAIT_CONFIRM_RANDOMKEY,
        SEND_SMS,
        CHECK_MO_DELIVERY,
        CONFIRM_PURCHASE,
        COMPLETED
    }

    PSMSPaymentMethod() {
        this.M = c;
    }

    private void a(PaymentState cVar) {
        this.p = cVar;
    }

    private boolean a(m mVar) {
        HashMap map;
        ArrayList arrayListD = mVar.d();
        if (arrayListD == null || (map = (HashMap) arrayListD.get(0)) == null) {
            return false;
        }
        this.i = new a();
        return this.i.a(map, this.t.a() != 0);
    }

    private boolean b(String str, String str2) {
        com.samsungapps.plasma.b bVarC = this.t.c();
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
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout2 = new LinearLayout(this.u);
        linearLayout2.setOrientation(1);
        TextView textView = new TextView(this.u);
        textView.setText(this.x);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setTextAppearance(this.u, android.R.style.TextAppearance_Large);
        textView.setPadding(10, 0, 10, 10);
        linearLayout2.addView(textView, layoutParams);
        TextView textView2 = new TextView(this.u);
        textView2.setText(com.samsungapps.plasma.i.a(this.y, this.z, this.A, this.B));
        textView2.setTextAppearance(this.u, android.R.style.TextAppearance_Medium);
        textView2.setPadding(10, 0, 10, 10);
        linearLayout2.addView(textView2, layoutParams);
        linearLayout.addView(linearLayout2, layoutParams);
        ScrollView scrollView = new ScrollView(this.u);
        linearLayout.addView(scrollView, new LinearLayout.LayoutParams(-1, -1, 1.0f));
        LinearLayout linearLayout3 = new LinearLayout(this.u);
        linearLayout3.setOrientation(1);
        linearLayout3.setPadding(7, 7, 7, 7);
        scrollView.addView(linearLayout3, new LinearLayout.LayoutParams(-1, -1));
        TextView textView3 = new TextView(this.u);
        textView3.setLineSpacing(2.0f, 1.0f);
        textView3.setTextAppearance(this.u, android.R.style.TextAppearance);
        textView3.setText(str);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams2.setMargins(7, 7, 7, 7);
        linearLayout3.addView(textView3, layoutParams2);
        LinearLayout linearLayout4 = new LinearLayout(this.u);
        linearLayout.addView(linearLayout4, layoutParams);
        Button button = new Button(this.u);
        button.setText(str2);
        linearLayout4.addView(button, new LinearLayout.LayoutParams(-1, -2));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.samsungapps.plasma.PSMSPaymentMethod.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PSMSPaymentMethod.this.f252a != null) {
                    PSMSPaymentMethod.this.f252a.dismiss();
                    PSMSPaymentMethod.this.f252a = null;
                }
                PSMSPaymentMethod.this.p = PaymentState.SEND_SMS;
                PSMSPaymentMethod.this.u();
            }
        });
        return linearLayout;
    }

    public void u() {
        switch (this.p) {
            case WAIT_CONFIRM_RANDOMKEY:
                this.f252a = this.t.a(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_CONFIRM_PASSWORD"), b());
                break;
            case WAIT_CONFIRM_TNC:
                this.f252a = this.t.a(com.samsungapps.plasma.c.a("Terms and conditions"), b(), true);
                break;
            case WAIT_CONFIRM_PAYMENTINFORMATION:
                this.f252a = this.t.a(com.samsungapps.plasma.c.a("Payment information"), b(), true);
                break;
            case INIT_PURCHASE:
                if (!b(this.l, this.m)) {
                    this.p = PaymentState.ERROR;
                } else {
                    this.p = PaymentState.SEND_SMS;
                }
                break;
            case SEND_SMS:
                if (!y()) {
                    this.p = PaymentState.ERROR;
                    this.t.b(Plasma.STATUS_CODE_PROCESSERROR, com.samsungapps.plasma.c.a("IDS_SAPPS_POP_FAILED_TO_SEND_MESSAGE"));
                } else {
                    switch (this.q) {
                        case AGREE_TNC:
                            this.p = PaymentState.WAIT_CONFIRM_PAYMENTINFORMATION;
                            this.q = PaymentMode.CONFIRM_PAYMENT;
                            break;
                        default:
                            this.p = PaymentState.CHECK_MO_DELIVERY;
                            break;
                    }
                    if (this.t.a() != 0) {
                        com.samsungapps.plasma.a.a("Send fake message on developer mode.");
                        if (this.j != null) {
                            this.j.dismiss();
                            this.j = null;
                        }
                        this.j = ProgressDialog.show(this.u, "", com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_WAITING_ING"), false);
                        new Handler() { // from class: com.samsungapps.plasma.PSMSPaymentMethod.1
                            @Override // android.os.Handler
                            public void handleMessage(Message message) {
                                if (PSMSPaymentMethod.this.j != null) {
                                    PSMSPaymentMethod.this.j.dismiss();
                                    PSMSPaymentMethod.this.j = null;
                                }
                                if (message.what == 0) {
                                    PSMSPaymentMethod.this.u();
                                }
                            }
                        }.sendEmptyMessageDelayed(0, 3000L);
                    }
                }
                break;
            case CHECK_MO_DELIVERY:
                if (!v()) {
                    this.p = PaymentState.ERROR;
                } else {
                    this.p = PaymentState.CONFIRM_PURCHASE;
                }
                break;
            case CONFIRM_PURCHASE:
                w();
                this.p = PaymentState.COMPLETED;
                break;
        }
        if (this.f252a != null) {
            this.f252a.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.samsungapps.plasma.PSMSPaymentMethod.2
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    if (PSMSPaymentMethod.this.f252a != null) {
                        PSMSPaymentMethod.this.f252a.dismiss();
                        PSMSPaymentMethod.this.f252a = null;
                    }
                    PSMSPaymentMethod.this.p = PaymentState.ERROR;
                    PSMSPaymentMethod.this.q = PaymentMode.NORMAL;
                }
            });
            this.f252a.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.samsungapps.plasma.PSMSPaymentMethod.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    PSMSPaymentMethod.this.f252a = null;
                }
            });
        }
    }

    private boolean v() {
        l lVar = new l();
        lVar.a(true);
        lVar.b(c);
        lVar.a(f);
        HashMap map = new HashMap();
        map.put("paymentID", this.i.d);
        map.put("result", "1");
        lVar.a(map);
        return this.t.a(this.F, lVar, (h) this, false);
    }

    private boolean w() {
        a.g(this.i);
        com.samsungapps.plasma.a.a("Retry count left " + this.i.l);
        l lVar = new l();
        lVar.a(true);
        lVar.b(d);
        lVar.a(g);
        HashMap map = new HashMap();
        map.put("orderID", this.i.e);
        map.put("paymentID", this.i.d);
        if (this.i.l <= 0) {
            map.put("lastReqYn", "Y");
        } else {
            map.put("lastReqYn", "N");
        }
        lVar.a(map);
        return this.t.a(this.F, lVar, (h) this, false, this.i.m * 1000);
    }

    private View x() {
        LinearLayout linearLayout = new LinearLayout(this.u);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(0, 0, 0, 10);
        final EditText editText = new EditText(this.u);
        editText.setHint(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_PASSWORD"));
        editText.setInputType(129);
        editText.setKeyListener(new DigitsKeyListener(true, true));
        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(4)});
        linearLayout.addView(editText, layoutParams2);
        TextView textView = new TextView(this.u);
        textView.setText(this.i.h);
        textView.setTextSize(30.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        linearLayout.addView(textView, layoutParams2);
        String str = String.format(this.A ? "%.2f" : "%.0f", Double.valueOf(this.y));
        TextView textView2 = new TextView(this.u);
        TextView textView3 = new TextView(this.u);
        TextView textView4 = new TextView(this.u);
        textView2.setTextAppearance(this.u, android.R.style.TextAppearance_Medium);
        textView2.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_ENTER_NUMBERS_ABOVE_TO_BUY"));
        String strA = com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_PS_APPLICATION_IS_PS_TL");
        textView3.setTextAppearance(this.u, android.R.style.TextAppearance_Medium);
        textView3.setText(String.format(strA, this.x, str));
        textView4.setTextAppearance(this.u, android.R.style.TextAppearance_Medium);
        textView4.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_NOT_ENOUGTH_BALANCE_AND_NOTIFICATION_MSG_BASARI"));
        linearLayout.addView(textView2, layoutParams);
        linearLayout.addView(textView3, layoutParams2);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(0, 20, 0, 40);
        linearLayout.addView(textView4, layoutParams3);
        LinearLayout linearLayout2 = new LinearLayout(this.u);
        linearLayout.addView(linearLayout2, layoutParams);
        final Button button = new Button(this.u);
        button.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_SK3_CONFIRM"));
        button.setEnabled(false);
        linearLayout2.addView(button, new LinearLayout.LayoutParams(-1, -2));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.samsungapps.plasma.PSMSPaymentMethod.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!PSMSPaymentMethod.this.i.h.equals(editText.getText().toString())) {
                    PSMSPaymentMethod.this.t.b(0, com.samsungapps.plasma.c.a("IDS_SAPPS_POP_INVALID_PASSWORD"));
                    return;
                }
                if (PSMSPaymentMethod.this.f252a != null) {
                    PSMSPaymentMethod.this.f252a.dismiss();
                    PSMSPaymentMethod.this.f252a = null;
                }
                PSMSPaymentMethod.this.p = PaymentState.SEND_SMS;
                PSMSPaymentMethod.this.u();
            }
        });
        editText.addTextChangedListener(new TextWatcher() { // from class: com.samsungapps.plasma.PSMSPaymentMethod.6
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                button.setEnabled(editText.length() > 0);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        return linearLayout;
    }

    private boolean y() {
        boolean z;
        com.samsungapps.plasma.a.a("Send to SMS...");
        if (this.i.k || this.t.a() != 0) {
            return true;
        }
        int i = this.q == PaymentMode.CONFIRM_PAYMENT ? 1 : 0;
        try {
            String str = (String) this.i.f.get(i);
            String str2 = (String) this.i.g.get(i);
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
            this.j = ProgressDialog.show(this.u, "", com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_WAITING_ING"), false);
            smsManager.sendMultipartTextMessage(str, null, arrayList, arrayList2, null);
            z = true;
        } catch (IllegalArgumentException e2) {
            com.samsungapps.plasma.a.a(e2);
            z = false;
        } catch (IndexOutOfBoundsException e3) {
            com.samsungapps.plasma.a.a(e3);
            z = false;
        } catch (Exception e4) {
            com.samsungapps.plasma.a.a(e4);
            z = false;
        }
        return z;
    }

    @Override // com.samsungapps.plasma.g
    final String a() {
        return com.samsungapps.plasma.c.a("IDS_SAPPS_HEADER_PHONE_BILL");
    }

    @Override // com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i, int i2) {
        switch (i2) {
            case d /* 6019 */:
                u();
                break;
            default:
                this.p = PaymentState.ERROR;
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
            this.p = PaymentState.ERROR;
            this.t.b(Plasma.STATUS_CODE_PROCESSERROR, (String) null);
        }
        switch (mVar.c()) {
            case b /* 6017 */:
                if (!a(mVar)) {
                    com.samsungapps.plasma.a.a("PSMS cannot initialized");
                    this.p = PaymentState.ERROR;
                    this.t.b(Plasma.STATUS_CODE_PROCESSERROR, (String) null);
                } else {
                    if (this.i.b()) {
                        this.p = PaymentState.WAIT_CONFIRM_TNC;
                        this.q = PaymentMode.AGREE_TNC;
                    } else if (this.i.a()) {
                        this.p = PaymentState.WAIT_CONFIRM_RANDOMKEY;
                    }
                    u();
                }
                break;
            case c /* 6018 */:
                u();
                break;
            case d /* 6019 */:
                String str = (String) ((HashMap) mVar.d().get(0)).get("successYn");
                boolean z = (str != null && str.equals("1")) || this.i.l <= 0;
                com.samsungapps.plasma.a.a("isSuccessPurchase = " + z);
                if (!z) {
                    a(PaymentState.CONFIRM_PURCHASE);
                    u();
                } else {
                    this.t.b(i, mVar);
                }
                break;
            default:
                a(PaymentState.ERROR);
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
                return c(this.i.j, com.samsungapps.plasma.c.a("IDS_SAPPS_SK3_AGREE"));
            case WAIT_CONFIRM_PAYMENTINFORMATION:
                return c(this.i.i, com.samsungapps.plasma.c.a("IDS_SAPPS_SK3_PURCHASE"));
            default:
                return null;
        }
    }

    @Override // com.samsungapps.plasma.g
    final boolean c() {
        this.p = PaymentState.INIT_PURCHASE;
        u();
        return this.p != PaymentState.ERROR;
    }
}
