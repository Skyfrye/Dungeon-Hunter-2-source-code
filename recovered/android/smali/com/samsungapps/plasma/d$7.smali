.class Lcom/samsungapps/plasma/d$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsungapps/plasma/d;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$7;->b:Lcom/samsungapps/plasma/d;

    iput p2, p0, Lcom/samsungapps/plasma/d$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v0, "onCancel"

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsungapps/plasma/d$7;->b:Lcom/samsungapps/plasma/d;

    iget v1, p0, Lcom/samsungapps/plasma/d$7;->a:I

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;II)V

    return-void
.end method
