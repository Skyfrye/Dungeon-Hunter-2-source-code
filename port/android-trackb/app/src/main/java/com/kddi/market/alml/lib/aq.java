package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

final class aq implements DialogInterface.OnClickListener {

    final /* synthetic */ AccountManagerAccessor f195a;
    private final /* synthetic */ AccountManagerAccessor.CallbackWrapper b;

    aq(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor.CallbackWrapper callbackWrapper) {
        this.f195a = accountManagerAccessor;
        this.b = callbackWrapper;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case -2:
                break;
            case -1:
                this.f195a.c.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://market.kddi.com/update_info/")));
                break;
            default:
                return;
        }
        this.b.a(-6, null, null, null);
    }
}
