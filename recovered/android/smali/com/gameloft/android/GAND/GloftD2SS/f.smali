.class final Lcom/gameloft/android/GAND/GloftD2SS/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->b:[I

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/GLMediaPlayer;->H:I

    const/16 v2, 0x9

    aput v2, v0, v1

    return-void
.end method
