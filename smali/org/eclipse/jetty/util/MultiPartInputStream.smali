.class public Lorg/eclipse/jetty/util/MultiPartInputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/MultiPartInputStream$a;,
        Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;
    }
.end annotation


# static fields
.field public static final __DEFAULT_MULTIPART_CONFIG:Ljavax/servlet/MultipartConfigElement;

.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _config:Ljavax/servlet/MultipartConfigElement;

.field protected _contentType:Ljava/lang/String;

.field protected _contextTmpDir:Ljava/io/File;

.field protected _deleteOnExit:Z

.field protected _in:Ljava/io/InputStream;

.field protected _parts:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _tmpDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 63
    new-instance v0, Ljavax/servlet/MultipartConfigElement;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/MultipartConfigElement;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->__DEFAULT_MULTIPART_CONFIG:Ljavax/servlet/MultipartConfigElement;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljavax/servlet/MultipartConfigElement;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/ReadLineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    .line 342
    iput-object p2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    .line 343
    iput-object p3, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    .line 344
    iput-object p4, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    .line 345
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Ljavax/servlet/MultipartConfigElement;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/MultipartConfigElement;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    .line 350
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x27

    const/16 v4, 0x22

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 783
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 784
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 786
    const-string v1, ".??[a-z,A-Z]\\:\\\\[^\\\\].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 790
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 791
    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_1

    .line 792
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 793
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 794
    if-eq v1, v4, :cond_2

    if-ne v1, v5, :cond_3

    .line 795
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 804
    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-static {v0, v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 774
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 775
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-static {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteParts()V
    .locals 3

    .prologue
    .line 380
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->getParsedParts()Ljava/util/Collection;

    move-result-object v0

    .line 381
    new-instance v1, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 382
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/Part;

    .line 386
    :try_start_0
    check-cast v0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->cleanUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 390
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->clear()V

    .line 395
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrowMulti()V

    .line 396
    return-void
.end method

.method public getParsedParts()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/http/Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    if-nez v0, :cond_1

    .line 360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 369
    :cond_0
    return-object v0

    .line 362
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 366
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v2

    .line 367
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getPart(Ljava/lang/String;)Ljavax/servlet/http/Part;
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->parse()V

    .line 433
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/Part;

    return-object v0
.end method

.method public getParts()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/http/Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->parse()V

    .line 410
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 414
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v2

    .line 415
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 417
    :cond_0
    return-object v1
.end method

.method public isDeleteOnExit()Z
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_deleteOnExit:Z

    return v0
.end method

.method protected parse()V
    .locals 19

    .prologue
    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz v2, :cond_1

    .line 740
    :cond_0
    return-void

    .line 451
    :cond_1
    const-wide/16 v6, 0x0

    .line 452
    new-instance v2, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v2}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    const-string v3, "multipart/form-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v2}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    .line 473
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 476
    :cond_2
    const-string v2, ""

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    const-string v4, "boundary="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 478
    if-ltz v3, :cond_4

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 481
    if-gez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 482
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/eclipse/jetty/util/MultiPartInputStream;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 485
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 492
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v2, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 500
    if-nez v3, :cond_8

    .line 501
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Missing content for multipart request"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    :cond_5
    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v3}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto/16 :goto_0

    .line 466
    :cond_6
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v3}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v2}, Ljava/io/File;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 468
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto/16 :goto_0

    .line 470
    :cond_7
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v4}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto/16 :goto_0

    .line 494
    :catch_0
    move-exception v2

    .line 496
    sget-object v3, Lorg/eclipse/jetty/util/MultiPartInputStream;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Badly formatted multipart request"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    throw v2

    .line 503
    :cond_8
    const/4 v2, 0x0

    .line 504
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 505
    :goto_1
    if-eqz v3, :cond_a

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 507
    if-nez v2, :cond_34

    .line 509
    sget-object v2, Lorg/eclipse/jetty/util/MultiPartInputStream;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Badly formatted multipart request"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    const/4 v2, 0x1

    move v3, v2

    .line 512
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v2, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 513
    if-nez v2, :cond_9

    :goto_3
    move/from16 v18, v3

    move-object v3, v2

    move/from16 v2, v18

    goto :goto_1

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 516
    :cond_a
    if-nez v3, :cond_b

    .line 517
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Missing initial multi part boundary"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 520
    :cond_b
    const/4 v9, 0x0

    .line 522
    :cond_c
    :goto_4
    if-nez v9, :cond_d

    .line 524
    const/4 v5, 0x0

    .line 525
    const/4 v4, 0x0

    .line 526
    const/4 v3, 0x0

    .line 528
    new-instance v10, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v10}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 531
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v2, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 534
    if-nez v2, :cond_e

    .line 738
    :cond_d
    if-nez v9, :cond_0

    .line 739
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Incomplete parts"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 538
    :cond_e
    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 563
    const/4 v8, 0x0

    .line 564
    if-nez v5, :cond_13

    .line 566
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Missing content-disposition"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 541
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v14, v8

    add-long/2addr v6, v14

    .line 542
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v8}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v8, v14, v16

    if-lez v8, :cond_10

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v8}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v14

    cmp-long v8, v6, v14

    if-lez v8, :cond_10

    .line 543
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request exceeds maxRequestSize ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v4}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 546
    :cond_10
    const/16 v8, 0x3a

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 547
    if-lez v8, :cond_33

    .line 549
    const/4 v11, 0x0

    invoke-virtual {v2, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 550
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v2, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 551
    invoke-virtual {v10, v11, v2}, Lorg/eclipse/jetty/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v8, "content-disposition"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    move-object v5, v2

    .line 554
    :cond_11
    const-string v8, "content-type"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    move-object v4, v2

    .line 556
    :cond_12
    const-string v8, "content-transfer-encoding"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    move-object v3, v4

    move-object v4, v5

    :goto_6
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    .line 560
    goto/16 :goto_5

    .line 569
    :cond_13
    new-instance v11, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v2, ";"

    const/4 v12, 0x0

    const/4 v14, 0x1

    invoke-direct {v11, v5, v2, v12, v14}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 570
    const/4 v5, 0x0

    .line 571
    const/4 v2, 0x0

    .line 572
    :cond_14
    :goto_7
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 574
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 575
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v12, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 576
    const-string v15, "form-data"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 577
    const/4 v8, 0x1

    goto :goto_7

    .line 578
    :cond_15
    const-string v15, "name="

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 579
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lorg/eclipse/jetty/util/MultiPartInputStream;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 580
    :cond_16
    const-string v15, "filename="

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 581
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/eclipse/jetty/util/MultiPartInputStream;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 585
    :cond_17
    if-eqz v8, :cond_c

    .line 594
    if-eqz v5, :cond_c

    .line 600
    new-instance v14, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5, v2}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;-><init>(Lorg/eclipse/jetty/util/MultiPartInputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {v14, v10}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->setHeaders(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 602
    invoke-virtual {v14, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->setContentType(Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v2, v5, v14}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 604
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->open()V

    .line 607
    const-string v2, "base64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 609
    new-instance v3, Lorg/eclipse/jetty/util/MultiPartInputStream$a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v2, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-direct {v3, v2}, Lorg/eclipse/jetty/util/MultiPartInputStream$a;-><init>(Lorg/eclipse/jetty/util/ReadLineInputStream;)V

    move-object v2, v3

    .line 639
    :goto_8
    const/4 v5, -0x2

    .line 641
    const/4 v4, 0x0

    .line 642
    const/4 v3, 0x0

    .line 647
    :cond_18
    :goto_9
    const/4 v8, 0x0

    move v10, v3

    move v11, v4

    move v3, v5

    .line 648
    :goto_a
    const/4 v4, -0x2

    if-eq v3, v4, :cond_1b

    move v12, v3

    :goto_b
    const/4 v4, -0x1

    if-eq v12, v4, :cond_32

    .line 650
    const-wide/16 v4, 0x1

    add-long/2addr v6, v4

    .line 651
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v3}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v4

    const-wide/16 v16, 0x0

    cmp-long v3, v4, v16

    if-lez v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v3}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v4

    cmp-long v3, v6, v4

    if-lez v3, :cond_1c

    .line 652
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request exceeds maxRequestSize ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v4}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    :catchall_0
    move-exception v2

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->close()V

    throw v2

    .line 611
    :cond_19
    const-string v2, "quoted-printable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 613
    new-instance v2, Lorg/eclipse/jetty/util/MultiPartInputStream$1;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/eclipse/jetty/util/MultiPartInputStream$1;-><init>(Lorg/eclipse/jetty/util/MultiPartInputStream;Ljava/io/InputStream;)V

    goto :goto_8

    .line 635
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    goto :goto_8

    .line 648
    :cond_1b
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v4

    move v12, v4

    goto :goto_b

    .line 654
    :cond_1c
    const/4 v3, -0x2

    .line 657
    const/16 v4, 0xd

    if-eq v12, v4, :cond_1d

    const/16 v4, 0xa

    if-ne v12, v4, :cond_25

    .line 659
    :cond_1d
    const/16 v4, 0xd

    if-ne v12, v4, :cond_32

    .line 661
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->mark(I)V

    .line 662
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 663
    const/16 v5, 0xa

    if-eq v4, v5, :cond_24

    .line 664
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    :goto_c
    move v5, v3

    .line 696
    :goto_d
    if-lez v8, :cond_1e

    array-length v3, v13

    add-int/lit8 v3, v3, -0x2

    if-lt v8, v3, :cond_1f

    :cond_1e
    array-length v3, v13

    add-int/lit8 v3, v3, -0x1

    if-ne v8, v3, :cond_31

    .line 698
    :cond_1f
    if-eqz v11, :cond_20

    .line 699
    const/16 v3, 0xd

    invoke-virtual {v14, v3}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 701
    :cond_20
    if-eqz v10, :cond_21

    .line 702
    const/16 v3, 0xa

    invoke-virtual {v14, v3}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 704
    :cond_21
    const/4 v4, 0x0

    .line 705
    const/4 v3, 0x0

    invoke-virtual {v14, v13, v3, v8}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write([BII)V

    .line 706
    const/4 v3, -0x1

    move v8, v4

    .line 710
    :goto_e
    if-gtz v3, :cond_22

    const/4 v10, -0x1

    if-ne v12, v10, :cond_2a

    .line 713
    :cond_22
    array-length v2, v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v2, :cond_30

    .line 714
    const/4 v2, 0x1

    .line 715
    :goto_f
    const/16 v3, 0xa

    if-ne v5, v3, :cond_23

    .line 735
    :cond_23
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->close()V

    move v9, v2

    .line 737
    goto/16 :goto_4

    :cond_24
    move v3, v4

    .line 666
    goto :goto_c

    .line 672
    :cond_25
    if-ltz v8, :cond_26

    :try_start_3
    array-length v4, v13

    if-ge v8, v4, :cond_26

    aget-byte v4, v13, v8

    if-ne v12, v4, :cond_26

    .line 674
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a

    .line 680
    :cond_26
    if-eqz v11, :cond_27

    .line 681
    const/16 v4, 0xd

    invoke-virtual {v14, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 683
    :cond_27
    if-eqz v10, :cond_28

    .line 684
    const/16 v4, 0xa

    invoke-virtual {v14, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 686
    :cond_28
    const/4 v10, 0x0

    .line 687
    if-lez v8, :cond_29

    .line 688
    const/4 v4, 0x0

    invoke-virtual {v14, v13, v4, v8}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write([BII)V

    .line 690
    :cond_29
    const/4 v8, -0x1

    .line 691
    invoke-virtual {v14, v12}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    move v11, v10

    goto/16 :goto_a

    .line 721
    :cond_2a
    if-eqz v8, :cond_2b

    .line 722
    const/16 v3, 0xd

    invoke-virtual {v14, v3}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 724
    :cond_2b
    if-eqz v4, :cond_2c

    .line 725
    const/16 v3, 0xa

    invoke-virtual {v14, v3}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 727
    :cond_2c
    const/16 v3, 0xd

    if-ne v12, v3, :cond_2e

    const/4 v4, 0x1

    .line 728
    :goto_10
    const/16 v3, 0xa

    if-eq v12, v3, :cond_2d

    const/16 v3, 0xa

    if-ne v5, v3, :cond_2f

    :cond_2d
    const/4 v3, 0x1

    .line 729
    :goto_11
    const/16 v8, 0xa

    if-ne v5, v8, :cond_18

    .line 730
    const/4 v5, -0x2

    goto/16 :goto_9

    .line 727
    :cond_2e
    const/4 v4, 0x0

    goto :goto_10

    .line 728
    :cond_2f
    const/4 v3, 0x0

    goto :goto_11

    :cond_30
    move v2, v9

    goto :goto_f

    :cond_31
    move v3, v8

    move v4, v10

    move v8, v11

    goto :goto_e

    :cond_32
    move v5, v3

    goto/16 :goto_d

    :cond_33
    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_6

    :cond_34
    move v3, v2

    goto/16 :goto_2
.end method

.method public setDeleteOnExit(Z)V
    .locals 0

    .prologue
    .line 744
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_deleteOnExit:Z

    .line 745
    return-void
.end method
