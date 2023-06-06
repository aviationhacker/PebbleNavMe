.class public Lorg/apache/commons/lang3/text/StrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/text/StrBuilder$c;,
        Lorg/apache/commons/lang3/text/StrBuilder$a;,
        Lorg/apache/commons/lang3/text/StrBuilder$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field protected buffer:[C

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    .line 101
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-gtz p1, :cond_0

    .line 111
    const/16 p1, 0x20

    .line 113
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    if-nez p1, :cond_0

    .line 125
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 128
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0
.end method

.method private a(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 9

    .prologue
    .line 1876
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_1

    .line 1892
    :cond_0
    return-object p0

    .line 1879
    :cond_1
    if-nez p2, :cond_2

    const/4 v5, 0x0

    .line 1880
    :goto_0
    iget-object v8, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v1, p3

    move v6, p5

    move v7, p4

    .line 1881
    :goto_1
    if-ge v1, v7, :cond_0

    if-eqz v6, :cond_0

    .line 1882
    invoke-virtual {p1, v8, v1, p3, v7}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v3

    .line 1883
    if-lez v3, :cond_4

    .line 1884
    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->a(IIILjava/lang/String;I)V

    .line 1885
    sub-int v0, v7, v3

    add-int v2, v0, v5

    .line 1886
    add-int v0, v1, v5

    add-int/lit8 v1, v0, -0x1

    .line 1887
    if-lez v6, :cond_3

    .line 1888
    add-int/lit8 v0, v6, -0x1

    .line 1881
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v6, v0

    move v7, v2

    goto :goto_1

    .line 1879
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v6

    move v2, v7

    goto :goto_2
.end method

.method private a(III)V
    .locals 3

    .prologue
    .line 1555
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1556
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 1557
    return-void
.end method

.method private a(IIILjava/lang/String;I)V
    .locals 5

    .prologue
    .line 1694
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    add-int/2addr v0, p5

    .line 1695
    if-eq p5, p3, :cond_0

    .line 1696
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1697
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v3, p1, p5

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1698
    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 1700
    :cond_0
    if-lez p5, :cond_1

    .line 1701
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p4, v0, p5, v1, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1703
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    .prologue
    .line 723
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    .line 724
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 725
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char p1, v0, v1

    .line 726
    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 766
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 756
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 736
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(J)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 746
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 475
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 489
    if-nez p1, :cond_0

    .line 490
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 457
    if-nez p1, :cond_0

    .line 458
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    .prologue
    .line 503
    if-nez p1, :cond_1

    .line 504
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    .line 513
    :cond_0
    :goto_0
    return-object p0

    .line 506
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 507
    if-lez v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    .line 509
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 510
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 511
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    .prologue
    .line 526
    if-nez p1, :cond_1

    .line 527
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    .line 541
    :cond_0
    :goto_0
    return-object p0

    .line 529
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 530
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_3
    if-ltz p3, :cond_4

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 533
    :cond_4
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_5
    if-lez p3, :cond_0

    .line 536
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    .line 537
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 538
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 539
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    .prologue
    .line 552
    if-nez p1, :cond_1

    .line 553
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    .line 562
    :cond_0
    :goto_0
    return-object p0

    .line 555
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 556
    if-lez v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    .line 558
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 559
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 560
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    .prologue
    .line 575
    if-nez p1, :cond_1

    .line 576
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    .line 590
    :cond_0
    :goto_0
    return-object p0

    .line 578
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 579
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_3
    if-ltz p3, :cond_4

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 582
    :cond_4
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_5
    if-lez p3, :cond_0

    .line 585
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    .line 586
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 587
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 588
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 5

    .prologue
    .line 601
    if-nez p1, :cond_1

    .line 602
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    .line 611
    :cond_0
    :goto_0
    return-object p0

    .line 604
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    .line 605
    if-lez v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    .line 607
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 608
    iget-object v2, p1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    .prologue
    .line 624
    if-nez p1, :cond_1

    .line 625
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    .line 639
    :cond_0
    :goto_0
    return-object p0

    .line 627
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 628
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_3
    if-ltz p3, :cond_4

    add-int v0, p2, p3

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 631
    :cond_4
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_5
    if-lez p3, :cond_0

    .line 634
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    .line 635
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 636
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->getChars(II[CI)V

    .line 637
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Z)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    .prologue
    const/16 v3, 0x65

    .line 698
    if-eqz p1, :cond_0

    .line 699
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 700
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 701
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 702
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 703
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char v3, v0, v1

    .line 712
    :goto_0
    return-object p0

    .line 705
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 706
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 707
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x61

    aput-char v2, v0, v1

    .line 708
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    .line 709
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x73

    aput-char v2, v0, v1

    .line 710
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public append([C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    .prologue
    .line 650
    if-nez p1, :cond_1

    .line 651
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    .line 660
    :cond_0
    :goto_0
    return-object p0

    .line 653
    :cond_1
    array-length v0, p1

    .line 654
    if-lez v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    .line 656
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 657
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append([CII)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    .prologue
    .line 673
    if-nez p1, :cond_1

    .line 674
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    .line 688
    :cond_0
    :goto_0
    return-object p0

    .line 676
    :cond_1
    if-ltz p2, :cond_2

    array-length v0, p1

    if-le p2, v0, :cond_3

    .line 677
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid startIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_3
    if-ltz p3, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_5

    .line 680
    :cond_4
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_5
    if-lez p3, :cond_0

    .line 683
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    .line 684
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 685
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public appendAll(Ljava/lang/Iterable;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lorg/apache/commons/lang3/text/StrBuilder;"
        }
    .end annotation

    .prologue
    .line 981
    if-eqz p1, :cond_0

    .line 982
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 983
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 984
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    .line 987
    :cond_0
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Lorg/apache/commons/lang3/text/StrBuilder;"
        }
    .end annotation

    .prologue
    .line 1000
    if-eqz p1, :cond_0

    .line 1001
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    .line 1005
    :cond_0
    return-object p0
.end method

.method public appendAll([Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    .prologue
    .line 963
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 964
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 965
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 964
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    :cond_0
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 1301
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1269
    if-lez p2, :cond_1

    .line 1270
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1271
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v0

    .line 1272
    :goto_0
    if-nez v0, :cond_0

    .line 1273
    const-string v0, ""

    .line 1275
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1276
    if-lt v3, p2, :cond_3

    .line 1277
    sub-int v1, v3, p2

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v3, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1285
    :goto_1
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 1287
    :cond_1
    return-object p0

    .line 1271
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1279
    :cond_3
    sub-int v4, p2, v3

    move v1, v2

    .line 1280
    :goto_2
    if-ge v1, v4, :cond_4

    .line 1281
    iget-object v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v6, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v6, v1

    aput-char p3, v5, v6

    .line 1280
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1283
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1
.end method

.method public appendFixedWidthPadRight(IIC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 1348
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1316
    if-lez p2, :cond_2

    .line 1317
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1318
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v0

    .line 1319
    :goto_0
    if-nez v0, :cond_0

    .line 1320
    const-string v0, ""

    .line 1322
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1323
    if-lt v2, p2, :cond_4

    .line 1324
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1332
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 1334
    :cond_2
    return-object p0

    .line 1318
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1326
    :cond_4
    sub-int v3, p2, v2

    .line 1327
    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    move v0, v1

    .line 1328
    :goto_1
    if-ge v0, v3, :cond_1

    .line 1329
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v4, v2

    add-int/2addr v4, v0

    aput-char p3, v1, v4

    .line 1328
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 431
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 434
    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public appendNull()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public appendPadding(IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    .prologue
    .line 1247
    if-ltz p1, :cond_0

    .line 1248
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1249
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1250
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char p2, v1, v2

    .line 1249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1253
    :cond_0
    return-object p0
.end method

.method public appendSeparator(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 1158
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1159
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1161
    :cond_0
    return-object p0
.end method

.method public appendSeparator(CC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1177
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1181
    :goto_0
    return-object p0

    .line 1179
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0
.end method

.method public appendSeparator(CI)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .prologue
    .line 1232
    if-lez p2, :cond_0

    .line 1233
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1235
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 1100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeparator(Ljava/lang/String;I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .prologue
    .line 1205
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 1206
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1208
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 1131
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1132
    :goto_0
    if-eqz p2, :cond_0

    .line 1133
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1135
    :cond_0
    return-object p0

    :cond_1
    move-object p2, p1

    .line 1131
    goto :goto_0
.end method

.method public appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/lang3/text/StrBuilder;"
        }
    .end annotation

    .prologue
    .line 1042
    if-eqz p1, :cond_2

    .line 1043
    if-nez p2, :cond_0

    const-string p2, ""

    .line 1044
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1045
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1046
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1047
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1048
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    .line 1052
    :cond_2
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/lang3/text/StrBuilder;"
        }
    .end annotation

    .prologue
    .line 1066
    if-eqz p1, :cond_1

    .line 1067
    if-nez p2, :cond_0

    const-string p2, ""

    .line 1068
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1069
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1070
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    .line 1075
    :cond_1
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    .prologue
    .line 1020
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 1021
    if-nez p2, :cond_0

    const-string p2, ""

    .line 1022
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1023
    const/4 v0, 0x1

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1024
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1025
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1028
    :cond_1
    return-object p0
.end method

.method public appendln(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 905
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(D)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 949
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(D)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(F)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 938
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(F)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(I)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(J)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(J)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 779
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 791
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 817
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 843
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Z)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 894
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Z)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 869
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([CII)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 883
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asReader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 2467
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrBuilder$a;-><init>(Lorg/apache/commons/lang3/text/StrBuilder;)V

    return-object v0
.end method

.method public asTokenizer()Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .prologue
    .line 2443
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder$b;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrBuilder$b;-><init>(Lorg/apache/commons/lang3/text/StrBuilder;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 2492
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder$c;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrBuilder$c;-><init>(Lorg/apache/commons/lang3/text/StrBuilder;)V

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1

    .prologue
    .line 304
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 307
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 290
    return-object p0
.end method

.method public contains(C)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2130
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v0, v1

    .line 2131
    :goto_0
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_0

    .line 2132
    aget-char v3, v2, v0

    if-ne v3, p1, :cond_1

    .line 2133
    const/4 v1, 0x1

    .line 2136
    :cond_0
    return v1

    .line 2131
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2146
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public contains(Lorg/apache/commons/lang3/text/StrMatcher;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2161
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public delete(II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    .prologue
    .line 1569
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result v0

    .line 1570
    sub-int v1, v0, p1

    .line 1571
    if-lez v1, :cond_0

    .line 1572
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->a(III)V

    .line 1574
    :cond_0
    return-object p0
.end method

.method public deleteAll(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    .prologue
    .line 1585
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_3

    .line 1586
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_2

    move v1, v0

    .line 1588
    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v1, v2, :cond_1

    .line 1589
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v1

    if-eq v2, p1, :cond_0

    .line 1593
    :cond_1
    sub-int v2, v1, v0

    .line 1594
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->a(III)V

    .line 1595
    sub-int v0, v1, v2

    .line 1585
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1598
    :cond_3
    return-object p0
.end method

.method public deleteAll(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1625
    if-nez p1, :cond_0

    move v1, v0

    .line 1626
    :goto_0
    if-lez v1, :cond_1

    .line 1627
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1628
    :goto_1
    if-ltz v0, :cond_1

    .line 1629
    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->a(III)V

    .line 1630
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 1625
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    .line 1633
    :cond_1
    return-object p0
.end method

.method public deleteAll(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .prologue
    .line 1665
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteCharAt(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    .prologue
    .line 338
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 341
    :cond_1
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->a(III)V

    .line 342
    return-object p0
.end method

.method public deleteFirst(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    .prologue
    .line 1608
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_0

    .line 1609
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 1610
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->a(III)V

    .line 1614
    :cond_0
    return-object p0

    .line 1608
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public deleteFirst(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1643
    if-nez p1, :cond_1

    move v0, v1

    .line 1644
    :goto_0
    if-lez v0, :cond_0

    .line 1645
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1646
    if-ltz v1, :cond_0

    .line 1647
    add-int v2, v1, v0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->a(III)V

    .line 1650
    :cond_0
    return-object p0

    .line 1643
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public deleteFirst(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .prologue
    .line 1679
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1982
    if-nez p1, :cond_1

    .line 1998
    :cond_0
    :goto_0
    return v0

    .line 1985
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1986
    if-nez v4, :cond_2

    move v0, v1

    .line 1987
    goto :goto_0

    .line 1989
    :cond_2
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-gt v4, v2, :cond_0

    .line 1992
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, v4

    move v3, v2

    move v2, v0

    .line 1993
    :goto_1
    if-ge v2, v4, :cond_3

    .line 1994
    iget-object v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v5, v5, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1993
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1998
    goto :goto_0
.end method

.method public ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 232
    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 233
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2585
    instance-of v0, p1, Lorg/apache/commons/lang3/text/StrBuilder;

    if-eqz v0, :cond_0

    .line 2586
    check-cast p1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->equals(Lorg/apache/commons/lang3/text/StrBuilder;)Z

    move-result v0

    .line 2588
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/apache/commons/lang3/text/StrBuilder;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2560
    if-ne p0, p1, :cond_1

    .line 2573
    :cond_0
    :goto_0
    return v0

    .line 2563
    :cond_1
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    iget v3, p1, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 2564
    goto :goto_0

    .line 2566
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2567
    iget-object v4, p1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2568
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 2569
    aget-char v5, v3, v2

    aget-char v6, v4, v2

    if-eq v5, v6, :cond_3

    move v0, v1

    .line 2570
    goto :goto_0

    .line 2568
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public equalsIgnoreCase(Lorg/apache/commons/lang3/text/StrBuilder;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2534
    if-ne p0, p1, :cond_1

    .line 2549
    :cond_0
    :goto_0
    return v0

    .line 2537
    :cond_1
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    iget v3, p1, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 2538
    goto :goto_0

    .line 2540
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2541
    iget-object v4, p1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2542
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 2543
    aget-char v5, v3, v2

    .line 2544
    aget-char v6, v4, v2

    .line 2545
    if-eq v5, v6, :cond_3

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    if-eq v5, v6, :cond_3

    move v0, v1

    .line 2546
    goto :goto_0

    .line 2542
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public getChars(II[CI)V
    .locals 2

    .prologue
    .line 407
    if-gez p1, :cond_0

    .line 408
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 410
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 411
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 413
    :cond_2
    if-le p1, p2, :cond_3

    .line 414
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    return-void
.end method

.method public getChars([C)[C
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 388
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    .line 389
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 390
    :cond_0
    new-array p1, v0, [C

    .line 392
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 2598
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2599
    const/4 v1, 0x0

    .line 2600
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2601
    mul-int/lit8 v1, v1, 0x1f

    aget-char v3, v2, v0

    add-int/2addr v1, v3

    .line 2600
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2603
    :cond_0
    return v1
.end method

.method public indexOf(C)I
    .locals 1

    .prologue
    .line 2172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(CI)I

    move-result v0

    return v0
.end method

.method public indexOf(CI)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2183
    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 2184
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v1, :cond_2

    move p2, v0

    .line 2193
    :cond_1
    :goto_0
    return p2

    .line 2187
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2188
    :goto_1
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge p2, v2, :cond_3

    .line 2189
    aget-char v2, v1, p2

    if-eq v2, p1, :cond_1

    .line 2188
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2193
    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 2219
    if-gez p2, :cond_2

    move v0, v3

    .line 2220
    :goto_0
    if-eqz p1, :cond_0

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt v0, v2, :cond_3

    :cond_0
    move v0, v1

    .line 2244
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, p2

    .line 2219
    goto :goto_0

    .line 2223
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2224
    const/4 v2, 0x1

    if-ne v4, v2, :cond_4

    .line 2225
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(CI)I

    move-result v0

    goto :goto_1

    .line 2227
    :cond_4
    if-eqz v4, :cond_1

    .line 2230
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le v4, v2, :cond_5

    move v0, v1

    .line 2231
    goto :goto_1

    .line 2233
    :cond_5
    iget-object v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2234
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, v4

    add-int/lit8 v6, v2, 0x1

    .line 2236
    :goto_2
    if-ge v0, v6, :cond_7

    move v2, v3

    .line 2237
    :goto_3
    if-ge v2, v4, :cond_1

    .line 2238
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int v8, v0, v2

    aget-char v8, v5, v8

    if-eq v7, v8, :cond_6

    .line 2236
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2237
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move v0, v1

    .line 2244
    goto :goto_1
.end method

.method public indexOf(Lorg/apache/commons/lang3/text/StrMatcher;)I
    .locals 1

    .prologue
    .line 2258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 2274
    if-gez p2, :cond_2

    const/4 v2, 0x0

    .line 2275
    :goto_0
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt v2, v0, :cond_3

    :cond_0
    move v0, v1

    .line 2285
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, p2

    .line 2274
    goto :goto_0

    .line 2278
    :cond_3
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 2279
    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v0, v2

    .line 2280
    :goto_2
    if-ge v0, v3, :cond_4

    .line 2281
    invoke-virtual {p1, v4, v0, v2, v3}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v5

    if-gtz v5, :cond_1

    .line 2280
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 2285
    goto :goto_1
.end method

.method public insert(IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    .prologue
    .line 1489
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    .line 1490
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1491
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1492
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 1493
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 1494
    return-object p0
.end method

.method public insert(ID)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    .prologue
    .line 1542
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 1530
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 1506
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    .prologue
    .line 1518
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 1362
    if-nez p2, :cond_0

    .line 1363
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 1365
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1379
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    .line 1380
    if-nez p2, :cond_0

    .line 1381
    iget-object p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->b:Ljava/lang/String;

    .line 1383
    :cond_0
    if-nez p2, :cond_2

    move v0, v1

    .line 1384
    :goto_0
    if-lez v0, :cond_1

    .line 1385
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    .line 1386
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1387
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v5, p1, v0

    iget v6, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v6, p1

    invoke-static {v3, p1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1388
    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 1389
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1391
    :cond_1
    return-object p0

    .line 1383
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public insert(IZ)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x65

    .line 1458
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    .line 1459
    if-eqz p2, :cond_0

    .line 1460
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1461
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x4

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1462
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x74

    aput-char v2, v0, p1

    .line 1463
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x72

    aput-char v3, v0, v1

    .line 1464
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x75

    aput-char v3, v0, v2

    .line 1465
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char v4, v0, v1

    .line 1466
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 1477
    :goto_0
    return-object p0

    .line 1468
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1469
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x5

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1470
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x66

    aput-char v2, v0, p1

    .line 1471
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x61

    aput-char v3, v0, v1

    .line 1472
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x6c

    aput-char v3, v0, v2

    .line 1473
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x73

    aput-char v3, v0, v1

    .line 1474
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char v4, v0, v2

    .line 1475
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public insert(I[C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 5

    .prologue
    .line 1404
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    .line 1405
    if-nez p2, :cond_1

    .line 1406
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    .line 1415
    :cond_0
    :goto_0
    return-object p0

    .line 1408
    :cond_1
    array-length v0, p2

    .line 1409
    if-lez v0, :cond_0

    .line 1410
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1411
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v3, p1, v0

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1412
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1413
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public insert(I[CII)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    .prologue
    .line 1430
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    .line 1431
    if-nez p2, :cond_1

    .line 1432
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    .line 1446
    :cond_0
    :goto_0
    return-object p0

    .line 1434
    :cond_1
    if-ltz p3, :cond_2

    array-length v0, p2

    if-le p3, v0, :cond_3

    .line 1435
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1437
    :cond_3
    if-ltz p4, :cond_4

    add-int v0, p3, p4

    array-length v1, p2

    if-le v0, v1, :cond_5

    .line 1438
    :cond_4
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1440
    :cond_5
    if-lez p4, :cond_0

    .line 1441
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1442
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v2, p1, p4

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1443
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1444
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastIndexOf(C)I
    .locals 1

    .prologue
    .line 2296
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(CI)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2307
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v1, :cond_1

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 2308
    :goto_0
    if-gez v1, :cond_3

    .line 2316
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, p2

    .line 2307
    goto :goto_0

    .line 2311
    :cond_2
    add-int/lit8 v1, v1, -0x1

    :cond_3
    if-ltz v1, :cond_0

    .line 2312
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_2

    move v0, v1

    .line 2313
    goto :goto_1
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2328
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 2342
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_2

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 2343
    :goto_0
    if-eqz p1, :cond_0

    if-gez v0, :cond_3

    :cond_0
    move v0, v1

    .line 2365
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, p2

    .line 2342
    goto :goto_0

    .line 2346
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2347
    if-lez v4, :cond_6

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-gt v4, v2, :cond_6

    .line 2348
    const/4 v2, 0x1

    if-ne v4, v2, :cond_4

    .line 2349
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    goto :goto_1

    .line 2353
    :cond_4
    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    :goto_2
    if-ltz v0, :cond_7

    move v2, v3

    .line 2354
    :goto_3
    if-ge v2, v4, :cond_1

    .line 2355
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v7, v0, v2

    aget-char v6, v6, v7

    if-eq v5, v6, :cond_5

    .line 2353
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2354
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2362
    :cond_6
    if-eqz v4, :cond_1

    :cond_7
    move v0, v1

    .line 2365
    goto :goto_1
.end method

.method public lastIndexOf(Lorg/apache/commons/lang3/text/StrMatcher;)I
    .locals 1

    .prologue
    .line 2379
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->lastIndexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 2395
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_2

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 2396
    :goto_0
    if-eqz p1, :cond_0

    if-gez v0, :cond_3

    :cond_0
    move v0, v1

    .line 2406
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, p2

    .line 2395
    goto :goto_0

    .line 2399
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2400
    add-int/lit8 v3, v0, 0x1

    .line 2401
    :goto_2
    if-ltz v0, :cond_4

    .line 2402
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v0, v4, v3}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-gtz v4, :cond_1

    .line 2401
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 2406
    goto :goto_1
.end method

.method public leftString(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2061
    if-gtz p1, :cond_0

    .line 2062
    const-string v0, ""

    .line 2066
    :goto_0
    return-object v0

    .line 2063
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 2064
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 2066
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, v3, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    return v0
.end method

.method public midString(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2109
    if-gez p1, :cond_0

    .line 2110
    const/4 p1, 0x0

    .line 2112
    :cond_0
    if-lez p2, :cond_1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_2

    .line 2113
    :cond_1
    const-string v0, ""

    .line 2118
    :goto_0
    return-object v0

    .line 2115
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int v1, p1, p2

    if-gt v0, v1, :cond_3

    .line 2116
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 2118
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public minimizeCapacity()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 246
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 247
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    :cond_0
    return-object p0
.end method

.method public replace(IILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .prologue
    .line 1717
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result v2

    .line 1718
    if-nez p3, :cond_0

    const/4 v5, 0x0

    .line 1719
    :goto_0
    sub-int v3, v2, p1

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->a(IIILjava/lang/String;I)V

    .line 1720
    return-object p0

    .line 1718
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0
.end method

.method public replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .prologue
    .line 1854
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    .line 1855
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->a(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(CC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    .prologue
    .line 1733
    if-eq p1, p2, :cond_1

    .line 1734
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1735
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1736
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v1, v0

    .line 1734
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1740
    :cond_1
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1772
    if-nez p1, :cond_0

    move v3, v0

    .line 1773
    :goto_0
    if-lez v3, :cond_2

    .line 1774
    if-nez p2, :cond_1

    move v5, v0

    .line 1775
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1776
    :goto_2
    if-ltz v1, :cond_2

    .line 1777
    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->a(IIILjava/lang/String;I)V

    .line 1778
    add-int v0, v1, v5

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    .line 1772
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 1774
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    .line 1781
    :cond_2
    return-object p0
.end method

.method public replaceAll(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .prologue
    .line 1816
    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(CC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    .prologue
    .line 1752
    if-eq p1, p2, :cond_0

    .line 1753
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_0

    .line 1754
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 1755
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v1, v0

    .line 1760
    :cond_0
    return-object p0

    .line 1753
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1792
    if-nez p1, :cond_1

    move v3, v5

    .line 1793
    :goto_0
    if-lez v3, :cond_0

    .line 1794
    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1795
    if-ltz v1, :cond_0

    .line 1796
    if-nez p2, :cond_2

    .line 1797
    :goto_1
    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->a(IIILjava/lang/String;I)V

    .line 1800
    :cond_0
    return-object p0

    .line 1792
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 1796
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1
.end method

.method public replaceFirst(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .prologue
    .line 1831
    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .prologue
    .line 1902
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_1

    .line 1913
    :cond_0
    return-object p0

    .line 1906
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    div-int/lit8 v2, v0, 0x2

    .line 1907
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 1908
    const/4 v1, 0x0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1909
    aget-char v4, v3, v1

    .line 1910
    aget-char v5, v3, v0

    aput-char v5, v3, v1

    .line 1911
    aput-char v4, v3, v0

    .line 1908
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public rightString(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2083
    if-gtz p1, :cond_0

    .line 2084
    const-string v0, ""

    .line 2088
    :goto_0
    return-object v0

    .line 2085
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 2086
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 2088
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public setCharAt(IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 321
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 324
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 325
    return-object p0
.end method

.method public setLength(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    .prologue
    .line 196
    if-gez p1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 199
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_2

    .line 200
    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 210
    :cond_1
    return-object p0

    .line 201
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p1, v0, :cond_1

    .line 202
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 203
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 205
    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 206
    :goto_0
    if-ge v0, p1, :cond_1

    .line 207
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    aput-char v2, v1, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setNewLineText(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->a:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .prologue
    .line 170
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const/4 p1, 0x0

    .line 173
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->b:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1955
    if-nez p1, :cond_1

    .line 1970
    :cond_0
    :goto_0
    return v0

    .line 1958
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1959
    if-nez v3, :cond_2

    move v0, v1

    .line 1960
    goto :goto_0

    .line 1962
    :cond_2
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-gt v3, v2, :cond_0

    move v2, v0

    .line 1965
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1966
    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v4, v4, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1965
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1970
    goto :goto_0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2007
    if-gez p1, :cond_0

    .line 2008
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2010
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p2, v0, :cond_1

    .line 2011
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2013
    :cond_1
    if-le p1, p2, :cond_2

    .line 2014
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2016
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2027
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2044
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result v0

    .line 2045
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    sub-int/2addr v0, p1

    invoke-direct {v1, v2, p1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 352
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    .line 353
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 357
    :goto_0
    return-object v0

    .line 355
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    new-array v0, v0, [C

    .line 356
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toCharArray(II)[C
    .locals 4

    .prologue
    .line 371
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result v0

    .line 372
    sub-int v1, v0, p1

    .line 373
    if-nez v1, :cond_0

    .line 374
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 378
    :goto_0
    return-object v0

    .line 376
    :cond_0
    new-array v0, v1, [C

    .line 377
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2618
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 2628
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public trim()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v2, 0x0

    .line 1924
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_1

    .line 1942
    :cond_0
    :goto_0
    return-object p0

    .line 1927
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 1928
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v1, v2

    .line 1930
    :goto_1
    if-ge v1, v0, :cond_2

    aget-char v4, v3, v1

    if-gt v4, v5, :cond_2

    .line 1931
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1933
    :cond_2
    :goto_2
    if-ge v1, v0, :cond_3

    add-int/lit8 v4, v0, -0x1

    aget-char v4, v3, v4

    if-gt v4, v5, :cond_3

    .line 1934
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1936
    :cond_3
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_4

    .line 1937
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang3/text/StrBuilder;->delete(II)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1939
    :cond_4
    if-lez v1, :cond_0

    .line 1940
    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->delete(II)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0
.end method

.method protected validateIndex(I)V
    .locals 1

    .prologue
    .line 2661
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p1, v0, :cond_1

    .line 2662
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2664
    :cond_1
    return-void
.end method

.method protected validateRange(II)I
    .locals 2

    .prologue
    .line 2642
    if-gez p1, :cond_0

    .line 2643
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2645
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p2, v0, :cond_1

    .line 2646
    iget p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 2648
    :cond_1
    if-le p1, p2, :cond_2

    .line 2649
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2651
    :cond_2
    return p2
.end method
