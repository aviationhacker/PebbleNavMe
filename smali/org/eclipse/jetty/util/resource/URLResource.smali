.class public Lorg/eclipse/jetty/util/resource/URLResource;
.super Lorg/eclipse/jetty/util/resource/Resource;
.source "SourceFile"


# static fields
.field private static final c:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _connection:Ljava/net/URLConnection;

.field protected _in:Ljava/io/InputStream;

.field protected _url:Ljava/net/URL;

.field protected _urlString:Ljava/lang/String;

.field transient b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/eclipse/jetty/util/resource/URLResource;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/resource/URLResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    .line 45
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->b:Z

    .line 50
    iput-object p1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_urlString:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    .line 53
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 59
    iput-boolean p3, p0, Lorg/eclipse/jetty/util/resource/URLResource;->b:Z

    .line 60
    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    .line 283
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/URLResource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized checkConnection()Z
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 68
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    iget-boolean v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->b:Z

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/util/resource/URLResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public delete()Z
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 306
    instance-of v0, p1, Lorg/eclipse/jetty/util/resource/URLResource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_urlString:Ljava/lang/String;

    check-cast p1, Lorg/eclipse/jetty/util/resource/URLResource;

    iget-object v1, p1, Lorg/eclipse/jetty/util/resource/URLResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 104
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    .line 108
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 108
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 110
    :catch_0
    move-exception v0

    .line 112
    sget-object v1, Lorg/eclipse/jetty/util/resource/URLResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v1

    .line 178
    instance-of v0, v1, Ljava/io/FilePermission;

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    :goto_0
    return-object v0

    .line 183
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    sget-object v1, Lorg/eclipse/jetty/util/resource/URLResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 187
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->checkConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid resource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 213
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 219
    :cond_1
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 223
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->b:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    .line 139
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    .line 152
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public list()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 87
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :cond_1
    monitor-exit p0

    return-void

    .line 87
    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/util/resource/URLResource;->c:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public renameTo(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "RenameTo not supported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_urlString:Ljava/lang/String;

    return-object v0
.end method
