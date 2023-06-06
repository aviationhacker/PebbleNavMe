.class Lcom/google/common/io/BaseEncoding$e;
.super Lcom/google/common/io/BaseEncoding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private transient a:Lcom/google/common/io/BaseEncoding;

.field final b:Lcom/google/common/io/BaseEncoding$a;

.field final c:Ljava/lang/Character;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private transient d:Lcom/google/common/io/BaseEncoding;


# direct methods
.method constructor <init>(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)V
    .locals 4
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 546
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding;-><init>()V

    .line 547
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/BaseEncoding$a;

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    .line 548
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/common/io/BaseEncoding$a;->matches(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Padding character %s was already in alphabet"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v0, v3, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 550
    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$e;->c:Ljava/lang/Character;

    .line 551
    return-void

    :cond_1
    move v0, v1

    .line 548
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 2
    .param p3    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 543
    new-instance v0, Lcom/google/common/io/BaseEncoding$a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/io/BaseEncoding$a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/common/io/BaseEncoding$e;-><init>(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)V

    .line 544
    return-void
.end method


# virtual methods
.method a(I)I
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$a;->c:I

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$a;->d:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v1, v2}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method a([BLjava/lang/CharSequence;)I
    .locals 16

    .prologue
    .line 652
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/io/BaseEncoding$e;->a()Lcom/google/common/base/CharMatcher;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$a;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 655
    new-instance v2, Lcom/google/common/io/BaseEncoding$DecodingException;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid input length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    :cond_0
    const/4 v3, 0x0

    .line 658
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 659
    const-wide/16 v6, 0x0

    .line 660
    const/4 v5, 0x0

    .line 661
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v8, v8, Lcom/google/common/io/BaseEncoding$a;->c:I

    if-ge v4, v8, :cond_1

    .line 662
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v8, v8, Lcom/google/common/io/BaseEncoding$a;->b:I

    shl-long v8, v6, v8

    .line 663
    add-int v6, v2, v4

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 664
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v2

    invoke-interface {v10, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v7, v5}, Lcom/google/common/io/BaseEncoding$a;->b(C)I

    move-result v5

    int-to-long v12, v5

    or-long/2addr v8, v12

    move v5, v6

    move-wide v6, v8

    .line 661
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 667
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v4, v4, Lcom/google/common/io/BaseEncoding$a;->d:I

    mul-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v8, v8, Lcom/google/common/io/BaseEncoding$a;->b:I

    mul-int/2addr v5, v8

    sub-int v8, v4, v5

    .line 668
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v4, v4, Lcom/google/common/io/BaseEncoding$a;->d:I

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x8

    :goto_3
    if-lt v4, v8, :cond_2

    .line 669
    add-int/lit8 v5, v3, 0x1

    ushr-long v12, v6, v4

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v9, v12

    int-to-byte v9, v9

    aput-byte v9, p1, v3

    .line 668
    add-int/lit8 v3, v4, -0x8

    move v4, v3

    move v3, v5

    goto :goto_3

    .line 658
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v4, v4, Lcom/google/common/io/BaseEncoding$a;->c:I

    add-int/2addr v2, v4

    goto :goto_0

    .line 672
    :cond_3
    return v3

    :cond_4
    move-wide v6, v8

    goto :goto_2
.end method

.method a()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->c:Ljava/lang/Character;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->c:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;
    .locals 1
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 775
    new-instance v0, Lcom/google/common/io/BaseEncoding$e;

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$e;-><init>(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)V

    return-object v0
.end method

.method a(Ljava/lang/Appendable;[BII)V
    .locals 4

    .prologue
    .line 612
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    add-int v0, p3, p4

    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 614
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 615
    add-int v1, p3, v0

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v2, v2, Lcom/google/common/io/BaseEncoding$a;->d:I

    sub-int v3, p4, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/io/BaseEncoding$e;->b(Ljava/lang/Appendable;[BII)V

    .line 614
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$a;->d:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 617
    :cond_0
    return-void
.end method

.method b(I)I
    .locals 4

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$a;->b:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method b(Ljava/lang/Appendable;[BII)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 621
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    add-int v0, p3, p4

    array-length v2, p2

    invoke-static {p3, v0, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 623
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$a;->d:I

    if-gt p4, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 624
    const-wide/16 v2, 0x0

    move v0, v1

    .line 625
    :goto_1
    if-ge v0, p4, :cond_1

    .line 626
    add-int v4, p3, v0

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 627
    const/16 v4, 0x8

    shl-long/2addr v2, v4

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 623
    goto :goto_0

    .line 630
    :cond_1
    add-int/lit8 v0, p4, 0x1

    mul-int/lit8 v0, v0, 0x8

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v4, v4, Lcom/google/common/io/BaseEncoding$a;->b:I

    sub-int v4, v0, v4

    move v0, v1

    .line 632
    :goto_2
    mul-int/lit8 v1, p4, 0x8

    if-ge v0, v1, :cond_2

    .line 633
    sub-int v1, v4, v0

    ushr-long v6, v2, v1

    long-to-int v1, v6

    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v5, v5, Lcom/google/common/io/BaseEncoding$a;->a:I

    and-int/2addr v1, v5

    .line 634
    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    invoke-virtual {v5, v1}, Lcom/google/common/io/BaseEncoding$a;->a(I)C

    move-result v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 635
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$a;->b:I

    add-int/2addr v0, v1

    .line 636
    goto :goto_2

    .line 637
    :cond_2
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->c:Ljava/lang/Character;

    if-eqz v1, :cond_3

    .line 638
    :goto_3
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$a;->d:I

    mul-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_3

    .line 639
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->c:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 640
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$a;->b:I

    add-int/2addr v0, v1

    goto :goto_3

    .line 643
    :cond_3
    return-void
.end method

.method public decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Reader,InputStream"
    .end annotation

    .prologue
    .line 678
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    new-instance v0, Lcom/google/common/io/BaseEncoding$e$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$e$2;-><init>(Lcom/google/common/io/BaseEncoding$e;Ljava/io/Reader;)V

    return-object v0
.end method

.method public encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Writer,OutputStream"
    .end annotation

    .prologue
    .line 566
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    new-instance v0, Lcom/google/common/io/BaseEncoding$e$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$e$1;-><init>(Lcom/google/common/io/BaseEncoding$e;Ljava/io/Writer;)V

    return-object v0
.end method

.method public lowerCase()Lcom/google/common/io/BaseEncoding;
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->d:Lcom/google/common/io/BaseEncoding;

    .line 766
    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding$a;->c()Lcom/google/common/io/BaseEncoding$a;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    if-ne v0, v1, :cond_1

    move-object v0, p0

    .line 769
    :goto_0
    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->d:Lcom/google/common/io/BaseEncoding;

    .line 771
    :cond_0
    return-object v0

    .line 768
    :cond_1
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->c:Ljava/lang/Character;

    .line 769
    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/BaseEncoding$e;->a(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    goto :goto_0
.end method

.method public omitPadding()Lcom/google/common/io/BaseEncoding;
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->c:Ljava/lang/Character;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/BaseEncoding$e;->a(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object p0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    invoke-virtual {v1}, Lcom/google/common/io/BaseEncoding$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v2, v2, Lcom/google/common/io/BaseEncoding$a;->b:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->c:Ljava/lang/Character;

    if-nez v1, :cond_1

    .line 784
    const-string v1, ".omitPadding()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 786
    :cond_1
    const-string v1, ".withPadChar("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$e;->c:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public upperCase()Lcom/google/common/io/BaseEncoding;
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->a:Lcom/google/common/io/BaseEncoding;

    .line 755
    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding$a;->b()Lcom/google/common/io/BaseEncoding$a;

    move-result-object v0

    .line 757
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    if-ne v0, v1, :cond_1

    move-object v0, p0

    .line 758
    :goto_0
    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->a:Lcom/google/common/io/BaseEncoding;

    .line 760
    :cond_0
    return-object v0

    .line 757
    :cond_1
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->c:Ljava/lang/Character;

    .line 758
    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/BaseEncoding$e;->a(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    goto :goto_0
.end method

.method public withPadChar(C)Lcom/google/common/io/BaseEncoding;
    .locals 2

    .prologue
    .line 734
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$a;->b:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->c:Ljava/lang/Character;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->c:Ljava/lang/Character;

    .line 735
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-ne v0, p1, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/BaseEncoding$e;->a(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object p0

    goto :goto_0
.end method

.method public withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
    .locals 4

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding$e;->a()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Separator (%s) cannot contain alphabet or padding characters"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 746
    new-instance v0, Lcom/google/common/io/BaseEncoding$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/BaseEncoding$d;-><init>(Lcom/google/common/io/BaseEncoding;Ljava/lang/String;I)V

    return-object v0
.end method
