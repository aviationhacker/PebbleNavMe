.class public abstract Lcom/batescorp/pebble/nav/util/ImageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/io/File;
    .locals 3

    .prologue
    .line 164
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "NavMe"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method public static compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)D
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v11, v0, [I

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    move-object v3, p1

    move-object v4, v11

    move v5, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v2

    .line 73
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 74
    aget v3, v1, v2

    aget v4, v11, v2

    if-ne v3, v4, :cond_0

    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 73
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    int-to-double v2, v0

    array-length v0, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static createBlackWhite(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 43
    mul-int v1, v3, v7

    new-array v1, v1, [I

    move v4, v2

    move v5, v2

    move v6, v3

    .line 44
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v4, v2

    .line 47
    :goto_0
    if-ge v4, v7, :cond_2

    move v1, v2

    .line 49
    :goto_1
    if-ge v1, v3, :cond_1

    .line 50
    invoke-virtual {p0, v1, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    .line 52
    and-int/lit16 v5, v5, 0xff

    .line 55
    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    .line 56
    const/high16 v5, -0x1000000

    invoke-virtual {v0, v1, v4, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 49
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    :cond_0
    const/4 v5, -0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto :goto_2

    .line 47
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 62
    :cond_2
    return-object v0
.end method

.method public static getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 153
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/batescorp/pebble/nav/util/ImageUtil;->a()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 23
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 24
    int-to-float v0, p1

    int-to-float v2, v3

    div-float/2addr v0, v2

    .line 25
    int-to-float v2, p2

    int-to-float v5, v4

    div-float/2addr v2, v5

    .line 27
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 29
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p0

    move v2, v1

    move v6, v1

    .line 33
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static save(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 119
    invoke-static {}, Lcom/batescorp/pebble/nav/util/ImageUtil;->a()Ljava/io/File;

    move-result-object v0

    .line 121
    const-string v1, "ImageUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {p0, v0}, Lcom/batescorp/pebble/nav/util/ImageUtil;->a(Landroid/content/Context;Ljava/io/File;)V

    .line 127
    :cond_0
    invoke-static {p2}, Lcom/batescorp/pebble/nav/util/ImageUtil;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 129
    const-string v0, "ImageUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v2, 0x0

    .line 133
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    if-eqz v1, :cond_1

    .line 140
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 141
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    :cond_1
    :goto_0
    invoke-static {p0, v3}, Lcom/batescorp/pebble/nav/util/ImageUtil;->a(Landroid/content/Context;Ljava/io/File;)V

    .line 150
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v1, "ImageUtil"

    const-string v2, "Failed to save image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 135
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 136
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    if-eqz v1, :cond_1

    .line 140
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 141
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 142
    :catch_2
    move-exception v0

    .line 143
    const-string v1, "ImageUtil"

    const-string v2, "Failed to save image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    .line 140
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 141
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 144
    :cond_2
    :goto_3
    throw v0

    .line 142
    :catch_3
    move-exception v1

    .line 143
    const-string v2, "ImageUtil"

    const-string v3, "Failed to save image"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 138
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 135
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static save(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 4

    .prologue
    .line 84
    invoke-static {}, Lcom/batescorp/pebble/nav/util/ImageUtil;->a()Ljava/io/File;

    move-result-object v0

    .line 86
    const-string v1, "ImageUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {p0, v0}, Lcom/batescorp/pebble/nav/util/ImageUtil;->a(Landroid/content/Context;Ljava/io/File;)V

    .line 92
    :cond_0
    invoke-static {p2}, Lcom/batescorp/pebble/nav/util/ImageUtil;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 94
    const-string v0, "ImageUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v2, 0x0

    .line 98
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    if-eqz v1, :cond_1

    .line 105
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 106
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    :cond_1
    :goto_0
    invoke-static {p0, v3}, Lcom/batescorp/pebble/nav/util/ImageUtil;->a(Landroid/content/Context;Ljava/io/File;)V

    .line 115
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "ImageUtil"

    const-string v2, "Failed to save image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 101
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    if-eqz v1, :cond_1

    .line 105
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 106
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 107
    :catch_2
    move-exception v0

    .line 108
    const-string v1, "ImageUtil"

    const-string v2, "Failed to save image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    .line 105
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 106
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 109
    :cond_2
    :goto_3
    throw v0

    .line 107
    :catch_3
    move-exception v1

    .line 108
    const-string v2, "ImageUtil"

    const-string v3, "Failed to save image"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 103
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 100
    :catch_4
    move-exception v0

    goto :goto_1
.end method
