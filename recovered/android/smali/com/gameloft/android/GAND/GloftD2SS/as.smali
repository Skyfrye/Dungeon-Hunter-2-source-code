.class final Lcom/gameloft/android/GAND/GloftD2SS/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/gameloft/android/GAND/GloftD2SS/ar;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/as;->a:Lcom/gameloft/android/GAND/GloftD2SS/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->E:F

    const/high16 v2, 0x42340000    # 45.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->F:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->f:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLiveMain;->bd:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
