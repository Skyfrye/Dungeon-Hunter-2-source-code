package com.kddi.market.alml.lib;

final class at implements Runnable {

    final /* synthetic */ AccountManagerAccessor.AddAccountCallback f198a;

    final AccountManagerAccessor outer;

    at(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor.AddAccountCallback addAccountCallback) {
        this.outer = accountManagerAccessor;
        this.f198a = addAccountCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.outer.b(this.f198a.b, false);
    }
}
