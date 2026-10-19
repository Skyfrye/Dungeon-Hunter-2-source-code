package com.kddi.market.alml.lib;

import android.content.DialogInterface;

final class ar implements DialogInterface.OnCancelListener {

    final /* synthetic */ AccountManagerAccessor f196a;
    private final /* synthetic */ AccountManagerAccessor.CallbackWrapper b;

    ar(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor.CallbackWrapper callbackWrapper) {
        this.f196a = accountManagerAccessor;
        this.b = callbackWrapper;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.b.a(-6, null, null, null);
    }
}
