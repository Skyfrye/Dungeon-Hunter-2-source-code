.class final Lcom/gameloft/android/GAND/GloftD2SS/iab/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/iab/c;->a:I

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/iab/InAppBilling;->access$000(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
