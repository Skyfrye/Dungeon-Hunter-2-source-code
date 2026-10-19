.class Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x14

.field static b:Landroid/content/res/Resources;

.field static c:Landroid/content/res/AssetManager;

.field static d:Ljava/io/InputStream;

.field static e:Ljava/io/OutputStream;

.field static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->f:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyMovieFileFromAssetsToTMP(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "intro"

    const-string v2, ".mp4"

    invoke-static {v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->getResourceOpen(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->getResourceLength2()I

    move-result v4

    const/4 v0, 0x0

    :cond_0
    :goto_1
    if-ge v0, v4, :cond_2

    add-int/lit16 v5, v0, 0x400

    if-ge v5, v4, :cond_1

    const/16 v5, 0x400

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->getResourceRead(I)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit16 v0, v0, 0x400

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-ge v0, v4, :cond_0

    sub-int v5, v4, v0

    invoke-static {v5}, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->getResourceRead(I)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    add-int/2addr v0, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->getResourceClose()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :cond_3
    :goto_2
    return-object v1

    :cond_4
    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static copyResourceFromAssets(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_5

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->getResourceOpen(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_6

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->getResourceLength2()I

    move-result v2

    :cond_2
    :goto_1
    if-ge v0, v2, :cond_4

    add-int/lit16 v4, v0, 0x400

    if-ge v4, v2, :cond_3

    const/16 v4, 0x400

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->getResourceRead(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit16 v0, v0, 0x400

    goto :goto_1

    :cond_3
    if-ge v0, v2, :cond_2

    sub-int v4, v2, v0

    invoke-static {v4}, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->getResourceRead(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    add-int/2addr v0, v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->getResourceClose()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    :cond_5
    :goto_2
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static getRawResource(ILandroid/content/Context;)[B
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private static getResourceBytes(Ljava/lang/String;II)[B
    .locals 7

    const/16 v6, 0x2f

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v0, ".//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "res_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->b:Landroid/content/res/Resources;

    const-string v4, "drawable"

    sget-object v5, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->b:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    new-array v0, p2, [B

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Ljava/io/InputStream;->read([BII)I

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_2
    const-string v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->c:Landroid/content/res/AssetManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    new-array v0, p2, [B

    if-lez p1, :cond_4

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    :cond_4
    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Ljava/io/InputStream;->read([BII)I

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static getResourceClose()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getResourceFull(I)[B
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getResourceFull(Ljava/lang/String;)[B
    .locals 7

    const/16 v6, 0x2f

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v0, ".//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "res_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->b:Landroid/content/res/Resources;

    const-string v4, "drawable"

    sget-object v5, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->b:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_2
    const-string v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->c:Landroid/content/res/AssetManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    sput-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_4
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/gameloft/games/letsgolf/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private static getResourceLength(Ljava/lang/String;)I
    .locals 7

    const/16 v5, 0x2f

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v0, ".//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "res_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->b:Landroid/content/res/Resources;

    const-string v4, "drawable"

    sget-object v5, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput-object v6, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->b:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    sput-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :cond_2
    const-string v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->c:Landroid/content/res/AssetManager;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    sget-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    sput-object v3, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_4
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/gameloft/games/letsgolf/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static getResourceLength2()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getResourceOpen(Ljava/lang/String;)I
    .locals 7

    const/16 v6, 0x2f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, ".//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "res_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->b:Landroid/content/res/Resources;

    const-string v5, "drawable"

    sget-object v6, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    sput-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v4, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->b:Landroid/content/res/Resources;

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    return v0

    :cond_2
    const-string v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->f:Z

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->c:Landroid/content/res/AssetManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public static getResourceRead(I)[B
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    new-array v0, p0, [B

    sget-object v2, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getResourceReadByte()B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-byte v0, v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getResourceSkip(I)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    if-lez p0, :cond_0

    sget-object v1, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static init()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->nativeInit(I)V

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->b:Landroid/content/res/Resources;

    sget-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GameRenderer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->c:Landroid/content/res/AssetManager;

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/GAND/GloftD2SS/GLResLoader;->d:Ljava/io/InputStream;

    return-void
.end method

.method public static native nativeInit(I)V
.end method
