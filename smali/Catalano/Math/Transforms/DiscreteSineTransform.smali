.class public LCatalano/Math/Transforms/DiscreteSineTransform;
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
    .locals 4

    .prologue
    .line 68
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 69
    invoke-static {p0, v0, v1}, LCatalano/Math/Transforms/DiscreteSineTransform;->a([DD)V

    .line 70
    return-void
.end method

.method public static Backward([[D)V
    .locals 4

    .prologue
    .line 115
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 116
    invoke-static {p0, v0, v1}, LCatalano/Math/Transforms/DiscreteSineTransform;->a([[DD)V

    .line 117
    return-void
.end method

.method public static Forward([D)V
    .locals 2

    .prologue
    .line 44
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, v0, v1}, LCatalano/Math/Transforms/DiscreteSineTransform;->a([DD)V

    .line 45
    return-void
.end method

.method public static Forward([[D)V
    .locals 2

    .prologue
    .line 77
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, v0, v1}, LCatalano/Math/Transforms/DiscreteSineTransform;->a([[DD)V

    .line 78
    return-void
.end method

.method private static a([DD)V
    .locals 19

    .prologue
    .line 48
    move-object/from16 v0, p0

    array-length v2, v0

    new-array v6, v2, [D

    .line 50
    const/4 v2, 0x1

    :goto_0
    array-length v3, v6

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_1

    .line 51
    const-wide/16 v4, 0x0

    .line 52
    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    array-length v7, v0

    add-int/lit8 v7, v7, 0x1

    if-ge v3, v7, :cond_0

    .line 53
    add-int/lit8 v7, v3, -0x1

    aget-wide v8, p0, v7

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-int v7, v2, v3

    int-to-double v12, v7

    move-object/from16 v0, p0

    array-length v7, v0

    int-to-double v14, v7

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    div-double/2addr v12, v14

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v3, v2, -0x1

    mul-double v4, v4, p1

    aput-wide v4, v6, v3

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 59
    aget-wide v4, v6, v2

    aput-wide v4, p0, v2

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 61
    :cond_2
    return-void
.end method

.method private static a([[DD)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 81
    array-length v3, p0

    .line 82
    aget-object v0, p0, v1

    array-length v4, v0

    .line 84
    new-array v5, v4, [D

    .line 85
    new-array v6, v3, [D

    move v2, v1

    .line 87
    :goto_0
    if-ge v2, v3, :cond_2

    move v0, v1

    .line 89
    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_0

    .line 90
    aget-object v7, p0, v2

    aget-wide v8, v7, v0

    aput-wide v8, v5, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_0
    invoke-static {v5, p1, p2}, LCatalano/Math/Transforms/DiscreteSineTransform;->a([DD)V

    move v0, v1

    .line 94
    :goto_2
    array-length v7, v5

    if-ge v0, v7, :cond_1

    .line 95
    aget-object v7, p0, v2

    aget-wide v8, v5, v0

    aput-wide v8, v7, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 87
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 98
    :goto_3
    if-ge v2, v4, :cond_5

    move v0, v1

    .line 100
    :goto_4
    array-length v3, v6

    if-ge v0, v3, :cond_3

    .line 101
    aget-object v3, p0, v0

    aget-wide v8, v3, v2

    aput-wide v8, v6, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 103
    :cond_3
    invoke-static {v6, p1, p2}, LCatalano/Math/Transforms/DiscreteSineTransform;->a([DD)V

    move v0, v1

    .line 105
    :goto_5
    array-length v3, v6

    if-ge v0, v3, :cond_4

    .line 106
    aget-object v3, p0, v0

    aget-wide v8, v6, v0

    aput-wide v8, v3, v2

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 98
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 108
    :cond_5
    return-void
.end method
