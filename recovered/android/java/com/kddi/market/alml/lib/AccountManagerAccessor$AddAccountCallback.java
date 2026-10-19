package com.kddi.market.alml.lib;

import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.os.Bundle;
import android.text.TextUtils;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class AccountManagerAccessor$AddAccountCallback implements AccountManagerCallback {
    private static /* synthetic */ int[] c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AccountManagerAccessor f183a;
    private AccountManagerAccessor$CallbackWrapper b;

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

    public AccountManagerAccessor$AddAccountCallback(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        this.f183a = accountManagerAccessor;
        this.b = null;
        this.b = accountManagerAccessor$CallbackWrapper;
    }

    static /* synthetic */ AccountManagerAccessor$CallbackWrapper access$1(AccountManagerAccessor$AddAccountCallback accountManagerAccessor$AddAccountCallback) {
        return accountManagerAccessor$AddAccountCallback.b;
    }

    static /* synthetic */ AccountManagerAccessor access$2(AccountManagerAccessor$AddAccountCallback accountManagerAccessor$AddAccountCallback) {
        return accountManagerAccessor$AddAccountCallback.f183a;
    }

    @Override // android.accounts.AccountManagerCallback
    public void run(AccountManagerFuture accountManagerFuture) {
        boolean zIsEmpty = false;
        try {
            Bundle bundle = (Bundle) accountManagerFuture.getResult();
            String string = bundle.getString(com.kddi.market.a.a.k);
            String string2 = bundle.getString(com.kddi.market.a.a.l);
            if (!TextUtils.isEmpty(string)) {
                switch ($SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[AccountManagerAccessor.access$0(this.f183a).ordinal()]) {
                    case 1:
                    case 2:
                        zIsEmpty = TextUtils.isEmpty(string2);
                        break;
                }
                if (!zIsEmpty) {
                    this.b.a(0, string, string2, null);
                    return;
                }
            }
            if (bundle.containsKey("errorCode")) {
                AccountManagerAccessor.access$1(this.f183a, bundle.getInt("errorCode", 8), bundle.getString("errorMessage"), this.b);
            } else if (com.kddi.market.a.a.f178a.equals(AccountManagerAccessor.access$2(this.f183a))) {
                AccountManagerAccessor.access$3(this.f183a).post(new as(this));
            } else if (com.kddi.market.a.a.b.equals(AccountManagerAccessor.access$2(this.f183a)) || com.kddi.market.a.a.c.equals(AccountManagerAccessor.access$2(this.f183a))) {
                AccountManagerAccessor.access$3(this.f183a).post(new at(this));
            } else {
                this.b.a(-99, null, null, null);
            }
        } catch (AuthenticatorException e) {
            this.b.a(ApiUtil.getCannotGetError(AccountManagerAccessor.access$0(this.f183a)), null, null, null);
        } catch (OperationCanceledException e2) {
            this.b.a(-4, null, null, null);
        } catch (IOException e3) {
            this.b.a(-99, null, null, null);
        }
    }
}
