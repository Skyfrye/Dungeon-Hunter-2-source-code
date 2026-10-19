.class final Lcom/gameloft/android/GAND/GloftD2SS/installer/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;


# direct methods
.method constructor <init>(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iput p2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->a:I

    iput p3, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->b:I

    iput-object p4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->a:I

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$402(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;I)I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->a:I

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->setContentView(I)V

    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->b:I

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$500(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$500(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$602(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;I)I

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->b:I

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$502(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;I)I

    :cond_0
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget-object v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->bj:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    :goto_2
    return-void

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050077

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$200(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;I)V

    goto :goto_2

    :pswitch_2
    :try_start_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050056

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b000d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$800(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$900(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v0

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050071

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050072

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$900(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050075

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050074

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$900(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050076

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050057

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050074

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-wide v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_iRealRequiredSize:J

    const/16 v3, 0x14

    shr-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v3, 0x7f050055

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05004b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$1000(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v2

    const-string v3, "{GAME_NAME}"

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v5, 0x7f0501f5

    invoke-virtual {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05004b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget-wide v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->h:J

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget-wide v2, v2, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->g:J

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-wide v2, v0

    :goto_3
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f050054

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v4, 0x7f0b0001

    invoke-virtual {v0, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v5, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    sub-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_3

    :cond_6
    const v0, 0x7f050053

    move v1, v0

    goto :goto_4

    :pswitch_6
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05006c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0008

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050058

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05004b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05004e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$900(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05005b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05005a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05004c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05004d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0008

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05004e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$900(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050076

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05005b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050059

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$900(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05005d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v3, 0x7f05005c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v3, 0x7f05005e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05005f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0008

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget-wide v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f050051

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0008

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget-wide v1, v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->j:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050062

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$900(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v1

    if-ne v1, v6, :cond_a

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050068

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$1100(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v0

    if-ne v0, v6, :cond_b

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-wide v1, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->m_iRealRequiredSize:J

    const/16 v3, 0x14

    shr-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v3, 0x7f050068

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050052

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05004b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b000d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$800(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aq:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05006d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    iget-boolean v0, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->aX:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b000d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$800(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    :cond_d
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050069

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05006a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05006b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05004b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0006

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$900(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v0

    if-eq v0, v6, :cond_e

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$600(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050073

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->b:I

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$500(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->b()V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$900(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050061

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f050060

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_13
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05006e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->access$700(Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;IZ)V

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->d:Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;

    const v2, 0x7f05006f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/b;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_13
        :pswitch_9
        :pswitch_12
        :pswitch_d
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_14
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_f
        :pswitch_e
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_11
    .end packed-switch
.end method
