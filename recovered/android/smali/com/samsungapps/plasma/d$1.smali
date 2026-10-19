.class Lcom/samsungapps/plasma/d$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/samsungapps/plasma/d;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$1;->a:Lcom/samsungapps/plasma/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v1, p0, Lcom/samsungapps/plasma/d$1;->a:Lcom/samsungapps/plasma/d;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsungapps/plasma/d;->a(IILjava/lang/String;)V

    return-void
.end method
