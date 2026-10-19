package com.samsungapps.plasma;

/* JADX INFO: loaded from: classes.dex */
public class CreditCardPaymentMethod$CreditCardType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f237a = null;
    protected String b = null;
    final /* synthetic */ CreditCardPaymentMethod c;

    protected CreditCardPaymentMethod$CreditCardType(CreditCardPaymentMethod creditCardPaymentMethod) {
        this.c = creditCardPaymentMethod;
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
