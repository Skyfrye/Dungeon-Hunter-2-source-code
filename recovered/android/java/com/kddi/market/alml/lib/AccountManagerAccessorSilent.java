package com.kddi.market.alml.lib;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.content.Context;
import android.os.Handler;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class AccountManagerAccessorSilent {
    private static /* synthetic */ int[] g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f186a;
    private final String b;
    private final String c;
    private aw d;
    private ApiUtil$TokenApiType e = null;
    private AccountManagerCallback f = new av(this);

    static /* synthetic */ int[] $SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType() {
        int[] iArr = g;
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
            g = iArr;
        }
        return iArr;
    }

    protected AccountManagerAccessorSilent(Context context, String str, String str2) {
        this.f186a = context;
        this.b = str;
        this.c = str2;
    }

    private Account a(ApiUtil$TokenApiType apiUtil$TokenApiType) {
        String str;
        AccountManager accountManager = AccountManager.get(this.f186a);
        switch ($SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[apiUtil$TokenApiType.ordinal()]) {
            case 1:
                str = com.kddi.market.a.a.b;
                break;
            case 2:
                str = com.kddi.market.a.a.f178a;
                break;
            default:
                return null;
        }
        Account[] accountsByType = accountManager.getAccountsByType(str);
        if (accountsByType == null || accountsByType.length == 0) {
            return null;
        }
        return accountsByType[0];
    }

    static /* synthetic */ ApiUtil$TokenApiType access$0(AccountManagerAccessorSilent accountManagerAccessorSilent) {
        return accountManagerAccessorSilent.e;
    }

    public final void a(int i, String str, String str2, Map map) {
        if (this.d != null) {
            this.d.a(i, str, str2, map);
        }
        this.d = null;
    }

    protected final void a(aw awVar, boolean z) {
        this.d = awVar;
        this.e = ApiUtil$TokenApiType.GET_AU_TOKEN;
        if (!ApiUtil.existsAuthenticator(this.f186a, com.kddi.market.a.a.f178a)) {
            a(-41, null, null, null);
            return;
        }
        Account accountA = a(this.e);
        if (accountA == null) {
            a(-40, null, null, null);
        } else {
            AccountManager.get(this.f186a).getAuthToken(accountA, com.kddi.market.a.a.e, ApiUtil.createLoginOption(this.b, this.c, z), false, this.f, (Handler) null);
        }
    }

    protected final void b(aw awVar, boolean z) {
        this.d = awVar;
        this.e = ApiUtil$TokenApiType.GET_AUONE_TOKEN;
        if (!ApiUtil.existsAuthenticator(this.f186a, com.kddi.market.a.a.b)) {
            a(-41, null, null, null);
            return;
        }
        Account accountA = a(this.e);
        if (accountA == null) {
            a(-40, null, null, null);
        } else {
            AccountManager.get(this.f186a).getAuthToken(accountA, com.kddi.market.a.a.d, ApiUtil.createLoginOption(this.b, this.c, z), false, this.f, (Handler) null);
        }
    }
}
