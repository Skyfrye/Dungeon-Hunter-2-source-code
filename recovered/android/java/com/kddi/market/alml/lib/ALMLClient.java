package com.kddi.market.alml.lib;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build$VERSION;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import com.kddi.market.alml.service.IAppAuthorizeService;
import com.kddi.market.alml.service.IAppAuthorizeServiceCallback$Stub;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ALMLClient extends ALMLClientBase {
    private static aa c;
    private static ah d;
    private static ag e;
    private static af f;
    private static aj g;
    private static ad h;
    private static ai i;
    private static ae j;
    private static ac k;
    private static ab l;
    private static final Object q = new Object();
    private IAppAuthorizeService b;
    private Context m;
    private boolean n = false;
    private ALMLClient$CONNECTION_STATUS o = ALMLClient$CONNECTION_STATUS.DISCONNECT;
    private ServiceConnection p = new y(this);
    private Handler r = new Handler();
    private IAppAuthorizeServiceCallback$Stub s = new a(this);

    private void a(int i2, String str, String str2, Map map) {
        this.r.post(new d(this, i2, str, str2, map));
    }

    private void a(int i2, String str, Map map) {
        this.r.post(new f(this, i2, null, map));
    }

    private void a(Activity activity) {
        k kVar = new k(this, activity);
        m mVar = new m(this);
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(activity);
        alertDialog$Builder.setTitle("au one Market未インストール");
        alertDialog$Builder.setMessage("この機能を利用するためには、au one Marketアプリが必要です。\nダウンロードページを表示します。");
        alertDialog$Builder.setPositiveButton("OK", kVar);
        alertDialog$Builder.setNegativeButton("キャンセル", kVar);
        alertDialog$Builder.setOnCancelListener(mVar);
        alertDialog$Builder.setCancelable(true);
        AlertDialog alertDialogCreate = alertDialog$Builder.create();
        alertDialogCreate.setOwnerActivity(activity);
        alertDialogCreate.show();
    }

    private void a(Activity activity, String str, String str2, ab abVar, String str3, boolean z) {
        if (abVar == null) {
            throw new NullPointerException();
        }
        l = abVar;
        if (!ApiUtil.isAuOneIdSettingEnabled(activity)) {
            HashMap map = new HashMap();
            map.put(com.kddi.market.alml.util.a.am, ApiUtil.createAstSettingIntent());
            d(-93, null, map);
        } else {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                d(-8, null, null);
                return;
            }
            if (Build$VERSION.SDK_INT < 5) {
                d(-49, null, null);
                return;
            }
            AccountManagerAccessor accountManagerAccessor = new AccountManagerAccessor(activity, str, str2);
            if (ApiUtil.havePermissions(activity)) {
                accountManagerAccessor.a(abVar, str3, z);
            } else {
                d(-56, null, null);
            }
        }
    }

    private void a(Activity activity, String str, String str2, ac acVar, String str3, boolean z) {
        if (acVar == null) {
            throw new NullPointerException();
        }
        k = acVar;
        if (!ApiUtil.isAuOneIdSettingEnabled(activity)) {
            HashMap map = new HashMap();
            map.put(com.kddi.market.alml.util.a.am, ApiUtil.createAstSettingIntent());
            c(-93, null, map);
        } else {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                c(-8, null, null);
                return;
            }
            if (Build$VERSION.SDK_INT < 5) {
                c(-49, null, null);
                return;
            }
            AccountManagerAccessor accountManagerAccessor = new AccountManagerAccessor(activity, str, str2);
            if (ApiUtil.havePermissions(activity)) {
                accountManagerAccessor.a(acVar, str3, z);
            } else {
                c(-56, null, null);
            }
        }
    }

    private void a(Activity activity, String str, String str2, ad adVar, boolean z) {
        if (adVar == null) {
            throw new NullPointerException();
        }
        h = adVar;
        if (!ApiUtil.isAuOneIdSettingEnabled(activity)) {
            HashMap map = new HashMap();
            map.put(com.kddi.market.alml.util.a.am, ApiUtil.createAstSettingIntent());
            b(-93, null, null, map);
        } else {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                b(-8, null, null, null);
                return;
            }
            if (Build$VERSION.SDK_INT < 5) {
                b(-41, null, null, null);
                return;
            }
            AccountManagerAccessor accountManagerAccessor = new AccountManagerAccessor(activity, str, str2);
            if (ApiUtil.havePermissions(activity)) {
                accountManagerAccessor.a(adVar, z);
            } else {
                b(-56, null, null, null);
            }
        }
    }

    private void a(Activity activity, String str, String str2, ae aeVar, boolean z) {
        if (aeVar == null) {
            throw new NullPointerException();
        }
        j = aeVar;
        if (!ApiUtil.isAuOneIdSettingEnabled(activity)) {
            HashMap map = new HashMap();
            map.put(com.kddi.market.alml.util.a.am, ApiUtil.createAstSettingIntent());
            b(-93, null, map);
        } else {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                b(-8, null, null);
                return;
            }
            if (Build$VERSION.SDK_INT < 5) {
                b(-46, null, null);
                return;
            }
            AccountManagerAccessor accountManagerAccessor = new AccountManagerAccessor(activity, str, str2);
            if (ApiUtil.havePermissions(activity)) {
                accountManagerAccessor.a(aeVar, z);
            } else {
                b(-56, null, null);
            }
        }
    }

    private void a(Activity activity, String str, String str2, ai aiVar, boolean z) {
        if (aiVar == null) {
            throw new NullPointerException();
        }
        i = aiVar;
        if (!ApiUtil.isAuOneIdSettingEnabled(activity)) {
            HashMap map = new HashMap();
            map.put(com.kddi.market.alml.util.a.am, ApiUtil.createAstSettingIntent());
            a(-93, (String) null, map);
        } else {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                a(-8, (String) null, (Map) null);
                return;
            }
            if (Build$VERSION.SDK_INT < 5) {
                a(-43, (String) null, (Map) null);
                return;
            }
            AccountManagerAccessor accountManagerAccessor = new AccountManagerAccessor(activity, str, str2);
            if (ApiUtil.havePermissions(activity)) {
                accountManagerAccessor.a(aiVar, z);
            } else {
                a(-56, (String) null, (Map) null);
            }
        }
    }

    private void a(Activity activity, String str, String str2, aj ajVar, boolean z) {
        if (ajVar == null) {
            throw new NullPointerException();
        }
        g = ajVar;
        if (!ApiUtil.isAuOneIdSettingEnabled(activity)) {
            HashMap map = new HashMap();
            map.put(com.kddi.market.alml.util.a.am, ApiUtil.createAstSettingIntent());
            a(-93, (String) null, (String) null, map);
            return;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            a(-8, (String) null, (String) null, (Map) null);
            return;
        }
        if (Build$VERSION.SDK_INT >= 5) {
            AccountManagerAccessor accountManagerAccessor = new AccountManagerAccessor(activity, str, str2);
            if (ApiUtil.havePermissions(activity)) {
                accountManagerAccessor.a(ajVar, z);
                return;
            } else {
                a(-56, (String) null, (String) null, (Map) null);
                return;
            }
        }
        if (ALMLClient$CONNECTION_STATUS.DISCONNECT == this.o) {
            int iB = b((Context) activity);
            if (-1 == iB) {
                k kVar = new k(this, activity);
                m mVar = new m(this);
                AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(activity);
                alertDialog$Builder.setTitle("au one Market未インストール");
                alertDialog$Builder.setMessage("この機能を利用するためには、au one Marketアプリが必要です。\nダウンロードページを表示します。");
                alertDialog$Builder.setPositiveButton("OK", kVar);
                alertDialog$Builder.setNegativeButton("キャンセル", kVar);
                alertDialog$Builder.setOnCancelListener(mVar);
                alertDialog$Builder.setCancelable(true);
                AlertDialog alertDialogCreate = alertDialog$Builder.create();
                alertDialogCreate.setOwnerActivity(activity);
                alertDialogCreate.show();
                return;
            }
            if (-6 == iB) {
                n nVar = new n(this, activity);
                o oVar = new o(this);
                AlertDialog$Builder alertDialog$Builder2 = new AlertDialog$Builder(activity);
                alertDialog$Builder2.setTitle("バージョンアップ確認");
                alertDialog$Builder2.setMessage("この機能を利用するためには、au one Marketアプリのバージョンアップが必要です。\nダウンロードページを表示します。");
                alertDialog$Builder2.setPositiveButton("OK", nVar);
                alertDialog$Builder2.setNegativeButton("キャンセル", nVar);
                alertDialog$Builder2.setOnCancelListener(oVar);
                alertDialog$Builder2.setCancelable(true);
                AlertDialog alertDialogCreate2 = alertDialog$Builder2.create();
                alertDialogCreate2.setOwnerActivity(activity);
                alertDialogCreate2.show();
                return;
            }
            if (iB != 0) {
                a(iB, (String) null, (String) null, (Map) null);
                return;
            }
        }
        a(new c(this, ajVar, str, str2, z));
    }

    private void a(Context context, String str, String str2, ad adVar, boolean z) {
        if (adVar == null) {
            throw new NullPointerException();
        }
        h = adVar;
        if (!ApiUtil.isAuOneIdSettingEnabled(context)) {
            HashMap map = new HashMap();
            map.put(com.kddi.market.alml.util.a.am, ApiUtil.createAstSettingIntent());
            b(-93, null, null, map);
        } else {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                b(-8, null, null, null);
                return;
            }
            if (Build$VERSION.SDK_INT < 14) {
                b(-92, null, null, null);
            } else if (ApiUtil.havePermissions(context)) {
                new AccountManagerAccessorSilent(context, str, str2).a(new q(this), z);
            } else {
                b(-56, null, null, null);
            }
        }
    }

    private void a(Context context, String str, String str2, aj ajVar, boolean z) {
        if (ajVar == null) {
            throw new NullPointerException();
        }
        g = ajVar;
        if (!ApiUtil.isAuOneIdSettingEnabled(context)) {
            HashMap map = new HashMap();
            map.put(com.kddi.market.alml.util.a.am, ApiUtil.createAstSettingIntent());
            a(-93, (String) null, (String) null, map);
        } else {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                a(-8, (String) null, (String) null, (Map) null);
                return;
            }
            if (Build$VERSION.SDK_INT < 14) {
                a(-92, (String) null, (String) null, (Map) null);
            } else if (ApiUtil.havePermissions(context)) {
                new AccountManagerAccessorSilent(context, str, str2).b(new p(this), z);
            } else {
                a(-56, (String) null, (String) null, (Map) null);
            }
        }
    }

    private void a(z zVar) {
        this.r.post(new j(this, zVar));
    }

    private void a(String str, aa aaVar, long j2, String str2) {
        if (aaVar == null) {
            throw new NullPointerException();
        }
        a(new l(this, aaVar, str, j2, str2));
    }

    private void a(String str, aa aaVar, String str2) {
        if (aaVar == null) {
            throw new NullPointerException();
        }
        a(new r(this, aaVar, str, str2));
    }

    private void a(String str, af afVar) {
        if (afVar == null) {
            throw new NullPointerException();
        }
        a(new b(this, afVar, str));
    }

    private void a(String str, ag agVar, String str2, String str3, String str4) {
        if (agVar == null) {
            throw new NullPointerException();
        }
        a(new u(this, agVar, str, str2, str3, str4));
    }

    private void a(String str, ag agVar, String str2, String str3, String str4, int i2) {
        if (agVar == null) {
            throw new NullPointerException();
        }
        a(new w(this, agVar, str, str2, str3, str4, i2));
    }

    private void a(String str, ag agVar, String str2, String str3, String str4, String str5, String str6) {
        if (agVar == null) {
            throw new NullPointerException();
        }
        a(new v(this, agVar, str, str2, str3, str4, str5, str6));
    }

    private void a(String str, ah ahVar) {
        if (ahVar == null) {
            throw new NullPointerException();
        }
        a(new s(this, ahVar, str));
    }

    static /* synthetic */ aa access$0() {
        return c;
    }

    static /* synthetic */ ah access$1() {
        return d;
    }

    static /* synthetic */ IAppAuthorizeServiceCallback$Stub access$10(ALMLClient aLMLClient) {
        return aLMLClient.s;
    }

    static /* synthetic */ void access$11(ah ahVar) {
        d = ahVar;
    }

    static /* synthetic */ void access$12(ag agVar) {
        e = agVar;
    }

    static /* synthetic */ void access$13(af afVar) {
        f = afVar;
    }

    static /* synthetic */ void access$14(aj ajVar) {
        g = ajVar;
    }

    static /* synthetic */ void access$15(ALMLClient aLMLClient, int i2, String str, String str2, Map map) {
        aLMLClient.a(i2, str, str2, map);
    }

    static /* synthetic */ ad access$16() {
        return h;
    }

    static /* synthetic */ ai access$17() {
        return i;
    }

    static /* synthetic */ ae access$18() {
        return j;
    }

    static /* synthetic */ ac access$19() {
        return k;
    }

    static /* synthetic */ ag access$2() {
        return e;
    }

    static /* synthetic */ ab access$20() {
        return l;
    }

    static /* synthetic */ ALMLClient$CONNECTION_STATUS access$21(ALMLClient aLMLClient) {
        return aLMLClient.o;
    }

    static /* synthetic */ ServiceConnection access$22(ALMLClient aLMLClient) {
        return aLMLClient.p;
    }

    static /* synthetic */ void access$23(ALMLClient aLMLClient, int i2, String str, String str2, Map map) {
        aLMLClient.b(i2, str, str2, map);
    }

    static /* synthetic */ af access$3() {
        return f;
    }

    static /* synthetic */ aj access$4() {
        return g;
    }

    static /* synthetic */ void access$5(ALMLClient aLMLClient, IAppAuthorizeService iAppAuthorizeService) {
        aLMLClient.b = iAppAuthorizeService;
    }

    static /* synthetic */ void access$6(ALMLClient aLMLClient, ALMLClient$CONNECTION_STATUS aLMLClient$CONNECTION_STATUS) {
        aLMLClient.o = aLMLClient$CONNECTION_STATUS;
    }

    static /* synthetic */ Object access$7() {
        return q;
    }

    static /* synthetic */ IAppAuthorizeService access$8(ALMLClient aLMLClient) {
        return aLMLClient.b;
    }

    static /* synthetic */ void access$9(aa aaVar) {
        c = aaVar;
    }

    private int b(Context context) {
        this.m = context;
        try {
            if (!isMarketApp(context)) {
                return -1;
            }
            if (14 > getMarketAppVersionCode(context)) {
                return -6;
            }
            context.startService(new Intent(IAppAuthorizeService.class.getName()));
            if (ALMLClient$CONNECTION_STATUS.DISCONNECT == this.o) {
                this.o = ALMLClient$CONNECTION_STATUS.CONNECTING;
            }
            boolean zBindService = context.bindService(new Intent(IAppAuthorizeService.class.getName()), this.p, 1);
            this.n = true;
            if (!zBindService) {
                this.o = ALMLClient$CONNECTION_STATUS.DISCONNECT;
            }
            return zBindService ? 0 : -99;
        } catch (SecurityException e2) {
            this.o = ALMLClient$CONNECTION_STATUS.DISCONNECT;
            return -2;
        }
    }

    private void b(int i2, String str, String str2, Map map) {
        this.r.post(new e(this, i2, str, str2, map));
    }

    private void b(int i2, String str, Map map) {
        this.r.post(new g(this, i2, null, map));
    }

    private void b(Activity activity) {
        n nVar = new n(this, activity);
        o oVar = new o(this);
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(activity);
        alertDialog$Builder.setTitle("バージョンアップ確認");
        alertDialog$Builder.setMessage("この機能を利用するためには、au one Marketアプリのバージョンアップが必要です。\nダウンロードページを表示します。");
        alertDialog$Builder.setPositiveButton("OK", nVar);
        alertDialog$Builder.setNegativeButton("キャンセル", nVar);
        alertDialog$Builder.setOnCancelListener(oVar);
        alertDialog$Builder.setCancelable(true);
        AlertDialog alertDialogCreate = alertDialog$Builder.create();
        alertDialogCreate.setOwnerActivity(activity);
        alertDialogCreate.show();
    }

    private void b(String str, ag agVar, String str2, String str3, String str4) {
        if (agVar == null) {
            throw new NullPointerException();
        }
        a(new x(this, agVar, str, str2, str3, str4));
    }

    private void b(String str, ah ahVar) {
        if (ahVar == null) {
            throw new NullPointerException();
        }
        a(new t(this, ahVar, str));
    }

    private void c(int i2, String str, Map map) {
        this.r.post(new h(this, i2, null, map));
    }

    private void c(Context context) {
        if (this.b != null) {
            try {
                this.b.a(context.getPackageName());
            } catch (DeadObjectException e2) {
            } catch (RemoteException e3) {
            }
        }
    }

    private void d(int i2, String str, Map map) {
        this.r.post(new i(this, i2, null, map));
    }

    @Override // com.kddi.market.alml.lib.ALMLClientBase
    public final int a(Context context) {
        this.m = context;
        try {
            if (!isMarketApp(context)) {
                return -1;
            }
            context.startService(new Intent(IAppAuthorizeService.class.getName()));
            if (ALMLClient$CONNECTION_STATUS.DISCONNECT == this.o) {
                this.o = ALMLClient$CONNECTION_STATUS.CONNECTING;
            }
            boolean zBindService = context.bindService(new Intent(IAppAuthorizeService.class.getName()), this.p, 1);
            this.n = true;
            if (!zBindService) {
                this.o = ALMLClient$CONNECTION_STATUS.DISCONNECT;
            }
            return zBindService ? 0 : -99;
        } catch (SecurityException e2) {
            this.o = ALMLClient$CONNECTION_STATUS.DISCONNECT;
            return -2;
        }
    }

    @Override // com.kddi.market.alml.lib.ALMLClientBase
    public final void a() {
        if (this.n) {
            this.m.unbindService(this.p);
            this.b = null;
            c = null;
            d = null;
            e = null;
            f = null;
            ((y) this.p).a(null);
            this.n = false;
            this.o = ALMLClient$CONNECTION_STATUS.DISCONNECT;
        }
    }
}
