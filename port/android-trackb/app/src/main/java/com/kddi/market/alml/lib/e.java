package com.kddi.market.alml.lib;

import java.util.Map;

final class e implements Runnable {

    final /* synthetic */ ALMLClient f204a;
    private final /* synthetic */ int b;
    private final /* synthetic */ String c;
    private final /* synthetic */ String d;
    private final /* synthetic */ Map e;

    e(ALMLClient aLMLClient, int i, String str, String str2, Map map) {
        this.f204a = aLMLClient;
        this.b = i;
        this.c = str;
        this.d = str2;
        this.e = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (ALMLClient.h != null) {
            ad unused = ALMLClient.h;
            int i = this.b;
            String str = this.c;
            String str2 = this.d;
            Map map = this.e;
        }
    }
}
