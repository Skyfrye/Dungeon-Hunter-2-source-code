package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class an implements DialogInterface$OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AccountManagerAccessor f192a;
    private final /* synthetic */ AccountManagerAccessor$CallbackWrapper b;
    private final /* synthetic */ Map c;

    an(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper, Map map) {
        this.f192a = accountManagerAccessor;
        this.b = accountManagerAccessor$CallbackWrapper;
        this.c = map;
    }

    @Override // android.content.DialogInterface$OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.b.a(-4, null, null, this.c);
    }
}
