package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

final class ao implements DialogInterface.OnClickListener {

    final /* synthetic */ AccountManagerAccessor f193a;
    private final /* synthetic */ AccountManagerAccessor.CallbackWrapper b;

    ao(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor.CallbackWrapper callbackWrapper) {
        this.f193a = accountManagerAccessor;
        this.b = callbackWrapper;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case -2:
                break;
            case -1:
                this.f193a.c.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://market.kddi.com/update_info/")));
                break;
            default:
                return;
        }
        this.b.a(-54, null, null, null);
    }
}
