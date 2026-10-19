package com.kddi.market.alml.lib;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import java.util.Map;

final class k implements DialogInterface.OnClickListener {

    final /* synthetic */ ALMLClient f210a;
    private final /* synthetic */ Activity b;

    k(ALMLClient aLMLClient, Activity activity) {
        this.f210a = aLMLClient;
        this.b = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case -2:
                break;
            case -1:
                this.b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://market.kddi.com/update_info/")));
                break;
            default:
                return;
        }
        this.f210a.a(-54, (String) null, (String) null, (Map) null);
    }
}
