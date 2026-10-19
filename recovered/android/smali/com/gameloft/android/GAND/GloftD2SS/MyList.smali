.class Lcom/gameloft/android/GAND/GloftD2SS/MyList;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/MyList;->a:I

    return-void
.end method

.method public static getMyList(I)Lcom/gameloft/android/GAND/GloftD2SS/MyList;
    .locals 1

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/MyList;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/MyList;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    new-instance v0, Lcom/gameloft/android/GAND/GloftD2SS/bb;

    invoke-direct {v0, p0}, Lcom/gameloft/android/GAND/GloftD2SS/bb;-><init>(Lcom/gameloft/android/GAND/GloftD2SS/MyList;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
