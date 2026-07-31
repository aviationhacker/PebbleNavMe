.class public Lmq;
.super Lorg/eclipse/jetty/util/resource/JarResource;
.source "SourceFile"


# static fields
.field private static final c:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private d:Ljava/util/jar/JarFile;

.field private e:Ljava/io/File;

.field private f:[Ljava/lang/String;

.field private g:Ljava/util/jar/JarEntry;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lmq;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lmq;->c:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/resource/JarResource;-><init>(Ljava/net/URL;Z)V

    .line 58
    return-void
.end method

.method private a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x2f

    .line 301
    invoke-virtual {p0}, Lmq;->checkConnection()Z

    .line 303
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    iget-object v1, p0, Lmq;->d:Ljava/util/jar/JarFile;

    .line 305
    if-nez v1, :cond_3

    .line 309
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lmq;->i:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    check-cast v0, Ljava/net/JarURLConnection;

    .line 310
    invoke-virtual {p0}, Lmq;->getUseCaches()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 311
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 321
    :goto_0
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 322
    iget-object v0, p0, Lmq;->_urlString:Ljava/lang/String;

    iget-object v3, p0, Lmq;->_urlString:Ljava/lang/String;

    const-string v4, "!/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 323
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 326
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x5c

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 331
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 333
    if-ltz v4, :cond_2

    .line 337
    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 341
    :cond_1
    if-nez v4, :cond_4

    .line 342
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 350
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 313
    :catch_0
    move-exception v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    sget-object v3, Lmq;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 344
    :cond_4
    const/4 v5, 0x0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 353
    :cond_5
    return-object v2
.end method


# virtual methods
.method protected checkConnection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->checkConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lmq;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v0, :cond_0

    .line 101
    iput-object v2, p0, Lmq;->g:Ljava/util/jar/JarEntry;

    .line 102
    iput-object v2, p0, Lmq;->e:Ljava/io/File;

    .line 103
    iput-object v2, p0, Lmq;->d:Ljava/util/jar/JarFile;

    .line 104
    iput-object v2, p0, Lmq;->f:[Ljava/lang/String;

    .line 107
    :cond_0
    iget-object v0, p0, Lmq;->d:Ljava/util/jar/JarFile;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 99
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmq;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v1, :cond_1

    .line 101
    iput-object v2, p0, Lmq;->g:Ljava/util/jar/JarEntry;

    .line 102
    iput-object v2, p0, Lmq;->e:Ljava/io/File;

    .line 103
    iput-object v2, p0, Lmq;->d:Ljava/util/jar/JarFile;

    .line 104
    iput-object v2, p0, Lmq;->f:[Ljava/lang/String;

    :cond_1
    throw v0

    .line 107
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 385
    return-object p1
.end method

.method public exists()Z
    .locals 7

    .prologue
    const/16 v6, 0x2f

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 140
    iget-boolean v0, p0, Lmq;->k:Z

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return v2

    .line 143
    :cond_0
    iget-object v0, p0, Lmq;->_urlString:Ljava/lang/String;

    const-string v3, "!/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lmq;->_urlString:Ljava/lang/String;

    const/4 v2, 0x4

    iget-object v3, p0, Lmq;->_urlString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 147
    :try_start_0
    invoke-static {v0}, Lmq;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    sget-object v2, Lmq;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move v2, v1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lmq;->checkConnection()Z

    move-result v0

    .line 154
    iget-object v3, p0, Lmq;->i:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmq;->j:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 157
    iput-boolean v0, p0, Lmq;->h:Z

    goto :goto_0

    .line 163
    :cond_2
    const/4 v3, 0x0

    .line 164
    if-eqz v0, :cond_7

    .line 166
    iget-object v0, p0, Lmq;->d:Ljava/util/jar/JarFile;

    .line 183
    :goto_1
    if-eqz v0, :cond_5

    iget-object v3, p0, Lmq;->g:Ljava/util/jar/JarEntry;

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lmq;->h:Z

    if-nez v3, :cond_5

    .line 186
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 187
    :cond_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 190
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 193
    iget-object v5, p0, Lmq;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 195
    iput-object v0, p0, Lmq;->g:Ljava/util/jar/JarEntry;

    .line 197
    iget-object v0, p0, Lmq;->j:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmq;->h:Z

    .line 215
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lmq;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmq;->_urlString:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmq;->_urlString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmq;->_urlString:Ljava/lang/String;

    .line 220
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lmq;->_urlString:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmq;->_url:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 230
    :cond_5
    :goto_3
    iget-boolean v0, p0, Lmq;->h:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lmq;->g:Ljava/util/jar/JarEntry;

    if-eqz v0, :cond_a

    :cond_6
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lmq;->k:Z

    .line 231
    iget-boolean v2, p0, Lmq;->k:Z

    goto/16 :goto_0

    .line 172
    :cond_7
    :try_start_2
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lmq;->i:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    check-cast v0, Ljava/net/JarURLConnection;

    .line 173
    invoke-virtual {p0}, Lmq;->getUseCaches()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 174
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_1

    .line 176
    :catch_1
    move-exception v0

    .line 178
    sget-object v4, Lmq;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move-object v0, v3

    goto/16 :goto_1

    .line 200
    :cond_8
    iget-object v0, p0, Lmq;->j:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 202
    iget-object v0, p0, Lmq;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    iput-boolean v2, p0, Lmq;->h:Z

    goto :goto_2

    .line 208
    :cond_9
    iget-object v0, p0, Lmq;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v5, p0, Lmq;->j:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v0, v5, :cond_3

    iget-object v0, p0, Lmq;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_3

    .line 210
    iput-boolean v2, p0, Lmq;->h:Z

    goto/16 :goto_2

    .line 222
    :catch_2
    move-exception v0

    .line 224
    sget-object v3, Lmq;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    move v0, v1

    .line 230
    goto :goto_4
.end method

.method public isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lmq;->_urlString:Ljava/lang/String;

    .line 419
    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 420
    if-lez v1, :cond_0

    .line 421
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 422
    :cond_0
    const-string v1, "jar:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/URL;->sameFile(Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lmq;->_urlString:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmq;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmq;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lmq;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmq;->e:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lmq;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmq;->g:Ljava/util/jar/JarEntry;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lmq;->g:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v0

    .line 260
    :goto_0
    return-wide v0

    .line 258
    :cond_0
    iget-object v0, p0, Lmq;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_0

    .line 260
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public length()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 367
    invoke-virtual {p0}, Lmq;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-wide v0

    .line 370
    :cond_1
    iget-object v2, p0, Lmq;->g:Ljava/util/jar/JarEntry;

    if-eqz v2, :cond_0

    .line 371
    iget-object v0, p0, Lmq;->g:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public declared-synchronized list()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmq;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmq;->f:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 272
    :try_start_1
    invoke-direct {p0}, Lmq;->a()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 288
    :goto_0
    if-eqz v0, :cond_0

    .line 290
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmq;->f:[Ljava/lang/String;

    .line 291
    iget-object v1, p0, Lmq;->f:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 294
    :cond_0
    iget-object v0, p0, Lmq;->f:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 274
    :catch_0
    move-exception v0

    .line 282
    :try_start_3
    sget-object v1, Lmq;->c:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrying list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    sget-object v1, Lmq;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 284
    invoke-virtual {p0}, Lmq;->release()V

    .line 285
    invoke-direct {p0}, Lmq;->a()Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized newConnection()V
    .locals 4

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->newConnection()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lmq;->g:Ljava/util/jar/JarEntry;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lmq;->e:Ljava/io/File;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lmq;->d:Ljava/util/jar/JarFile;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lmq;->f:[Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lmq;->_urlString:Ljava/lang/String;

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 124
    iget-object v1, p0, Lmq;->_urlString:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmq;->i:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lmq;->_urlString:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmq;->j:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lmq;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lmq;->j:Ljava/lang/String;

    .line 128
    :cond_0
    iget-object v0, p0, Lmq;->_jarConnection:Ljava/net/JarURLConnection;

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    iput-object v0, p0, Lmq;->d:Ljava/util/jar/JarFile;

    .line 129
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmq;->d:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmq;->e:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmq;->f:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lmq;->g:Ljava/util/jar/JarEntry;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lmq;->e:Ljava/io/File;

    .line 70
    invoke-virtual {p0}, Lmq;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lmq;->d:Ljava/util/jar/JarFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 76
    :try_start_1
    sget-object v0, Lmq;->c:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing JarFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmq;->d:Ljava/util/jar/JarFile;

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lmq;->d:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lmq;->d:Ljava/util/jar/JarFile;

    .line 86
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    :try_start_3
    sget-object v1, Lmq;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
