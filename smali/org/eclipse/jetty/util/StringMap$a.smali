.class Lorg/eclipse/jetty/util/StringMap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:[C

.field b:[C

.field c:Lorg/eclipse/jetty/util/StringMap$a;

.field d:[Lorg/eclipse/jetty/util/StringMap$a;

.field e:Ljava/lang/String;

.field f:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;I)V
    .locals 4

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, v0, p3

    .line 567
    new-array v0, v2, [C

    iput-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->a:[C

    .line 568
    new-array v0, v2, [C

    iput-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->b:[C

    .line 569
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 571
    add-int v0, p3, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 572
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$a;->a:[C

    aput-char v0, v3, v1

    .line 573
    if-eqz p1, :cond_1

    .line 576
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 577
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 580
    :cond_0
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$a;->b:[C

    aput-char v0, v3, v1

    .line 569
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 578
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    goto :goto_1

    .line 583
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 634
    const-string v0, "{["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->a:[C

    if-nez v0, :cond_1

    .line 636
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 641
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 643
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 644
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->d:[Lorg/eclipse/jetty/util/StringMap$a;

    if-eqz v0, :cond_3

    .line 647
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->d:[Lorg/eclipse/jetty/util/StringMap$a;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 649
    const/16 v0, 0x7c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->d:[Lorg/eclipse/jetty/util/StringMap$a;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 651
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->d:[Lorg/eclipse/jetty/util/StringMap$a;

    aget-object v0, v0, v1

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/StringMap$a;->a(Ljava/lang/StringBuilder;)V

    .line 647
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 638
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jetty/util/StringMap$a;->a:[C

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 639
    iget-object v2, p0, Lorg/eclipse/jetty/util/StringMap$a;->a:[C

    aget-char v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 653
    :cond_2
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 656
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->c:Lorg/eclipse/jetty/util/StringMap$a;

    if-eqz v0, :cond_4

    .line 659
    const-string v0, ",\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->c:Lorg/eclipse/jetty/util/StringMap$a;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/StringMap$a;->a(Ljava/lang/StringBuilder;)V

    .line 662
    :cond_4
    return-void
.end method


# virtual methods
.method a(Lorg/eclipse/jetty/util/StringMap;I)Lorg/eclipse/jetty/util/StringMap$a;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 587
    new-instance v0, Lorg/eclipse/jetty/util/StringMap$a;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap$a;-><init>()V

    .line 588
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$a;->a:[C

    array-length v1, v1

    sub-int/2addr v1, p2

    .line 590
    iget-object v2, p0, Lorg/eclipse/jetty/util/StringMap$a;->a:[C

    .line 591
    new-array v3, p2, [C

    iput-object v3, p0, Lorg/eclipse/jetty/util/StringMap$a;->a:[C

    .line 592
    new-array v3, v1, [C

    iput-object v3, v0, Lorg/eclipse/jetty/util/StringMap$a;->a:[C

    .line 593
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$a;->a:[C

    invoke-static {v2, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    iget-object v3, v0, Lorg/eclipse/jetty/util/StringMap$a;->a:[C

    invoke-static {v2, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    iget-object v2, p0, Lorg/eclipse/jetty/util/StringMap$a;->b:[C

    if-eqz v2, :cond_0

    .line 598
    iget-object v2, p0, Lorg/eclipse/jetty/util/StringMap$a;->b:[C

    .line 599
    new-array v3, p2, [C

    iput-object v3, p0, Lorg/eclipse/jetty/util/StringMap$a;->b:[C

    .line 600
    new-array v3, v1, [C

    iput-object v3, v0, Lorg/eclipse/jetty/util/StringMap$a;->b:[C

    .line 601
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$a;->b:[C

    invoke-static {v2, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 602
    iget-object v3, v0, Lorg/eclipse/jetty/util/StringMap$a;->b:[C

    invoke-static {v2, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$a;->e:Ljava/lang/String;

    iput-object v1, v0, Lorg/eclipse/jetty/util/StringMap$a;->e:Ljava/lang/String;

    .line 606
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$a;->f:Ljava/lang/Object;

    iput-object v1, v0, Lorg/eclipse/jetty/util/StringMap$a;->f:Ljava/lang/Object;

    .line 607
    iput-object v5, p0, Lorg/eclipse/jetty/util/StringMap$a;->e:Ljava/lang/String;

    .line 608
    iput-object v5, p0, Lorg/eclipse/jetty/util/StringMap$a;->f:Ljava/lang/Object;

    .line 609
    iget-object v1, p1, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    iget-object v1, p1, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$a;->d:[Lorg/eclipse/jetty/util/StringMap$a;

    iput-object v1, v0, Lorg/eclipse/jetty/util/StringMap$a;->d:[Lorg/eclipse/jetty/util/StringMap$a;

    .line 613
    iget v1, p1, Lorg/eclipse/jetty/util/StringMap;->_width:I

    new-array v1, v1, [Lorg/eclipse/jetty/util/StringMap$a;

    iput-object v1, p0, Lorg/eclipse/jetty/util/StringMap$a;->d:[Lorg/eclipse/jetty/util/StringMap$a;

    .line 614
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$a;->d:[Lorg/eclipse/jetty/util/StringMap$a;

    iget-object v2, v0, Lorg/eclipse/jetty/util/StringMap$a;->a:[C

    aget-char v2, v2, v4

    iget v3, p1, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int/2addr v2, v3

    aput-object v0, v1, v2

    .line 615
    iget-object v1, v0, Lorg/eclipse/jetty/util/StringMap$a;->b:[C

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$a;->d:[Lorg/eclipse/jetty/util/StringMap$a;

    iget-object v2, v0, Lorg/eclipse/jetty/util/StringMap$a;->b:[C

    aget-char v2, v2, v4

    iget v3, p1, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    if-eq v1, v0, :cond_2

    .line 616
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$a;->d:[Lorg/eclipse/jetty/util/StringMap$a;

    iget-object v2, v0, Lorg/eclipse/jetty/util/StringMap$a;->b:[C

    aget-char v2, v2, v4

    iget v3, p1, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int/2addr v2, v3

    aput-object v0, v1, v2

    .line 618
    :cond_2
    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$a;->f:Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jetty/util/StringMap$a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/StringMap$a;->a(Ljava/lang/StringBuilder;)V

    .line 629
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
