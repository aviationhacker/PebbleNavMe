.class public final LCatalano/Math/Transforms/DiscreteCosineTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Backward([D)V
    .locals 14

    .prologue
    .line 101
    array-length v0, p0

    new-array v4, v0, [D

    .line 103
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    array-length v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 104
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 105
    const-wide/16 v2, 0x0

    .line 106
    const/4 v1, 0x0

    :goto_1
    array-length v5, p0

    if-ge v1, v5, :cond_0

    .line 107
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v1

    int-to-double v8, v5

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    int-to-double v10, v5

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 108
    int-to-double v10, v1

    invoke-static {v10, v11}, LCatalano/Math/Transforms/DiscreteCosineTransform;->a(D)D

    move-result-wide v10

    aget-wide v12, p0, v1

    mul-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_0
    mul-double/2addr v2, v6

    aput-wide v2, v4, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 113
    aget-wide v2, v4, v0

    aput-wide v2, p0, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 115
    :cond_2
    return-void
.end method

.method public static Backward([[D)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 122
    array-length v3, p0

    .line 123
    aget-object v0, p0, v1

    array-length v4, v0

    .line 125
    new-array v5, v4, [D

    .line 126
    new-array v6, v3, [D

    move v2, v1

    .line 128
    :goto_0
    if-ge v2, v4, :cond_2

    move v0, v1

    .line 129
    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_0

    .line 130
    aget-object v7, p0, v0

    aget-wide v8, v7, v2

    aput-wide v8, v6, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_0
    invoke-static {v6}, LCatalano/Math/Transforms/DiscreteCosineTransform;->Backward([D)V

    move v0, v1

    .line 134
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_1

    .line 135
    aget-object v7, p0, v0

    aget-wide v8, v6, v0

    aput-wide v8, v7, v2

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 138
    :goto_3
    if-ge v2, v3, :cond_5

    move v0, v1

    .line 139
    :goto_4
    array-length v4, v5

    if-ge v0, v4, :cond_3

    .line 140
    aget-object v4, p0, v2

    aget-wide v6, v4, v0

    aput-wide v6, v5, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 142
    :cond_3
    invoke-static {v5}, LCatalano/Math/Transforms/DiscreteCosineTransform;->Backward([D)V

    move v0, v1

    .line 144
    :goto_5
    array-length v4, v5

    if-ge v0, v4, :cond_4

    .line 145
    aget-object v4, p0, v2

    aget-wide v6, v5, v0

    aput-wide v6, v4, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 138
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 147
    :cond_5
    return-void
.end method

.method public static Forward([D)V
    .locals 14

    .prologue
    .line 45
    array-length v0, p0

    new-array v4, v0, [D

    .line 47
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    array-length v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 48
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 49
    const-wide/16 v2, 0x0

    .line 50
    const/4 v1, 0x0

    :goto_1
    array-length v5, p0

    if-ge v1, v5, :cond_0

    .line 51
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    int-to-double v10, v1

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    int-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    array-length v5, p0

    int-to-double v12, v5

    mul-double/2addr v10, v12

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 52
    aget-wide v10, p0, v1

    mul-double/2addr v8, v10

    int-to-double v10, v0

    invoke-static {v10, v11}, LCatalano/Math/Transforms/DiscreteCosineTransform;->a(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    :cond_0
    mul-double/2addr v2, v6

    aput-wide v2, v4, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 57
    aget-wide v2, v4, v0

    aput-wide v2, p0, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 59
    :cond_2
    return-void
.end method

.method public static Forward([[D)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 66
    array-length v3, p0

    .line 67
    aget-object v0, p0, v1

    array-length v4, v0

    .line 69
    new-array v5, v4, [D

    .line 70
    new-array v6, v3, [D

    move v2, v1

    .line 72
    :goto_0
    if-ge v2, v3, :cond_2

    move v0, v1

    .line 74
    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_0

    .line 75
    aget-object v7, p0, v2

    aget-wide v8, v7, v0

    aput-wide v8, v5, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_0
    invoke-static {v5}, LCatalano/Math/Transforms/DiscreteCosineTransform;->Forward([D)V

    move v0, v1

    .line 79
    :goto_2
    array-length v7, v5

    if-ge v0, v7, :cond_1

    .line 80
    aget-object v7, p0, v2

    aget-wide v8, v5, v0

    aput-wide v8, v7, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 83
    :goto_3
    if-ge v2, v4, :cond_5

    move v0, v1

    .line 85
    :goto_4
    array-length v3, v6

    if-ge v0, v3, :cond_3

    .line 86
    aget-object v3, p0, v0

    aget-wide v8, v3, v2

    aput-wide v8, v6, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 88
    :cond_3
    invoke-static {v6}, LCatalano/Math/Transforms/DiscreteCosineTransform;->Forward([D)V

    move v0, v1

    .line 90
    :goto_5
    array-length v3, v6

    if-ge v0, v3, :cond_4

    .line 91
    aget-object v3, p0, v0

    aget-wide v8, v6, v0

    aput-wide v8, v3, v2

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 83
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 93
    :cond_5
    return-void
.end method

.method private static a(D)D
    .locals 4

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 150
    const-wide/16 v2, 0x0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_0

    .line 151
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 153
    :cond_0
    return-wide v0
.end method
