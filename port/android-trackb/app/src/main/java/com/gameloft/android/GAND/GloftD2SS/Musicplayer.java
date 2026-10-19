package com.gameloft.android.GAND.GloftD2SS;

import android.database.Cursor;
import android.provider.MediaStore;

public class Musicplayer {

    static MediaPlayList f30a;
    static String[] b;
    static int c;
    private static final String[] d = {"_id", "_data", "_display_name", "_size", "_data"};

    public static void ChangeMusic(int i) {
        MediaPlayList mediaPlayList = f30a;
        int iChangeMusic = MediaPlayList.ChangeMusic(i);
        if (iChangeMusic == -1) {
            return;
        }
        MediaPlayList mediaPlayList2 = f30a;
        playAList(MediaPlayList.GetCurrentPlaylist(), iChangeMusic);
    }

    public static int GetNumPlaylists() {
        return b.length;
    }

    public static int GetNumSongs(int i) {
        if (GetNumPlaylists() == 0) {
            return -1;
        }
        MediaPlayList mediaPlayList = f30a;
        Cursor cursorManagedQuery = DungeonHunter2.o.managedQuery(MediaStore.Audio.Playlists.Members.getContentUri("external", MediaPlayList.getListID(i)), d, null, null, null);
        cursorManagedQuery.moveToPosition(i);
        int count = cursorManagedQuery.getCount();
        if (cursorManagedQuery == null) {
            return count;
        }
        cursorManagedQuery.close();
        return count;
    }

    public static byte[] GetPlayListName(int i) {
        return (GetNumPlaylists() == 0 || b[i] == null) ? new String("").getBytes() : b[i].getBytes();
    }

    public static byte[] GetSongName(int i, int i2) {
        if (GetNumSongs(i) == -1 || GetNumSongs(i) == 0) {
            return new String("").getBytes();
        }
        MediaPlayList mediaPlayList = f30a;
        Cursor cursorManagedQuery = DungeonHunter2.o.managedQuery(MediaStore.Audio.Playlists.Members.getContentUri("external", MediaPlayList.getListID(i)), d, null, null, null);
        cursorManagedQuery.moveToPosition(i2);
        String string = cursorManagedQuery.getString(4);
        String strSubstring = string.substring(string.lastIndexOf("/") + 1);
        if (cursorManagedQuery != null) {
            cursorManagedQuery.close();
        }
        return strSubstring.getBytes();
    }

    public static int Getisplaying() {
        return (MediaPlayList.d == null || !MediaPlayList.d.isPlaying()) ? 0 : 1;
    }

    public static void PauseMusicBG() {
        MediaPlayList mediaPlayList = f30a;
        MediaPlayList mediaPlayList2 = f30a;
        MediaPlayList.l = MediaPlayList.j;
        MediaPlayList mediaPlayList3 = f30a;
        MediaPlayList.pauseMusic();
    }

    public static void PlayBGMusic() {
        MediaPlayList mediaPlayList = f30a;
        playAList(MediaPlayList.GetCurrentPlaylist());
    }

    public static void ResumeMusicBG() {
        MediaPlayList mediaPlayList = f30a;
        MediaPlayList.resumeMusic();
    }

    public static void SetPlaylist(int i) {
        MediaPlayList mediaPlayList = f30a;
        MediaPlayList.SetPlaylist(i);
    }

    public static void StopMusicBG() {
        MediaPlayList mediaPlayList = f30a;
        MediaPlayList.stopMusic();
    }

    public static void initMediaList() {
        // Port (SDK1): at targetSdk 30+ MediaStore rejects the "*" projection (IllegalArgumentException: Invalid column *) and from 33 needs
        // READ_MEDIA_AUDIO (SecurityException). The user's playlists are optional, so fall back to an empty list - what the old query
        // returned on a device without any playlist (count 0: nothing is read from the cursor).
        Cursor cursorManagedQuery;
        try {
            cursorManagedQuery = DungeonHunter2.o.managedQuery(MediaStore.Audio.Playlists.EXTERNAL_CONTENT_URI, new String[]{"_id", "name"}, null, null, null);
        } catch (RuntimeException e) {
            android.util.Log.w("DH2", "playlist query: " + e);
            cursorManagedQuery = new android.database.MatrixCursor(new String[]{"_id", "name"});
        }
        f30a = new MediaPlayList(cursorManagedQuery);
        b = MediaPlayList.GetPlayListName();
        if (cursorManagedQuery != null) {
            cursorManagedQuery.close();
        }
        nativeInitplayer();
    }

    public static native void nativeDisplayMusicTitle(byte[] bArr);

    public static native void nativeInitplayer();

    public static void playAList(int i) {
        nativeDisplayMusicTitle(GetSongName(i, 0));
        playAList(i, 0);
    }

    public static void playAList(int i, int i2) {
        MediaPlayList mediaPlayList = f30a;
        int listID = MediaPlayList.getListID(i);
        if (listID == -1) {
            return;
        }
        Cursor cursorManagedQuery;
        try {
            cursorManagedQuery = DungeonHunter2.o.managedQuery(MediaStore.Audio.Playlists.Members.getContentUri("external", listID), d, null, null, null);
        } catch (RuntimeException e) {   // Port (SDK1): targetSdk 30+/33+ MediaStore restrictions
            android.util.Log.w("DH2", "playlist members query: " + e);
            cursorManagedQuery = null;
        }
        if (cursorManagedQuery != null) {
            MediaPlayList mediaPlayList2 = f30a;
            MediaPlayList.playAList(cursorManagedQuery, i2);
            cursorManagedQuery.close();
        }
    }
}
