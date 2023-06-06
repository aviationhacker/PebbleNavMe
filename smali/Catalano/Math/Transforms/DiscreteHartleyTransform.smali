.class public final LCatalano/Math/Transforms/DiscreteHartleyTransform;
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
    .locals 0

    .prologue
    .line 66
    invoke-static {p0}, LCatalano/Math/Transforms/DiscreteHartleyTransform;->Forward([D)V

    .line 67
    return-void
.end method

.method public static Backward([[D)V
    .locals 0

    .prologue
    .line 100
    invoke-static {p0}, LCatalano/Math/Transforms/DiscreteHartleyTransform;->Forward([[D)V

    .line 101
    return-void
.end method

.method public static Forward([D)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 44
    array-length v0, p0

    new-array v6, v0, [D

    move v0, v1

    .line 46
    :goto_0
    array-length v2, v6

    if-ge v0, v2, :cond_1

    .line 47
    const-wide/16 v2, 0x0

    move-wide v4, v2

    move v2, v1

    .line 48
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 49
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    array-length v3, p0

    int-to-double v10, v3

    div-double/2addr v8, v10

    int-to-double v10, v0

    mul-double/2addr v8, v10

    int-to-double v10, v2

    mul-double/2addr v8, v10

    .line 50
    aget-wide v10, p0, v2

    invoke-static {v8, v9}, LCatalano/Math/Transforms/DiscreteHartleyTransform;->a(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    array-length v7, p0

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v2, v8

    mul-double/2addr v2, v4

    aput-wide v2, v6, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    :goto_2
    array-length v0, v6

    if-ge v1, v0, :cond_2

    .line 56
    aget-wide v2, v6, v1

    aput-wide v2, p0, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 59
    :cond_2
    return-void
.end method

.method public static Forward([[D)V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 74
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 76
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    move v3, v2

    .line 77
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 78
    const-wide/16 v4, 0x0

    move-wide v6, v4

    move v4, v2

    .line 79
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_1

    move v5, v2

    .line 80
    :goto_3
    array-length v8, p0

    if-ge v5, v8, :cond_0

    .line 81
    aget-object v8, p0, v4

    aget-wide v8, v8, v5

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    array-length v12, p0

    int-to-double v12, v12

    div-double/2addr v10, v12

    mul-int v12, v4, v1

    mul-int v13, v5, v3

    add-int/2addr v12, v13

    int-to-double v12, v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, LCatalano/Math/Transforms/DiscreteHartleyTransform;->a(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 80
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 83
    :cond_0
    aget-object v5, v0, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    array-length v10, p0

    int-to-double v10, v10

    div-double/2addr v8, v10

    mul-double/2addr v8, v6

    aput-wide v8, v5, v3

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 77
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 76
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 88
    :goto_4
    array-length v3, p0

    if-ge v1, v3, :cond_5

    move v3, v2

    .line 89
    :goto_5
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 90
    aget-object v4, p0, v1

    aget-object v5, v0, v1

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 88
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 93
    :cond_5
    return-void
.end method

.method private static a(D)D
    .locals 4

    .prologue
    .line 116
    const-wide v0, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method
