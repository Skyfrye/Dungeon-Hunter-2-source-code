package com.kddi.market.alml.lib;

/* JADX INFO: loaded from: classes.dex */
final class at implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AccountManagerAccessor$AddAccountCallback f198a;

    at(AccountManagerAccessor$AddAccountCallback accountManagerAccessor$AddAccountCallback) {
        this.f198a = accountManagerAccessor$AddAccountCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AccountManagerAccessor.access$5(AccountManagerAccessor$AddAccountCallback.access$2(this.f198a), AccountManagerAccessor$AddAccountCallback.access$1(this.f198a), false);
    }
}
