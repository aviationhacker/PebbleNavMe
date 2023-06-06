.class public Lcom/jabistudio/androidjhlabs/filter/DespeckleFilter;
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

.method private a(SSS)S
    .locals 1

    .prologue
    .line 31
    if-ge p1, p2, :cond_3

    .line 32
    add-int/lit8 v0, p1, 0x1

    int-to-short v0, v0

    .line 33
    :goto_0
    if-ge v0, p3, :cond_0

    .line 34
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    .line 35
    :cond_0
    if-le v0, p2, :cond_1

    .line 36
    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    .line 37
    :cond_1
    if-le v0, p3, :cond_2

    .line 38
    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    .line 39
    :cond_2
    return v0

    :cond_3
    move v0, p1

    goto :goto_0
.end method


# virtual methods
.method protected filterPixels(II[ILandroid/graphics/Rect;)[I
    .locals 19

    .prologue
    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v3, 0x3

    move/from16 v0, p1

    filled-new-array {v3, v0}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    .line 45
    const/4 v4, 0x3

    move/from16 v0, p1

    filled-new-array {v4, v0}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    .line 46
    const/4 v5, 0x3

    move/from16 v0, p1

    filled-new-array {v5, v0}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    .line 47
    mul-int v6, p1, p2

    new-array v14, v6, [I

    .line 49
    const/4 v6, 0x0

    :goto_0
    move/from16 v0, p1

    if-ge v6, v0, :cond_0

    .line 50
    aget v8, p3, v6

    .line 51
    const/4 v9, 0x1

    aget-object v9, v3, v9

    shr-int/lit8 v10, v8, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    aput-short v10, v9, v6

    .line 52
    const/4 v9, 0x1

    aget-object v9, v4, v9

    shr-int/lit8 v10, v8, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    aput-short v10, v9, v6

    .line 53
    const/4 v9, 0x1

    aget-object v9, v5, v9

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    aput-short v8, v9, v6

    .line 49
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v6, 0x0

    move v13, v6

    :goto_1
    move/from16 v0, p2

    if-ge v13, v0, :cond_7

    .line 56
    if-lez v13, :cond_1

    add-int/lit8 v6, p2, -0x1

    if-ge v13, v6, :cond_1

    const/4 v6, 0x1

    move v12, v6

    .line 57
    :goto_2
    add-int v8, v7, p1

    .line 58
    add-int/lit8 v6, p2, -0x1

    if-ge v13, v6, :cond_2

    .line 59
    const/4 v6, 0x0

    :goto_3
    move/from16 v0, p1

    if-ge v6, v0, :cond_2

    .line 60
    add-int/lit8 v9, v8, 0x1

    aget v8, p3, v8

    .line 61
    const/4 v10, 0x2

    aget-object v10, v3, v10

    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-short v11, v11

    aput-short v11, v10, v6

    .line 62
    const/4 v10, 0x2

    aget-object v10, v4, v10

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-short v11, v11

    aput-short v11, v10, v6

    .line 63
    const/4 v10, 0x2

    aget-object v10, v5, v10

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    aput-short v8, v10, v6

    .line 59
    add-int/lit8 v6, v6, 0x1

    move v8, v9

    goto :goto_3

    .line 56
    :cond_1
    const/4 v6, 0x0

    move v12, v6

    goto :goto_2

    .line 66
    :cond_2
    const/4 v6, 0x0

    move v10, v6

    move v11, v7

    :goto_4
    move/from16 v0, p1

    if-ge v10, v0, :cond_6

    .line 67
    if-lez v10, :cond_5

    add-int/lit8 v6, p1, -0x1

    if-ge v10, v6, :cond_5

    const/4 v6, 0x1

    .line 68
    :goto_5
    const/4 v7, 0x1

    aget-object v7, v3, v7

    aget-short v9, v7, v10

    .line 69
    const/4 v7, 0x1

    aget-object v7, v4, v7

    aget-short v8, v7, v10

    .line 70
    const/4 v7, 0x1

    aget-object v7, v5, v7

    aget-short v7, v7, v10

    .line 71
    add-int/lit8 v15, v10, -0x1

    .line 72
    add-int/lit8 v16, v10, 0x1

    .line 74
    if-eqz v12, :cond_3

    .line 75
    const/16 v17, 0x0

    aget-object v17, v3, v17

    aget-short v17, v17, v10

    const/16 v18, 0x2

    aget-object v18, v3, v18

    aget-short v18, v18, v10

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v9, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/DespeckleFilter;->a(SSS)S

    move-result v9

    .line 76
    const/16 v17, 0x0

    aget-object v17, v4, v17

    aget-short v17, v17, v10

    const/16 v18, 0x2

    aget-object v18, v4, v18

    aget-short v18, v18, v10

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/DespeckleFilter;->a(SSS)S

    move-result v8

    .line 77
    const/16 v17, 0x0

    aget-object v17, v5, v17

    aget-short v17, v17, v10

    const/16 v18, 0x2

    aget-object v18, v5, v18

    aget-short v18, v18, v10

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/DespeckleFilter;->a(SSS)S

    move-result v7

    .line 80
    :cond_3
    if-eqz v6, :cond_4

    .line 81
    const/16 v17, 0x1

    aget-object v17, v3, v17

    aget-short v17, v17, v15

    const/16 v18, 0x1

    aget-object v18, v3, v18

    aget-short v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v9, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/DespeckleFilter;->a(SSS)S

    move-result v9

    .line 82
    const/16 v17, 0x1

    aget-object v17, v4, v17

    aget-short v17, v17, v15

    const/16 v18, 0x1

    aget-object v18, v4, v18

    aget-short v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/DespeckleFilter;->a(SSS)S

    move-result v8

    .line 83
    const/16 v17, 0x1

    aget-object v17, v5, v17

    aget-short v17, v17, v15

    const/16 v18, 0x1

    aget-object v18, v5, v18

    aget-short v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/DespeckleFilter;->a(SSS)S

    move-result v7

    .line 86
    :cond_4
    if-eqz v12, :cond_8

    if-eqz v6, :cond_8

    .line 87
    const/4 v6, 0x0

    aget-object v6, v3, v6

    aget-short v6, v6, v15

    const/16 v17, 0x2

    aget-object v17, v3, v17

    aget-short v17, v17, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v9, v6, v1}, Lcom/jabistudio/androidjhlabs/filter/DespeckleFilter;->a(SSS)S

    move-result v6

    .line 88
    const/4 v9, 0x0

    aget-object v9, v4, v9

    aget-short v9, v9, v15

    const/16 v17, 0x2

    aget-object v17, v4, v17

    aget-short v17, v17, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v9, v1}, Lcom/jabistudio/androidjhlabs/filter/DespeckleFilter;->a(SSS)S

    move-result v9

    .line 89
    const/4 v8, 0x0

    aget-object v8, v5, v8

    aget-short v8, v8, v15

    const/16 v17, 0x2

    aget-object v17, v5, v17

    aget-short v17, v17, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v8, v1}, Lcom/jabistudio/androidjhlabs/filter/DespeckleFilter;->a(SSS)S

    move-result v17

    .line 91
    const/4 v7, 0x2

    aget-object v7, v3, v7

    aget-short v7, v7, v15

    const/4 v8, 0x0

    aget-object v8, v3, v8

    aget-short v8, v8, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lcom/jabistudio/androidjhlabs/filter/DespeckleFilter;->a(SSS)S

    move-result v8

    .line 92
    const/4 v6, 0x2

    aget-object v6, v4, v6

    aget-short v6, v6, v15

    const/4 v7, 0x0

    aget-object v7, v4, v7

    aget-short v7, v7, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v7}, Lcom/jabistudio/androidjhlabs/filter/DespeckleFilter;->a(SSS)S

    move-result v7

    .line 93
    const/4 v6, 0x2

    aget-object v6, v5, v6

    aget-short v6, v6, v15

    const/4 v9, 0x0

    aget-object v9, v5, v9

    aget-short v9, v9, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v6, v9}, Lcom/jabistudio/androidjhlabs/filter/DespeckleFilter;->a(SSS)S

    move-result v6

    .line 96
    :goto_6
    aget v9, p3, v11

    const/high16 v15, -0x1000000

    and-int/2addr v9, v15

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v14, v11

    .line 97
    add-int/lit8 v7, v11, 0x1

    .line 66
    add-int/lit8 v6, v10, 0x1

    move v10, v6

    move v11, v7

    goto/16 :goto_4

    .line 67
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 100
    :cond_6
    const/4 v6, 0x0

    aget-object v6, v3, v6

    .line 101
    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v3, v8

    aput-object v8, v3, v7

    .line 102
    const/4 v7, 0x1

    const/4 v8, 0x2

    aget-object v8, v3, v8

    aput-object v8, v3, v7

    .line 103
    const/4 v7, 0x2

    aput-object v6, v3, v7

    .line 104
    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 105
    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v4, v8

    aput-object v8, v4, v7

    .line 106
    const/4 v7, 0x1

    const/4 v8, 0x2

    aget-object v8, v4, v8

    aput-object v8, v4, v7

    .line 107
    const/4 v7, 0x2

    aput-object v6, v4, v7

    .line 108
    const/4 v6, 0x0

    aget-object v6, v5, v6

    .line 109
    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v5, v8

    aput-object v8, v5, v7

    .line 110
    const/4 v7, 0x1

    const/4 v8, 0x2

    aget-object v8, v5, v8

    aput-object v8, v5, v7

    .line 111
    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 55
    add-int/lit8 v6, v13, 0x1

    move v13, v6

    move v7, v11

    goto/16 :goto_1

    .line 114
    :cond_7
    return-object v14

    :cond_8
    move v6, v7

    move v7, v8

    move v8, v9

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "Blur/Despeckle..."

    return-object v0
.end method
