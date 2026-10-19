package com.gameloft.android.GAND.GloftD2SS;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences$Editor;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationSetUp extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f2a = "ApplicationSetUp";
    public static String b = "GA_DEBUG";
    public static String c = "true";
    public static String d = "false";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String string;
        Bundle extras = intent.getExtras();
        if (extras == null || (string = extras.getString("GA_DEBUG")) == null) {
            return;
        }
        SharedPreferences$Editor sharedPreferences$EditorEdit = context.getSharedPreferences(f2a, 0).edit();
        sharedPreferences$EditorEdit.putString("GA_DEBUG", string);
        sharedPreferences$EditorEdit.commit();
    }
}
