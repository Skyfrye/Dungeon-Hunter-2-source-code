.class Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/widget/CheckBox;

.field final synthetic f:Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;->f:Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;->c:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;->d:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;->e:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$4;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
