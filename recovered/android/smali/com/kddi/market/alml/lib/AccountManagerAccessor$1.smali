.class Lcom/kddi/market/alml/lib/AccountManagerAccessor$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static synthetic c:[I


# instance fields
.field final synthetic a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

.field private final synthetic b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;


# direct methods
.method static synthetic $SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[I
    .locals 3

    sget-object v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$1;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->values()[Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->c:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->a:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->d:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->b:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->f:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->e:Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$1;->c:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/kddi/market/alml/lib/AccountManagerAccessor;Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$1;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    iput-object p2, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$1;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$1;->$SWITCH_TABLE$com$kddi$market$alml$lib$ApiUtil$TokenApiType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$1;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    invoke-static {v1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->access$0(Lcom/kddi/market/alml/lib/AccountManagerAccessor;)Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kddi/market/alml/lib/ApiUtil$TokenApiType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$1;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    const/16 v1, -0x63

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :pswitch_1
    const/16 v0, -0x28

    :goto_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$1;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_3
    const/16 v0, -0x30

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$1;->a:Lcom/kddi/market/alml/lib/AccountManagerAccessor;

    iget-object v1, p0, Lcom/kddi/market/alml/lib/AccountManagerAccessor$1;->b:Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;

    invoke-virtual {v0, v1}, Lcom/kddi/market/alml/lib/AccountManagerAccessor;->a(Lcom/kddi/market/alml/lib/AccountManagerAccessor$CallbackWrapper;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
