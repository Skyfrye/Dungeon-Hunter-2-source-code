package com.kddi.market.alml.lib;

import android.content.DialogInterface;

final class ap implements DialogInterface.OnCancelListener {

    final /* synthetic */ AccountManagerAccessor f194a;
    private final /* synthetic */ AccountManagerAccessor.CallbackWrapper b;

    ap(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor.CallbackWrapper callbackWrapper) {
        this.f194a = accountManagerAccessor;
        this.b = callbackWrapper;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.b.a(-54, null, null, null);
    }
}
