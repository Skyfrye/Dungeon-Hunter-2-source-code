.class final Lcom/gameloft/android/GAND/GloftD2SS/u;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/u;->a:Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    sput p1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->cW:I

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method
