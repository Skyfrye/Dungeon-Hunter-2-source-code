package com.kddi.market.alml.lib;

import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import java.io.IOException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
final class av implements AccountManagerCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AccountManagerAccessorSilent f200a;

    av(AccountManagerAccessorSilent accountManagerAccessorSilent) {
        this.f200a = accountManagerAccessorSilent;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0048 -> B:24:0x0026). Please report as a decompilation issue!!! */
    @Override // android.accounts.AccountManagerCallback
    public final void run(AccountManagerFuture accountManagerFuture) {
        try {
            Bundle bundle = (Bundle) accountManagerFuture.getResult();
            String string = bundle.getString(com.kddi.market.a.a.k);
            String string2 = bundle.getString(com.kddi.market.a.a.l);
            if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
                Intent intent = (Intent) bundle.getParcelable(com.kddi.market.alml.util.a.am);
                if (intent != null) {
                    HashMap map = new HashMap();
                    map.put(com.kddi.market.alml.util.a.am, intent);
                    this.f200a.a(-4, null, null, map);
                } else if (bundle.containsKey("errorCode")) {
                    int i = bundle.getInt("errorCode", -41);
                    HashMap map2 = new HashMap();
                    map2.put(com.kddi.market.alml.util.a.ak, Integer.valueOf(i));
                    map2.put(com.kddi.market.alml.util.a.al, bundle.get("errorMessage"));
                    this.f200a.a(ApiUtil.getAlmlErrorCode(AccountManagerAccessorSilent.access$0(this.f200a), i), null, null, map2);
                } else {
                    this.f200a.a(-99, null, null, null);
                }
            } else {
                this.f200a.a(0, string, string2, null);
            }
        } catch (AuthenticatorException e) {
            e.printStackTrace();
        } catch (OperationCanceledException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }
}
