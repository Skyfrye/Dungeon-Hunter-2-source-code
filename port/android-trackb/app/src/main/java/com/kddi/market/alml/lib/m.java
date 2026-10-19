package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import java.util.Map;

final class m implements DialogInterface.OnCancelListener {

    final /* synthetic */ ALMLClient f212a;

    m(ALMLClient aLMLClient) {
        this.f212a = aLMLClient;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f212a.a(-54, (String) null, (String) null, (Map) null);
    }
}
