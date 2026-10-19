package com.kddi.market.alml.lib;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ALMLClient f205a;
    private final /* synthetic */ int b;
    private final /* synthetic */ String c;
    private final /* synthetic */ Map d;

    f(ALMLClient aLMLClient, int i, String str, Map map) {
        this.f205a = aLMLClient;
        this.b = i;
        this.c = str;
        this.d = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (ALMLClient.access$17() != null) {
            ALMLClient.access$17();
            int i = this.b;
            String str = this.c;
            Map map = this.d;
        }
    }
}
