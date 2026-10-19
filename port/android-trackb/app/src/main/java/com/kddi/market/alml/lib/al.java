package com.kddi.market.alml.lib;

import android.content.DialogInterface;

final class al implements DialogInterface.OnCancelListener {

    final /* synthetic */ AccountManagerAccessor f190a;
    private final /* synthetic */ AccountManagerAccessor.CallbackWrapper b;

    al(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor.CallbackWrapper callbackWrapper) {
        this.f190a = accountManagerAccessor;
        this.b = callbackWrapper;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.b.a(-4, null, null, null);
    }
}
