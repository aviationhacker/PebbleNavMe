.class public Lcom/jabistudio/androidjhlabs/filter/ReduceNoiseFilter;
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

.method private a([I)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x4

    .line 31
    const v0, 0x7fffffff

    const/high16 v3, -0x80000000

    move v4, v2

    move v1, v2

    .line 33
    :goto_0
    const/16 v5, 0x9

    if-ge v2, v5, :cond_1

    .line 34
    if-eq v2, v6, :cond_4

    .line 35
    aget v5, p1, v2

    if-ge v5, v0, :cond_0

    .line 36
    aget v0, p1, v2

    move v1, v2

    .line 39
    :cond_0
    aget v5, p1, v2

    if-le v5, v3, :cond_4

    .line 40
    aget v3, p1, v2

    move v4, v1

    move v1, v0

    move v0, v3

    move v3, v2

    .line 33
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v7, v0

    move v0, v1

    move v1, v4

    move v4, v3

    move v3, v7

    goto :goto_0

    .line 45
    :cond_1
    aget v2, p1, v6

    if-ge v2, v0, :cond_2

    .line 46
    aget v0, p1, v1

    .line 49
    :goto_2
    return v0

    .line 47
    :cond_2
    aget v0, p1, v6

    if-le v0, v3, :cond_3

    .line 48
    aget v0, p1, v4

    goto :goto_2

    .line 49
    :cond_3
    aget v0, p1, v6

    goto :goto_2

    :cond_4
    move v7, v3

    move v3, v4

    move v4, v1

    move v1, v0

    move v0, v7

    goto :goto_1
.end method


# virtual methods
.method protected filterPixels(II[ILandroid/graphics/Rect;)[I
    .locals 18

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 54
    const/16 v1, 0x9

    new-array v8, v1, [I

    .line 55
    const/16 v1, 0x9

    new-array v9, v1, [I

    .line 56
    const/16 v1, 0x9

    new-array v10, v1, [I

    .line 57
    mul-int v1, p1, p2

    new-array v11, v1, [I

    .line 59
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    move/from16 v0, p2

    if-ge v7, v0, :cond_5

    .line 60
    const/4 v1, 0x0

    move v5, v1

    move v6, v2

    :goto_1
    move/from16 v0, p1

    if-ge v5, v0, :cond_4

    .line 61
    const/4 v2, 0x0

    .line 62
    aget v1, p3, v6

    .line 63
    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v12, v3, 0xff

    .line 64
    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v13, v3, 0xff

    .line 65
    and-int/lit16 v14, v1, 0xff

    .line 66
    const/4 v1, -0x1

    move v4, v1

    :goto_2
    const/4 v1, 0x1

    if-gt v4, v1, :cond_3

    .line 67
    add-int v1, v7, v4

    .line 68
    if-ltz v1, :cond_1

    move/from16 v0, p2

    if-ge v1, v0, :cond_1

    .line 69
    mul-int v15, v1, p1

    .line 70
    const/4 v1, -0x1

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    :goto_3
    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 71
    add-int v3, v5, v2

    .line 72
    if-ltz v3, :cond_0

    move/from16 v0, p1

    if-ge v3, v0, :cond_0

    .line 73
    add-int/2addr v3, v15

    aget v3, p3, v3

    .line 74
    shr-int/lit8 v16, v3, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aput v16, v8, v1

    .line 75
    shr-int/lit8 v16, v3, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aput v16, v9, v1

    .line 76
    and-int/lit16 v3, v3, 0xff

    aput v3, v10, v1

    .line 82
    :goto_4
    add-int/lit8 v3, v1, 0x1

    .line 70
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_3

    .line 78
    :cond_0
    aput v12, v8, v1

    .line 79
    aput v13, v9, v1

    .line 80
    aput v14, v10, v1

    goto :goto_4

    .line 85
    :cond_1
    const/4 v1, -0x1

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    :goto_5
    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 86
    aput v12, v8, v1

    .line 87
    aput v13, v9, v1

    .line 88
    aput v14, v10, v1

    .line 89
    add-int/lit8 v3, v1, 0x1

    .line 85
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_5

    .line 66
    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_2

    .line 93
    :cond_3
    aget v1, p3, v6

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/jabistudio/androidjhlabs/filter/ReduceNoiseFilter;->a([I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/jabistudio/androidjhlabs/filter/ReduceNoiseFilter;->a([I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/jabistudio/androidjhlabs/filter/ReduceNoiseFilter;->a([I)I

    move-result v2

    or-int/2addr v1, v2

    aput v1, v11, v6

    .line 94
    add-int/lit8 v2, v6, 0x1

    .line 60
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v6, v2

    goto/16 :goto_1

    .line 59
    :cond_4
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v2, v6

    goto/16 :goto_0

    .line 97
    :cond_5
    return-object v11
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "Blur/Smooth"

    return-object v0
.end method
