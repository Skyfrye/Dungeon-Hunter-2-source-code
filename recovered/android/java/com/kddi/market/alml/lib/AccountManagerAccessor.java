package com.kddi.market.alml.lib;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class AccountManagerAccessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f181a = "com.kddi.android.auoneidsetting";
    private static final String b = "com.kddi.android.auoneidsetting.AuoneidSetting";
    private Activity c;
    private String e;
    private String f;
    private ApiUtil$TokenApiType d = null;
    private String g = null;
    private String h = null;
    private Handler i = new Handler();

    protected AccountManagerAccessor(Activity activity, String str, String str2) {
        this.c = null;
        this.e = null;
        this.f = null;
        this.c = activity;
        this.e = str;
        this.f = str2;
    }

    private void a(int i, String str, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        HashMap map = new HashMap();
        map.put(com.kddi.market.alml.util.a.ak, Integer.valueOf(i));
        map.put(com.kddi.market.alml.util.a.al, str);
        if (3007 == i) {
            createConfirmDialog(this.c, new am(this, accountManagerAccessor$CallbackWrapper, map), new an(this, accountManagerAccessor$CallbackWrapper, map)).show();
        } else {
            accountManagerAccessor$CallbackWrapper.a(ApiUtil.getAlmlErrorCode(this.d, i), null, null, map);
        }
    }

    private void a(Activity activity, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        createConfirmDialog(activity, new AccountManagerAccessor$1(this, accountManagerAccessor$CallbackWrapper), new al(this, accountManagerAccessor$CallbackWrapper)).show();
    }

    private void a(Activity activity, Map map, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        createConfirmDialog(activity, new am(this, accountManagerAccessor$CallbackWrapper, map), new an(this, accountManagerAccessor$CallbackWrapper, map)).show();
    }

    private void a(AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper, boolean z) {
        AccountManager accountManager = AccountManager.get(this.c);
        if (!ApiUtil.existsAuthenticator(this.c, this.g)) {
            accountManagerAccessor$CallbackWrapper.a(ApiUtil.getCannotGetError(this.d), null, null, null);
            return;
        }
        Bundle bundleCreateLoginOption = ApiUtil.createLoginOption(this.e, this.f, z);
        Account[] accountsByType = accountManager.getAccountsByType(this.g);
        if (accountsByType != null && accountsByType.length != 0) {
            accountManager.getAuthToken(accountsByType[0], this.h, bundleCreateLoginOption, this.c, new AccountManagerAccessor$AuthTokenCallback(this, accountManagerAccessor$CallbackWrapper), (Handler) null);
        } else if (com.kddi.market.a.a.f178a.equals(this.g)) {
            a(accountManagerAccessor$CallbackWrapper);
        } else if (com.kddi.market.a.a.b.equals(this.g)) {
            a(this.c, accountManagerAccessor$CallbackWrapper);
        } else {
            accountManagerAccessor$CallbackWrapper.a(-99, null, null, null);
        }
    }

    static /* synthetic */ ApiUtil$TokenApiType access$0(AccountManagerAccessor accountManagerAccessor) {
        return accountManagerAccessor.d;
    }

    static /* synthetic */ void access$1(AccountManagerAccessor accountManagerAccessor, int i, String str, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        HashMap map = new HashMap();
        map.put(com.kddi.market.alml.util.a.ak, Integer.valueOf(i));
        map.put(com.kddi.market.alml.util.a.al, str);
        if (3007 == i) {
            createConfirmDialog(accountManagerAccessor.c, new am(accountManagerAccessor, accountManagerAccessor$CallbackWrapper, map), new an(accountManagerAccessor, accountManagerAccessor$CallbackWrapper, map)).show();
        } else {
            accountManagerAccessor$CallbackWrapper.a(ApiUtil.getAlmlErrorCode(accountManagerAccessor.d, i), null, null, map);
        }
    }

    static /* synthetic */ String access$2(AccountManagerAccessor accountManagerAccessor) {
        return accountManagerAccessor.g;
    }

    static /* synthetic */ Handler access$3(AccountManagerAccessor accountManagerAccessor) {
        return accountManagerAccessor.i;
    }

    static /* synthetic */ void access$4(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper, boolean z) {
        accountManagerAccessor.a(accountManagerAccessor$CallbackWrapper, z);
    }

    static /* synthetic */ void access$5(AccountManagerAccessor accountManagerAccessor, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper, boolean z) {
        accountManagerAccessor.b(accountManagerAccessor$CallbackWrapper, z);
    }

    static /* synthetic */ Activity access$6(AccountManagerAccessor accountManagerAccessor) {
        return accountManagerAccessor.c;
    }

    private void b(Activity activity, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        ao aoVar = new ao(this, accountManagerAccessor$CallbackWrapper);
        ap apVar = new ap(this, accountManagerAccessor$CallbackWrapper);
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(activity);
        alertDialog$Builder.setTitle("au one Market未インストール");
        alertDialog$Builder.setMessage("この機能を利用するためには、au one Marketアプリが必要です。\nダウンロードページを表示します。");
        alertDialog$Builder.setPositiveButton("OK", aoVar);
        alertDialog$Builder.setNegativeButton("キャンセル", aoVar);
        alertDialog$Builder.setOnCancelListener(apVar);
        alertDialog$Builder.setCancelable(true);
        AlertDialog alertDialogCreate = alertDialog$Builder.create();
        alertDialogCreate.setOwnerActivity(activity);
        alertDialogCreate.show();
    }

    private void b(AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper, boolean z) {
        AccountManager accountManager = AccountManager.get(this.c);
        boolean zExistsAuthenticator = ApiUtil.existsAuthenticator(this.c, com.kddi.market.a.a.b);
        boolean zExistsAuthenticator2 = ApiUtil.existsAuthenticator(this.c, com.kddi.market.a.a.c);
        if (zExistsAuthenticator) {
            this.g = com.kddi.market.a.a.b;
        } else {
            if (!zExistsAuthenticator2) {
                if (installedMarketApp(this.c)) {
                    Activity activity = this.c;
                    aq aqVar = new aq(this, accountManagerAccessor$CallbackWrapper);
                    ar arVar = new ar(this, accountManagerAccessor$CallbackWrapper);
                    AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(activity);
                    alertDialog$Builder.setTitle("バージョンアップ確認");
                    alertDialog$Builder.setMessage("この機能を利用するためには、au one Marketアプリのバージョンアップが必要です。\nダウンロードページを表示します。");
                    alertDialog$Builder.setPositiveButton("OK", aqVar);
                    alertDialog$Builder.setNegativeButton("キャンセル", aqVar);
                    alertDialog$Builder.setOnCancelListener(arVar);
                    alertDialog$Builder.setCancelable(true);
                    AlertDialog alertDialogCreate = alertDialog$Builder.create();
                    alertDialogCreate.setOwnerActivity(activity);
                    alertDialogCreate.show();
                    return;
                }
                Activity activity2 = this.c;
                ao aoVar = new ao(this, accountManagerAccessor$CallbackWrapper);
                ap apVar = new ap(this, accountManagerAccessor$CallbackWrapper);
                AlertDialog$Builder alertDialog$Builder2 = new AlertDialog$Builder(activity2);
                alertDialog$Builder2.setTitle("au one Market未インストール");
                alertDialog$Builder2.setMessage("この機能を利用するためには、au one Marketアプリが必要です。\nダウンロードページを表示します。");
                alertDialog$Builder2.setPositiveButton("OK", aoVar);
                alertDialog$Builder2.setNegativeButton("キャンセル", aoVar);
                alertDialog$Builder2.setOnCancelListener(apVar);
                alertDialog$Builder2.setCancelable(true);
                AlertDialog alertDialogCreate2 = alertDialog$Builder2.create();
                alertDialogCreate2.setOwnerActivity(activity2);
                alertDialogCreate2.show();
                return;
            }
            this.g = com.kddi.market.a.a.c;
        }
        Bundle bundleCreateLoginOption = ApiUtil.createLoginOption(this.e, this.f, z);
        Account[] accountsByType = accountManager.getAccountsByType(this.g);
        if (accountsByType != null && accountsByType.length != 0) {
            accountManager.getAuthToken(accountsByType[0], this.h, bundleCreateLoginOption, this.c, new AccountManagerAccessor$AuthTokenCallback(this, accountManagerAccessor$CallbackWrapper), (Handler) null);
        } else if (zExistsAuthenticator) {
            a(this.c, accountManagerAccessor$CallbackWrapper);
        } else {
            a(accountManagerAccessor$CallbackWrapper);
        }
    }

    private void c(Activity activity, AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        aq aqVar = new aq(this, accountManagerAccessor$CallbackWrapper);
        ar arVar = new ar(this, accountManagerAccessor$CallbackWrapper);
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(activity);
        alertDialog$Builder.setTitle("バージョンアップ確認");
        alertDialog$Builder.setMessage("この機能を利用するためには、au one Marketアプリのバージョンアップが必要です。\nダウンロードページを表示します。");
        alertDialog$Builder.setPositiveButton("OK", aqVar);
        alertDialog$Builder.setNegativeButton("キャンセル", aqVar);
        alertDialog$Builder.setOnCancelListener(arVar);
        alertDialog$Builder.setCancelable(true);
        AlertDialog alertDialogCreate = alertDialog$Builder.create();
        alertDialogCreate.setOwnerActivity(activity);
        alertDialogCreate.show();
    }

    private static Dialog createConfirmDialog(Activity activity, DialogInterface$OnClickListener dialogInterface$OnClickListener, DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(activity);
        alertDialog$Builder.setTitle("au one ID 設定");
        alertDialog$Builder.setMessage("ご利用いただくには au one ID を設定いただく必要があります。");
        alertDialog$Builder.setPositiveButton("au one IDを設定", dialogInterface$OnClickListener);
        alertDialog$Builder.setNegativeButton("キャンセル", dialogInterface$OnClickListener);
        alertDialog$Builder.setOnCancelListener(dialogInterface$OnCancelListener);
        alertDialog$Builder.setCancelable(true);
        AlertDialog alertDialogCreate = alertDialog$Builder.create();
        alertDialogCreate.setOwnerActivity(activity);
        return alertDialogCreate;
    }

    private static boolean installedMarketApp(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.kddi.market", 1) != null;
        } catch (PackageManager$NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    protected final void a(AccountManagerAccessor$CallbackWrapper accountManagerAccessor$CallbackWrapper) {
        AccountManager.get(this.c).addAccount(this.g, this.h, null, ApiUtil.createLoginOption(this.e, this.f, false), this.c, new AccountManagerAccessor$AddAccountCallback(this, accountManagerAccessor$CallbackWrapper), null);
    }

    protected final void a(ab abVar, String str, boolean z) {
        this.d = ApiUtil$TokenApiType.GET_AUONE_OTHER;
        this.g = com.kddi.market.a.a.b;
        this.h = str;
        a(new AccountManagerAccessor$CallbackWrapper(abVar), z);
    }

    protected final void a(ac acVar, String str, boolean z) {
        this.d = ApiUtil$TokenApiType.GET_AU_OTHER;
        this.g = com.kddi.market.a.a.f178a;
        this.h = str;
        a(new AccountManagerAccessor$CallbackWrapper(acVar), z);
    }

    protected final void a(ad adVar, boolean z) {
        this.d = ApiUtil$TokenApiType.GET_AU_TOKEN;
        this.g = com.kddi.market.a.a.f178a;
        this.h = com.kddi.market.a.a.e;
        a(new AccountManagerAccessor$CallbackWrapper(adVar), z);
    }

    protected final void a(ae aeVar, boolean z) {
        this.d = ApiUtil$TokenApiType.GET_EZNO;
        this.g = com.kddi.market.a.a.f178a;
        this.h = com.kddi.market.a.a.g;
        a(new AccountManagerAccessor$CallbackWrapper(aeVar), z);
    }

    protected final void a(ai aiVar, boolean z) {
        this.d = ApiUtil$TokenApiType.GET_OPEN_ID;
        this.g = com.kddi.market.a.a.f178a;
        this.h = com.kddi.market.a.a.f;
        a(new AccountManagerAccessor$CallbackWrapper(aiVar), z);
    }

    protected final void a(aj ajVar, boolean z) {
        this.d = ApiUtil$TokenApiType.GET_AUONE_TOKEN;
        this.h = com.kddi.market.a.a.d;
        b(new AccountManagerAccessor$CallbackWrapper(ajVar), z);
    }
}
