package com.gameloft.android.GAND.GloftD2SS;

import android.content.Context;
import android.os.Build;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/**
 * Track B addition, always on: a rolling session log in the app's external files dir so the user can send what happened during play even
 * when nothing crashed.
 *   dh2_session.txt        the current session (header + our own process's logcat lines, filtered; capped, see MAX)
 *   dh2_session_part1.txt  the earlier part of the current session once it outgrew the cap (rotated once)
 *   dh2_session_prev.txt   the previous session
 * Kept lines: every DH2* tag except DH2STDOUT (the game's stdout, kept only for menu / loading / error / file-miss markers), libc++abi,
 * AndroidRuntime, DEBUG, libc, and any error/fatal line of this pid. Flushed every 5 s, on pause/stop, and after every user mark.
 * buildBundle() zips these plus the crash files (dh2_crash.txt, dh2_term.txt, dh2_prof.txt, dh2_native_crash.*, dh2_java_crash.*) into dh2_report.zip.
 */
public final class SessionLog {
    static final long MAX = 5L * 1024 * 1024;
    private static final String[] KEYS = {"PushMenu", "Loading", "LoadScene", "Could not open", "rror", "arning", "WARNING", "GSInit", "Level", "level", "Menu",
        "Scene", "Interrupt", "Pause", "Resume", "Exception", "fail", "Fail", "Save", "Quest", "Boss", "Dungeon", "Died", "Death"};
    private static final Object LOCK = new Object();
    private static boolean started;
    private static File dir;
    private static PrintWriter out;
    private static long written;
    private static int marks;

    private SessionLog() {
    }

    static File dir() {
        return dir;
    }

    public static void start(Context c) {
        synchronized (LOCK) {
            if (started) {
                return;
            }
            File d = c.getExternalFilesDir(null);
            if (d == null) {
                return;
            }
            d.mkdirs();
            dir = d;
            started = true;
            try {
                File cur = new File(d, "dh2_session.txt");
                File prev = new File(d, "dh2_session_prev.txt");
                if (cur.exists()) {
                    prev.delete();
                    cur.renameTo(prev);
                }
                new File(d, "dh2_session_part1.txt").delete();
                File mk = new File(d, "marks");
                File mkPrev = new File(d, "marks_prev");
                deleteTree(mkPrev);
                if (mk.exists()) {
                    mk.renameTo(mkPrev);
                }
                out = new PrintWriter(new FileWriter(cur, false));
                written = 0;
                String h = header(c);
                out.print(h);
                written += h.length();
                out.flush();
            } catch (Throwable t) {
                out = null;
            }
        }
        Thread reader = new Thread(new Runnable() {
            public void run() {
                readLogcat();
            }
        }, "dh2-session-log");
        reader.setDaemon(true);
        reader.start();
        Thread flusher = new Thread(new Runnable() {
            public void run() {
                for (;;) {
                    try {
                        Thread.sleep(5000);
                    } catch (InterruptedException e) {
                        return;
                    }
                    flush();
                }
            }
        }, "dh2-session-flush");
        flusher.setDaemon(true);
        flusher.start();
    }

    static String header(Context c) {
        StringBuilder sb = new StringBuilder();
        sb.append("Dungeon Hunter 2 (Track B) session log, started ").append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss Z", Locale.US).format(new Date())).append('\n');
        sb.append("device: ").append(Build.MANUFACTURER).append(' ').append(Build.MODEL).append(" (").append(Build.DEVICE).append("), Android ").append(Build.VERSION.RELEASE)
                .append(" API ").append(Build.VERSION.SDK_INT).append(", abis ");
        for (String a : Build.SUPPORTED_ABIS) {
            sb.append(a).append(' ');
        }
        sb.append('\n').append("fingerprint: ").append(Build.FINGERPRINT).append('\n');
        try {
            sb.append("app: ").append(c.getPackageName()).append(" version ").append(c.getPackageManager().getPackageInfo(c.getPackageName(), 0).versionName).append('\n');
        } catch (Throwable t) {
            // ignore
        }
        sb.append("pid: ").append(android.os.Process.myPid()).append("\n\n");
        return sb.toString();
    }

    private static boolean keep(String line) {
        // threadtime: "MM-DD HH:MM:SS.mmm  PID  TID L TAG: message"
        String[] p = line.split(" +", 6);
        if (p.length < 6) {
            return false;
        }
        String level = p[4];
        String rest = p[5];
        int colon = rest.indexOf(':');
        String tag = colon > 0 ? rest.substring(0, colon).trim() : rest.trim();
        if (tag.startsWith("DH2")) {
            if (!tag.equals("DH2STDOUT")) {
                return true;
            }
            String msg = colon > 0 ? rest.substring(colon + 1) : "";
            if (msg.trim().length() < 3) {
                return false;
            }
            for (String k : KEYS) {
                if (msg.contains(k)) {
                    return true;
                }
            }
            return false;
        }
        if (tag.equals("libc++abi") || tag.equals("AndroidRuntime") || tag.equals("DEBUG") || tag.equals("libc") || tag.equals("DungeonHunter2")) {
            return true;
        }
        return level.equals("E") || level.equals("F");
    }

    private static void readLogcat() {
        try {
            Process p = new ProcessBuilder("logcat", "-v", "threadtime", "--pid=" + android.os.Process.myPid()).redirectErrorStream(true).start();
            BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream(), "UTF-8"));
            String l;
            while ((l = r.readLine()) != null) {
                if (keep(l)) {
                    append(l);
                }
            }
        } catch (Throwable t) {
            append("(session logger: logcat unavailable: " + t + ")");
        }
    }

    static void append(String line) {
        synchronized (LOCK) {
            if (out == null) {
                return;
            }
            if (line.length() > 1500) {
                line = line.substring(0, 1500) + "...";
            }
            out.println(line);
            written += line.length() + 1;
            if (written > MAX) {
                rotate();
            }
        }
    }

    private static void rotate() {
        try {
            out.close();
            File cur = new File(dir, "dh2_session.txt");
            File part = new File(dir, "dh2_session_part1.txt");
            part.delete();
            cur.renameTo(part);
            out = new PrintWriter(new FileWriter(cur, false));
            written = 0;
            out.println("(continued; earlier part in dh2_session_part1.txt)");
        } catch (Throwable t) {
            out = null;
        }
    }

    public static void flush() {
        synchronized (LOCK) {
            if (out != null) {
                out.flush();
            }
        }
    }

    static void deleteTree(File f) {
        File[] k = f.listFiles();
        if (k != null) {
            for (File x : k) {
                deleteTree(x);
            }
        }
        f.delete();
    }

    /** Writes a timestamped marker the developer can search for; returns its number. */
    public static int mark() {
        return mark("", null);
    }

    /**
     * User issue report: appends "USER MARK #n time: text" to dh2_session.txt and, when a screenshot is given, writes it to marks/mark_n.png.
     * Returns the mark number.
     */
    public static int mark(String text, android.graphics.Bitmap shot) {
        int n;
        synchronized (LOCK) {
            n = ++marks;
        }
        String shotNote = "(no screenshot)";
        if (shot != null && dir != null) {
            try {
                File md = new File(dir, "marks");
                md.mkdirs();
                FileOutputStream fo = new FileOutputStream(new File(md, "mark_" + n + ".png"));
                shot.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, fo);
                fo.close();
                shotNote = "[screenshot marks/mark_" + n + ".png " + shot.getWidth() + "x" + shot.getHeight() + "]";
            } catch (Throwable t) {
                shotNote = "(screenshot failed: " + t + ")";
            }
        }
        String t = text == null ? "" : text.replace('\r', ' ').replace('\n', ' ').trim();
        append("USER MARK #" + n + " " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US).format(new Date()) + ": " + (t.length() == 0 ? "(no text)" : t) + " " + shotNote);
        flush();
        return n;
    }

    private static void addTree(ZipOutputStream z, File f, String name) {
        if (f.isDirectory()) {
            File[] k = f.listFiles();
            if (k != null) {
                for (File x : k) {
                    addTree(z, x, name + "/" + x.getName());
                }
            }
        } else {
            addFile(z, f, name);
        }
    }

    private static void marksFrom(File f, String label, StringBuilder sb) {
        if (!f.exists()) {
            return;
        }
        try {
            BufferedReader r = new BufferedReader(new InputStreamReader(new FileInputStream(f), "UTF-8"));
            String l;
            while ((l = r.readLine()) != null) {
                if (l.startsWith("USER MARK #")) {
                    sb.append("  [").append(label).append("] ").append(l).append('\n');
                }
            }
            r.close();
        } catch (Throwable t) {
            // ignore
        }
    }

    /** README.txt text: the marks (user issue reports) of the current and previous session first, then what the zip holds. */
    static String readme(File d) {
        StringBuilder m = new StringBuilder();
        marksFrom(new File(d, "dh2_session_part1.txt"), "this session, earlier part", m);
        marksFrom(new File(d, "dh2_session.txt"), "this session", m);
        marksFrom(new File(d, "dh2_session_prev.txt"), "previous session", m);
        StringBuilder sb = new StringBuilder();
        sb.append("Dungeon Hunter 2 (Track B) report\n\nUSER MARKS (issues reported by the player; screenshot of each in marks/ for this session, marks_prev/ for the previous one,\n");
        sb.append("file mark_<n>.png = USER MARK #n of that session):\n");
        sb.append(m.length() == 0 ? "  (none)\n" : m.toString());
        sb.append("\nFiles: dh2_header.txt (device), dh2_session.txt (current session; search 'USER MARK'), dh2_session_part1.txt (earlier part of a long session),\n");
        sb.append("dh2_session_prev.txt (previous session), dh2_crash/term/prof/native_crash/java_crash files when present, marks/ and marks_prev/ (screenshots).\n");
        return sb.toString();
    }

    private static void addFile(ZipOutputStream z, File f, String name) {
        try {
            if (!f.exists() || f.length() == 0) {
                return;
            }
            z.putNextEntry(new ZipEntry(name));
            InputStream in = new FileInputStream(f);
            byte[] b = new byte[65536];
            int n;
            while ((n = in.read(b)) > 0) {
                z.write(b, 0, n);
            }
            in.close();
            z.closeEntry();
        } catch (Throwable t) {
            // skip an unreadable file
        }
    }

    /** dh2_report.zip in the files dir: the session logs plus every crash / profile file present. Null if the files dir is unknown. */
    public static File buildBundle(Context c) {
        flush();
        File d = dir != null ? dir : c.getExternalFilesDir(null);
        if (d == null) {
            return null;
        }
        File zip = new File(d, "dh2_report.zip");
        try {
            ZipOutputStream z = new ZipOutputStream(new FileOutputStream(zip));
            z.putNextEntry(new ZipEntry("README.txt"));
            z.write(readme(d).getBytes("UTF-8"));
            z.closeEntry();
            z.putNextEntry(new ZipEntry("dh2_header.txt"));
            z.write(header(c).getBytes("UTF-8"));
            z.closeEntry();
            String[] names = {"dh2_session.txt", "dh2_session_part1.txt", "dh2_session_prev.txt", "dh2_crash.txt", "dh2_term.txt", "dh2_term.old", "dh2_prof.txt",
                "dh2_native_crash.txt", "dh2_native_crash.old", "dh2_java_crash.txt", "dh2_java_crash.old"};
            for (String n : names) {
                addFile(z, new File(d, n), n);
            }
            addTree(z, new File(d, "marks"), "marks");
            addTree(z, new File(d, "marks_prev"), "marks_prev");
            z.close();
        } catch (Throwable t) {
            return null;
        }
        return zip;
    }

    /** First ~4 KB of the newest session log (or the previous one when the current has only its header), for the clipboard. */
    public static String summary(Context c) {
        flush();
        File d = dir != null ? dir : c.getExternalFilesDir(null);
        List<File> cand = new ArrayList<File>();
        if (d != null) {
            cand.add(new File(d, "dh2_session_prev.txt"));
            cand.add(new File(d, "dh2_session.txt"));
        }
        StringBuilder sb = new StringBuilder();
        for (File f : cand) {
            if (f.exists() && f.length() > 0) {
                try {
                    InputStream in = new FileInputStream(f);
                    byte[] b = new byte[4096];
                    int n = in.read(b);
                    in.close();
                    if (n > 0) {
                        sb.append("== ").append(f.getName()).append(" ==\n").append(new String(b, 0, n, "UTF-8")).append('\n');
                    }
                } catch (Throwable t) {
                    // ignore
                }
                if (sb.length() >= 4000) {
                    break;
                }
            }
        }
        return sb.length() > 0 ? sb.substring(0, Math.min(sb.length(), 4096)) : "(no session log yet)";
    }
}
