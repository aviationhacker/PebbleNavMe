.class public Lorg/eclipse/jetty/util/log/StdErrLog;
.super Lorg/eclipse/jetty/util/log/AbstractLogger;
.source "SourceFile"


# static fields
.field public static final LEVEL_ALL:I = 0x0

.field public static final LEVEL_DEBUG:I = 0x1

.field public static final LEVEL_INFO:I = 0x2

.field public static final LEVEL_WARN:I = 0x3

.field private static final a:Ljava/lang/String;

.field private static b:Lorg/eclipse/jetty/util/DateCache;

.field private static final c:Ljava/util/Properties;

.field private static final d:Z

.field private static final e:Z


# instance fields
.field private f:I

.field private g:I

.field private h:Ljava/io/PrintStream;

.field private i:Z

.field private j:Z

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 42
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->a:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->c:Ljava/util/Properties;

    .line 46
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v2, "org.eclipse.jetty.util.log.SOURCE"

    sget-object v3, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v4, "org.eclipse.jetty.util.log.stderr.SOURCE"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/eclipse/jetty/util/log/StdErrLog;->d:Z

    .line 48
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v2, "org.eclipse.jetty.util.log.stderr.LONG"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/eclipse/jetty/util/log/StdErrLog;->e:Z

    .line 52
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->c:Ljava/util/Properties;

    sget-object v2, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 54
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "DEBUG"

    aput-object v0, v2, v1

    const-string v0, "org.eclipse.jetty.util.log.DEBUG"

    aput-object v0, v2, v8

    const/4 v0, 0x2

    const-string v3, "org.eclipse.jetty.util.log.stderr.DEBUG"

    aput-object v3, v2, v0

    .line 58
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 60
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 62
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "System Property [%s] has been deprecated! (Use org.eclipse.jetty.LEVEL=DEBUG instead)%n"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/util/DateCache;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->b:Lorg/eclipse/jetty/util/DateCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->c:Ljava/util/Properties;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;-><init>()V

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    .line 85
    sget-boolean v0, Lorg/eclipse/jetty/util/log/StdErrLog;->d:Z

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->i:Z

    .line 87
    sget-boolean v0, Lorg/eclipse/jetty/util/log/StdErrLog;->e:Z

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->j:Z

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->m:Z

    .line 106
    if-eqz p2, :cond_0

    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->c:Ljava/util/Properties;

    if-eq p2, v0, :cond_0

    .line 107
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->c:Ljava/util/Properties;

    invoke-virtual {v0, p2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 108
    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->k:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->k:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->condensePackageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->l:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->k:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->getLoggingLevel(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    .line 111
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    iput v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->g:I

    .line 115
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SOURCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->i:Z
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 119
    sget-boolean v0, Lorg/eclipse/jetty/util/log/StdErrLog;->d:Z

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->i:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 516
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 518
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 519
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 521
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 523
    const/16 v1, 0x7c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 516
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_0
    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 527
    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 531
    :cond_1
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 536
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 539
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x3a

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 428
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const/16 v1, 0x63

    if-le p3, v1, :cond_1

    .line 431
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->j:Z

    if-eqz v1, :cond_3

    .line 444
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->i:Z

    if-eqz v1, :cond_6

    .line 453
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 454
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 455
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_6

    .line 457
    aget-object v2, v1, v0

    .line 458
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 459
    const-class v4, Lorg/eclipse/jetty/util/log/StdErrLog;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lorg/eclipse/jetty/util/log/Log;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 455
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 433
    :cond_1
    const/16 v1, 0x9

    if-le p3, v1, :cond_2

    .line 435
    const-string v1, ".0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 439
    :cond_2
    const-string v1, ".00"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 448
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 463
    :cond_4
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->j:Z

    if-nez v0, :cond_7

    const-string v0, "org.eclipse.jetty."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 465
    invoke-static {v3}, Lorg/eclipse/jetty/util/log/StdErrLog;->condensePackageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :goto_3
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 474
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    :cond_5
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    :cond_6
    return-void

    .line 469
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 414
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/log/StdErrLog;->isHideStacks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-direct {p0, p1, p4}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private varargs a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 406
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->b:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 407
    sget-object v1, Lorg/eclipse/jetty/util/log/StdErrLog;->b:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/DateCache;->lastMs()I

    move-result v1

    .line 408
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    .line 409
    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method private varargs a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 484
    if-nez p2, :cond_0

    .line 486
    const-string v0, ""

    move-object v2, v0

    move v0, v1

    .line 487
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{} "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p2

    .line 492
    :cond_1
    const-string v3, "{}"

    .line 494
    array-length v4, p3

    move v0, v1

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, p3, v1

    .line 496
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 497
    if-gez v6, :cond_2

    .line 499
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 500
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 494
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 506
    :cond_2
    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 507
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    goto :goto_2

    .line 511
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 543
    if-nez p2, :cond_1

    .line 545
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v2}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    move v0, v1

    .line 552
    :goto_1
    if-eqz v2, :cond_2

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 554
    sget-object v3, Lorg/eclipse/jetty/util/log/StdErrLog;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 558
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    .line 561
    sget-object v1, Lorg/eclipse/jetty/util/log/StdErrLog;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Caused by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static condensePackageString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 210
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 212
    :goto_0
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 214
    aget-object v4, v2, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 218
    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    :cond_1
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getLevelId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 167
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return v0

    .line 171
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, "ALL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_1
    const-string v2, "DEBUG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    :cond_2
    const-string v2, "INFO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    const/4 v0, 0x2

    goto :goto_0

    .line 184
    :cond_3
    const-string v2, "WARN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    const/4 v0, 0x3

    goto :goto_0

    .line 189
    :cond_4
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown StdErrLog level ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], expecting only [ALL, DEBUG, INFO, WARN] as values."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLoggingLevel(Ljava/util/Properties;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 137
    .line 139
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".LEVEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".LEVEL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->getLevelId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 144
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 162
    :goto_1
    return v0

    .line 150
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 151
    if-ltz v0, :cond_1

    .line 153
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object p1, v0

    .line 159
    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 162
    :cond_2
    const-string v0, "log.LEVEL"

    const-string v1, "log.LEVEL"

    const-string v2, "INFO"

    invoke-virtual {p0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->getLevelId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->c:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 618
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 619
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 396
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 399
    const-string v0, ":DBUG:"

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 402
    :cond_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 381
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 384
    const-string v0, ":DBUG:"

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 387
    :cond_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 391
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    return-void
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->k:Ljava/lang/String;

    return-object v0
.end method

.method public ignore(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 623
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    if-gtz v0, :cond_0

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 626
    const-string v0, ":IGNORED:"

    const-string v2, ""

    invoke-direct {p0, v1, v0, v2, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 629
    :cond_0
    return-void

    .line 627
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 317
    const-string v0, ":INFO:"

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 320
    :cond_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 302
    const-string v0, ":INFO:"

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 305
    :cond_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 309
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 324
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideStacks()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->m:Z

    return v0
.end method

.method public isPrintLongNames()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->j:Z

    return v0
.end method

.method public isSource()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->i:Z

    return v0
.end method

.method protected newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 3

    .prologue
    .line 573
    new-instance v0, Lorg/eclipse/jetty/util/log/StdErrLog;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>(Ljava/lang/String;)V

    .line 575
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->j:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->setPrintLongNames(Z)V

    .line 577
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->i:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->setSource(Z)V

    .line 578
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    iput-object v1, v0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    .line 581
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    iget v2, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->g:I

    if-eq v1, v2, :cond_0

    .line 582
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    iput v1, v0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    .line 584
    :cond_0
    return-object v0
.end method

.method public setDebugEnabled(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 333
    if-eqz p1, :cond_1

    .line 335
    iput v4, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    .line 337
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getLoggers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/log/Logger;

    .line 339
    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/log/StdErrLog;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lorg/eclipse/jetty/util/log/StdErrLog;

    if-eqz v2, :cond_0

    .line 340
    check-cast v0, Lorg/eclipse/jetty/util/log/StdErrLog;

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/util/log/StdErrLog;->setLevel(I)V

    goto :goto_0

    .line 345
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->g:I

    iput v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    .line 347
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getLoggers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/log/Logger;

    .line 349
    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/log/StdErrLog;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lorg/eclipse/jetty/util/log/StdErrLog;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 350
    check-cast v1, Lorg/eclipse/jetty/util/log/StdErrLog;

    check-cast v0, Lorg/eclipse/jetty/util/log/StdErrLog;

    iget v0, v0, Lorg/eclipse/jetty/util/log/StdErrLog;->g:I

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->setLevel(I)V

    goto :goto_1

    .line 353
    :cond_3
    return-void
.end method

.method public setHideStacks(Z)V
    .locals 0

    .prologue
    .line 246
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->m:Z

    .line 247
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .prologue
    .line 371
    iput p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    .line 372
    return-void
.end method

.method public setPrintLongNames(Z)V
    .locals 0

    .prologue
    .line 231
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->j:Z

    .line 232
    return-void
.end method

.method public setSource(Z)V
    .locals 0

    .prologue
    .line 269
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->i:Z

    .line 270
    return-void
.end method

.method public setStdErrStream(Ljava/io/PrintStream;)V
    .locals 1

    .prologue
    .line 376
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    .line 377
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    const-string v1, "StdErrLog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v1, ":LEVEL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    packed-switch v1, :pswitch_data_0

    .line 609
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 597
    :pswitch_0
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 600
    :pswitch_1
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 603
    :pswitch_2
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 606
    :pswitch_3
    const-string v1, "WARN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 292
    const-string v0, ":WARN:"

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 295
    :cond_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 274
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->f:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 277
    const-string v0, ":WARN:"

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 280
    :cond_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->h:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 284
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    return-void
.end method
