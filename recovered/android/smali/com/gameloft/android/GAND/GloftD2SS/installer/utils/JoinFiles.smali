.class public Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/JoinFiles;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/c;


# static fields
.field static final a:I = 0x80000

.field static b:J

.field static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/JoinFiles;->b:J

    const/4 v0, 0x0

    sput v0, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/JoinFiles;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static join(Ljava/lang/String;JI)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/JoinFiles;->join(Ljava/lang/String;Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;JI)V

    return-void
.end method

.method public static join(Ljava/lang/String;Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;JI)V
    .locals 16

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/joinedFile.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    new-array v6, v2, [[B

    const/4 v2, 0x0

    const/high16 v3, 0x80000

    new-array v3, v3, [B

    aput-object v3, v6, v2

    :try_start_0
    sput-wide p2, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/JoinFiles;->b:J

    sput p4, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/JoinFiles;->c:I

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const/4 v2, 0x0

    if-lez p4, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    move/from16 v0, p4

    if-ge v5, v0, :cond_5

    new-instance v8, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/section."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    invoke-virtual {v8, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".\\\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/gameloft/android/GAND/GloftD2SS/installer/utils/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v11, Ljava/io/DataInputStream;

    invoke-direct {v11, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v11}, Ljava/io/DataInputStream;->available()I

    move-result v4

    int-to-long v12, v4

    move-wide v3, v2

    :goto_4
    cmp-long v2, v3, v12

    if-gez v2, :cond_4

    sub-long v14, v12, v3

    long-to-int v2, v14

    const/high16 v14, 0x80000

    if-le v2, v14, :cond_2

    const/high16 v2, 0x80000

    :cond_2
    const/high16 v14, 0x80000

    if-ne v2, v14, :cond_3

    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-virtual {v11, v14}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-virtual {v1, v14}, Ljava/io/FileOutputStream;->write([B)V

    :goto_5
    int-to-long v14, v2

    add-long v2, v3, v14

    move-wide v3, v2

    goto :goto_4

    :cond_3
    const/4 v14, 0x1

    new-array v15, v2, [B

    aput-object v15, v6, v14

    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-virtual {v11, v14}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-virtual {v1, v14}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_5

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_6
    move-object v1, v2

    goto/16 :goto_1
.end method
