package com.gameloft.android.GAND.GloftD2SS;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.TextView$BufferType;
import android.widget.VideoView;

/* JADX INFO: loaded from: classes.dex */
public class MyVideoView extends Activity {
    private static final String b = "MyVideoView";
    private static int c;
    private VideoView f;
    private ImageButton g;
    private ImageButton h;
    private ImageButton i;
    private ImageButton j;
    private ImageButton k;
    private ImageButton l;
    private TextView m;
    private String n;
    private Handler p;
    private static boolean d = false;
    private static String[][] e = {new String[]{"Gothicus, land of fear, land... of destiny.", "Now comes a tale born of sorrow and blood.", "The tale of a kingdom condemned by the gods,", "doomed to dark times in the age of two sons.", "Two sons cursed with the strength of immortals;", "two sons, cursed by the dread fate of kings.", "Armies are raised. Dark powers awake.", "And one prince comes to power on a tide of new evil.", "But the true tale of sorrow has only begun.", "Let this new chapter of Gothicus", "be written in fire... "}, new String[]{"Gothicus, terre de peur, terre... du destin.", "Voici une histoire née de la tristesse et du sang.", "L'histoire d'un royaume condamné par les dieux,", "condamné à l'obscurité quand viendraient deux fils.", "Deux fils maudits par le pouvoir de l'immortalité.", "Deux fils maudits par le terrible destin des rois.", "Les armées se dressent. Les puissances occultes se réveillent.", "Et un prince accède au pouvoir alors qu'un nouveau mal se répand.", "Mais cette triste histoire n'en est qu'à son commencement.", "Le nouveau chapitre de Gothicus...", "s'écrira en lettres de feu..."}, new String[]{"Gothicus, Land der Furcht, Land... des Schicksals.", "Diese Legende entstand aus Trauer und Blut.", "Die Geschichte eines Reiches, von den Göttern verdammt,", "im Zeitalter zweier Söhne in Dunkelheit verfallen.", "Zwei Söhne, auf denen der Fluch der Unsterblichkeit lastet.", "Zwei Söhne, mit dem schrecklichen Schicksal der Könige geschlagen.", "Heere sammeln sich. Dunkle Kräfte erwachen.", "Ein Prinz erringt durch eine Woge neuen Übels die Macht.", "Doch die wahre Tragödie hat erst begonnen.", "Dieses neue Kapitel des Reiches Gothicus", "wird mit Feuer geschrieben..."}, new String[]{"Gothicus, terra di orrori, terra... di destino.", "Questa è una storia nata nel sangue e nel dolore;", "La storia di un regno condannato dagli dei", "all'oscura epoca dei due figli.", "Due figli maledetti dal potere degli immortali.", "Due figli maledetti dal terribile destino dei Re.", "Gli eserciti si radunano, oscuri poteri si risvegliano.", "Alla fine, un principe sale al potere cavalcando l'onda del male.", "Ma la vera storia di sangue e dolore è appena iniziata.", "Che questo capitolo della saga di Gothicus", "Sia scritto nel fuoco..."}, new String[]{"ゴシカス – それは運命に翻弄され、暗い歴史を持つ王国…。", "かつての英雄である国王と、血塗られた", "運命の下に生まれてきた2人の息子の物語。", "父親と同様に不死の力を持つ2人は、", "王座をめぐる確執から争いを始める。", "やがて戦いの血と炎の匂いは永らく眠っていた", "闇の力を呼び起こしてしまう。", "戦いは終わり、勝利した王子は国王の座を手にする。", "これがゴシカスを襲う悲劇の始まりである。", "ゴシカスの運命をかけて、", "新たなる歴史が幕を開ける…。"}, new String[]{"고디커스, 공포의 땅, 운명의... 땅.", "슬픔과 피에서 비롯된 이야기가 시작됐다.", "신들에게 비난받고 어둠의 시대를 보내는 왕국의 이야기가 시작됐다.", "신들에게 비난받고 어둠의 시대를 보내는 왕국의 이야기가 시작됐다.", "두 왕자는 불멸의 저주를 받고,", "잔혹한 왕의 운명을 타고났다.", "군대가 결성되고 어둠의 힘이 깨어났다.", "한 명의 왕자는 새로운 악의 힘으로 왕권을 장악했다.", "그러나 진정 안타까운 이야기는 이제 막 시작되었을 뿐이다.", "고디커스의 새로운 장은", "불로 쓰일 것이다..."}, new String[]{"哥西卡斯，恐惧之城，命运之邦……", "此传说源于悲伤和鲜血，", "此王国遭受众神的诅咒，", "一个王国，两个王子，黑暗时代必定会来临。", "两个王子，带着邪恶的不死力量，被诸王的厄运所诅咒。", "两个王子，带着邪恶的不死力量，被诸王的厄运所诅咒。", "同室操戈，战火在即；邪恶力量，卷土重来。", "一位王子登上了王座，却再一次将邪恶力量引到世间。", "至此，真正的悲伤传说拉开序幕。", "哥西卡斯的新篇章，", "将在血与火中开启……"}, new String[]{"Gothicus, tierra del miedo, tierra del destino...", "Esta es una historia de angustia y sangre;", "La historia de un reino condenado por los dioses,", "a tiempos oscuros en la era de los dos hijos...", "Dos hijos malditos con una fuerza inmortal.", "Dos hijos, maldecidos con el horrible destino de los reyes.", "Se crean ejércitos. Los poderes oscuros despiertan.", "Uno de los príncipes toma el poder, inmerso en una nueva ola de maldad.", "Pero esta historia de pesar y lamentos no ha hecho más que empezar.", "Este nuevo capítulo de Gothicus...", "se escribirá con letras de fuego..."}};
    private static boolean q = true;
    private static boolean r = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f32a = 0;
    private int o = 7300;
    private int s = 0;

    private void a() {
        startActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME"));
    }

    static /* synthetic */ int access$000(MyVideoView myVideoView) {
        if (myVideoView.f != null) {
            if (f32a < myVideoView.f.getCurrentPosition()) {
                f32a = myVideoView.f.getCurrentPosition();
            }
            if (myVideoView.f.getCurrentPosition() > myVideoView.o) {
                if (myVideoView.f.getCurrentPosition() - myVideoView.o > 3000 && myVideoView.f.getCurrentPosition() - myVideoView.o < 7000) {
                    myVideoView.m.setText(e[c][0], TextView$BufferType.NORMAL);
                } else if (myVideoView.f.getCurrentPosition() - myVideoView.o > 7000 && myVideoView.f.getCurrentPosition() - myVideoView.o < 10000) {
                    myVideoView.m.setText(e[c][1], TextView$BufferType.NORMAL);
                } else if (myVideoView.f.getCurrentPosition() - myVideoView.o > 10000 && myVideoView.f.getCurrentPosition() - myVideoView.o < 13000) {
                    myVideoView.m.setText(e[c][2], TextView$BufferType.NORMAL);
                } else if (myVideoView.f.getCurrentPosition() - myVideoView.o > 13000 && myVideoView.f.getCurrentPosition() - myVideoView.o < 17000) {
                    myVideoView.m.setText(e[c][3], TextView$BufferType.NORMAL);
                } else if (myVideoView.f.getCurrentPosition() - myVideoView.o > 18000 && myVideoView.f.getCurrentPosition() - myVideoView.o < 21000) {
                    myVideoView.m.setText(e[c][4], TextView$BufferType.NORMAL);
                } else if (myVideoView.f.getCurrentPosition() - myVideoView.o > 21000 && myVideoView.f.getCurrentPosition() - myVideoView.o < 25000) {
                    myVideoView.m.setText(e[c][5], TextView$BufferType.NORMAL);
                } else if (myVideoView.f.getCurrentPosition() - myVideoView.o > 25000 && myVideoView.f.getCurrentPosition() - myVideoView.o < 28000) {
                    myVideoView.m.setText(e[c][6], TextView$BufferType.NORMAL);
                } else if (myVideoView.f.getCurrentPosition() - myVideoView.o > 28000 && myVideoView.f.getCurrentPosition() - myVideoView.o < 32000) {
                    myVideoView.m.setText(e[c][7], TextView$BufferType.NORMAL);
                } else if (myVideoView.f.getCurrentPosition() - myVideoView.o > 32000 && myVideoView.f.getCurrentPosition() - myVideoView.o < 36000) {
                    myVideoView.m.setText(e[c][8], TextView$BufferType.NORMAL);
                } else if (myVideoView.f.getCurrentPosition() - myVideoView.o > 36000 && myVideoView.f.getCurrentPosition() - myVideoView.o < 39000) {
                    myVideoView.m.setText(e[c][9], TextView$BufferType.NORMAL);
                } else if (myVideoView.f.getCurrentPosition() - myVideoView.o <= 39000 || myVideoView.f.getCurrentPosition() - myVideoView.o >= 41000) {
                    myVideoView.m.setText("", TextView$BufferType.NORMAL);
                } else {
                    myVideoView.m.setText(e[c][10], TextView$BufferType.NORMAL);
                }
            }
            if (myVideoView.f.getCurrentPosition() - myVideoView.o > 41000) {
                return 0;
            }
        }
        return 1;
    }

    static /* synthetic */ Handler access$100(MyVideoView myVideoView) {
        return myVideoView.p;
    }

    static /* synthetic */ VideoView access$200(MyVideoView myVideoView) {
        return myVideoView.f;
    }

    static /* synthetic */ VideoView access$202(MyVideoView myVideoView, VideoView videoView) {
        myVideoView.f = videoView;
        return videoView;
    }

    static /* synthetic */ void access$300(MyVideoView myVideoView) {
        myVideoView.b();
    }

    private void b() {
        GLMediaPlayer.M = true;
        System.out.println("**************playVideo *****************");
        try {
            if (this.f != null) {
                this.f.seekTo(f32a);
                this.f.start();
                this.f.requestFocus();
                this.p.sendEmptyMessage(0);
            } else {
                this.f = (VideoView) findViewById(2131427377);
                this.f.setOnCompletionListener(new bj(this));
                this.f.setVideoPath(this.n);
                this.f.start();
                this.f.requestFocus();
                this.p.sendEmptyMessage(0);
            }
        } catch (Exception e2) {
            Log.e(b, "error video: " + e2.getMessage(), e2);
            if (this.f != null) {
                this.f.stopPlayback();
            }
        }
    }

    private void c() {
        this.g.setVisibility(8);
        this.h.setVisibility(8);
        this.i.setVisibility(8);
        this.j.setVisibility(8);
        this.k.setVisibility(8);
        this.l.setVisibility(8);
    }

    private void d() {
        this.l.setVisibility(0);
    }

    private int e() {
        if (this.f != null) {
            if (f32a < this.f.getCurrentPosition()) {
                f32a = this.f.getCurrentPosition();
            }
            if (this.f.getCurrentPosition() > this.o) {
                if (this.f.getCurrentPosition() - this.o > 3000 && this.f.getCurrentPosition() - this.o < 7000) {
                    this.m.setText(e[c][0], TextView$BufferType.NORMAL);
                } else if (this.f.getCurrentPosition() - this.o > 7000 && this.f.getCurrentPosition() - this.o < 10000) {
                    this.m.setText(e[c][1], TextView$BufferType.NORMAL);
                } else if (this.f.getCurrentPosition() - this.o > 10000 && this.f.getCurrentPosition() - this.o < 13000) {
                    this.m.setText(e[c][2], TextView$BufferType.NORMAL);
                } else if (this.f.getCurrentPosition() - this.o > 13000 && this.f.getCurrentPosition() - this.o < 17000) {
                    this.m.setText(e[c][3], TextView$BufferType.NORMAL);
                } else if (this.f.getCurrentPosition() - this.o > 18000 && this.f.getCurrentPosition() - this.o < 21000) {
                    this.m.setText(e[c][4], TextView$BufferType.NORMAL);
                } else if (this.f.getCurrentPosition() - this.o > 21000 && this.f.getCurrentPosition() - this.o < 25000) {
                    this.m.setText(e[c][5], TextView$BufferType.NORMAL);
                } else if (this.f.getCurrentPosition() - this.o > 25000 && this.f.getCurrentPosition() - this.o < 28000) {
                    this.m.setText(e[c][6], TextView$BufferType.NORMAL);
                } else if (this.f.getCurrentPosition() - this.o > 28000 && this.f.getCurrentPosition() - this.o < 32000) {
                    this.m.setText(e[c][7], TextView$BufferType.NORMAL);
                } else if (this.f.getCurrentPosition() - this.o > 32000 && this.f.getCurrentPosition() - this.o < 36000) {
                    this.m.setText(e[c][8], TextView$BufferType.NORMAL);
                } else if (this.f.getCurrentPosition() - this.o > 36000 && this.f.getCurrentPosition() - this.o < 39000) {
                    this.m.setText(e[c][9], TextView$BufferType.NORMAL);
                } else if (this.f.getCurrentPosition() - this.o <= 39000 || this.f.getCurrentPosition() - this.o >= 41000) {
                    this.m.setText("", TextView$BufferType.NORMAL);
                } else {
                    this.m.setText(e[c][10], TextView$BufferType.NORMAL);
                }
            }
            if (this.f.getCurrentPosition() - this.o > 41000) {
                return 0;
            }
        }
        return 1;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(1152, 1152);
        requestWindowFeature(1);
        setContentView(2130903052);
        this.g = (ImageButton) findViewById(2131427379);
        this.h = (ImageButton) findViewById(2131427380);
        this.i = (ImageButton) findViewById(2131427381);
        this.j = (ImageButton) findViewById(2131427382);
        this.k = (ImageButton) findViewById(2131427383);
        this.l = (ImageButton) findViewById(2131427384);
        this.m = (TextView) findViewById(2131427378);
        this.m.setText("", TextView$BufferType.NORMAL);
        this.m.setTextSize(3, 10.0f);
        this.n = getIntent().getStringExtra("video_name");
        c = GLMediaPlayer.s;
        c();
        this.p = new bc(this);
        this.g.setOnClickListener(new bd(this));
        this.h.setOnClickListener(new be(this));
        this.i.setOnClickListener(new bf(this));
        this.j.setOnClickListener(new bg(this));
        this.k.setOnClickListener(new bh(this));
        this.l.setOnClickListener(new bi(this));
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        System.out.println("VideoView***************onKeyDown key = " + i);
        if (i == 4) {
            return false;
        }
        if (i == 24 || i == 25) {
            d = true;
            return false;
        }
        if (i == 82) {
            keyEvent.startTracking();
        }
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        return i != 82;
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        System.out.println("VideoView***************onKeyUp key = " + i);
        if (i != 4) {
            return true;
        }
        startActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME"));
        return false;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if ((Build.MANUFACTURER + "_" + Build.MODEL).equals("samsung_GT-P7510") && this.f != null) {
            this.f.pause();
        }
        System.out.println("**************onPause introvideo");
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if ((Build.MANUFACTURER + "_" + Build.MODEL).equals("samsung_GT-P7510")) {
            b();
        }
        System.out.println("*************onResume introvideo");
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && this.f.getCurrentPosition() > this.o) {
            if (q) {
                this.l.setVisibility(0);
                q = false;
            } else {
                c();
                q = true;
            }
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window$Callback
    public void onWindowFocusChanged(boolean z) {
        System.out.println("VideoView*************onWindowFocusChanged " + z);
        if ((Build.MANUFACTURER + "_" + Build.MODEL).equals("samsung_GT-P7510")) {
            return;
        }
        if (z) {
            if (this.f == null || r) {
                b();
                r = false;
                return;
            }
            return;
        }
        if (d) {
            d = false;
        } else {
            if (this.f == null || r) {
                return;
            }
            this.f.pause();
            r = true;
        }
    }
}
