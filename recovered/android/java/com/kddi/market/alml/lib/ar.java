package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

/* JADX INFO: loaded from: classes.dex */
final class ar implements DialogInterface$OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AccountManagerAccessor f196a;
    private final /* synthetic */ AccountManagerAccessor$CallbackWrapper b;

    ar(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        this.f196a = accountManagerAccessor;
        this.b = accountManagerAccessor$CallbackWrapper;
    }

    @Override // android.content.DialogInterface$OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.b.a(-6, null, null, null);
    }
}
