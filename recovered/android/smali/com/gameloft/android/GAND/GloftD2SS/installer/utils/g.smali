.class public final Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Vector;

.field b:Landroid/content/res/Resources;

.field c:J

.field d:J

.field e:J

.field f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->a:Ljava/util/Vector;

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->c:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->d:J

    iput-wide v1, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->e:J

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->b:Landroid/content/res/Resources;

    return-void
.end method

.method private a(I)Ljava/util/Vector;
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->a(Ljava/io/DataInputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->a:Ljava/util/Vector;

    return-object v0
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 21

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    const-string v7, "version: "

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    mul-int/lit16 v6, v6, 0x400

    int-to-long v8, v6

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->f:J

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    const/4 v8, 0x0

    move-object/from16 v18, v2

    move-wide/from16 v19, v3

    move-wide/from16 v2, v19

    move-object/from16 v4, v18

    :goto_2
    if-ge v8, v11, :cond_6

    new-instance v9, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;

    invoke-direct {v9}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    const/16 v15, 0x65

    if-lt v7, v15, :cond_0

    const-string v15, ".split_0001"

    invoke-virtual {v10, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->c(J)V

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "\tfileName: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " entireFileSize: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v9, v6}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->c(Ljava/lang/String;)V

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a(J)V

    invoke-virtual {v9, v13, v14}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b(J)V

    invoke-virtual {v9, v15}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a(I)V

    invoke-virtual {v9, v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->b(I)V

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v5}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->c(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->a:Ljava/util/Vector;

    invoke-virtual {v4, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    int-to-long v4, v15

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->d:J

    cmp-long v4, v4, v13

    if-lez v4, :cond_1

    int-to-long v4, v15

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->d:J

    :cond_1
    int-to-long v4, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->e:J

    cmp-long v4, v4, v13

    if-lez v4, :cond_2

    int-to-long v4, v12

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->e:J

    :cond_2
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v5, v10

    move-object v4, v9

    goto/16 :goto_2

    :cond_3
    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->f:J

    goto/16 :goto_1

    :cond_4
    const-string v15, ".split_"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    int-to-long v15, v12

    move-wide v0, v15

    invoke-virtual {v9, v0, v1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->c(J)V

    goto :goto_3

    :cond_5
    invoke-virtual {v9, v2, v3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->c(J)V

    goto :goto_3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->available()I

    move-result v6

    if-gtz v6, :cond_7

    invoke-virtual {v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->g()I

    move-result v2

    invoke-virtual {v4}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->f()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->c:J

    return-void

    :cond_7
    move-object/from16 v18, v4

    move-wide/from16 v19, v2

    move-wide/from16 v3, v19

    move-object/from16 v2, v18

    goto/16 :goto_0
.end method

.method private b()J
    .locals 2

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->c:J

    return-wide v0
.end method

.method private c()J
    .locals 2

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->d:J

    return-wide v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->e:J

    return-wide v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/Vector;
    .locals 2

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->a(Ljava/io/DataInputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/g;->a:Ljava/util/Vector;

    return-object v0
.end method
