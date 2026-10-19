package com.kddi.market.alml.lib;

import java.util.Map;

final class q implements aw {

    final /* synthetic */ ALMLClient f216a;

    q(ALMLClient aLMLClient) {
        this.f216a = aLMLClient;
    }

    @Override // com.kddi.market.alml.lib.aw
    public final void a(int i, String str, String str2, Map map) {
        this.f216a.b(i, str, str2, map);
    }
}
