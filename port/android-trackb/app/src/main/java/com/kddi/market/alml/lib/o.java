package com.kddi.market.alml.lib;

import android.content.DialogInterface;
import java.util.Map;

final class o implements DialogInterface.OnCancelListener {

    final /* synthetic */ ALMLClient f214a;

    o(ALMLClient aLMLClient) {
        this.f214a = aLMLClient;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f214a.a(-6, (String) null, (String) null, (Map) null);
    }
}
