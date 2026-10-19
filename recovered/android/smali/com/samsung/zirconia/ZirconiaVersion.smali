.class public Lcom/samsung/zirconia/ZirconiaVersion;
.super Ljava/lang/Object;


# instance fields
.field public build:I

.field public major:I

.field public minor:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/zirconia/ZirconiaVersion;->major:I

    iput p2, p0, Lcom/samsung/zirconia/ZirconiaVersion;->minor:I

    iput p3, p0, Lcom/samsung/zirconia/ZirconiaVersion;->build:I

    return-void
.end method
