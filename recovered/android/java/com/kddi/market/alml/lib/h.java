package com.kddi.market.alml.lib;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class h implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ALMLClient f207a;
    private final /* synthetic */ int b;
    private final /* synthetic */ String c;
    private final /* synthetic */ Map d;

    h(ALMLClient aLMLClient, int i, String str, Map map) {
        this.f207a = aLMLClient;
        this.b = i;
        this.c = str;
        this.d = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (ALMLClient.access$19() != null) {
            ALMLClient.access$19();
            int i = this.b;
            String str = this.c;
            Map map = this.d;
        }
    }
}
