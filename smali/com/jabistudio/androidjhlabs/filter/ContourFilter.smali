.class public Lcom/jabistudio/androidjhlabs/filter/ContourFilter;
.super Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;-><init>()V

    .line 28
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->a:F

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->b:F

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->c:F

    .line 31
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->d:I

    .line 34
    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILandroid/graphics/Rect;)[I
    .locals 18

    .prologue
    .line 82
    const/4 v4, 0x0

    .line 83
    const/4 v2, 0x3

    move/from16 v0, p1

    filled-new-array {v2, v0}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    .line 84
    mul-int v3, p1, p2

    new-array v9, v3, [I

    .line 86
    const/16 v3, 0x100

    new-array v10, v3, [S

    .line 87
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->c:F

    const/high16 v5, 0x43800000    # 256.0f

    mul-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->a:F

    div-float/2addr v3, v5

    float-to-int v5, v3

    .line 88
    const/4 v3, 0x0

    :goto_0
    const/16 v6, 0x100

    if-ge v3, v6, :cond_0

    .line 89
    const-wide v6, 0x406fe00000000000L    # 255.0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->a:F

    add-int v11, v3, v5

    int-to-float v11, v11

    mul-float/2addr v8, v11

    const/high16 v11, 0x43800000    # 256.0f

    div-float/2addr v8, v11

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->a:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v8, v11

    float-to-double v12, v8

    div-double/2addr v6, v12

    int-to-double v12, v5

    sub-double/2addr v6, v12

    double-to-int v6, v6

    invoke-static {v6}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v6

    int-to-short v6, v6

    aput-short v6, v10, v3

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :cond_0
    const/4 v3, 0x0

    :goto_1
    move/from16 v0, p1

    if-ge v3, v0, :cond_1

    .line 92
    aget v5, p3, v3

    .line 93
    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v5}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->brightness(I)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v6, v3

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    :cond_1
    const/4 v3, 0x0

    move v8, v3

    :goto_2
    move/from16 v0, p2

    if-ge v8, v0, :cond_9

    .line 96
    if-lez v8, :cond_2

    add-int/lit8 v3, p2, -0x1

    if-ge v8, v3, :cond_2

    const/4 v3, 0x1

    move v7, v3

    .line 97
    :goto_3
    add-int v5, v4, p1

    .line 98
    add-int/lit8 v3, p2, -0x1

    if-ge v8, v3, :cond_3

    .line 99
    const/4 v3, 0x0

    :goto_4
    move/from16 v0, p1

    if-ge v3, v0, :cond_3

    .line 100
    add-int/lit8 v6, v5, 0x1

    aget v5, p3, v5

    .line 101
    const/4 v11, 0x2

    aget-object v11, v2, v11

    invoke-static {v5}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->brightness(I)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v11, v3

    .line 99
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_4

    .line 96
    :cond_2
    const/4 v3, 0x0

    move v7, v3

    goto :goto_3

    .line 104
    :cond_3
    const/4 v3, 0x0

    move v5, v3

    move v6, v4

    :goto_5
    move/from16 v0, p1

    if-ge v5, v0, :cond_8

    .line 105
    if-lez v5, :cond_6

    add-int/lit8 v3, p1, -0x1

    if-ge v5, v3, :cond_6

    const/4 v3, 0x1

    move v4, v3

    .line 106
    :goto_6
    add-int/lit8 v11, v5, -0x1

    .line 107
    add-int/lit8 v3, v5, 0x1

    .line 108
    const/4 v3, 0x0

    .line 110
    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    .line 111
    const/4 v4, 0x0

    aget-object v4, v2, v4

    aget-short v4, v4, v11

    .line 112
    const/4 v12, 0x0

    aget-object v12, v2, v12

    aget-short v12, v12, v5

    .line 113
    const/4 v13, 0x1

    aget-object v13, v2, v13

    aget-short v11, v13, v11

    .line 114
    const/4 v13, 0x1

    aget-object v13, v2, v13

    aget-short v13, v13, v5

    .line 115
    aget-short v14, v10, v4

    .line 116
    aget-short v15, v10, v12

    .line 117
    aget-short v16, v10, v11

    .line 118
    aget-short v17, v10, v13

    .line 120
    if-ne v14, v15, :cond_4

    move/from16 v0, v16

    if-ne v14, v0, :cond_4

    move/from16 v0, v17

    if-ne v15, v0, :cond_4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 121
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->b:F

    sub-int v14, v4, v12

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    sub-int/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v14

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v4, v12

    sub-int/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v4, v11

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 123
    const/16 v4, 0xff

    if-le v3, v4, :cond_5

    .line 124
    const/16 v3, 0xff

    .line 128
    :cond_5
    if-eqz v3, :cond_7

    .line 129
    aget v4, p3, v6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->d:I

    const/4 v12, 0x1

    invoke-static {v4, v11, v12, v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->combinePixels(IIII)I

    move-result v3

    aput v3, v9, v6

    .line 133
    :goto_7
    add-int/lit8 v4, v6, 0x1

    .line 104
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v6, v4

    goto :goto_5

    .line 105
    :cond_6
    const/4 v3, 0x0

    move v4, v3

    goto :goto_6

    .line 132
    :cond_7
    aget v3, p3, v6

    aput v3, v9, v6

    goto :goto_7

    .line 136
    :cond_8
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 137
    const/4 v4, 0x0

    const/4 v5, 0x1

    aget-object v5, v2, v5

    aput-object v5, v2, v4

    .line 138
    const/4 v4, 0x1

    const/4 v5, 0x2

    aget-object v5, v2, v5

    aput-object v5, v2, v4

    .line 139
    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 95
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v4, v6

    goto/16 :goto_2

    .line 142
    :cond_9
    return-object v9
.end method

.method public getContourColor()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->d:I

    return v0
.end method

.method public getLevels()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->a:F

    return v0
.end method

.method public getOffset()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->c:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->b:F

    return v0
.end method

.method public setContourColor(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->d:I

    .line 74
    return-void
.end method

.method public setLevels(F)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->a:F

    .line 38
    return-void
.end method

.method public setOffset(F)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->c:F

    .line 66
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ContourFilter;->b:F

    .line 53
    return-void
.end method
