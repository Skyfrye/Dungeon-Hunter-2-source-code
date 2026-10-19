package com.kddi.market.alml.lib;

import android.os.Handler;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class AccountManagerAccessor$CallbackWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f185a;
    private Handler b = new Handler();

    public AccountManagerAccessor$CallbackWrapper(ab abVar) {
        this.f185a = null;
        this.f185a = abVar;
    }

    public AccountManagerAccessor$CallbackWrapper(ac acVar) {
        this.f185a = null;
        this.f185a = acVar;
    }

    public AccountManagerAccessor$CallbackWrapper(ad adVar) {
        this.f185a = null;
        this.f185a = adVar;
    }

    public AccountManagerAccessor$CallbackWrapper(ae aeVar) {
        this.f185a = null;
        this.f185a = aeVar;
    }

    public AccountManagerAccessor$CallbackWrapper(ai aiVar) {
        this.f185a = null;
        this.f185a = aiVar;
    }

    public AccountManagerAccessor$CallbackWrapper(aj ajVar) {
        this.f185a = null;
        this.f185a = ajVar;
    }

    static /* synthetic */ Object access$0(AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        return accountManagerAccessor$CallbackWrapper.f185a;
    }

    public final void a(int i, String str, String str2, Map map) {
        this.b.post(new au(this, i, str, str2, map));
    }
}
