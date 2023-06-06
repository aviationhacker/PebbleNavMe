.class public abstract Lorg/eclipse/jetty/util/resource/Resource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/resource/ResourceFactory;


# static fields
.field public static __defaultUseCaches:Z

.field private static final b:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field volatile a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/eclipse/jetty/util/resource/Resource;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/resource/Resource;->b:Lorg/eclipse/jetty/util/log/Logger;

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 560
    const/4 v2, 0x0

    move v0, v1

    .line 563
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 565
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 566
    sparse-switch v3, :sswitch_data_0

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 576
    :goto_1
    if-nez v0, :cond_0

    .line 602
    :goto_2
    return-object p0

    .line 585
    :sswitch_1
    const-string v2, "%22"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :goto_3
    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 581
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 582
    sparse-switch v2, :sswitch_data_1

    .line 597
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 588
    :sswitch_2
    const-string v2, "%27"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 591
    :sswitch_3
    const-string v2, "%3C"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 594
    :sswitch_4
    const-string v2, "%3E"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 602
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_1

    .line 566
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch

    .line 582
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_2
        0x3c -> :sswitch_3
        0x3e -> :sswitch_4
    .end sparse-switch
.end method

.method static a(Ljava/net/URL;Z)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 103
    if-nez p0, :cond_0

    .line 129
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/util/resource/FileResource;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/util/resource/FileResource;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 116
    sget-object v0, Lorg/eclipse/jetty/util/resource/Resource;->b:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "EXCEPTION "

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    new-instance v0, Lmp;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmp;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    const-string v2, "jar:file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    new-instance v0, Lmq;

    invoke-direct {v0, p0, p1}, Lmq;-><init>(Ljava/net/URL;Z)V

    goto :goto_0

    .line 124
    :cond_2
    const-string v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    new-instance v0, Lorg/eclipse/jetty/util/resource/JarResource;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/util/resource/JarResource;-><init>(Ljava/net/URL;Z)V

    goto :goto_0

    .line 129
    :cond_3
    new-instance v1, Lorg/eclipse/jetty/util/resource/URLResource;

    invoke-direct {v1, p0, v0, p1}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 607
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-static {p0, v0, v1}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-static {v0, v1, v2}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    return v0
.end method

.method public static isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z

    move-result v0

    return v0
.end method

.method public static newClassPathResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2

    .prologue
    .line 266
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/eclipse/jetty/util/resource/Resource;->newClassPathResource(Ljava/lang/String;ZZ)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static newClassPathResource(Ljava/lang/String;ZZ)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 283
    const-class v0, Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 285
    if-nez v0, :cond_0

    .line 286
    const-class v0, Lorg/eclipse/jetty/util/resource/Resource;

    invoke-static {v0, p0, p2}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    .line 287
    :cond_0
    if-nez v0, :cond_1

    .line 288
    const/4 v0, 0x0

    .line 289
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->a(Ljava/net/URL;Z)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    goto :goto_0
.end method

.method public static newResource(Ljava/io/File;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 4

    .prologue
    .line 199
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->toURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 203
    new-instance v3, Lorg/eclipse/jetty/util/resource/FileResource;

    invoke-direct {v3, v1, v2, v0}, Lorg/eclipse/jetty/util/resource/FileResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/File;)V

    .line 204
    return-object v3
.end method

.method public static newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;Z)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static newResource(Ljava/lang/String;Z)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 5

    .prologue
    .line 154
    .line 158
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 162
    const-string v0, "ftp:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jar:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :try_start_1
    const-string v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 172
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 173
    invoke-static {v2}, Lorg/eclipse/jetty/util/resource/Resource;->toURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v3

    .line 175
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 176
    invoke-virtual {v4, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 177
    new-instance v0, Lorg/eclipse/jetty/util/resource/FileResource;

    invoke-direct {v0, v3, v4, v2}, Lorg/eclipse/jetty/util/resource/FileResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 179
    :catch_1
    move-exception v0

    .line 181
    sget-object v2, Lorg/eclipse/jetty/util/resource/Resource;->b:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "EXCEPTION "

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    throw v1

    .line 187
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/util/resource/Resource;->b:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad Resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    throw v1
.end method

.method public static newResource(Ljava/net/URI;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/resource/Resource;->a(Ljava/net/URL;Z)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static newSystemResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 218
    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 221
    if-eqz v2, :cond_4

    .line 225
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 226
    if-nez v0, :cond_0

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 239
    const-class v2, Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 240
    if-eqz v2, :cond_1

    .line 242
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 243
    if-nez v0, :cond_1

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 248
    :cond_1
    if-nez v0, :cond_2

    .line 250
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 251
    if-nez v0, :cond_2

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 255
    :cond_2
    if-nez v0, :cond_3

    move-object v0, v1

    .line 258
    :goto_1
    return-object v0

    .line 229
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 234
    goto :goto_0

    .line 258
    :cond_3
    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static setDefaultUseCaches(Z)V
    .locals 0

    .prologue
    .line 61
    sput-boolean p0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    .line 62
    return-void
.end method

.method public static toURL(Ljava/io/File;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 676
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
.end method

.method public copyTo(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 638
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    .line 641
    return-void
.end method

.method public abstract delete()Z
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract exists()Z
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 303
    return-void
.end method

.method public getAlias()Ljava/net/URL;
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssociate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/Resource;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getFile()Ljava/io/File;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public getListHTML(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    .line 489
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-object v0

    .line 493
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v2

    .line 494
    if-eqz v2, :cond_0

    .line 496
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 498
    invoke-static {v1}, Lorg/eclipse/jetty/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1000

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 502
    const-string v4, "<HTML><HEAD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v4, "<LINK HREF=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "jetty-dir.css"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" REL=\"stylesheet\" TYPE=\"text/css\"/><TITLE>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v4, "</TITLE></HEAD><BODY>\n<H1>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v0, "</H1>\n<TABLE BORDER=0>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    if-eqz p2, :cond_2

    .line 511
    const-string v0, "<TR><TD><A HREF=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string v0, "../"

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v0, "\">Parent Directory</A></TD><TD></TD><TD></TD></TR>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_2
    invoke-static {v1}, Lorg/eclipse/jetty/util/resource/Resource;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-static {v6, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v4

    .line 520
    const/4 v0, 0x0

    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_4

    .line 522
    aget-object v5, v2, v0

    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    .line 524
    const-string v6, "\n<TR><TD><A HREF=\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    aget-object v6, v2, v0

    invoke-static {v6}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 527
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 530
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_3
    const-string v6, "\">"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    aget-object v6, v2, v0

    invoke-static {v6}, Lorg/eclipse/jetty/util/resource/Resource;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string v6, "&nbsp;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string v6, "</A></TD><TD ALIGN=right>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 538
    const-string v6, " bytes&nbsp;</TD><TD>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string v5, "</TD></TR>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 542
    :cond_4
    const-string v0, "</TABLE>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v0, "</BODY></HTML>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2

    .prologue
    .line 439
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    .line 441
    :catch_0
    move-exception v0

    .line 443
    sget-object v1, Lorg/eclipse/jetty/util/resource/Resource;->b:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 444
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getURI()Ljava/net/URI;
    .locals 2

    .prologue
    .line 358
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 360
    :catch_0
    move-exception v0

    .line 362
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract getURL()Ljava/net/URL;
.end method

.method public getWeakETag()Ljava/lang/String;
    .locals 8

    .prologue
    .line 648
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 649
    const-string v0, "W/\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    .line 652
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 653
    const-wide/16 v2, 0x0

    .line 654
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 655
    const-wide/16 v6, 0x1f

    mul-long/2addr v2, v6

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v4

    xor-long/2addr v4, v2

    invoke-static {v4, v5, v1}, Lorg/eclipse/jetty/util/B64Code;->encode(JLjava/lang/Appendable;)V

    .line 658
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-static {v2, v3, v1}, Lorg/eclipse/jetty/util/B64Code;->encode(JLjava/lang/Appendable;)V

    .line 659
    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 662
    :catch_0
    move-exception v0

    .line 664
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract lastModified()J
.end method

.method public abstract length()J
.end method

.method public abstract list()[Ljava/lang/String;
.end method

.method public abstract release()V
.end method

.method public abstract renameTo(Lorg/eclipse/jetty/util/resource/Resource;)Z
.end method

.method public setAssociate(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lorg/eclipse/jetty/util/resource/Resource;->a:Ljava/lang/Object;

    .line 469
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;JJ)V
    .locals 4

    .prologue
    .line 619
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 622
    :try_start_0
    invoke-virtual {v1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    .line 623
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-gez v0, :cond_0

    .line 624
    invoke-static {v1, p1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 632
    return-void

    .line 626
    :cond_0
    :try_start_1
    invoke-static {v1, p1, p4, p5}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 630
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method
