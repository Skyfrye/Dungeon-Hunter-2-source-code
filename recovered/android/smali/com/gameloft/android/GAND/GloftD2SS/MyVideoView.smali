.class public Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;
.super Landroid/app/Activity;


# static fields
.field public static a:I = 0x0

.field private static final b:Ljava/lang/String; = "MyVideoView"

.field private static c:I

.field private static d:Z

.field private static e:[[Ljava/lang/String;

.field private static q:Z

.field private static r:Z


# instance fields
.field private f:Landroid/widget/VideoView;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/TextView;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Landroid/os/Handler;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sput-boolean v5, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->d:Z

    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Gothicus, land of fear, land... of destiny."

    aput-object v2, v1, v5

    const-string v2, "Now comes a tale born of sorrow and blood."

    aput-object v2, v1, v6

    const-string v2, "The tale of a kingdom condemned by the gods,"

    aput-object v2, v1, v7

    const-string v2, "doomed to dark times in the age of two sons."

    aput-object v2, v1, v8

    const-string v2, "Two sons cursed with the strength of immortals;"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "two sons, cursed by the dread fate of kings."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Armies are raised. Dark powers awake."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "And one prince comes to power on a tide of new evil."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "But the true tale of sorrow has only begun."

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Let this new chapter of Gothicus"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "be written in fire... "

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Gothicus, terre de peur, terre... du destin."

    aput-object v2, v1, v5

    const-string v2, "Voici une histoire n\u00e9e de la tristesse et du sang."

    aput-object v2, v1, v6

    const-string v2, "L\'histoire d\'un royaume condamn\u00e9 par les dieux,"

    aput-object v2, v1, v7

    const-string v2, "condamn\u00e9 \u00e0 l\'obscurit\u00e9 quand viendraient deux fils."

    aput-object v2, v1, v8

    const-string v2, "Deux fils maudits par le pouvoir de l\'immortalit\u00e9."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Deux fils maudits par le terrible destin des rois."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Les arm\u00e9es se dressent. Les puissances occultes se r\u00e9veillent."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Et un prince acc\u00e8de au pouvoir alors qu\'un nouveau mal se r\u00e9pand."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Mais cette triste histoire n\'en est qu\'\u00e0 son commencement."

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Le nouveau chapitre de Gothicus..."

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "s\'\u00e9crira en lettres de feu..."

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Gothicus, Land der Furcht, Land... des Schicksals."

    aput-object v2, v1, v5

    const-string v2, "Diese Legende entstand aus Trauer und Blut."

    aput-object v2, v1, v6

    const-string v2, "Die Geschichte eines Reiches, von den G\u00f6ttern verdammt,"

    aput-object v2, v1, v7

    const-string v2, "im Zeitalter zweier S\u00f6hne in Dunkelheit verfallen."

    aput-object v2, v1, v8

    const-string v2, "Zwei S\u00f6hne, auf denen der Fluch der Unsterblichkeit lastet."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Zwei S\u00f6hne, mit dem schrecklichen Schicksal der K\u00f6nige geschlagen."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Heere sammeln sich. Dunkle Kr\u00e4fte erwachen."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Ein Prinz erringt durch eine Woge neuen \u00dcbels die Macht."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Doch die wahre Trag\u00f6die hat erst begonnen."

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Dieses neue Kapitel des Reiches Gothicus"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "wird mit Feuer geschrieben..."

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Gothicus, terra di orrori, terra... di destino."

    aput-object v2, v1, v5

    const-string v2, "Questa \u00e8 una storia nata nel sangue e nel dolore;"

    aput-object v2, v1, v6

    const-string v2, "La storia di un regno condannato dagli dei"

    aput-object v2, v1, v7

    const-string v2, "all\'oscura epoca dei due figli."

    aput-object v2, v1, v8

    const-string v2, "Due figli maledetti dal potere degli immortali."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Due figli maledetti dal terribile destino dei Re."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Gli eserciti si radunano, oscuri poteri si risvegliano."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Alla fine, un principe sale al potere cavalcando l\'onda del male."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Ma la vera storia di sangue e dolore \u00e8 appena iniziata."

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Che questo capitolo della saga di Gothicus"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Sia scritto nel fuoco..."

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u30b4\u30b7\u30ab\u30b9 \u2013 \u305d\u308c\u306f\u904b\u547d\u306b\u7ffb\u5f04\u3055\u308c\u3001\u6697\u3044\u6b74\u53f2\u3092\u6301\u3064\u738b\u56fd\u2026\u3002"

    aput-object v2, v1, v5

    const-string v2, "\u304b\u3064\u3066\u306e\u82f1\u96c4\u3067\u3042\u308b\u56fd\u738b\u3068\u3001\u8840\u5857\u3089\u308c\u305f"

    aput-object v2, v1, v6

    const-string v2, "\u904b\u547d\u306e\u4e0b\u306b\u751f\u307e\u308c\u3066\u304d\u305f2\u4eba\u306e\u606f\u5b50\u306e\u7269\u8a9e\u3002"

    aput-object v2, v1, v7

    const-string v2, "\u7236\u89aa\u3068\u540c\u69d8\u306b\u4e0d\u6b7b\u306e\u529b\u3092\u6301\u30642\u4eba\u306f\u3001"

    aput-object v2, v1, v8

    const-string v2, "\u738b\u5ea7\u3092\u3081\u3050\u308b\u78ba\u57f7\u304b\u3089\u4e89\u3044\u3092\u59cb\u3081\u308b\u3002"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u3084\u304c\u3066\u6226\u3044\u306e\u8840\u3068\u708e\u306e\u5302\u3044\u306f\u6c38\u3089\u304f\u7720\u3063\u3066\u3044\u305f"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u95c7\u306e\u529b\u3092\u547c\u3073\u8d77\u3053\u3057\u3066\u3057\u307e\u3046\u3002"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u6226\u3044\u306f\u7d42\u308f\u308a\u3001\u52dd\u5229\u3057\u305f\u738b\u5b50\u306f\u56fd\u738b\u306e\u5ea7\u3092\u624b\u306b\u3059\u308b\u3002"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u3053\u308c\u304c\u30b4\u30b7\u30ab\u30b9\u3092\u8972\u3046\u60b2\u5287\u306e\u59cb\u307e\u308a\u3067\u3042\u308b\u3002"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u30b4\u30b7\u30ab\u30b9\u306e\u904b\u547d\u3092\u304b\u3051\u3066\u3001"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u65b0\u305f\u306a\u308b\u6b74\u53f2\u304c\u5e55\u3092\u958b\u3051\u308b\u2026\u3002"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uace0\ub514\ucee4\uc2a4, \uacf5\ud3ec\uc758 \ub545, \uc6b4\uba85\uc758... \ub545."

    aput-object v3, v2, v5

    const-string v3, "\uc2ac\ud514\uacfc \ud53c\uc5d0\uc11c \ube44\ub86f\ub41c \uc774\uc57c\uae30\uac00 \uc2dc\uc791\ub410\ub2e4."

    aput-object v3, v2, v6

    const-string v3, "\uc2e0\ub4e4\uc5d0\uac8c \ube44\ub09c\ubc1b\uace0 \uc5b4\ub460\uc758 \uc2dc\ub300\ub97c \ubcf4\ub0b4\ub294 \uc655\uad6d\uc758 \uc774\uc57c\uae30\uac00 \uc2dc\uc791\ub410\ub2e4."

    aput-object v3, v2, v7

    const-string v3, "\uc2e0\ub4e4\uc5d0\uac8c \ube44\ub09c\ubc1b\uace0 \uc5b4\ub460\uc758 \uc2dc\ub300\ub97c \ubcf4\ub0b4\ub294 \uc655\uad6d\uc758 \uc774\uc57c\uae30\uac00 \uc2dc\uc791\ub410\ub2e4."

    aput-object v3, v2, v8

    const-string v3, "\ub450 \uc655\uc790\ub294 \ubd88\uba78\uc758 \uc800\uc8fc\ub97c \ubc1b\uace0,"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\uc794\ud639\ud55c \uc655\uc758 \uc6b4\uba85\uc744 \ud0c0\uace0\ub0ac\ub2e4."

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\uad70\ub300\uac00 \uacb0\uc131\ub418\uace0 \uc5b4\ub460\uc758 \ud798\uc774 \uae68\uc5b4\ub0ac\ub2e4."

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\ud55c \uba85\uc758 \uc655\uc790\ub294 \uc0c8\ub85c\uc6b4 \uc545\uc758 \ud798\uc73c\ub85c \uc655\uad8c\uc744 \uc7a5\uc545\ud588\ub2e4."

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "\uadf8\ub7ec\ub098 \uc9c4\uc815 \uc548\ud0c0\uae4c\uc6b4 \uc774\uc57c\uae30\ub294 \uc774\uc81c \ub9c9 \uc2dc\uc791\ub418\uc5c8\uc744 \ubfd0\uc774\ub2e4."

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "\uace0\ub514\ucee4\uc2a4\uc758 \uc0c8\ub85c\uc6b4 \uc7a5\uc740"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "\ubd88\ub85c \uc4f0\uc77c \uac83\uc774\ub2e4..."

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u54e5\u897f\u5361\u65af\uff0c\u6050\u60e7\u4e4b\u57ce\uff0c\u547d\u8fd0\u4e4b\u90a6\u2026\u2026"

    aput-object v3, v2, v5

    const-string v3, "\u6b64\u4f20\u8bf4\u6e90\u4e8e\u60b2\u4f24\u548c\u9c9c\u8840\uff0c"

    aput-object v3, v2, v6

    const-string v3, "\u6b64\u738b\u56fd\u906d\u53d7\u4f17\u795e\u7684\u8bc5\u5492\uff0c"

    aput-object v3, v2, v7

    const-string v3, "\u4e00\u4e2a\u738b\u56fd\uff0c\u4e24\u4e2a\u738b\u5b50\uff0c\u9ed1\u6697\u65f6\u4ee3\u5fc5\u5b9a\u4f1a\u6765\u4e34\u3002"

    aput-object v3, v2, v8

    const-string v3, "\u4e24\u4e2a\u738b\u5b50\uff0c\u5e26\u7740\u90aa\u6076\u7684\u4e0d\u6b7b\u529b\u91cf\uff0c\u88ab\u8bf8\u738b\u7684\u5384\u8fd0\u6240\u8bc5\u5492\u3002"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u4e24\u4e2a\u738b\u5b50\uff0c\u5e26\u7740\u90aa\u6076\u7684\u4e0d\u6b7b\u529b\u91cf\uff0c\u88ab\u8bf8\u738b\u7684\u5384\u8fd0\u6240\u8bc5\u5492\u3002"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u540c\u5ba4\u64cd\u6208\uff0c\u6218\u706b\u5728\u5373\uff1b\u90aa\u6076\u529b\u91cf\uff0c\u5377\u571f\u91cd\u6765\u3002"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\u4e00\u4f4d\u738b\u5b50\u767b\u4e0a\u4e86\u738b\u5ea7\uff0c\u5374\u518d\u4e00\u6b21\u5c06\u90aa\u6076\u529b\u91cf\u5f15\u5230\u4e16\u95f4\u3002"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "\u81f3\u6b64\uff0c\u771f\u6b63\u7684\u60b2\u4f24\u4f20\u8bf4\u62c9\u5f00\u5e8f\u5e55\u3002"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "\u54e5\u897f\u5361\u65af\u7684\u65b0\u7bc7\u7ae0\uff0c"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "\u5c06\u5728\u8840\u4e0e\u706b\u4e2d\u5f00\u542f\u2026\u2026"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Gothicus, tierra del miedo, tierra del destino..."

    aput-object v3, v2, v5

    const-string v3, "Esta es una historia de angustia y sangre;"

    aput-object v3, v2, v6

    const-string v3, "La historia de un reino condenado por los dioses,"

    aput-object v3, v2, v7

    const-string v3, "a tiempos oscuros en la era de los dos hijos..."

    aput-object v3, v2, v8

    const-string v3, "Dos hijos malditos con una fuerza inmortal."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Dos hijos, maldecidos con el horrible destino de los reyes."

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Se crean ej\u00e9rcitos. Los poderes oscuros despiertan."

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Uno de los pr\u00edncipes toma el poder, inmerso en una nueva ola de maldad."

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Pero esta historia de pesar y lamentos no ha hecho m\u00e1s que empezar."

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Este nuevo cap\u00edtulo de Gothicus..."

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "se escribir\u00e1 con letras de fuego..."

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sput-boolean v6, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->q:Z

    sput-boolean v6, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->r:Z

    sput v5, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x1c84

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->s:I

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)I
    .locals 7

    const/16 v6, 0x32c8

    const/16 v5, 0x2710

    const/16 v4, 0x1b58

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    if-eqz v2, :cond_d

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->a:I

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->a:I

    :cond_0
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0xbb8

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    if-ge v2, v4, :cond_2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const v3, 0xa028

    if-le v2, v3, :cond_d

    :goto_1
    return v0

    :cond_2
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    if-le v2, v4, :cond_3

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    if-ge v2, v5, :cond_3

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    aget-object v3, v3, v1

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    if-le v2, v5, :cond_4

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    if-ge v2, v6, :cond_4

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    if-le v2, v6, :cond_5

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x4268

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x4650

    if-le v2, v3, :cond_6

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x5208

    if-ge v2, v3, :cond_6

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x5208

    if-le v2, v3, :cond_7

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x61a8

    if-ge v2, v3, :cond_7

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/4 v4, 0x5

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x61a8

    if-le v2, v3, :cond_8

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x6d60

    if-ge v2, v3, :cond_8

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/4 v4, 0x6

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x6d60

    if-le v2, v3, :cond_9

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x7d00

    if-ge v2, v3, :cond_9

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/4 v4, 0x7

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x7d00

    if-le v2, v3, :cond_a

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const v3, 0x8ca0

    if-ge v2, v3, :cond_a

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/16 v4, 0x8

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const v3, 0x8ca0

    if-le v2, v3, :cond_b

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const v3, 0x9858

    if-ge v2, v3, :cond_b

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/16 v4, 0x9

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const v3, 0x9858

    if-le v2, v3, :cond_c

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const v3, 0xa028

    if-ge v2, v3, :cond_c

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/16 v4, 0xa

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    const-string v3, ""

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto/16 :goto_1
.end method

.method static synthetic access$100(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->M:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**************playVideo *****************"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/bj;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/bj;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MyVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error video: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private e()I
    .locals 7

    const/16 v6, 0x32c8

    const/16 v5, 0x2710

    const/16 v4, 0x1b58

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    if-eqz v2, :cond_d

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->a:I

    iget-object v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    sput v2, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->a:I

    :cond_0
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0xbb8

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    if-ge v2, v4, :cond_2

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const v3, 0xa028

    if-le v2, v3, :cond_d

    :goto_1
    return v0

    :cond_2
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    if-le v2, v4, :cond_3

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    if-ge v2, v5, :cond_3

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    aget-object v3, v3, v1

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    if-le v2, v5, :cond_4

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    if-ge v2, v6, :cond_4

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    if-le v2, v6, :cond_5

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x4268

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x4650

    if-le v2, v3, :cond_6

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x5208

    if-ge v2, v3, :cond_6

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x5208

    if-le v2, v3, :cond_7

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x61a8

    if-ge v2, v3, :cond_7

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/4 v4, 0x5

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x61a8

    if-le v2, v3, :cond_8

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x6d60

    if-ge v2, v3, :cond_8

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/4 v4, 0x6

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x6d60

    if-le v2, v3, :cond_9

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x7d00

    if-ge v2, v3, :cond_9

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/4 v4, 0x7

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const/16 v3, 0x7d00

    if-le v2, v3, :cond_a

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const v3, 0x8ca0

    if-ge v2, v3, :cond_a

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/16 v4, 0x8

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const v3, 0x8ca0

    if-le v2, v3, :cond_b

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const v3, 0x9858

    if-ge v2, v3, :cond_b

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/16 v4, 0x9

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const v3, 0x9858

    if-le v2, v3, :cond_c

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    sub-int/2addr v2, v3

    const v3, 0xa028

    if-ge v2, v3, :cond_c

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->e:[[Ljava/lang/String;

    sget v4, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    aget-object v3, v3, v4

    const/16 v4, 0xa

    aget-object v3, v3, v4

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    const-string v3, ""

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v1, 0x480

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->requestWindowFeature(I)Z

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->setContentView(I)V

    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->g:Landroid/widget/ImageButton;

    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->h:Landroid/widget/ImageButton;

    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->i:Landroid/widget/ImageButton;

    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->j:Landroid/widget/ImageButton;

    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->k:Landroid/widget/ImageButton;

    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->l:Landroid/widget/ImageButton;

    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->m:Landroid/widget/TextView;

    const/4 v1, 0x3

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->n:Ljava/lang/String;

    sget v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->s:I

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c:I

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c()V

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/bc;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/bc;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->p:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/bd;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/bd;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->h:Landroid/widget/ImageButton;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/be;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/be;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->i:Landroid/widget/ImageButton;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/bf;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/bf;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->j:Landroid/widget/ImageButton;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/bg;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/bg;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->k:Landroid/widget/ImageButton;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/bh;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/bh;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->l:Landroid/widget/ImageButton;

    new-instance v1, Lcom/gameloft/android/GAND/GloftD2SS/bi;

    invoke-direct {v1, p0}, Lcom/gameloft/android/GAND/GloftD2SS/bi;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VideoView***************onKeyDown key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-ne p1, v2, :cond_2

    :cond_1
    sput-boolean v1, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->d:Z

    goto :goto_0

    :cond_2
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoView***************onKeyUp key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung_GT-P7510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**************onPause introvideo"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung_GT-P7510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->b()V

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "*************onResume introvideo"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->o:I

    if-le v0, v1, :cond_0

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->q:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->q:Z

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->c()V

    sput-boolean v2, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->q:Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoView*************onWindowFocusChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung_GT-P7510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->r:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->b()V

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->r:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->d:Z

    if-eqz v0, :cond_3

    sput-boolean v3, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->d:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/MyVideoView;->r:Z

    goto :goto_0
.end method
