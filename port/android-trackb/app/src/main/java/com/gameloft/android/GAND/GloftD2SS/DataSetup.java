package com.gameloft.android.GAND.GloftD2SS;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.content.res.AssetFileDescriptor;
import android.os.StatFs;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilterInputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/**
 * Track B addition (not in the original dex): launcher activity that makes the installed build playable without
 * adb steps. The original game expects its data (about 650 MB) in <external>/Android/data/<pkg>/files, put there by
 * Gameloft's downloader (GameInstaller), whose servers are gone. This activity looks for the user's own data archive
 * (Dungeon-Hunter-2-HD-v1-0-2-cache.zip, or an expansion file renamed to *.obb) and unpacks it into that directory,
 * then starts the game activity (DungeonHunter2) exactly as the DRM launcher would after a successful check.
 *
 * Searched, in this order: getObbDir() (/sdcard/Android/obb/<pkg>/*.obb|*.zip), getExternalFilesDir()'s parent
 * (/sdcard/Android/data/<pkg>/*.zip), /sdcard/Download/*.zip, /sdcard/*.zip. A zip whose entries start with
 * ".../files/" is unpacked relative to that "files/"; any other zip is unpacked as the content of files/ itself.
 * Savegames/settings inside the archive are skipped, so a fresh install starts a clean profile.
 */
public class DataSetup extends Activity {
    private static final int REQ_STORAGE = 77;
    private TextView text;
    private ProgressBar bar;
    private volatile boolean working;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setGravity(Gravity.CENTER);
        root.setBackgroundColor(Color.BLACK);
        root.setPadding(48, 48, 48, 48);
        text = new TextView(this);
        text.setTextColor(Color.WHITE);
        text.setTextSize(18);
        text.setGravity(Gravity.CENTER);
        bar = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        bar.setMax(1000);
        bar.setVisibility(View.GONE);
        root.addView(text);
        root.addView(bar, new LinearLayout.LayoutParams(600, LinearLayout.LayoutParams.WRAP_CONTENT));
        setContentView(root);
        File fd = filesDir();
        SessionLog.start(this);   // rotates the previous session to dh2_session_prev.txt and starts the rolling log
        CrashReport.install(fd);
        String crash = null;
        try {
            crash = CrashReport.collect(this, fd);
        } catch (Throwable t) {
            // diagnostics must never stop the launcher
        }
        if (crash != null) {
            showCrash(crash, fd);   // the user sends dh2_crash.txt; "Play anyway" continues with the normal flow
        } else {
            proceed();
        }
    }

    private void showCrash(String first, final File fd) {
        final String path = new File(fd, CrashReport.REPORT).getPath();
        android.widget.Toast.makeText(this, "Last run crashed: " + first, android.widget.Toast.LENGTH_LONG).show();
        new android.app.AlertDialog.Builder(this)
                .setTitle("The game crashed last time")
                .setMessage(first + "\n\nA full report was saved to\n" + path + "\n(adb pull it, or use Copy and paste it into a message).")
                .setCancelable(false)
                .setPositiveButton("Play anyway", new android.content.DialogInterface.OnClickListener() {
                    public void onClick(android.content.DialogInterface d, int w) {
                        proceed();
                    }
                })
                .setNeutralButton("Copy report", new android.content.DialogInterface.OnClickListener() {
                    public void onClick(android.content.DialogInterface d, int w) {
                        try {
                            String r = CrashReport.readReport(fd);
                            if (r != null && r.length() > 90000) {
                                r = r.substring(0, 90000);
                            }
                            ((android.content.ClipboardManager) getSystemService(CLIPBOARD_SERVICE)).setPrimaryClip(android.content.ClipData.newPlainText("dh2 crash", r));
                            android.widget.Toast.makeText(DataSetup.this, "Copied", android.widget.Toast.LENGTH_SHORT).show();
                        } catch (Throwable t) {
                            // ignore
                        }
                        proceed();
                    }
                })
                .show();
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (!working && text != null && text.getText().length() > 0 && !dataReady()) {
            proceed();   // the user may have copied the archive while this screen was open
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        proceed();
    }

    private File filesDir() {
        File f = getExternalFilesDir(null);
        if (f == null) {
            f = new File("/sdcard/Android/data/" + getPackageName() + "/files");
        }
        f.mkdirs();
        return f;
    }

    private boolean dataReady() {
        File files = filesDir();
        if (new File(files, ".dh2_extracting").exists()) {
            return false;
        }
        if (!new File(files, "d_o_w_n_l_o_a_d_e_d.txt").exists() || !new File(files, "data").isDirectory()) {
            return false;
        }
        // Port: a bundled data set with a stamp (build_release.py --sound-overlay) unpacks again once over older data, so an
        // update brings the added files (the user-state files are skipped by the unpacker and never deleted)
        String stamp = readManifest().get("stamp");
        return stamp == null || stamp.equals(readText(new File(files, ".dh2_stamp")));
    }

    private static String readText(File f) {
        try {
            BufferedReader r = new BufferedReader(new InputStreamReader(new java.io.FileInputStream(f), "UTF-8"));
            String l = r.readLine();
            r.close();
            return l;
        } catch (Throwable t) {
            return null;
        }
    }

    private void proceed() {
        if (working) {
            return;
        }
        if (dataReady()) {
            startGame();   // no pre-game session-report screen: logs stay in the files dir, shared from the in-game bubble
            return;
        }
        final boolean bundled = hasAsset("dh2data.zip");
        if (!bundled && Build.VERSION.SDK_INT >= 23 && Build.VERSION.SDK_INT < 30 /* Port (SDK1): READ_EXTERNAL_STORAGE no longer exposes the Download folder at targetSdk 30+ */ && checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != PackageManager.PERMISSION_GRANTED
                && getSharedPreferences("dh2setup", 0).getInt("asked", 0) == 0) {
            getSharedPreferences("dh2setup", 0).edit().putInt("asked", 1).commit();
            requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, REQ_STORAGE);
            return;
        }
        final File src = bundled ? null : findArchive();
        if (!bundled && src == null) {
            text.setText("Dungeon Hunter 2 data not found.\n\nCopy Dungeon-Hunter-2-HD-v1-0-2-cache.zip to\n"
                    + getObbDir().getPath() + "/ (as main." + versionCode() + "." + getPackageName() + ".obb)\nor to " + (Build.VERSION.SDK_INT >= 30 ? String.valueOf(getExternalFilesDir(null)) + "/ (Android 11+ hides Download from apps; Port (SDK1))" : "the Download folder") + ", then come back to this screen.");
            return;
        }
        final Map<String, String> man = readManifest();
        long need = 700L * 1024 * 1024;
        try {
            if (man.containsKey("bytes")) {
                need = Long.parseLong(man.get("bytes")) + 64L * 1024 * 1024;
            }
            StatFs fs = new StatFs(filesDir().getPath());
            long free = fs.getAvailableBytes();
            if (free < need) {
                text.setText("Not enough free storage.\n\nDungeon Hunter 2 needs about " + (need >> 20) + " MB of free space for its game data,\nbut only "
                        + (free >> 20) + " MB are available.\n\nFree up space, then come back to this screen.");
                return;
            }
        } catch (Throwable t) {
            // no free-space info: try anyway
        }
        working = true;
        bar.setVisibility(View.VISIBLE);
        text.setText("Preparing game data (first start only, about a minute)...");
        new Thread(new Runnable() {
            public void run() {
                String err = null;
                try {
                    extractStream(src, man, filesDir());
                } catch (Throwable t) {
                    err = t.toString();
                    try {
                        java.io.StringWriter sw = new java.io.StringWriter();
                        t.printStackTrace(new java.io.PrintWriter(sw));
                        FileOutputStream o = new FileOutputStream(new File(filesDir(), "dh2_java_crash.txt"));
                        o.write(("DataSetup extraction failed\n" + sw).getBytes("UTF-8"));
                        o.close();
                    } catch (Throwable x) {
                        // ignore
                    }
                }
                final String e = err;
                runOnUiThread(new Runnable() {
                    public void run() {
                        working = false;
                        if (e != null) {
                            text.setText("Could not unpack the game data:\n" + e + "\n\nCheck free storage, then reopen the game to retry.");
                        } else {
                            startGame();
                        }
                    }
                });
            }
        }).start();
    }

    private boolean hasAsset(String n) {
        try {
            getAssets().openFd(n).close();
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    private Map<String, String> readManifest() {
        Map<String, String> m = new HashMap<String, String>();
        try {
            BufferedReader r = new BufferedReader(new InputStreamReader(getAssets().open("dh2data.txt"), "UTF-8"));
            String l;
            while ((l = r.readLine()) != null) {
                int i = l.indexOf('=');
                if (i > 0) {
                    m.put(l.substring(0, i), l.substring(i + 1));
                }
            }
            r.close();
        } catch (Throwable t) {
            // no manifest (zip found on the device): no strict verification
        }
        return m;
    }

    /** Counts the compressed bytes consumed from the (stored) asset so the bar can follow without knowing the unpacked size. */
    private static class Counting extends FilterInputStream {
        long n;
        Counting(InputStream in) {
            super(in);
        }
        public int read() throws java.io.IOException {
            int r = super.read();
            if (r >= 0) n++;
            return r;
        }
        public int read(byte[] b, int o, int l) throws java.io.IOException {
            int r = super.read(b, o, l);
            if (r > 0) n += r;
            return r;
        }
    }

    private int versionCode() {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
        } catch (Exception e) {
            return 102;
        }
    }

    /** Port (UI6): the port's own UI art (assets/dh2port/*, e.g. the HUD size medallions) is copied to files/data/port/ so the
     *  native texture manager can load it like game data. Small files; copied when missing or when the size differs. */
    private void copyPortAssets() {
        try {
            String[] names = getAssets().list("dh2port");
            if (names == null) {
                return;
            }
            File dir = new File(filesDir(), "data/port");
            dir.mkdirs();
            for (String n : names) {
                File dst = new File(dir, n);
                java.io.InputStream in = getAssets().open("dh2port/" + n);
                try {
                    long size = in.available();
                    if (dst.exists() && dst.length() == size) {
                        continue;
                    }
                    java.io.FileOutputStream out = new java.io.FileOutputStream(dst);
                    try {
                        byte[] buf = new byte[65536];
                        int r;
                        while ((r = in.read(buf)) > 0) {
                            out.write(buf, 0, r);
                        }
                    } finally {
                        out.close();
                    }
                } finally {
                    in.close();
                }
            }
        } catch (Throwable t) {
            android.util.Log.w("DH2", "port assets: " + t);
        }
    }

    private boolean started;   // startGame runs once

    private void startGame() {
        copyPortAssets();
        if (started) {
            return;
        }
        started = true;
        // NEW_TASK|CLEAR_TASK: never resume a stale DungeonHunter2 task left over from a killed process (e.g. after installing over a running game):
        // the original relies on its activity flow never resuming before nativeInit has built the Application.
        Intent game = new Intent(this, DungeonHunter2.class);
        game.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
        startActivity(game);
        finish();
    }

    private File findArchive() {
        List<File> dirs = new ArrayList<File>();
        dirs.add(getObbDir());
        File ext = getExternalFilesDir(null);
        if (ext != null && ext.getParentFile() != null) {
            dirs.add(ext.getParentFile());
        }
        File sd = Environment.getExternalStorageDirectory();
        dirs.add(new File(sd, "Download"));
        dirs.add(sd);
        for (File d : dirs) {
            File[] list = d == null ? null : d.listFiles();
            if (list == null) {
                continue;
            }
            for (File f : list) {
                String n = f.getName().toLowerCase();
                if (f.isFile() && (n.endsWith(".obb") || n.endsWith(".zip")) && f.length() > 50L * 1024 * 1024) {
                    if (looksLikeData(f)) {
                        return f;
                    }
                }
            }
        }
        return null;
    }

    private static boolean looksLikeData(File f) {
        ZipFile z = null;
        try {
            z = new ZipFile(f);
            Enumeration<? extends ZipEntry> en = z.entries();
            int n = 0;
            while (en.hasMoreElements() && n++ < 200000) {
                String name = en.nextElement().getName();
                if (name.endsWith("d_o_w_n_l_o_a_d_e_d.txt") || name.contains("files/data/") || name.startsWith("data/3d/")) {
                    return true;
                }
            }
        } catch (Exception e) {
            // not a zip
        } finally {
            try {
                if (z != null) {
                    z.close();
                }
            } catch (Exception e) {
            }
        }
        return false;
    }

    private void extractStream(File archive, Map<String, String> man, File dest) throws Exception {
        File flag = new File(dest, ".dh2_extracting");
        flag.createNewFile();
        // the source: the asset bundled in the APK (stored, streamed, never in memory) or a zip found on the device
        long rawTotal;
        InputStream raw;
        if (archive == null) {
            AssetFileDescriptor fd = getAssets().openFd("dh2data.zip");
            rawTotal = Math.max(fd.getLength(), 1);
            fd.close();
            raw = getAssets().open("dh2data.zip", android.content.res.AssetManager.ACCESS_STREAMING);
        } else {
            rawTotal = Math.max(archive.length(), 1);
            raw = new FileInputStream(archive);
        }
        Counting cin = new Counting(new java.io.BufferedInputStream(raw, 1 << 16));
        ZipInputStream zin = new ZipInputStream(cin);
        String prefix = man.containsKey("prefix") ? man.get("prefix") : null;
        long files = 0, bytes = 0;
        try {
            String destCanon = dest.getCanonicalPath() + File.separator;
            byte[] buf = new byte[1 << 16];
            int lastPct = -1;
            ZipEntry e;
            while ((e = zin.getNextEntry()) != null) {
                String name = e.getName();
                if (prefix == null) {
                    int i = name.indexOf("/files/");
                    prefix = i >= 0 ? name.substring(0, i + 7) : "";
                }
                if (prefix.length() > 0) {
                    if (!name.startsWith(prefix)) {
                        continue;
                    }
                    name = name.substring(prefix.length());
                }
                if (name.length() == 0) {
                    continue;
                }
                File out = new File(dest, name);
                if (!out.getCanonicalPath().startsWith(destCanon)) {
                    continue;   // path traversal
                }
                if (e.isDirectory()) {
                    out.mkdirs();
                    continue;
                }
                if (name.indexOf('/') < 0 && isUserState(name)) {
                    continue;   // the repacker's injected save/settings: start with a clean profile
                }
                out.getParentFile().mkdirs();
                OutputStream os = new FileOutputStream(out);
                try {
                    int r;
                    while ((r = zin.read(buf)) > 0) {
                        os.write(buf, 0, r);
                        bytes += r;
                    }
                } finally {
                    os.close();
                }
                files++;
                final int pct = (int) (cin.n * 1000 / rawTotal);
                if (pct != lastPct) {
                    lastPct = pct;
                    runOnUiThread(new Runnable() {
                        public void run() {
                            bar.setProgress(pct);
                        }
                    });
                }
            }
        } finally {
            zin.close();
        }
        if (man.containsKey("files") && (files != Long.parseLong(man.get("files")) || bytes != Long.parseLong(man.get("bytes")))) {
            throw new java.io.IOException("verification failed: unpacked " + files + " files / " + bytes + " bytes, expected "
                    + man.get("files") + " / " + man.get("bytes") + " (storage full?)");
        }
        if (!new File(dest, "d_o_w_n_l_o_a_d_e_d.txt").exists() || !new File(dest, "data").isDirectory()) {
            throw new java.io.IOException("verification failed: data marker missing");
        }
        if (archive == null && man.containsKey("stamp")) {
            OutputStream so = new FileOutputStream(new File(dest, ".dh2_stamp"));
            so.write(man.get("stamp").getBytes("UTF-8"));
            so.close();
        }
        flag.delete();
    }

    /** Files of the developer's profile inside the cache zip: savegames, checkpoints and the settings (they pin the UI language). */
    private static boolean isUserState(String n) {
        return n.endsWith(".savegame") || n.endsWith(".bak") || n.contains(".checkpoint") || n.equals("dh2_settings.savegame") || n.equals("InsTime");
    }
}
