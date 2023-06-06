.class public Lorg/eclipse/jetty/util/resource/JarResource;
.super Lorg/eclipse/jetty/util/resource/URLResource;
.source "SourceFile"


# static fields
.field private static final c:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _jarConnection:Ljava/net/JarURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/eclipse/jetty/util/resource/JarResource;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/resource/JarResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Z)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V

    .line 54
    return-void
.end method

.method public static newJarResource(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2

    .prologue
    .line 269
    instance-of v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;

    if-eqz v0, :cond_0

    .line 271
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized checkConnection()Z
    .locals 2

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->checkConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_connection:Ljava/net/URLConnection;

    if-eq v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->newConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/util/resource/JarResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public copyTo(Ljava/io/File;)V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/resource/JarResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lorg/eclipse/jetty/util/resource/JarResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extract "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 143
    const-string v0, "!/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 144
    if-ltz v5, :cond_2

    const/4 v0, 0x4

    .line 146
    :goto_1
    if-gez v5, :cond_3

    .line 147
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid jar url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v2

    .line 144
    goto :goto_1

    .line 149
    :cond_3
    new-instance v7, Ljava/net/URL;

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 150
    add-int/lit8 v0, v5, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_6

    add-int/lit8 v0, v5, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 151
    :goto_2
    if-eqz v6, :cond_7

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 153
    :goto_3
    sget-object v3, Lorg/eclipse/jetty/util/resource/JarResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 154
    sget-object v3, Lorg/eclipse/jetty/util/resource/JarResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extracting entry = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from jar "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Object;

    invoke-interface {v3, v5, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_4
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 157
    new-instance v7, Ljava/util/jar/JarInputStream;

    invoke-direct {v7, v3}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    :cond_5
    :goto_4
    invoke-virtual {v7}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 162
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 163
    if-eqz v6, :cond_a

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 166
    if-nez v0, :cond_13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v5, v9, :cond_13

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v1

    .line 171
    :goto_5
    if-eqz v5, :cond_9

    .line 177
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object v3, v0

    move v0, v5

    move v5, v1

    .line 202
    :goto_6
    if-nez v5, :cond_c

    .line 204
    sget-object v5, Lorg/eclipse/jetty/util/resource/JarResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 205
    sget-object v5, Lorg/eclipse/jetty/util/resource/JarResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping entry: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v8, v2, [Ljava/lang/Object;

    invoke-interface {v5, v3, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    move-object v6, v4

    .line 150
    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 151
    goto/16 :goto_3

    :cond_8
    move-object v3, v0

    move v0, v5

    move v5, v2

    .line 184
    goto :goto_6

    :cond_9
    move v0, v5

    move v5, v1

    .line 187
    goto :goto_6

    .line 189
    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    move v5, v2

    .line 193
    goto :goto_6

    :cond_b
    move v5, v1

    .line 198
    goto :goto_6

    .line 209
    :cond_c
    const/16 v5, 0x5c

    const/16 v9, 0x2f

    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-static {v5}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    if-nez v5, :cond_d

    .line 213
    sget-object v5, Lorg/eclipse/jetty/util/resource/JarResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 214
    sget-object v5, Lorg/eclipse/jetty/util/resource/JarResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid entry: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v8, v2, [Ljava/lang/Object;

    invoke-interface {v5, v3, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 218
    :cond_d
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 223
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 224
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_4

    .line 229
    :cond_e
    new-instance v3, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_f

    .line 231
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 237
    :cond_f
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    invoke-static {v7, v3}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 242
    invoke-static {v3}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/OutputStream;)V

    .line 246
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-ltz v3, :cond_5

    .line 247
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    goto/16 :goto_4

    .line 242
    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_7
    invoke-static {v1}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/OutputStream;)V

    throw v0

    .line 251
    :cond_10
    if-eqz v6, :cond_11

    if-eqz v6, :cond_12

    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 253
    :cond_11
    invoke-virtual {v7}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_12

    .line 256
    new-instance v1, Ljava/io/File;

    const-string v2, "META-INF"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 258
    new-instance v2, Ljava/io/File;

    const-string v3, "MANIFEST.MF"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 261
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 264
    :cond_12
    invoke-static {v7}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 242
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_7

    :cond_13
    move v5, v0

    goto/16 :goto_5
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_urlString:Ljava/lang/String;

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->checkConnection()Z

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->checkConnection()Z

    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_urlString:Ljava/lang/String;

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lorg/eclipse/jetty/util/resource/JarResource$1;

    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/util/resource/JarResource$1;-><init>(Lorg/eclipse/jetty/util/resource/JarResource;Ljava/io/InputStream;)V

    .line 128
    :goto_0
    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_urlString:Ljava/lang/String;

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public newConnection()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_connection:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/JarURLConnection;

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    .line 90
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    .line 61
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
