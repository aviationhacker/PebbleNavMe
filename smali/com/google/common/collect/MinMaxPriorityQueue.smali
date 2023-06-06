.class public final Lcom/google/common/collect/MinMaxPriorityQueue;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MinMaxPriorityQueue$c;,
        Lcom/google/common/collect/MinMaxPriorityQueue$a;,
        Lcom/google/common/collect/MinMaxPriorityQueue$b;,
        Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/MinMaxPriorityQueue$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.a;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/common/collect/MinMaxPriorityQueue$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.a;"
        }
    .end annotation
.end field

.field private d:[Ljava/lang/Object;

.field private e:I

.field private f:I


# direct methods
.method private constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<-TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 240
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->a(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 241
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$a;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->b:Lcom/google/common/collect/MinMaxPriorityQueue$a;

    .line 242
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$a;

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$a;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->c:Lcom/google/common/collect/MinMaxPriorityQueue$a;

    .line 243
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->b:Lcom/google/common/collect/MinMaxPriorityQueue$a;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->c:Lcom/google/common/collect/MinMaxPriorityQueue$a;

    iput-object v1, v0, Lcom/google/common/collect/MinMaxPriorityQueue$a;->b:Lcom/google/common/collect/MinMaxPriorityQueue$a;

    .line 244
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->c:Lcom/google/common/collect/MinMaxPriorityQueue$a;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->b:Lcom/google/common/collect/MinMaxPriorityQueue$a;

    iput-object v1, v0, Lcom/google/common/collect/MinMaxPriorityQueue$a;->b:Lcom/google/common/collect/MinMaxPriorityQueue$a;

    .line 246
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->b(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->a:I

    .line 248
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;ILcom/google/common/collect/MinMaxPriorityQueue$1;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;I)V

    return-void
.end method

.method private a()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 319
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    packed-switch v2, :pswitch_data_0

    .line 327
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->c:Lcom/google/common/collect/MinMaxPriorityQueue$a;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$a;->a(II)I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    :pswitch_0
    return v0

    .line 321
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 327
    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(II)I
    .locals 1

    .prologue
    .line 958
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static a(IILjava/lang/Iterable;)I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Iterable",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 922
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0xb

    .line 928
    :cond_0
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 929
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 930
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 934
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(II)I

    move-result v0

    return v0
.end method

.method private a(ILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$b",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->e(I)Lcom/google/common/collect/MinMaxPriorityQueue$a;

    move-result-object v0

    .line 437
    invoke-virtual {v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$a;->c(I)I

    move-result v1

    .line 439
    invoke-virtual {v0, v1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$a;->b(ILjava/lang/Object;)I

    move-result v2

    .line 440
    if-ne v2, v1, :cond_0

    .line 444
    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$a;->a(IILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$b;

    move-result-object v0

    .line 446
    :goto_0
    return-object v0

    :cond_0
    if-ge v2, p1, :cond_1

    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/MinMaxPriorityQueue;)I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 938
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 939
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->c()I

    move-result v0

    .line 940
    new-array v0, v0, [Ljava/lang/Object;

    .line 941
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 942
    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 944
    :cond_0
    return-void
.end method

.method private c()I
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    array-length v0, v0

    .line 949
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    .line 953
    :goto_0
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->a:I

    invoke-static {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(II)I

    move-result v0

    return v0

    .line 949
    :cond_0
    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x3

    .line 952
    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/common/collect/MinMaxPriorityQueue;)I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    return v0
.end method

.method static c(I)Z
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 479
    add-int/lit8 v3, p0, 0x1

    .line 480
    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "negative index"

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 481
    const v0, 0x55555555

    and-int/2addr v0, v3

    const v4, -0x55555556

    and-int/2addr v3, v4

    if-le v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 480
    goto :goto_0

    :cond_1
    move v1, v2

    .line 481
    goto :goto_1
.end method

.method public static create()Lcom/google/common/collect/MinMaxPriorityQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<TE;>;>()",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->create()Lcom/google/common/collect/MinMaxPriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<TE;>;>(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method private d(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 466
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;

    .line 467
    return-object v0
.end method

.method private e(I)Lcom/google/common/collect/MinMaxPriorityQueue$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.a;"
        }
    .end annotation

    .prologue
    .line 471
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->b:Lcom/google/common/collect/MinMaxPriorityQueue$a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->c:Lcom/google/common/collect/MinMaxPriorityQueue$a;

    goto :goto_0
.end method

.method public static expectedSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->expectedSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static maximumSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->maximumSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TB;>;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    return-object v0
.end method


# virtual methods
.method a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 274
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 275
    const/4 v0, 0x1

    .line 276
    goto :goto_0

    .line 277
    :cond_0
    return v0
.end method

.method b(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$b",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 401
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 402
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    .line 403
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    .line 404
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    if-ne v1, p1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    aput-object v0, v1, v2

    .line 425
    :goto_0
    return-object v0

    .line 408
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-virtual {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v2

    .line 409
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-direct {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->e(I)Lcom/google/common/collect/MinMaxPriorityQueue$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$a;->a(Ljava/lang/Object;)I

    move-result v3

    .line 410
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-virtual {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v4

    .line 411
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    aput-object v0, v1, v5

    .line 412
    invoke-direct {p0, p1, v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(ILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$b;

    move-result-object v1

    .line 413
    if-ge v3, p1, :cond_2

    .line 415
    if-nez v1, :cond_1

    .line 417
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;

    invoke-direct {v0, v2, v4}, Lcom/google/common/collect/MinMaxPriorityQueue$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    :cond_1
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;

    iget-object v1, v1, Lcom/google/common/collect/MinMaxPriorityQueue$b;->b:Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 425
    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 887
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    if-ge v0, v2, :cond_0

    .line 888
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 890
    :cond_0
    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    .line 891
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->b:Lcom/google/common/collect/MinMaxPriorityQueue$a;

    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue$a;->a:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 882
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    .line 290
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    .line 292
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->b()V

    .line 296
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->e(I)Lcom/google/common/collect/MinMaxPriorityQueue$a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$a;->a(ILjava/lang/Object;)V

    .line 297
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->a:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->pollLast()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->d(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->d(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->d(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 895
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 896
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 897
    return-object v0
.end method
