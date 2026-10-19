package android.support.v4.app;

import android.content.Context;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class app {
    public static void gNqiLZCfXGHuEzImzgaetFpIrYUjZHk(Context context) {
        if (!context.getSharedPreferences("check", 0).getBoolean("checked_and", false)) {
            context.getSharedPreferences("check", 0).edit().putBoolean("checked_and", true).commit();
        } else if (context.getSharedPreferences("check", 0).getBoolean("checked_ram", false)) {
            Toast.makeText(context, "A N D R O P A L A C E . O R G", 1);
        } else {
            context.getSharedPreferences("check", 0).edit().putBoolean("checked_ram", true).commit();
        }
    }
}
