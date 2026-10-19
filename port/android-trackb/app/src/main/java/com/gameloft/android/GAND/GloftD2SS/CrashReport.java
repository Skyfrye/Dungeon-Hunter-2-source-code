package com.gameloft.android.GAND.GloftD2SS;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Track B addition, always on: makes a crash on a device we cannot attach to diagnosable.
 *  - install(): an uncaught-Java-exception handler that writes dh2_java_crash.txt into the app's external files dir.
 *  - the native side (libStormGLOFT stub) writes dh2_native_crash.txt there from its SIGSEGV/SIGBUS/SIGABRT handler.
 *  - collect(): at the next launch, builds dh2_crash.txt from those two files, the process exit reasons of the last runs
 *    (ApplicationExitInfo, API 30+, including the native tombstone's readable strings) and the tail of the app's own logcat
 *    (tags DH2CRASH, DH2GL, DH2GLINFO, DH2STDOUT, AndroidRuntime, DEBUG, libc, ...). Returns the first crash line, or null when
 *    the last run left no crash evidence.
 */
final class CrashReport {
    static final String REPORT = "dh2_crash.txt";

    private CrashReport() {
    }

    static void install(final File filesDir) {
        try {
            final Thread.UncaughtExceptionHandler prev = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
                public void uncaughtException(Thread t, Throwable e) {
                    try {
                        StringWriter sw = new StringWriter();
                        e.printStackTrace(new PrintWriter(sw));
                        FileOutputStream o = new FileOutputStream(new File(filesDir, "dh2_java_crash.txt"));
                        o.write(("thread " + t.getName() + "\n" + sw).getBytes("UTF-8"));
                        o.close();
                    } catch (Throwable x) {
                        // nothing more we can do
                    }
                    if (prev != null) {
                        prev.uncaughtException(t, e);
                    }
                }
            });
        } catch (Throwable t) {
            // ignore
        }
    }

    private static String read(File f, int max) {
        try {
            InputStream in = new FileInputStream(f);
            ByteArrayOutputStream b = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int r;
            while ((r = in.read(buf)) > 0 && b.size() < max) {
                b.write(buf, 0, r);
            }
            in.close();
            return b.toString("UTF-8");
        } catch (Throwable t) {
            return null;
        }
    }

    private static String firstLine(String s) {
        if (s == null) {
            return null;
        }
        for (String l : s.split("\n")) {
            if (l.trim().length() > 0) {
                return l.trim();
            }
        }
        return null;
    }

    private static List<String> logcat() {
        List<String> out = new ArrayList<String>();
        try {
            Process p = new ProcessBuilder("logcat", "-d", "-v", "threadtime", "-t", "6000").redirectErrorStream(true).start();
            BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream(), "UTF-8"));
            String l;
            while ((l = r.readLine()) != null) {
                out.add(l);
            }
            r.close();
        } catch (Throwable t) {
            out.add("(logcat unavailable: " + t + ")");
        }
        return out;
    }

    /** Returns the first crash line when the previous run crashed (and writes dh2_crash.txt), else null. */
    static String collect(Context c, File filesDir) {
        StringBuilder sb = new StringBuilder();
        String first = null;
        boolean crashed = false;
        sb.append("Dungeon Hunter 2 (Track B) crash report, ").append(new Date()).append('\n');
        sb.append("device: ").append(Build.MANUFACTURER).append(' ').append(Build.MODEL).append(" (").append(Build.DEVICE).append("), Android ")
                .append(Build.VERSION.RELEASE).append(" API ").append(Build.VERSION.SDK_INT).append(", abis ");
        for (String a : Build.SUPPORTED_ABIS) {
            sb.append(a).append(' ');
        }
        sb.append("\nfingerprint: ").append(Build.FINGERPRINT).append('\n');
        File nat = new File(filesDir, "dh2_native_crash.txt");
        File jav = new File(filesDir, "dh2_java_crash.txt");
        File trm = new File(filesDir, "dh2_term.txt");
        String ts = trm.exists() ? read(trm, 200000) : null;
        if (ts != null && ts.length() > 0) {
            crashed = true;
            first = firstLine(ts);   // "uncaught exception of type ..."
            sb.append("\n=== uncaught C++ exception (std::terminate handler: type, what(), throw-site backtrace; offsets into libDungeonHunter2.so) ===\n").append(ts).append('\n');
        }
        String ns = nat.exists() ? read(nat, 200000) : null;
        String js = jav.exists() ? read(jav, 200000) : null;
        if (ns != null && ns.length() > 0) {
            crashed = true;
            if (first == null) {
                first = firstLine(ns);
            }
            sb.append("\n=== native crash (signal handler) ===\n").append(ns).append("\n(offsets: llvm-addr2line -e libdh2-unstripped.so 0x<off>)\n");
        }
        if (js != null && js.length() > 0) {
            crashed = true;
            if (first == null) {
                first = firstLine(js.substring(js.indexOf('\n') + 1));
            }
            sb.append("\n=== uncaught Java exception ===\n").append(js).append('\n');
        }
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                ActivityManager am = (ActivityManager) c.getSystemService(Context.ACTIVITY_SERVICE);
                List<ApplicationExitInfo> list = am.getHistoricalProcessExitReasons(c.getPackageName(), 0, 6);
                sb.append("\n=== previous process exits (newest first) ===\n");
                boolean newest = true;
                for (ApplicationExitInfo e : list) {
                    sb.append(new Date(e.getTimestamp())).append(" reason=").append(e.getReason()).append(" status=").append(e.getStatus())
                            .append(" importance=").append(e.getImportance()).append(" desc=").append(e.getDescription()).append('\n');
                    int rs = e.getReason();
                    if (newest && (rs == ApplicationExitInfo.REASON_CRASH_NATIVE || rs == ApplicationExitInfo.REASON_CRASH || rs == ApplicationExitInfo.REASON_SIGNALED
                            || rs == ApplicationExitInfo.REASON_INITIALIZATION_FAILURE || rs == ApplicationExitInfo.REASON_LOW_MEMORY)) {
                        crashed = true;
                        if (first == null) {
                            first = "process exit reason " + rs + " (" + e.getDescription() + ") status " + e.getStatus();
                        }
                        try {
                            InputStream t = e.getTraceInputStream();
                            if (t != null) {
                                ByteArrayOutputStream b = new ByteArrayOutputStream();
                                byte[] buf = new byte[8192];
                                int r;
                                while ((r = t.read(buf)) > 0 && b.size() < 4000000) {
                                    b.write(buf, 0, r);
                                }
                                t.close();
                                byte[] d = b.toByteArray();
                                try {
                                    FileOutputStream o = new FileOutputStream(new File(filesDir, "dh2_tombstone.bin"));
                                    o.write(d);
                                    o.close();
                                } catch (Throwable x) {
                                    // ignore
                                }
                                sb.append("--- trace/tombstone (").append(d.length).append(" bytes, saved as dh2_tombstone.bin), readable strings ---\n");
                                StringBuilder run = new StringBuilder();
                                int lines = 0;
                                for (int i = 0; i <= d.length && lines < 400; i++) {
                                    int ch = i < d.length ? (d[i] & 0xff) : 0;
                                    if (ch >= 32 && ch < 127) {
                                        run.append((char) ch);
                                    } else {
                                        if (run.length() >= 5) {
                                            sb.append(run).append('\n');
                                            lines++;
                                        }
                                        run.setLength(0);
                                    }
                                }
                            }
                        } catch (Throwable x) {
                            sb.append("(no trace: ").append(x).append(")\n");
                        }
                    }
                    newest = false;
                }
            } catch (Throwable t) {
                sb.append("(exit info unavailable: ").append(t).append(")\n");
            }
        }
        List<String> log = logcat();
        List<String> keep = new ArrayList<String>();
        for (String l : log) {
            if (l.contains("DH2") || l.contains("AndroidRuntime") || l.contains(" DEBUG ") || l.contains("libc") || l.contains("FATAL") || l.contains("Fatal signal")
                    || l.contains("tombstone") || l.contains("GloftD2SS") || l.contains("DungeonHunter") || l.contains("EGL") || l.contains("OpenGLRenderer")
                    || l.contains("SELinux") || l.contains("avc:")) {
                keep.add(l);
            }
        }
        if (first == null) {
            for (String l : keep) {
                if (l.contains("Fatal signal") || l.contains("FATAL EXCEPTION") || l.contains("DH2CRASH signal")) {
                    first = l.substring(Math.min(l.length(), 30));
                    crashed = true;
                    break;
                }
            }
        }
        sb.append("\n=== logcat of this app (filtered, last ").append(Math.min(keep.size(), 400)).append(" lines) ===\n");
        for (int i = Math.max(0, keep.size() - 400); i < keep.size(); i++) {
            sb.append(keep.get(i)).append('\n');
        }
        sb.append("\n=== logcat raw tail (last 80 lines) ===\n");
        for (int i = Math.max(0, log.size() - 80); i < log.size(); i++) {
            sb.append(log.get(i)).append('\n');
        }
        if (!crashed) {
            return null;   // keep the previous report (if any); nothing new happened
        }
        try {
            FileOutputStream o = new FileOutputStream(new File(filesDir, REPORT));
            o.write(sb.toString().getBytes("UTF-8"));
            o.close();
            nat.renameTo(new File(filesDir, "dh2_native_crash.old"));
            jav.renameTo(new File(filesDir, "dh2_java_crash.old"));
            trm.renameTo(new File(filesDir, "dh2_term.old"));
        } catch (Throwable t) {
            // cannot write: still report the line
        }
        return first != null ? first : "the previous run ended abnormally";
    }

    static String readReport(File filesDir) {
        return read(new File(filesDir, REPORT), 300000);
    }
}
