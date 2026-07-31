.class public final LCatalano/Math/Dissimilarities/Dissimilarity;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dice([I[I)D
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 43
    move v1, v0

    move v2, v0

    move v3, v0

    .line 47
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_3

    .line 48
    aget v4, p0, v0

    if-ne v4, v5, :cond_0

    aget v4, p1, v0

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 49
    :cond_0
    aget v4, p0, v0

    if-nez v4, :cond_1

    aget v4, p1, v0

    if-ne v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 50
    :cond_1
    aget v4, p0, v0

    if-ne v4, v5, :cond_2

    aget v4, p1, v0

    if-ne v4, v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 47
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_3
    add-int v0, v3, v2

    int-to-double v4, v0

    mul-int/lit8 v0, v1, 0x2

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    int-to-double v0, v0

    div-double v0, v4, v0

    return-wide v0
.end method

.method public static Jaccard([I[I)D
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 64
    move v1, v0

    move v2, v0

    move v3, v0

    .line 68
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_3

    .line 69
    aget v4, p0, v0

    if-ne v4, v5, :cond_0

    aget v4, p1, v0

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 70
    :cond_0
    aget v4, p0, v0

    if-nez v4, :cond_1

    aget v4, p1, v0

    if-ne v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 71
    :cond_1
    aget v4, p0, v0

    if-ne v4, v5, :cond_2

    aget v4, p1, v0

    if-ne v4, v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 68
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_3
    add-int v0, v3, v2

    int-to-double v4, v0

    add-int v0, v1, v2

    add-int/2addr v0, v3

    int-to-double v0, v0

    div-double v0, v4, v0

    return-wide v0
.end method

.method public static Kulsinsk([I[I)D
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 85
    move v1, v0

    move v2, v0

    move v3, v0

    .line 89
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_3

    .line 90
    aget v4, p0, v0

    if-ne v4, v5, :cond_0

    aget v4, p1, v0

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 91
    :cond_0
    aget v4, p0, v0

    if-nez v4, :cond_1

    aget v4, p1, v0

    if-ne v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 92
    :cond_1
    aget v4, p0, v0

    if-ne v4, v5, :cond_2

    aget v4, p1, v0

    if-ne v4, v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 89
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_3
    add-int v0, v3, v2

    sub-int/2addr v0, v1

    array-length v1, p0

    add-int/2addr v0, v1

    int-to-double v0, v0

    add-int/2addr v2, v3

    array-length v3, p0

    add-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static Matching([I[I)D
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 106
    move v1, v0

    move v2, v0

    .line 109
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 110
    aget v3, p0, v0

    if-ne v3, v4, :cond_0

    aget v3, p1, v0

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 111
    :cond_0
    aget v3, p0, v0

    if-nez v3, :cond_1

    aget v3, p1, v0

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_2
    add-int v0, v2, v1

    int-to-double v0, v0

    array-length v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static RogersTanimoto([I[I)D
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 125
    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    .line 130
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_4

    .line 131
    aget v5, p0, v0

    if-ne v5, v6, :cond_0

    aget v5, p1, v0

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 132
    :cond_0
    aget v5, p0, v0

    if-nez v5, :cond_1

    aget v5, p1, v0

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 133
    :cond_1
    aget v5, p0, v0

    if-ne v5, v6, :cond_2

    aget v5, p1, v0

    if-ne v5, v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 134
    :cond_2
    aget v5, p0, v0

    if-nez v5, :cond_3

    aget v5, p1, v0

    if-nez v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 130
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_4
    add-int v0, v4, v3

    mul-int/lit8 v0, v0, 0x2

    .line 138
    int-to-double v4, v0

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v4, v0

    return-wide v0
.end method

.method public static RusselRao([I[I)D
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 149
    move v1, v0

    .line 151
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 152
    aget v2, p0, v0

    if-ne v2, v3, :cond_0

    aget v2, p1, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    array-length v0, p0

    sub-int/2addr v0, v1

    int-to-double v0, v0

    array-length v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static SokalMichener([I[I)D
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 166
    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    .line 171
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_4

    .line 172
    aget v5, p0, v0

    if-ne v5, v6, :cond_0

    aget v5, p1, v0

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 173
    :cond_0
    aget v5, p0, v0

    if-nez v5, :cond_1

    aget v5, p1, v0

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 174
    :cond_1
    aget v5, p0, v0

    if-ne v5, v6, :cond_2

    aget v5, p1, v0

    if-ne v5, v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 175
    :cond_2
    aget v5, p0, v0

    if-nez v5, :cond_3

    aget v5, p1, v0

    if-nez v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 171
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_4
    add-int v0, v4, v3

    mul-int/lit8 v0, v0, 0x2

    .line 179
    int-to-double v4, v0

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v4, v0

    return-wide v0
.end method

.method public static SokalSneath([I[I)D
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 190
    move v1, v0

    move v2, v0

    move v3, v0

    .line 194
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_3

    .line 195
    aget v4, p0, v0

    if-ne v4, v5, :cond_0

    aget v4, p1, v0

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 196
    :cond_0
    aget v4, p0, v0

    if-nez v4, :cond_1

    aget v4, p1, v0

    if-ne v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 197
    :cond_1
    aget v4, p0, v0

    if-ne v4, v5, :cond_2

    aget v4, p1, v0

    if-ne v4, v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 194
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_3
    add-int v0, v3, v2

    mul-int/lit8 v0, v0, 0x2

    .line 201
    int-to-double v2, v0

    add-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static Yule([I[I)D
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 212
    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    .line 217
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_4

    .line 218
    aget v5, p0, v0

    if-ne v5, v6, :cond_0

    aget v5, p1, v0

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 219
    :cond_0
    aget v5, p0, v0

    if-nez v5, :cond_1

    aget v5, p1, v0

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 220
    :cond_1
    aget v5, p0, v0

    if-ne v5, v6, :cond_2

    aget v5, p1, v0

    if-ne v5, v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 221
    :cond_2
    aget v5, p0, v0

    if-nez v5, :cond_3

    aget v5, p1, v0

    if-nez v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 217
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_4
    add-int v0, v4, v3

    mul-int/lit8 v0, v0, 0x2

    int-to-double v4, v0

    .line 225
    add-int v0, v2, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, v4, v2

    add-double/2addr v0, v2

    div-double v0, v4, v0

    return-wide v0
.end method
