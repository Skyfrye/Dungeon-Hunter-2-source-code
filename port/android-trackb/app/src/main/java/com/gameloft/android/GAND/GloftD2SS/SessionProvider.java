package com.gameloft.android.GAND.GloftD2SS;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.OpenableColumns;
import java.io.File;
import java.io.FileNotFoundException;

/** Track B addition: serves dh2_report.zip (and only that) to the share chooser; a minimal stand-in for androidx FileProvider. */
public class SessionProvider extends ContentProvider {
    public static final String AUTHORITY = "com.gameloft.android.GAND.GloftD2SS.reports";
    public static final String NAME = "dh2_report.zip";

    private File report() {
        File d = getContext().getExternalFilesDir(null);
        return d == null ? null : new File(d, NAME);
    }

    @Override
    public boolean onCreate() {
        return true;
    }

    @Override
    public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        File f = report();
        if (f == null || !NAME.equals(uri.getLastPathSegment()) || !f.exists()) {
            throw new FileNotFoundException(String.valueOf(uri));
        }
        return ParcelFileDescriptor.open(f, ParcelFileDescriptor.MODE_READ_ONLY);
    }

    @Override
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        File f = report();
        MatrixCursor c = new MatrixCursor(new String[]{OpenableColumns.DISPLAY_NAME, OpenableColumns.SIZE});
        c.addRow(new Object[]{NAME, f != null ? f.length() : 0L});
        return c;
    }

    @Override
    public String getType(Uri uri) {
        return "application/zip";
    }

    @Override
    public Uri insert(Uri uri, ContentValues values) {
        return null;
    }

    @Override
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }
}
