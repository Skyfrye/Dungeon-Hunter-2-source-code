package com.gameloft.android.GAND.GloftD2SS.installer;

import android.content.Context;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.gameloft.android.GAND.GloftD2SS.bu;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f117a;
    final /* synthetic */ int b;
    final /* synthetic */ Context c;
    final /* synthetic */ GameInstaller d;

    b(GameInstaller gameInstaller, int i, int i2, Context context) {
        this.d = gameInstaller;
        this.f117a = i;
        this.b = i2;
        this.c = context;
    }

    /* JADX DEBUG: TODO: convert one arg to string using `String.valueOf()`, args: (wrap int:CAST) */
    /* JADX DEBUG: TODO: convert one arg to string using `String.valueOf()`, args: (wrap long:TERNARY) */
    @Override // java.lang.Runnable
    public final void run() {
        try {
            GameInstaller.access$402(this.d, this.f117a);
            this.d.setContentView(this.f117a);
            if (this.b != GameInstaller.access$500(this.d)) {
                GameInstaller.access$602(this.d, GameInstaller.access$500(this.d));
                GameInstaller.access$502(this.d, this.b);
            }
            switch (this.b) {
                case 0:
                    GameInstaller.access$700(this.d, 2131427336, false);
                    GameInstaller.access$700(this.d, 2131427332, false);
                    GameInstaller.access$700(this.d, 2131427334, false);
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034231, new Object[]{this.c}));
                    break;
                case 1:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    this.d.a().add((Button) this.d.findViewById(2131427334));
                    GameInstaller.access$700(this.d, 2131427336, false);
                    if (GameInstaller.access$900(this.d) != 2) {
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034204, new Object[]{this.c}) + "\n" + this.d.getString(2131034206, new Object[]{this.c}));
                    } else {
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034205, new Object[]{this.c}));
                    }
                    break;
                case 2:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    this.d.a().add((Button) this.d.findViewById(2131427334));
                    GameInstaller.access$700(this.d, 2131427336, false);
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034222, new Object[]{this.c}));
                    break;
                case 3:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    ((Button) this.d.findViewById(2131427332)).setText(this.d.getString(2131034188, new Object[]{this.c}));
                    this.d.a().add((Button) this.d.findViewById(2131427334));
                    ((Button) this.d.findViewById(2131427334)).setText(this.d.getString(2131034189, new Object[]{this.c}));
                    this.d.a().add((Button) this.d.findViewById(2131427336));
                    ((Button) this.d.findViewById(2131427336)).setText(this.d.getString(2131034190, new Object[]{this.c}));
                    if (GameInstaller.access$900(this.d) != 2) {
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034201, new Object[]{this.c}));
                    } else {
                        ((Button) this.d.findViewById(2131427334)).setText(this.d.getString(2131034230, new Object[]{this.c}));
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034203, new Object[]{this.c}));
                    }
                    break;
                case 4:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    ((Button) this.d.findViewById(2131427332)).setText(this.d.getString(2131034187, new Object[]{this.c}));
                    GameInstaller.access$700(this.d, 2131427334, false);
                    GameInstaller.access$700(this.d, 2131427336, false);
                    if (GameInstaller.access$900(this.d) == 1 || GameInstaller.access$600(this.d) == 28) {
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034227, new Object[]{this.c}));
                    } else if (GameInstaller.access$900(this.d) == 2) {
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034209, new Object[]{this.c}));
                    } else {
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034208, new Object[]{this.c}));
                    }
                    if (this.b != GameInstaller.access$500(this.d)) {
                        this.d.b();
                    }
                    break;
                case 5:
                    this.d.a().add((Button) this.d.findViewById(2131427336));
                    GameInstaller.access$700(this.d, 2131427332, false);
                    GameInstaller.access$700(this.d, 2131427334, false);
                    ((ProgressBar) this.d.findViewById(2131427338)).setMax((int) ((this.d.j / 1024) + 1));
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034210, new Object[]{this.c}));
                    TextView textView = (TextView) this.d.findViewById(2131427339);
                    textView.setVisibility(4);
                    if (GameInstaller.access$900(this.d) == 1) {
                        textView.setText(this.d.getString(2131034216, new Object[]{this.c}));
                    } else if (GameInstaller.access$1100(this.d) != 1) {
                        this.d.findViewById(2131427329);
                    } else {
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.a(2131034216, null, new StringBuilder().append((int) ((GameInstaller.m_iRealRequiredSize >> 20) + 1)).toString()));
                    }
                    break;
                case 7:
                case GameInstaller.LAYOUT_UNZIP_FILES_CANCEL_QUESTION /* 28 */:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    this.d.a().add((Button) this.d.findViewById(2131427334));
                    GameInstaller.access$700(this.d, 2131427336, false);
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034219, new Object[]{this.c}));
                    break;
                case 8:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    this.d.a().add((Button) this.d.findViewById(2131427334));
                    GameInstaller.access$700(this.d, 2131427336, false);
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034218, new Object[]{this.c}));
                    break;
                case 9:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    this.d.a().add((Button) this.d.findViewById(2131427334));
                    GameInstaller.access$700(this.d, 2131427336, false);
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034198, new Object[]{this.c}));
                    GameInstaller.access$800(this.d, 2131427341, false);
                    if (GameInstaller.access$900(this.d) == 1) {
                        ((Button) this.d.findViewById(2131427334)).setText(this.d.getString(2131034225, new Object[]{this.c}));
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034226, new Object[]{this.c}));
                    } else if (GameInstaller.access$900(this.d) == 0) {
                        ((Button) this.d.findViewById(2131427334)).setText(this.d.getString(2131034229, new Object[]{this.c}));
                        ((Button) this.d.findViewById(2131427332)).setText(this.d.getString(2131034228, new Object[]{this.c}));
                    } else if (GameInstaller.access$900(this.d) == 2) {
                        ((Button) this.d.findViewById(2131427334)).setText(this.d.getString(2131034230, new Object[]{this.c}));
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034199, new Object[]{this.c}));
                        ((Button) this.d.findViewById(2131427332)).setText(this.d.getString(2131034228, new Object[]{this.c}));
                    }
                    break;
                case GameInstaller.LAYOUT_DOWNLOAD_FILES_QUESTION /* 10 */:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    this.d.a().add((Button) this.d.findViewById(2131427334));
                    GameInstaller.access$700(this.d, 2131427336, false);
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.a(2131034197, null, new StringBuilder().append((int) ((GameInstaller.m_iRealRequiredSize >> 20) + 1)).toString()));
                    break;
                case 13:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    ((Button) this.d.findViewById(2131427332)).setText(this.d.getString(2131034187, new Object[]{this.c}));
                    GameInstaller.access$700(this.d, 2131427336, false);
                    GameInstaller.access$700(this.d, 2131427334, false);
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.a(GameInstaller.access$1000(this.d), "{GAME_NAME}", this.d.getString(bu.app_name)));
                    break;
                case 16:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    this.d.a().add((Button) this.d.findViewById(2131427334));
                    GameInstaller.access$700(this.d, 2131427336, false);
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034207, new Object[]{this.c}));
                    break;
                case 17:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    this.d.a().add((Button) this.d.findViewById(2131427334));
                    GameInstaller.access$700(this.d, 2131427336, false);
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034223, new Object[]{this.c}));
                    break;
                case 18:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    ((Button) this.d.findViewById(2131427332)).setText(this.d.getString(2131034187, new Object[]{this.c}));
                    GameInstaller.access$700(this.d, 2131427336, false);
                    GameInstaller.access$700(this.d, 2131427334, false);
                    long j = this.d.h;
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.a(this.d.a(0) ? 2131034196 : 2131034195, null, new StringBuilder().append(this.d.a(0) ? j : j - this.d.g).toString()));
                    break;
                case 19:
                    GameInstaller.access$700(this.d, 2131427336, false);
                    GameInstaller.access$700(this.d, 2131427332, false);
                    GameInstaller.access$700(this.d, 2131427334, false);
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034220, new Object[]{this.c}));
                    break;
                case 20:
                    this.d.a().add((Button) this.d.findViewById(2131427336));
                    GameInstaller.access$700(this.d, 2131427332, false);
                    GameInstaller.access$700(this.d, 2131427334, false);
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034200, new Object[]{this.c}));
                    break;
                case 21:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    ((Button) this.d.findViewById(2131427332)).setText(this.d.getString(2131034187, new Object[]{this.c}));
                    GameInstaller.access$700(this.d, 2131427336, false);
                    GameInstaller.access$700(this.d, 2131427334, false);
                    GameInstaller.access$800(this.d, 2131427341, false);
                    if (this.d.aq != 29) {
                        if (this.d.aX) {
                            GameInstaller.access$700(this.d, 2131427332, false);
                            GameInstaller.access$800(this.d, 2131427341, true);
                        }
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034217, new Object[]{this.c}));
                    } else {
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034221, new Object[]{this.c}));
                    }
                    break;
                case 22:
                    GameInstaller.access$700(this.d, 2131427336, false);
                    GameInstaller.access$700(this.d, 2131427332, false);
                    GameInstaller.access$700(this.d, 2131427334, false);
                    ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034194, new Object[]{this.c}));
                    break;
                case 23:
                    this.d.a().add((Button) this.d.findViewById(2131427332));
                    ((Button) this.d.findViewById(2131427332)).setText(this.d.getString(2131034187, new Object[]{this.c}));
                    this.d.a().add((Button) this.d.findViewById(2131427334));
                    ((Button) this.d.findViewById(2131427334)).setText(this.d.getString(2131034190, new Object[]{this.c}));
                    GameInstaller.access$700(this.d, 2131427336, false);
                    if (GameInstaller.access$900(this.d) != 2) {
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034202, new Object[]{this.c}));
                    } else {
                        ((TextView) this.d.findViewById(2131427329)).setText(this.d.getString(2131034203, new Object[]{this.c}));
                    }
                    break;
                case GameInstaller.LAYOUT_UNZIP_FILES /* 27 */:
                    this.d.a().add((Button) this.d.findViewById(2131427336));
                    GameInstaller.access$700(this.d, 2131427332, false);
                    GameInstaller.access$700(this.d, 2131427334, false);
                    ((ProgressBar) this.d.findViewById(2131427338)).setMax((int) ((this.d.j / 1024) + 1));
                    ((TextView) this.d.findViewById(2131427329)).setText(2131034193);
                    ((TextView) this.d.findViewById(2131427339)).setVisibility(4);
                    break;
            }
            try {
                Iterator it = this.d.a().iterator();
                while (it.hasNext()) {
                    ((Button) it.next()).setOnClickListener(this.d.bj);
                }
            } catch (Exception e) {
            }
        } catch (Exception e2) {
            GameInstaller.access$200(this.d, 21);
        }
    }
}
