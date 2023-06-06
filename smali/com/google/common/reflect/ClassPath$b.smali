.class abstract Lcom/google/common/reflect/ClassPath$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/ClassPath$b;->a:Ljava/util/Set;

    return-void
.end method

.method static a(Ljava/io/File;Ljava/util/jar/Manifest;)Lcom/google/common/collect/ImmutableSet;
    .locals 6
    .param p1    # Ljava/util/jar/Manifest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/jar/Manifest;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    if-nez p1, :cond_0

    .line 357
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 359
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 360
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    sget-object v2, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    .line 361
    invoke-virtual {v2}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_3

    .line 363
    invoke-static {}, Lcom/google/common/reflect/ClassPath;->a()Lcom/google/common/base/Splitter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/common/reflect/ClassPath$b;->a(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_1

    .line 367
    :catch_0
    move-exception v3

    .line 369
    invoke-static {}, Lcom/google/common/reflect/ClassPath;->b()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v4, "Invalid Class-Path entry: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 377
    :cond_3
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 410
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method static b(Ljava/lang/ClassLoader;)Lcom/google/common/collect/ImmutableMap;
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 384
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    .line 386
    invoke-static {v0}, Lcom/google/common/reflect/ClassPath$b;->b(Ljava/lang/ClassLoader;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 388
    :cond_0
    instance-of v0, p0, Ljava/net/URLClassLoader;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 389
    check-cast v0, Ljava/net/URLClassLoader;

    .line 390
    invoke-virtual {v0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 391
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 392
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 394
    invoke-virtual {v1, v5, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_2
    invoke-static {v1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/io/File;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p0, p2, p1}, Lcom/google/common/reflect/ClassPath$b;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/ClassPath$b;->c(Ljava/io/File;Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method private c(Ljava/io/File;Ljava/lang/ClassLoader;)V
    .locals 3

    .prologue
    .line 330
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 336
    :try_start_1
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/reflect/ClassPath$b;->a(Ljava/io/File;Ljava/util/jar/Manifest;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 337
    invoke-virtual {p0, v0, p2}, Lcom/google/common/reflect/ClassPath$b;->a(Ljava/io/File;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    .line 342
    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 343
    :goto_1
    throw v0

    .line 339
    :cond_0
    :try_start_3
    invoke-virtual {p0, p2, v1}, Lcom/google/common/reflect/ClassPath$b;->a(Ljava/lang/ClassLoader;Ljava/util/jar/JarFile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 342
    :try_start_4
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 345
    :goto_2
    return-void

    .line 343
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    .line 331
    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method final a(Ljava/io/File;Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$b;->a:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/ClassPath$b;->b(Ljava/io/File;Ljava/lang/ClassLoader;)V

    .line 314
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/ClassLoader;)V
    .locals 3

    .prologue
    .line 298
    invoke-static {p1}, Lcom/google/common/reflect/ClassPath$b;->b(Ljava/lang/ClassLoader;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-virtual {p0, v1, v0}, Lcom/google/common/reflect/ClassPath$b;->a(Ljava/io/File;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method protected abstract a(Ljava/lang/ClassLoader;Ljava/io/File;)V
.end method

.method protected abstract a(Ljava/lang/ClassLoader;Ljava/util/jar/JarFile;)V
.end method
