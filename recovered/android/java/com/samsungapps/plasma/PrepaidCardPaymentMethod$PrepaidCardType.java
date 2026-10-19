package com.samsungapps.plasma;

/* JADX INFO: loaded from: classes.dex */
public class PrepaidCardPaymentMethod$PrepaidCardType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f270a = null;
    protected String b = null;
    protected String c = null;
    final /* synthetic */ PrepaidCardPaymentMethod d;

    protected PrepaidCardPaymentMethod$PrepaidCardType(PrepaidCardPaymentMethod prepaidCardPaymentMethod) {
        this.d = prepaidCardPaymentMethod;
    }

    public String getProviderName() {
        return this.f270a;
    }

    public String getProviderType() {
        return this.b;
    }

    public String getTermsUrl() {
        return this.c;
    }

    public void setProviderName(String str) {
        this.f270a = str;
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
