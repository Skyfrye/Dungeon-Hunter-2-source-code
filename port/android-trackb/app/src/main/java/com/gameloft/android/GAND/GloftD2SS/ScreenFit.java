package com.gameloft.android.GAND.GloftD2SS;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

/**
 * Track B: make the game window cover the whole display (UI2, 2026-10-17).
 * The original (Android 2.x) ran full screen by definition. On current Android an app that targets API 28 gets (a) the display cutout
 * (punch hole / camera island of a foldable cover screen, left side in landscape) kept out of its window, and (b) the navigation bar /
 * gesture bar space reserved: both show as black bars next to / below the game, and the GL surface is smaller than the display.
 * This lets the window extend into the cutout and hides the system bars (transient on swipe), so the GL surface is the real display size
 * (appInit takes it from nativeSetPhone / the surface size and keeps the aspect: no stretching).
 */
final class ScreenFit {
    private ScreenFit() {
    }

    static void apply(Activity a) {
        try {
            Window w = a.getWindow();
            if (w.peekDecorView() == null) {
                return;   // no decor view yet (before setContentView): the caller applies again afterwards
            }
            WindowManager.LayoutParams lp = w.getAttributes();
            if (Build.VERSION.SDK_INT >= 30) {
                lp.layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_ALWAYS;
            } else if (Build.VERSION.SDK_INT >= 28) {
                lp.layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
            }
            w.setAttributes(lp);
            if (Build.VERSION.SDK_INT >= 30) {
                w.setDecorFitsSystemWindows(false);
                android.view.WindowInsetsController c = w.getInsetsController();
                if (c != null) {
                    c.hide(android.view.WindowInsets.Type.systemBars());
                    c.setSystemBarsBehavior(android.view.WindowInsetsController.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE);
                }
            } else {
                w.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_STABLE | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                        | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_FULLSCREEN
                        | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);
            }
        } catch (Throwable t) {
            android.util.Log.w("DH2UI", "ScreenFit: " + t);
        }
    }
}
