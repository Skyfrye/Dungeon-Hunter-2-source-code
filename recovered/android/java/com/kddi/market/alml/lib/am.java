package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class am implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AccountManagerAccessor f191a;
    private final /* synthetic */ AccountManagerAccessor$CallbackWrapper b;
    private final /* synthetic */ Map c;

    am(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper, Map map) {
        this.f191a = accountManagerAccessor;
        this.b = accountManagerAccessor$CallbackWrapper;
        this.c = map;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case -2:
                this.b.a(-4, null, null, this.c);
                break;
            case -1:
                if (com.kddi.market.a.a.b.equals(AccountManagerAccessor.access$2(this.f191a))) {
                    Intent intent = new Intent("android.intent.action.MAIN");
                    intent.setClassName("com.kddi.android.auoneidsetting", "com.kddi.android.auoneidsetting.AuoneidSetting");
                    AccountManagerAccessor.access$6(this.f191a).startActivity(intent);
                }
                this.b.a(-4, null, null, this.c);
                break;
        }
    }
}
