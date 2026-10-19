package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class AccountManagerAccessor$1 implements DialogInterface$OnClickListener {
    private static /* synthetic */ int[] c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AccountManagerAccessor f182a;
    private final /* synthetic */ AccountManagerAccessor$CallbackWrapper b;

    static /* synthetic */ int[] $SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType() {
        int[] iArr = c;
        if (iArr == null) {
            iArr = new int[ApiUtil$TokenApiType.valuesCustom().length];
            try {
                iArr[ApiUtil$TokenApiType.GET_AUONE_OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[ApiUtil$TokenApiType.GET_AUONE_TOKEN.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[ApiUtil$TokenApiType.GET_AU_OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[ApiUtil$TokenApiType.GET_AU_TOKEN.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[ApiUtil$TokenApiType.GET_EZNO.ordinal()] = 6;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[ApiUtil$TokenApiType.GET_OPEN_ID.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
            c = iArr;
        }
        return iArr;
    }

    AccountManagerAccessor$1(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        this.f182a = accountManagerAccessor;
        this.b = accountManagerAccessor$CallbackWrapper;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        switch ($SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[AccountManagerAccessor.access$0(this.f182a).ordinal()]) {
            case 1:
                i2 = -40;
                break;
            case 2:
            default:
                this.b.a(-99, null, null, null);
            case 3:
                i2 = -48;
                break;
        }
        switch (i) {
            case -2:
                this.b.a(i2, null, null, null);
                break;
            case -1:
                this.f182a.a(this.b);
                break;
        }
    }
}
