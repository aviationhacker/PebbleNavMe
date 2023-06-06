.class public Lcom/jabistudio/androidjhlabs/filter/MedianFilter;
.super Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;-><init>()V

    .line 28
    return-void
.end method

.method private a([I[I[I)I
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/4 v5, 0x0

    .line 53
    const v1, 0x7fffffff

    move v2, v5

    move v3, v5

    .line 55
    :goto_0
    if-ge v2, v8, :cond_1

    move v4, v5

    move v0, v5

    .line 57
    :goto_1
    if-ge v4, v8, :cond_0

    .line 58
    aget v6, p1, v2

    aget v7, p1, v4

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v0, v6

    .line 59
    aget v6, p2, v2

    aget v7, p2, v4

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v0, v6

    .line 60
    aget v6, p3, v2

    aget v7, p3, v4

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v6, v0

    .line 57
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v6

    goto :goto_1

    .line 62
    :cond_0
    if-ge v0, v1, :cond_2

    move v1, v2

    .line 55
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 67
    :cond_1
    return v3

    :cond_2
    move v0, v1

    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method protected filterPixels(II[ILandroid/graphics/Rect;)[I
    .locals 15

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 72
    const/16 v1, 0x9

    new-array v7, v1, [I

    .line 73
    const/16 v1, 0x9

    new-array v8, v1, [I

    .line 74
    const/16 v1, 0x9

    new-array v9, v1, [I

    .line 75
    const/16 v1, 0x9

    new-array v10, v1, [I

    .line 76
    mul-int v1, p1, p2

    new-array v11, v1, [I

    .line 78
    const/4 v1, 0x0

    move v6, v1

    :goto_0
    move/from16 v0, p2

    if-ge v6, v0, :cond_5

    .line 79
    const/4 v1, 0x0

    move v4, v1

    move v5, v2

    :goto_1
    move/from16 v0, p1

    if-ge v4, v0, :cond_4

    .line 80
    const/4 v2, 0x0

    .line 81
    const/4 v1, -0x1

    move v3, v1

    move v1, v2

    :goto_2
    const/4 v2, 0x1

    if-gt v3, v2, :cond_2

    .line 82
    add-int v2, v6, v3

    .line 83
    if-ltz v2, :cond_1

    move/from16 v0, p2

    if-ge v2, v0, :cond_1

    .line 84
    mul-int v12, v2, p1

    .line 85
    const/4 v2, -0x1

    :goto_3
    const/4 v13, 0x1

    if-gt v2, v13, :cond_1

    .line 86
    add-int v13, v4, v2

    .line 87
    if-ltz v13, :cond_0

    move/from16 v0, p1

    if-ge v13, v0, :cond_0

    .line 88
    add-int/2addr v13, v12

    aget v13, p3, v13

    .line 89
    aput v13, v7, v1

    .line 90
    shr-int/lit8 v14, v13, 0x10

    and-int/lit16 v14, v14, 0xff

    aput v14, v8, v1

    .line 91
    shr-int/lit8 v14, v13, 0x8

    and-int/lit16 v14, v14, 0xff

    aput v14, v9, v1

    .line 92
    and-int/lit16 v13, v13, 0xff

    aput v13, v10, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 85
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 81
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 98
    :cond_2
    :goto_4
    const/16 v2, 0x9

    if-ge v1, v2, :cond_3

    .line 99
    const/high16 v2, -0x1000000

    aput v2, v7, v1

    .line 100
    const/4 v2, 0x0

    aput v2, v10, v1

    aput v2, v9, v1

    aput v2, v8, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 103
    :cond_3
    add-int/lit8 v2, v5, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/jabistudio/androidjhlabs/filter/MedianFilter;->a([I[I[I)I

    move-result v1

    aget v1, v7, v1

    aput v1, v11, v5

    .line 79
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v5, v2

    goto :goto_1

    .line 78
    :cond_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v2, v5

    goto :goto_0

    .line 106
    :cond_5
    return-object v11
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "Blur/Median"

    return-object v0
.end method
