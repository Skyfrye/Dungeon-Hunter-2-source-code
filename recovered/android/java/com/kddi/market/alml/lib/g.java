package com.kddi.market.alml.lib;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ALMLClient f206a;
    private final /* synthetic */ int b;
    private final /* synthetic */ String c;
    private final /* synthetic */ Map d;

    g(ALMLClient aLMLClient, int i, String str, Map map) {
        this.f206a = aLMLClient;
        this.b = i;
        this.c = str;
        this.d = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (ALMLClient.access$18() != null) {
            ALMLClient.access$18();
            int i = this.b;
            String str = this.c;
            Map map = this.d;
        }
    }
}
