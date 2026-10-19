package com.kddi.market.alml.lib;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

class AccountManagerAccessor {

    private static final String f181a = "com.kddi.android.auoneidsetting";
    static final String b = "com.kddi.android.auoneidsetting.AuoneidSetting";
    Activity c;
    private String e;
    private String f;
    private ApiUtil.TokenApiType d = null;
    String g = null;
    private String h = null;
    private Handler i = new Handler();

    class AddAccountCallback implements AccountManagerCallback {
        private static /* synthetic */ int[] c;
        CallbackWrapper b;

        static /* synthetic */ int[] $SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType() {
            int[] iArr = c;
            if (iArr == null) {
                iArr = new int[ApiUtil.TokenApiType.valuesCustom().length];
                try {
                    iArr[ApiUtil.TokenApiType.GET_AUONE_OTHER.ordinal()] = 3;
                } catch (NoSuchFieldError e) {
                }
                try {
                    iArr[ApiUtil.TokenApiType.GET_AUONE_TOKEN.ordinal()] = 1;
                } catch (NoSuchFieldError e2) {
                }
                try {
                    iArr[ApiUtil.TokenApiType.GET_AU_OTHER.ordinal()] = 4;
                } catch (NoSuchFieldError e3) {
                }
                try {
                    iArr[ApiUtil.TokenApiType.GET_AU_TOKEN.ordinal()] = 2;
                } catch (NoSuchFieldError e4) {
                }
                try {
                    iArr[ApiUtil.TokenApiType.GET_EZNO.ordinal()] = 6;
                } catch (NoSuchFieldError e5) {
                }
                try {
                    iArr[ApiUtil.TokenApiType.GET_OPEN_ID.ordinal()] = 5;
                } catch (NoSuchFieldError e6) {
                }
                c = iArr;
            }
            return iArr;
        }

        public AddAccountCallback(CallbackWrapper callbackWrapper) {
            this.b = null;
            this.b = callbackWrapper;
        }

        @Override // android.accounts.AccountManagerCallback
        public void run(AccountManagerFuture accountManagerFuture) {
            boolean zIsEmpty = false;
            try {
                Bundle bundle = (Bundle) accountManagerFuture.getResult();
                String string = bundle.getString(com.kddi.market.a.a.k);
                String string2 = bundle.getString(com.kddi.market.a.a.l);
                if (!TextUtils.isEmpty(string)) {
                    switch ($SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[AccountManagerAccessor.this.d.ordinal()]) {
                        case 1:
                        case 2:
                            zIsEmpty = TextUtils.isEmpty(string2);
                            break;
                    }
                    if (!zIsEmpty) {
                        this.b.a(0, string, string2, null);
                        return;
                    }
                }
                if (bundle.containsKey("errorCode")) {
                    AccountManagerAccessor.access$1(AccountManagerAccessor.this, bundle.getInt("errorCode", 8), bundle.getString("errorMessage"), this.b);
                } else if (com.kddi.market.a.a.f178a.equals(AccountManagerAccessor.this.g)) {
                    AccountManagerAccessor.this.i.post(new as(AccountManagerAccessor.this, this));
                } else if (com.kddi.market.a.a.b.equals(AccountManagerAccessor.this.g) || com.kddi.market.a.a.c.equals(AccountManagerAccessor.this.g)) {
                    AccountManagerAccessor.this.i.post(new at(AccountManagerAccessor.this, this));
                } else {
                    this.b.a(-99, null, null, null);
                }
            } catch (AuthenticatorException e) {
                this.b.a(ApiUtil.getCannotGetError(AccountManagerAccessor.this.d), null, null, null);
            } catch (OperationCanceledException e2) {
                this.b.a(-4, null, null, null);
            } catch (IOException e3) {
                this.b.a(-99, null, null, null);
            }
        }
    }

    class AuthTokenCallback implements AccountManagerCallback {
        private static /* synthetic */ int[] c;
        private CallbackWrapper b;

        static /* synthetic */ int[] $SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType() {
            int[] iArr = c;
            if (iArr == null) {
                iArr = new int[ApiUtil.TokenApiType.valuesCustom().length];
                try {
                    iArr[ApiUtil.TokenApiType.GET_AUONE_OTHER.ordinal()] = 3;
                } catch (NoSuchFieldError e) {
                }
                try {
                    iArr[ApiUtil.TokenApiType.GET_AUONE_TOKEN.ordinal()] = 1;
                } catch (NoSuchFieldError e2) {
                }
                try {
                    iArr[ApiUtil.TokenApiType.GET_AU_OTHER.ordinal()] = 4;
                } catch (NoSuchFieldError e3) {
                }
                try {
                    iArr[ApiUtil.TokenApiType.GET_AU_TOKEN.ordinal()] = 2;
                } catch (NoSuchFieldError e4) {
                }
                try {
                    iArr[ApiUtil.TokenApiType.GET_EZNO.ordinal()] = 6;
                } catch (NoSuchFieldError e5) {
                }
                try {
                    iArr[ApiUtil.TokenApiType.GET_OPEN_ID.ordinal()] = 5;
                } catch (NoSuchFieldError e6) {
                }
                c = iArr;
            }
            return iArr;
        }

        public AuthTokenCallback(CallbackWrapper callbackWrapper) {
            this.b = null;
            this.b = callbackWrapper;
        }

        @Override // android.accounts.AccountManagerCallback
        public void run(AccountManagerFuture accountManagerFuture) {
            boolean zIsEmpty = false;
            try {
                Bundle bundle = (Bundle) accountManagerFuture.getResult();
                String string = bundle.getString(com.kddi.market.a.a.k);
                String string2 = bundle.getString(com.kddi.market.a.a.l);
                if (!TextUtils.isEmpty(string)) {
                    switch ($SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[AccountManagerAccessor.this.d.ordinal()]) {
                        case 1:
                        case 2:
                            zIsEmpty = TextUtils.isEmpty(string2);
                            break;
                    }
                    if (!zIsEmpty) {
                        this.b.a(0, string, string2, null);
                        return;
                    }
                }
                if (!bundle.containsKey("errorCode")) {
                    this.b.a(ApiUtil.getCannotGetError(AccountManagerAccessor.this.d), null, null, null);
                    return;
                }
                AccountManagerAccessor.access$1(AccountManagerAccessor.this, bundle.getInt("errorCode", ApiUtil.getCannotGetError(AccountManagerAccessor.this.d)), bundle.getString("errorMessage"), this.b);
            } catch (AuthenticatorException e) {
                this.b.a(ApiUtil.getCannotGetError(AccountManagerAccessor.this.d), null, null, null);
            } catch (OperationCanceledException e2) {
                this.b.a(-4, null, null, null);
            } catch (IOException e3) {
                this.b.a(-99, null, null, null);
            }
        }
    }

    class CallbackWrapper {

        Object f185a;
        private Handler b = new Handler();

        public CallbackWrapper(ab abVar) {
            this.f185a = null;
            this.f185a = abVar;
        }

        public CallbackWrapper(ac acVar) {
            this.f185a = null;
            this.f185a = acVar;
        }

        public CallbackWrapper(ad adVar) {
            this.f185a = null;
            this.f185a = adVar;
        }

        public CallbackWrapper(ae aeVar) {
            this.f185a = null;
            this.f185a = aeVar;
        }

        public CallbackWrapper(ai aiVar) {
            this.f185a = null;
            this.f185a = aiVar;
        }

        public CallbackWrapper(aj ajVar) {
            this.f185a = null;
            this.f185a = ajVar;
        }

        public final void a(int i, String str, String str2, Map map) {
            this.b.post(new au(this, i, str, str2, map));
        }
    }

    protected AccountManagerAccessor(Activity activity, String str, String str2) {
        this.c = null;
        this.e = null;
        this.f = null;
        this.c = activity;
        this.e = str;
        this.f = str2;
    }

    private void a(int i, String str, CallbackWrapper callbackWrapper) {
        HashMap map = new HashMap();
        map.put(com.kddi.market.alml.util.a.ak, Integer.valueOf(i));
        map.put(com.kddi.market.alml.util.a.al, str);
        if (3007 == i) {
            createConfirmDialog(this.c, new am(this, callbackWrapper, map), new an(this, callbackWrapper, map)).show();
        } else {
            callbackWrapper.a(ApiUtil.getAlmlErrorCode(this.d, i), null, null, map);
        }
    }

    private void a(Activity activity, final CallbackWrapper callbackWrapper) {
        createConfirmDialog(activity, new DialogInterface.OnClickListener() { // from class: com.kddi.market.alml.lib.AccountManagerAccessor.1
            private static /* synthetic */ int[] c;

            static /* synthetic */ int[] $SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType() {
                int[] iArr = c;
                if (iArr == null) {
                    iArr = new int[ApiUtil.TokenApiType.valuesCustom().length];
                    try {
                        iArr[ApiUtil.TokenApiType.GET_AUONE_OTHER.ordinal()] = 3;
                    } catch (NoSuchFieldError e) {
                    }
                    try {
                        iArr[ApiUtil.TokenApiType.GET_AUONE_TOKEN.ordinal()] = 1;
                    } catch (NoSuchFieldError e2) {
                    }
                    try {
                        iArr[ApiUtil.TokenApiType.GET_AU_OTHER.ordinal()] = 4;
                    } catch (NoSuchFieldError e3) {
                    }
                    try {
                        iArr[ApiUtil.TokenApiType.GET_AU_TOKEN.ordinal()] = 2;
                    } catch (NoSuchFieldError e4) {
                    }
                    try {
                        iArr[ApiUtil.TokenApiType.GET_EZNO.ordinal()] = 6;
                    } catch (NoSuchFieldError e5) {
                    }
                    try {
                        iArr[ApiUtil.TokenApiType.GET_OPEN_ID.ordinal()] = 5;
                    } catch (NoSuchFieldError e6) {
                    }
                    c = iArr;
                }
                return iArr;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                int i2;
                switch ($SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[AccountManagerAccessor.this.d.ordinal()]) {
                    case 1:
                        i2 = -40;
                        break;
                    case 2:
                    default:
                        callbackWrapper.a(-99, null, null, null);
                    case 3:
                        i2 = -48;
                        break;
                }
                switch (i) {
                    case -2:
                        callbackWrapper.a(i2, null, null, null);
                        break;
                    case -1:
                        AccountManagerAccessor.this.a(callbackWrapper);
                        break;
                }
            }
        }, new al(this, callbackWrapper)).show();
    }

    private void a(Activity activity, Map map, CallbackWrapper callbackWrapper) {
        createConfirmDialog(activity, new am(this, callbackWrapper, map), new an(this, callbackWrapper, map)).show();
    }

    public void a(CallbackWrapper callbackWrapper, boolean z) {
        AccountManager accountManager = AccountManager.get(this.c);
        if (!ApiUtil.existsAuthenticator(this.c, this.g)) {
            callbackWrapper.a(ApiUtil.getCannotGetError(this.d), null, null, null);
            return;
        }
        Bundle bundleCreateLoginOption = ApiUtil.createLoginOption(this.e, this.f, z);
        Account[] accountsByType = accountManager.getAccountsByType(this.g);
        if (accountsByType != null && accountsByType.length != 0) {
            accountManager.getAuthToken(accountsByType[0], this.h, bundleCreateLoginOption, this.c, new AuthTokenCallback(callbackWrapper), (Handler) null);
        } else if (com.kddi.market.a.a.f178a.equals(this.g)) {
            a(callbackWrapper);
        } else if (com.kddi.market.a.a.b.equals(this.g)) {
            a(this.c, callbackWrapper);
        } else {
            callbackWrapper.a(-99, null, null, null);
        }
    }

    static /* synthetic */ void access$1(AccountManagerAccessor accountManagerAccessor, int i, String str, CallbackWrapper callbackWrapper) {
        HashMap map = new HashMap();
        map.put(com.kddi.market.alml.util.a.ak, Integer.valueOf(i));
        map.put(com.kddi.market.alml.util.a.al, str);
        if (3007 == i) {
            createConfirmDialog(accountManagerAccessor.c, new am(accountManagerAccessor, callbackWrapper, map), new an(accountManagerAccessor, callbackWrapper, map)).show();
        } else {
            callbackWrapper.a(ApiUtil.getAlmlErrorCode(accountManagerAccessor.d, i), null, null, map);
        }
    }

    private void b(Activity activity, CallbackWrapper callbackWrapper) {
        ao aoVar = new ao(this, callbackWrapper);
        ap apVar = new ap(this, callbackWrapper);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle("au one Market未インストール");
        builder.setMessage("この機能を利用するためには、au one Marketアプリが必要です。\nダウンロードページを表示します。");
        builder.setPositiveButton("OK", aoVar);
        builder.setNegativeButton("キャンセル", aoVar);
        builder.setOnCancelListener(apVar);
        builder.setCancelable(true);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOwnerActivity(activity);
        alertDialogCreate.show();
    }

    public void b(CallbackWrapper callbackWrapper, boolean z) {
        AccountManager accountManager = AccountManager.get(this.c);
        boolean zExistsAuthenticator = ApiUtil.existsAuthenticator(this.c, com.kddi.market.a.a.b);
        boolean zExistsAuthenticator2 = ApiUtil.existsAuthenticator(this.c, com.kddi.market.a.a.c);
        if (zExistsAuthenticator) {
            this.g = com.kddi.market.a.a.b;
        } else {
            if (!zExistsAuthenticator2) {
                if (installedMarketApp(this.c)) {
                    Activity activity = this.c;
                    aq aqVar = new aq(this, callbackWrapper);
                    ar arVar = new ar(this, callbackWrapper);
                    AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                    builder.setTitle("バージョンアップ確認");
                    builder.setMessage("この機能を利用するためには、au one Marketアプリのバージョンアップが必要です。\nダウンロードページを表示します。");
                    builder.setPositiveButton("OK", aqVar);
                    builder.setNegativeButton("キャンセル", aqVar);
                    builder.setOnCancelListener(arVar);
                    builder.setCancelable(true);
                    AlertDialog alertDialogCreate = builder.create();
                    alertDialogCreate.setOwnerActivity(activity);
                    alertDialogCreate.show();
                    return;
                }
                Activity activity2 = this.c;
                ao aoVar = new ao(this, callbackWrapper);
                ap apVar = new ap(this, callbackWrapper);
                AlertDialog.Builder builder2 = new AlertDialog.Builder(activity2);
                builder2.setTitle("au one Market未インストール");
                builder2.setMessage("この機能を利用するためには、au one Marketアプリが必要です。\nダウンロードページを表示します。");
                builder2.setPositiveButton("OK", aoVar);
                builder2.setNegativeButton("キャンセル", aoVar);
                builder2.setOnCancelListener(apVar);
                builder2.setCancelable(true);
                AlertDialog alertDialogCreate2 = builder2.create();
                alertDialogCreate2.setOwnerActivity(activity2);
                alertDialogCreate2.show();
                return;
            }
            this.g = com.kddi.market.a.a.c;
        }
        Bundle bundleCreateLoginOption = ApiUtil.createLoginOption(this.e, this.f, z);
        Account[] accountsByType = accountManager.getAccountsByType(this.g);
        if (accountsByType != null && accountsByType.length != 0) {
            accountManager.getAuthToken(accountsByType[0], this.h, bundleCreateLoginOption, this.c, new AuthTokenCallback(callbackWrapper), (Handler) null);
        } else if (zExistsAuthenticator) {
            a(this.c, callbackWrapper);
        } else {
            a(callbackWrapper);
        }
    }

    void c(Activity activity, CallbackWrapper callbackWrapper) {
        aq aqVar = new aq(this, callbackWrapper);
        ar arVar = new ar(this, callbackWrapper);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle("バージョンアップ確認");
        builder.setMessage("この機能を利用するためには、au one Marketアプリのバージョンアップが必要です。\nダウンロードページを表示します。");
        builder.setPositiveButton("OK", aqVar);
        builder.setNegativeButton("キャンセル", aqVar);
        builder.setOnCancelListener(arVar);
        builder.setCancelable(true);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOwnerActivity(activity);
        alertDialogCreate.show();
    }

    private static Dialog createConfirmDialog(Activity activity, DialogInterface.OnClickListener onClickListener, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle("au one ID 設定");
        builder.setMessage("ご利用いただくには au one ID を設定いただく必要があります。");
        builder.setPositiveButton("au one IDを設定", onClickListener);
        builder.setNegativeButton("キャンセル", onClickListener);
        builder.setOnCancelListener(onCancelListener);
        builder.setCancelable(true);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOwnerActivity(activity);
        return alertDialogCreate;
    }

    private static boolean installedMarketApp(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.kddi.market", 1) != null;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    protected final void a(CallbackWrapper callbackWrapper) {
        AccountManager.get(this.c).addAccount(this.g, this.h, null, ApiUtil.createLoginOption(this.e, this.f, false), this.c, new AddAccountCallback(callbackWrapper), null);
    }

    protected final void a(ab abVar, String str, boolean z) {
        this.d = ApiUtil.TokenApiType.GET_AUONE_OTHER;
        this.g = com.kddi.market.a.a.b;
        this.h = str;
        a(new CallbackWrapper(abVar), z);
    }

    protected final void a(ac acVar, String str, boolean z) {
        this.d = ApiUtil.TokenApiType.GET_AU_OTHER;
        this.g = com.kddi.market.a.a.f178a;
        this.h = str;
        a(new CallbackWrapper(acVar), z);
    }

    protected final void a(ad adVar, boolean z) {
        this.d = ApiUtil.TokenApiType.GET_AU_TOKEN;
        this.g = com.kddi.market.a.a.f178a;
        this.h = com.kddi.market.a.a.e;
        a(new CallbackWrapper(adVar), z);
    }

    protected final void a(ae aeVar, boolean z) {
        this.d = ApiUtil.TokenApiType.GET_EZNO;
        this.g = com.kddi.market.a.a.f178a;
        this.h = com.kddi.market.a.a.g;
        a(new CallbackWrapper(aeVar), z);
    }

    protected final void a(ai aiVar, boolean z) {
        this.d = ApiUtil.TokenApiType.GET_OPEN_ID;
        this.g = com.kddi.market.a.a.f178a;
        this.h = com.kddi.market.a.a.f;
        a(new CallbackWrapper(aiVar), z);
    }

    protected final void a(aj ajVar, boolean z) {
        this.d = ApiUtil.TokenApiType.GET_AUONE_TOKEN;
        this.h = com.kddi.market.a.a.d;
        b(new CallbackWrapper(ajVar), z);
    }
}
