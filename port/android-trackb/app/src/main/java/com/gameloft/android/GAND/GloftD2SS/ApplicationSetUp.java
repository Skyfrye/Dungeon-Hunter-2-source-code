package com.gameloft.android.GAND.GloftD2SS;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;

public class ApplicationSetUp extends BroadcastReceiver {

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
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(f2a, 0).edit();
        editorEdit.putString("GA_DEBUG", string);
        editorEdit.commit();
    }
}
