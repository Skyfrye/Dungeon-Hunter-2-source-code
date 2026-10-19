package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import java.util.Map;

final class an implements DialogInterface.OnCancelListener {

    final /* synthetic */ AccountManagerAccessor f192a;
    private final /* synthetic */ AccountManagerAccessor.CallbackWrapper b;
    private final /* synthetic */ Map c;

    an(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor.CallbackWrapper callbackWrapper, Map map) {
        this.f192a = accountManagerAccessor;
        this.b = callbackWrapper;
        this.c = map;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.b.a(-4, null, null, this.c);
    }
}
