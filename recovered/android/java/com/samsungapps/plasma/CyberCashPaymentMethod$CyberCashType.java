package com.samsungapps.plasma;

/* JADX INFO: loaded from: classes.dex */
public class CyberCashPaymentMethod$CyberCashType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f241a = null;
    protected String b = null;
    protected String c = null;
    final /* synthetic */ CyberCashPaymentMethod d;

    protected CyberCashPaymentMethod$CyberCashType(CyberCashPaymentMethod cyberCashPaymentMethod) {
        this.d = cyberCashPaymentMethod;
    }

    public String getProviderName() {
        return this.f241a;
    }

    public String getProviderType() {
        return this.b;
    }

    public String getTermsUrl() {
        return this.c;
    }

    public void setProviderName(String str) {
        this.f241a = str;
    }

    public void setProviderType(String str) {
        this.b = str;
    }

    public void setTermsUrl(String str) {
        this.c = str;
    }

    public String toString() {
        return getProviderName();
    }
}
