package com.kddi.market.alml.lib;

final class as implements Runnable {

    final /* synthetic */ AccountManagerAccessor.AddAccountCallback f197a;

    final AccountManagerAccessor outer;

    as(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor.AddAccountCallback addAccountCallback) {
        this.outer = accountManagerAccessor;
        this.f197a = addAccountCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.outer.a(this.f197a.b, false);
    }
}
