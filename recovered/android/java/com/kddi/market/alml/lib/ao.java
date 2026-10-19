package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
final class ao implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AccountManagerAccessor f193a;
    private final /* synthetic */ AccountManagerAccessor$CallbackWrapper b;

    ao(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        this.f193a = accountManagerAccessor;
        this.b = accountManagerAccessor$CallbackWrapper;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case -2:
                break;
            case -1:
                AccountManagerAccessor.access$6(this.f193a).startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://market.kddi.com/update_info/")));
                break;
            default:
                return;
        }
        this.b.a(-54, null, null, null);
    }
}
