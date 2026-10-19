package com.samsungapps.plasma;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class PSMSPaymentMethod$8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f260a;
    static final /* synthetic */ int[] b = new int[PSMSPaymentMethod$b.values().length];

    static {
        try {
            b[PSMSPaymentMethod$b.AGREE_TNC.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            b[PSMSPaymentMethod$b.CONFIRM_PAYMENT.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            b[PSMSPaymentMethod$b.NORMAL.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        f260a = new int[PSMSPaymentMethod$c.values().length];
        try {
            f260a[PSMSPaymentMethod$c.WAIT_CONFIRM_RANDOMKEY.ordinal()] = 1;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f260a[PSMSPaymentMethod$c.WAIT_CONFIRM_TNC.ordinal()] = 2;
        } catch (NoSuchFieldError e5) {
        }
        try {
            f260a[PSMSPaymentMethod$c.WAIT_CONFIRM_PAYMENTINFORMATION.ordinal()] = 3;
        } catch (NoSuchFieldError e6) {
        }
        try {
            f260a[PSMSPaymentMethod$c.INIT_PURCHASE.ordinal()] = 4;
        } catch (NoSuchFieldError e7) {
        }
        try {
            f260a[PSMSPaymentMethod$c.SEND_SMS.ordinal()] = 5;
        } catch (NoSuchFieldError e8) {
        }
        try {
            f260a[PSMSPaymentMethod$c.CHECK_MO_DELIVERY.ordinal()] = 6;
        } catch (NoSuchFieldError e9) {
        }
        try {
            f260a[PSMSPaymentMethod$c.CONFIRM_PURCHASE.ordinal()] = 7;
        } catch (NoSuchFieldError e10) {
        }
        try {
            f260a[PSMSPaymentMethod$c.COMPLETED.ordinal()] = 8;
        } catch (NoSuchFieldError e11) {
        }
        try {
            f260a[PSMSPaymentMethod$c.ERROR.ordinal()] = 9;
        } catch (NoSuchFieldError e12) {
        }
    }
}
