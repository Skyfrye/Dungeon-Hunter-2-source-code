.class final Lcom/gameloft/android/GAND/GloftD2SS/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/t;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/t;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->a(I)V

    return-void
.end method
