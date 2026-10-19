package com.kddi.market.alml.lib;

/* JADX INFO: loaded from: classes.dex */
final class as implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AccountManagerAccessor$AddAccountCallback f197a;

    as(AccountManagerAccessor$AddAccountCallback accountManagerAccessor$AddAccountCallback) {
        this.f197a = accountManagerAccessor$AddAccountCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AccountManagerAccessor.access$4(AccountManagerAccessor$AddAccountCallback.access$2(this.f197a), AccountManagerAccessor$AddAccountCallback.access$1(this.f197a), false);
    }
}
