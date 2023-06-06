.class public Lorg/eclipse/jetty/util/resource/ResourceCollection;
.super Lorg/eclipse/jetty/util/resource/Resource;
.source "SourceFile"


# instance fields
.field private b:[Lorg/eclipse/jetty/util/resource/Resource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 126
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/resource/ResourceCollection;->setResourcesAsCSV(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 98
    array-length v0, p1

    new-array v0, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 101
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 103
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v2, p1, v0

    invoke-static {v2}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    aput-object v2, v1, v0

    .line 104
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not an existing directory."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :catch_0
    move-exception v0

    .line 110
    throw v0

    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 116
    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    array-length v4, p1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v0, p1, v2

    .line 71
    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 73
    :cond_1
    instance-of v5, v0, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v5, :cond_2

    .line 75
    check-cast v0, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/ResourceCollection;->getResources()[Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 76
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 79
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 82
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v3, v2

    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_6

    aget-object v1, v2, v0

    .line 84
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_5

    .line 85
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an existing directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 87
    :cond_6
    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    if-nez p1, :cond_1

    .line 197
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    throw v0

    .line 199
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move-object v1, p0

    .line 235
    :cond_3
    :goto_0
    return-object v1

    .line 204
    :cond_4
    const/4 v0, 0x0

    move-object v1, v2

    .line 205
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 207
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 210
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 216
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    move-object v0, v2

    :goto_2
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v4, v4

    if-ge v3, v4, :cond_9

    .line 218
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 219
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 221
    if-eqz v1, :cond_6

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 227
    :cond_6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 205
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    :cond_9
    if-nez v1, :cond_3

    .line 233
    if-eqz v0, :cond_a

    .line 234
    new-instance v1, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/util/resource/Resource;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/util/resource/ResourceCollection;-><init>([Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0

    :cond_a
    move-object v1, v2

    .line 235
    goto :goto_0
.end method

.method public copyTo(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 458
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    move v0, v1

    goto :goto_0

    .line 459
    :cond_0
    return-void
.end method

.method public delete()Z
    .locals 1

    .prologue
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 247
    .line 249
    const/4 v0, 0x0

    move-object v1, v2

    .line 250
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 252
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    move-object v0, v2

    :goto_1
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 264
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 265
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 267
    if-eqz v1, :cond_1

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 250
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_4
    if-eqz v1, :cond_6

    .line 280
    :cond_5
    :goto_2
    return-object v1

    .line 278
    :cond_6
    if-eqz v0, :cond_7

    move-object v1, v0

    .line 279
    goto :goto_2

    :cond_7
    move-object v1, v2

    .line 280
    goto :goto_2
.end method

.method public getFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 309
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_1

    .line 313
    :goto_1
    return-object v0

    .line 307
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 313
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 325
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_1

    .line 329
    :goto_1
    return-object v0

    .line 323
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 329
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 341
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_1

    .line 345
    :goto_1
    return-object v0

    .line 339
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 345
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 357
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_1

    .line 361
    :goto_1
    return-object v0

    .line 355
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 361
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getResources()[Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 4

    .prologue
    .line 368
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 373
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_1

    .line 377
    :goto_1
    return-object v0

    .line 371
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 377
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public lastModified()J
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    .line 394
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    .line 399
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v0

    .line 400
    cmp-long v7, v0, v2

    if-eqz v7, :cond_1

    .line 403
    :goto_1
    return-wide v0

    .line 397
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 403
    goto :goto_1
.end method

.method public length()J
    .locals 2

    .prologue
    .line 410
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 424
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 426
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_1

    aget-object v8, v6, v0

    .line 427
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 424
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 430
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 431
    return-object v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 442
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_1
    return-void
.end method

.method public renameTo(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 1

    .prologue
    .line 449
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setResources([Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 1

    .prologue
    .line 148
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 149
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    new-array p1, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    goto :goto_0
.end method

.method public setResourcesAsCSV(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 161
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, ",;"

    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 163
    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ResourceCollection@setResourcesAsCSV(String)  argument must be a string containing one or more comma-separated resource strings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    new-array v0, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 172
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    aput-object v3, v2, v0

    .line 175
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 176
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not an existing directory."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 172
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 469
    const-string v0, "[]"

    .line 471
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->b:[Lorg/eclipse/jetty/util/resource/Resource;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
