package com.gameloft.android.GAND.GloftD2SS.GLUtils;

import java.util.Timer;
import java.util.TimerTask;

public class ConnectionTimer extends TimerTask {

    private static Timer f11a;

    public static void start(long j) {
        Timer timer = new Timer();
        f11a = timer;
        timer.schedule(new ConnectionTimer(), j);
    }

    public static void stop() {
        f11a.cancel();
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        HTTP whttp = XPlayer.getWHTTP();
        whttp.b();
        whttp.v = true;
        whttp.u = false;
    }
}
