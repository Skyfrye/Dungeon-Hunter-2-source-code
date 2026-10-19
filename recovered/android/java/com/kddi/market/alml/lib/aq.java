package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
final class aq implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AccountManagerAccessor f195a;
    private final /* synthetic */ AccountManagerAccessor$CallbackWrapper b;

    aq(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        this.f195a = accountManagerAccessor;
        this.b = accountManagerAccessor$CallbackWrapper;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case -2:
                break;
            case -1:
                AccountManagerAccessor.access$6(this.f195a).startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://market.kddi.com/update_info/")));
                break;
            default:
                return;
        }
        this.b.a(-6, null, null, null);
    }
}
