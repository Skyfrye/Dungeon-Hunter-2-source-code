package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import android.content.Intent;
import java.util.Map;

final class am implements DialogInterface.OnClickListener {

    final /* synthetic */ AccountManagerAccessor f191a;
    private final /* synthetic */ AccountManagerAccessor.CallbackWrapper b;
    private final /* synthetic */ Map c;

    am(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor.CallbackWrapper callbackWrapper, Map map) {
        this.f191a = accountManagerAccessor;
        this.b = callbackWrapper;
        this.c = map;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case -2:
                this.b.a(-4, null, null, this.c);
                break;
            case -1:
                if (com.kddi.market.a.a.b.equals(this.f191a.g)) {
                    Intent intent = new Intent("android.intent.action.MAIN");
                    intent.setClassName("com.kddi.android.auoneidsetting", "com.kddi.android.auoneidsetting.AuoneidSetting");
                    this.f191a.c.startActivity(intent);
                }
                this.b.a(-4, null, null, this.c);
                break;
        }
    }
}
