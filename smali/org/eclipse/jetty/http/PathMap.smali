.class public Lorg/eclipse/jetty/http/PathMap;
.super Ljava/util/HashMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/PathMap$Entry;
    }
.end annotation


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field final a:Lorg/eclipse/jetty/util/StringMap;

.field final b:Lorg/eclipse/jetty/util/StringMap;

.field final c:Lorg/eclipse/jetty/util/StringMap;

.field d:Ljava/util/List;

.field e:Lorg/eclipse/jetty/http/PathMap$Entry;

.field f:Lorg/eclipse/jetty/http/PathMap$Entry;

.field final g:Ljava/util/Set;

.field h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, ":,"

    sput-object v0, Lorg/eclipse/jetty/http/PathMap;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->a:Lorg/eclipse/jetty/util/StringMap;

    .line 83
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->b:Lorg/eclipse/jetty/util/StringMap;

    .line 84
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    .line 86
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->d:Ljava/util/List;

    .line 87
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->e:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 88
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->f:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/PathMap;->h:Z

    .line 98
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->g:Ljava/util/Set;

    .line 99
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->a:Lorg/eclipse/jetty/util/StringMap;

    .line 83
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->b:Lorg/eclipse/jetty/util/StringMap;

    .line 84
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    .line 86
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->d:Ljava/util/List;

    .line 87
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->e:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 88
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->f:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/PathMap;->h:Z

    .line 117
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->g:Ljava/util/Set;

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 82
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->a:Lorg/eclipse/jetty/util/StringMap;

    .line 83
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->b:Lorg/eclipse/jetty/util/StringMap;

    .line 84
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    .line 86
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->d:Ljava/util/List;

    .line 87
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->e:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 88
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->f:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/PathMap;->h:Z

    .line 125
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->putAll(Ljava/util/Map;)V

    .line 126
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->g:Ljava/util/Set;

    .line 127
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->a:Lorg/eclipse/jetty/util/StringMap;

    .line 83
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->b:Lorg/eclipse/jetty/util/StringMap;

    .line 84
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    .line 86
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->d:Ljava/util/List;

    .line 87
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->e:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 88
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->f:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/PathMap;->h:Z

    .line 107
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->g:Ljava/util/Set;

    .line 108
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/PathMap;->h:Z

    .line 109
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 439
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 440
    const-string v2, "/*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0, p0, v0, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v1, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v2, v1, :cond_1

    .line 443
    :cond_0
    const/4 v0, 0x1

    .line 445
    :cond_1
    return v0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 417
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 418
    const-string v0, "/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 432
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 421
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_4

    .line 423
    if-nez p2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v0, :cond_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 426
    invoke-static {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 432
    goto :goto_0

    .line 429
    :cond_4
    const/16 v3, 0x2a

    if-ne v2, v3, :cond_3

    .line 430
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, p0, v0, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method public static pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 483
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    :goto_0
    return-object p1

    .line 486
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 488
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_4

    .line 490
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move-object p1, v0

    .line 491
    goto :goto_0

    .line 493
    :cond_1
    invoke-static {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 496
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    move-object p1, v0

    .line 497
    goto :goto_0

    .line 499
    :cond_2
    if-eqz v1, :cond_4

    .line 501
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_3

    move-object p1, v0

    .line 502
    goto :goto_0

    .line 503
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v0

    .line 506
    goto :goto_0
.end method

.method public static pathMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 455
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 457
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 459
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-object p1

    .line 462
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    invoke-static {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 468
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, p0, v3, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static relativePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 521
    invoke-static {p1, p2}, Lorg/eclipse/jetty/http/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    if-nez v0, :cond_4

    .line 525
    :goto_0
    const-string v0, "./"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 527
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    :goto_1
    return-object v0

    .line 531
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 533
    :cond_2
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 536
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object p2, v0

    goto :goto_0
.end method

.method public static setPathSpecSeparators(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    sput-object p0, Lorg/eclipse/jetty/http/PathMap;->i:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/StringMap;->clear()V

    .line 393
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->a:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/StringMap;->clear()V

    .line 394
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->b:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/StringMap;->clear()V

    .line 395
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->f:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 396
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->d:Ljava/util/List;

    .line 397
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 398
    return-void
.end method

.method public containsMatch(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->f:Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 290
    const/4 v0, 0x0

    .line 292
    if-nez p1, :cond_1

    .line 293
    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 334
    :cond_0
    :goto_0
    return-object v1

    .line 295
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 298
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v1, p1, v2, v3}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v1

    .line 299
    if-eqz v1, :cond_2

    .line 300
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    :cond_2
    add-int/lit8 v1, v3, -0x1

    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 304
    :cond_3
    :goto_1
    const/16 v4, 0x2f

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-ltz v0, :cond_4

    .line 306
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->a:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v4, p1, v2, v0}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v4

    .line 307
    if-eqz v4, :cond_3

    .line 308
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 312
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->e:Lorg/eclipse/jetty/http/PathMap$Entry;

    if-eqz v0, :cond_5

    .line 313
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->e:Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_5
    move v0, v2

    .line 317
    :cond_6
    :goto_2
    const/16 v2, 0x2e

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_7

    .line 319
    iget-object v2, p0, Lorg/eclipse/jetty/http/PathMap;->b:Lorg/eclipse/jetty/util/StringMap;

    add-int/lit8 v4, v0, 0x1

    sub-int v5, v3, v0

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, p1, v4, v5}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v2

    .line 320
    if-eqz v2, :cond_6

    .line 321
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 325
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->f:Lorg/eclipse/jetty/http/PathMap$Entry;

    if-eqz v0, :cond_0

    .line 328
    if-nez v1, :cond_8

    .line 329
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->d:Ljava/util/List;

    goto :goto_0

    .line 331
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->f:Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;
    .locals 5

    .prologue
    const/16 v4, 0x2f

    const/4 v2, 0x0

    .line 235
    .line 237
    if-nez p1, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 243
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_1

    .line 245
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 246
    if-eqz v0, :cond_1

    .line 247
    check-cast v0, Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0, p1, v2, v1}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_2

    .line 253
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 257
    :cond_3
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-ltz v0, :cond_4

    .line 259
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->a:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v3, p1, v2, v0}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v3

    .line 260
    if-eqz v3, :cond_3

    .line 261
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 265
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->e:Lorg/eclipse/jetty/http/PathMap$Entry;

    if-eqz v0, :cond_5

    .line 266
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->e:Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    :cond_5
    move v0, v2

    .line 270
    :cond_6
    const/16 v2, 0x2e

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_7

    .line 272
    iget-object v2, p0, Lorg/eclipse/jetty/http/PathMap;->b:Lorg/eclipse/jetty/util/StringMap;

    add-int/lit8 v3, v0, 0x1

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, p1, v3, v4}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v2

    .line 273
    if-eqz v2, :cond_6

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 278
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->f:Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0
.end method

.method public getMatches(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    new-instance v0, Lorg/eclipse/jetty/http/PathMap$Entry;

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Lorg/eclipse/jetty/http/PathMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/PathMap$Entry;->a(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, ""

    invoke-super {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    :cond_0
    return-object v0

    .line 163
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    sget-object v2, Lorg/eclipse/jetty/http/PathMap;->i:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    .line 166
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 170
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "*."

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PathSpec "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". must start with \'/\' or \'*.\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_3
    invoke-super {p0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    new-instance v3, Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-direct {v3, v2, p2}, Lorg/eclipse/jetty/http/PathMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/PathMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    const-string v4, "/*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 181
    iput-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->e:Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 182
    :cond_4
    const-string v4, "/*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 184
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/http/PathMap$Entry;->a(Ljava/lang/String;)V

    .line 186
    iget-object v5, p0, Lorg/eclipse/jetty/http/PathMap;->a:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v5, v4, v3}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v5, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v5, v4, v3}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 190
    :cond_5
    const-string v4, "*."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 191
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->b:Lorg/eclipse/jetty/util/StringMap;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 192
    :cond_6
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 194
    iget-boolean v4, p0, Lorg/eclipse/jetty/http/PathMap;->h:Z

    if-eqz v4, :cond_7

    .line 195
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v4, v2, v3}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 198
    :cond_7
    iput-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->f:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 199
    iget-object v2, p0, Lorg/eclipse/jetty/http/PathMap;->f:Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/http/PathMap;->d:Ljava/util/List;

    goto/16 :goto_0

    .line 205
    :cond_8
    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/http/PathMap$Entry;->a(Ljava/lang/String;)V

    .line 206
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v4, v2, v3}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    .prologue
    .line 141
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 142
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/PathMap;->putAll(Ljava/util/Map;)V

    .line 143
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 364
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 366
    check-cast v0, Ljava/lang/String;

    .line 367
    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    iput-object v2, p0, Lorg/eclipse/jetty/http/PathMap;->e:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 385
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 369
    :cond_1
    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->a:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 375
    :cond_2
    const-string v1, "*."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->b:Lorg/eclipse/jetty/util/StringMap;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 377
    :cond_3
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 379
    iput-object v2, p0, Lorg/eclipse/jetty/http/PathMap;->f:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 380
    iput-object v2, p0, Lorg/eclipse/jetty/http/PathMap;->d:Ljava/util/List;

    goto :goto_0

    .line 383
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->c:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 134
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 135
    return-void
.end method
