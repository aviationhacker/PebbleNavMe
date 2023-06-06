.class public final Lgw;
.super Lcom/google/common/base/CharMatcher$u;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "no precomputation is done in GWT"
.end annotation


# instance fields
.field private final a:[C

.field private final b:Z

.field private final c:J


# direct methods
.method private constructor <init>([CJZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p5}, Lcom/google/common/base/CharMatcher$u;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lgw;->a:[C

    .line 41
    iput-wide p2, p0, Lgw;->c:J

    .line 42
    iput-boolean p4, p0, Lgw;->b:Z

    .line 43
    return-void
.end method

.method static a(I)I
    .locals 3

    .prologue
    .line 57
    const v0, 0x1b873593

    const v1, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, p0

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static a(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 92
    const-wide/16 v2, 0x0

    .line 93
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    .line 94
    invoke-virtual {p0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    .line 96
    invoke-static {v0}, Lgw;->b(I)I

    move-result v0

    new-array v1, v0, [C

    .line 97
    array-length v0, v1

    add-int/lit8 v6, v0, -0x1

    .line 98
    invoke-virtual {p0, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-eq v5, v0, :cond_1

    .line 100
    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    or-long/2addr v2, v8

    .line 101
    invoke-static {v5}, Lgw;->a(I)I

    move-result v0

    and-int/2addr v0, v6

    .line 104
    :goto_1
    aget-char v7, v1, v0

    if-nez v7, :cond_0

    .line 105
    int-to-char v7, v5

    aput-char v7, v1, v0

    .line 98
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v5, v0

    goto :goto_0

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v6

    goto :goto_1

    .line 112
    :cond_1
    new-instance v0, Lgw;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lgw;-><init>([CJZLjava/lang/String;)V

    return-object v0
.end method

.method static b(I)I
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 79
    const/4 v0, 0x2

    .line 87
    :cond_0
    return v0

    .line 83
    :cond_1
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 84
    :goto_0
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    int-to-double v4, p0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 85
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c(I)Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 61
    iget-wide v0, p0, Lgw;->c:J

    shr-long/2addr v0, p1

    and-long/2addr v0, v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/util/BitSet;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 144
    iget-boolean v1, p0, Lgw;->b:Z

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 147
    :cond_0
    iget-object v1, p0, Lgw;->a:[C

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-char v3, v1, v0

    .line 148
    if-eqz v3, :cond_1

    .line 149
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 147
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_2
    return-void
.end method

.method public matches(C)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 117
    if-nez p1, :cond_0

    .line 118
    iget-boolean v0, p0, Lgw;->b:Z

    .line 139
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lgw;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 121
    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lgw;->a:[C

    array-length v0, v0

    add-int/lit8 v3, v0, -0x1

    .line 124
    invoke-static {p1}, Lgw;->a(I)I

    move-result v0

    and-int v1, v0, v3

    move v0, v1

    .line 128
    :cond_2
    iget-object v4, p0, Lgw;->a:[C

    aget-char v4, v4, v0

    if-nez v4, :cond_3

    move v0, v2

    .line 129
    goto :goto_0

    .line 131
    :cond_3
    iget-object v4, p0, Lgw;->a:[C

    aget-char v4, v4, v0

    if-ne v4, p1, :cond_4

    .line 132
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    :cond_4
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v3

    .line 138
    if-ne v0, v1, :cond_2

    move v0, v2

    .line 139
    goto :goto_0
.end method
