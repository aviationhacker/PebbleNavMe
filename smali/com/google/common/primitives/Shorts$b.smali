.class Lcom/google/common/primitives/Shorts$b;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Shorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:[S

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([S)V
    .locals 2

    .prologue
    .line 524
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts$b;-><init>([SII)V

    .line 525
    return-void
.end method

.method constructor <init>([SII)V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 528
    iput-object p1, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    .line 529
    iput p2, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    .line 530
    iput p3, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    .line 531
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Short;
    .locals 2

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$b;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 546
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    add-int/2addr v1, p1

    aget-short v0, v0, v1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Short;)Ljava/lang/Short;
    .locals 4

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$b;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 582
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    add-int/2addr v1, p1

    aget-short v1, v0, v1

    .line 584
    iget-object v2, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    iget v0, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    add-int v3, v0, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    aput-short v0, v2, v3

    .line 585
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method a()[S
    .locals 5

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$b;->size()I

    move-result v0

    .line 641
    new-array v1, v0, [S

    .line 642
    iget-object v2, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    iget v3, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 552
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->a([SSII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 600
    if-ne p1, p0, :cond_1

    .line 616
    :cond_0
    :goto_0
    return v0

    .line 603
    :cond_1
    instance-of v2, p1, Lcom/google/common/primitives/Shorts$b;

    if-eqz v2, :cond_4

    .line 604
    check-cast p1, Lcom/google/common/primitives/Shorts$b;

    .line 605
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$b;->size()I

    move-result v3

    .line 606
    invoke-virtual {p1}, Lcom/google/common/primitives/Shorts$b;->size()I

    move-result v2

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 607
    goto :goto_0

    :cond_2
    move v2, v1

    .line 609
    :goto_1
    if-ge v2, v3, :cond_0

    .line 610
    iget-object v4, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    iget v5, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    add-int/2addr v5, v2

    aget-short v4, v4, v5

    iget-object v5, p1, Lcom/google/common/primitives/Shorts$b;->a:[S

    iget v6, p1, Lcom/google/common/primitives/Shorts$b;->b:I

    add-int/2addr v6, v2

    aget-short v5, v5, v6

    if-eq v4, v5, :cond_3

    move v0, v1

    .line 611
    goto :goto_0

    .line 609
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 616
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Shorts$b;->a(I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 621
    const/4 v1, 0x1

    .line 622
    iget v0, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    if-ge v0, v2, :cond_0

    .line 623
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    aget-short v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Shorts;->hashCode(S)I

    move-result v2

    add-int/2addr v1, v2

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 558
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->a([SSII)I

    move-result v0

    .line 560
    if-ltz v0, :cond_0

    .line 561
    iget v1, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    sub-int/2addr v0, v1

    .line 564
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 570
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->b([SSII)I

    move-result v0

    .line 572
    if-ltz v0, :cond_0

    .line 573
    iget v1, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    sub-int/2addr v0, v1

    .line 576
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 516
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Shorts$b;->a(ILjava/lang/Short;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 535
    iget v0, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    iget v1, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$b;->size()I

    move-result v0

    .line 591
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 592
    if-ne p1, p2, :cond_0

    .line 593
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Shorts$b;

    iget-object v1, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    iget v2, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts$b;-><init>([SII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$b;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 631
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    iget v3, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    aget-short v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 632
    iget v0, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    if-ge v0, v2, :cond_0

    .line 633
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
