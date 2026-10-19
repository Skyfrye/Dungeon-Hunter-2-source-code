package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

/* JADX INFO: loaded from: classes.dex */
final class al implements DialogInterface$OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AccountManagerAccessor f190a;
    private final /* synthetic */ AccountManagerAccessor$CallbackWrapper b;

    al(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        this.f190a = accountManagerAccessor;
        this.b = accountManagerAccessor$CallbackWrapper;
    }

    @Override // android.content.DialogInterface$OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.b.a(-4, null, null, null);
    }
}
