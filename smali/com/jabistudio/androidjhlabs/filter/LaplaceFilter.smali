.class public Lcom/jabistudio/androidjhlabs/filter/LaplaceFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([I)V
    .locals 4

    .prologue
    .line 26
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 27
    aget v1, p1, v0

    .line 28
    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 29
    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 30
    and-int/lit16 v1, v1, 0xff

    .line 31
    add-int/2addr v2, v3

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    aput v1, p1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method private a([III[I)V
    .locals 3

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    mul-int v0, p2, p3

    :goto_0
    mul-int v2, p2, p3

    add-int/2addr v2, p3

    if-ge v0, v2, :cond_0

    .line 117
    aget v2, p4, v1

    aput v2, p1, v0

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method private a([III)[I
    .locals 4

    .prologue
    .line 106
    new-array v2, p3, [I

    .line 107
    const/4 v1, 0x0

    .line 108
    mul-int v0, p2, p3

    :goto_0
    mul-int v3, p2, p3

    add-int/2addr v3, p3

    if-ge v0, v3, :cond_0

    .line 109
    aget v3, p1, v0

    aput v3, v2, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-object v2
.end method


# virtual methods
.method public filter([III)[I
    .locals 18

    .prologue
    .line 36
    .line 39
    mul-int v3, p2, p3

    new-array v9, v3, [I

    .line 43
    const/4 v4, 0x0

    .line 44
    move/from16 v0, p2

    new-array v10, v0, [I

    .line 45
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/jabistudio/androidjhlabs/filter/LaplaceFilter;->a([III)[I

    move-result-object v6

    .line 46
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/jabistudio/androidjhlabs/filter/LaplaceFilter;->a([III)[I

    move-result-object v5

    .line 47
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/jabistudio/androidjhlabs/filter/LaplaceFilter;->a([I)V

    .line 48
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/jabistudio/androidjhlabs/filter/LaplaceFilter;->a([I)V

    .line 49
    const/4 v3, 0x0

    move-object v7, v5

    move v5, v3

    move-object v3, v4

    :goto_0
    move/from16 v0, p3

    if-ge v5, v0, :cond_3

    .line 50
    add-int/lit8 v4, p3, -0x1

    if-ge v5, v4, :cond_0

    .line 51
    add-int/lit8 v3, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/jabistudio/androidjhlabs/filter/LaplaceFilter;->a([III)[I

    move-result-object v3

    .line 52
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/jabistudio/androidjhlabs/filter/LaplaceFilter;->a([I)V

    .line 54
    :cond_0
    const/4 v4, 0x0

    add-int/lit8 v8, p2, -0x1

    const/high16 v11, -0x1000000

    aput v11, v10, v8

    aput v11, v10, v4

    .line 55
    const/4 v4, 0x1

    move v8, v4

    :goto_1
    add-int/lit8 v4, p2, -0x1

    if-ge v8, v4, :cond_2

    .line 56
    add-int/lit8 v4, v8, -0x1

    aget v4, v7, v4

    .line 57
    aget v11, v6, v8

    .line 58
    aget v12, v3, v8

    .line 59
    add-int/lit8 v13, v8, 0x1

    aget v13, v7, v13

    .line 61
    aget v14, v7, v8

    .line 62
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 63
    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 65
    const/high16 v11, 0x3f000000    # 0.5f

    sub-int v12, v15, v14

    sub-int v4, v14, v4

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    .line 67
    add-int/lit8 v11, v8, -0x1

    aget v11, v6, v11

    aget v12, v6, v8

    add-int/2addr v11, v12

    add-int/lit8 v12, v8, 0x1

    aget v12, v6, v12

    add-int/2addr v11, v12

    add-int/lit8 v12, v8, -0x1

    aget v12, v7, v12

    add-int/2addr v11, v12

    aget v12, v7, v8

    mul-int/lit8 v12, v12, 0x8

    sub-int/2addr v11, v12

    add-int/lit8 v12, v8, 0x1

    aget v12, v7, v12

    add-int/2addr v11, v12

    add-int/lit8 v12, v8, -0x1

    aget v12, v3, v12

    add-int/2addr v11, v12

    aget v12, v3, v8

    add-int/2addr v11, v12

    add-int/lit8 v12, v8, 0x1

    aget v12, v3, v12

    add-int/2addr v11, v12

    if-lez v11, :cond_1

    .line 71
    :goto_2
    aput v4, v10, v8

    .line 55
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_1

    .line 67
    :cond_1
    add-int/lit16 v4, v4, 0x80

    goto :goto_2

    .line 73
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v5, v1, v10}, Lcom/jabistudio/androidjhlabs/filter/LaplaceFilter;->a([III[I)V

    .line 49
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object/from16 v17, v6

    move-object v6, v7

    move-object v7, v3

    move-object/from16 v3, v17

    goto/16 :goto_0

    .line 77
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v4, v1}, Lcom/jabistudio/androidjhlabs/filter/LaplaceFilter;->a([III)[I

    move-result-object v7

    .line 78
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v4, v1}, Lcom/jabistudio/androidjhlabs/filter/LaplaceFilter;->a([III)[I

    move-result-object v5

    .line 79
    const/4 v4, 0x0

    move v6, v4

    move-object v8, v5

    :goto_3
    move/from16 v0, p3

    if-ge v6, v0, :cond_9

    .line 80
    add-int/lit8 v4, p3, -0x1

    if-ge v6, v4, :cond_4

    .line 81
    add-int/lit8 v3, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v3, v1}, Lcom/jabistudio/androidjhlabs/filter/LaplaceFilter;->a([III)[I

    move-result-object v3

    .line 83
    :cond_4
    const/4 v4, 0x0

    add-int/lit8 v5, p2, -0x1

    const/high16 v11, -0x1000000

    aput v11, v10, v5

    aput v11, v10, v4

    .line 84
    const/4 v4, 0x1

    move v5, v4

    :goto_4
    add-int/lit8 v4, p2, -0x1

    if-ge v5, v4, :cond_8

    .line 85
    aget v4, v8, v5

    .line 86
    const/16 v11, 0x80

    if-gt v4, v11, :cond_7

    add-int/lit8 v11, v5, -0x1

    aget v11, v7, v11

    const/16 v12, 0x80

    if-gt v11, v12, :cond_5

    aget v11, v7, v5

    const/16 v12, 0x80

    if-gt v11, v12, :cond_5

    add-int/lit8 v11, v5, 0x1

    aget v11, v7, v11

    const/16 v12, 0x80

    if-gt v11, v12, :cond_5

    add-int/lit8 v11, v5, -0x1

    aget v11, v8, v11

    const/16 v12, 0x80

    if-gt v11, v12, :cond_5

    add-int/lit8 v11, v5, 0x1

    aget v11, v8, v11

    const/16 v12, 0x80

    if-gt v11, v12, :cond_5

    add-int/lit8 v11, v5, -0x1

    aget v11, v3, v11

    const/16 v12, 0x80

    if-gt v11, v12, :cond_5

    aget v11, v3, v5

    const/16 v12, 0x80

    if-gt v11, v12, :cond_5

    add-int/lit8 v11, v5, 0x1

    aget v11, v3, v11

    const/16 v12, 0x80

    if-le v11, v12, :cond_7

    :cond_5
    const/16 v11, 0x80

    if-lt v4, v11, :cond_6

    add-int/lit8 v4, v4, -0x80

    .line 97
    :cond_6
    :goto_5
    const/high16 v11, -0x1000000

    shl-int/lit8 v12, v4, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x8

    or-int/2addr v11, v12

    or-int/2addr v4, v11

    aput v4, v10, v5

    .line 84
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    .line 86
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 99
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v6, v1, v10}, Lcom/jabistudio/androidjhlabs/filter/LaplaceFilter;->a([III[I)V

    .line 79
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-object/from16 v17, v7

    move-object v7, v8

    move-object v8, v3

    move-object/from16 v3, v17

    goto/16 :goto_3

    .line 103
    :cond_9
    return-object v9
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "Edges/Laplace..."

    return-object v0
.end method
