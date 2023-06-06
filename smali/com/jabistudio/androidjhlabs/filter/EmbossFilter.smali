.class public Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;
.super Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:Z

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;-><init>()V

    .line 31
    const v0, 0x4016cbe4

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->a:F

    const v0, 0x3f060a92

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->b:F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->c:Z

    .line 33
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->d:F

    .line 36
    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILandroid/graphics/Rect;)[I
    .locals 22

    .prologue
    .line 71
    const/4 v6, 0x0

    .line 72
    mul-int v2, p1, p2

    new-array v12, v2, [I

    .line 79
    mul-int v2, p1, p2

    new-array v13, v2, [I

    .line 80
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p3

    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 81
    aget v3, p3, v2

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->brightness(I)I

    move-result v3

    aput v3, v13, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->a:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->b:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x406ffcccc0000000L    # 255.89999389648438

    mul-double/2addr v2, v4

    double-to-int v14, v2

    .line 87
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->a:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->b:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x406ffcccc0000000L    # 255.89999389648438

    mul-double/2addr v2, v4

    double-to-int v15, v2

    .line 88
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->b:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x406ffcccc0000000L    # 255.89999389648438

    mul-double/2addr v2, v4

    double-to-int v3, v2

    .line 90
    const v2, 0x44bf4000    # 1530.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->d:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    .line 91
    mul-int v16, v2, v2

    .line 92
    mul-int v17, v2, v3

    .line 96
    const/4 v9, 0x0

    .line 98
    const/4 v2, 0x0

    move v11, v2

    :goto_1
    move/from16 v0, p2

    if-ge v11, v0, :cond_6

    .line 100
    add-int v5, v9, p1

    .line 101
    add-int v4, v5, p1

    .line 103
    const/4 v2, 0x0

    move v7, v5

    move v8, v9

    move v10, v6

    move v6, v4

    move v5, v2

    :goto_2
    move/from16 v0, p1

    if-ge v5, v0, :cond_5

    .line 104
    if-eqz v11, :cond_3

    add-int/lit8 v2, p2, -0x2

    if-ge v11, v2, :cond_3

    if-eqz v5, :cond_3

    add-int/lit8 v2, p1, -0x2

    if-ge v5, v2, :cond_3

    .line 105
    add-int/lit8 v2, v8, -0x1

    aget v2, v13, v2

    add-int/lit8 v4, v7, -0x1

    aget v4, v13, v4

    add-int/2addr v2, v4

    add-int/lit8 v4, v6, -0x1

    aget v4, v13, v4

    add-int/2addr v2, v4

    add-int/lit8 v4, v8, 0x1

    aget v4, v13, v4

    sub-int/2addr v2, v4

    add-int/lit8 v4, v7, 0x1

    aget v4, v13, v4

    sub-int/2addr v2, v4

    add-int/lit8 v4, v6, 0x1

    aget v4, v13, v4

    sub-int/2addr v2, v4

    .line 106
    add-int/lit8 v4, v6, -0x1

    aget v4, v13, v4

    aget v18, v13, v6

    add-int v4, v4, v18

    add-int/lit8 v18, v6, 0x1

    aget v18, v13, v18

    add-int v4, v4, v18

    add-int/lit8 v18, v8, -0x1

    aget v18, v13, v18

    sub-int v4, v4, v18

    aget v18, v13, v8

    sub-int v4, v4, v18

    add-int/lit8 v18, v8, 0x1

    aget v18, v13, v18

    sub-int v4, v4, v18

    .line 108
    if-nez v2, :cond_1

    if-nez v4, :cond_1

    move v2, v3

    .line 117
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->c:Z

    if-eqz v4, :cond_4

    .line 118
    aget v4, p3, v10

    .line 119
    const/high16 v18, -0x1000000

    and-int v18, v18, v4

    .line 120
    shr-int/lit8 v19, v4, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 121
    shr-int/lit8 v20, v4, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 122
    and-int/lit16 v4, v4, 0xff

    .line 123
    mul-int v19, v19, v2

    shr-int/lit8 v19, v19, 0x8

    .line 124
    mul-int v20, v20, v2

    shr-int/lit8 v20, v20, 0x8

    .line 125
    mul-int/2addr v2, v4

    shr-int/lit8 v4, v2, 0x8

    .line 126
    add-int/lit8 v2, v10, 0x1

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    shl-int/lit8 v19, v20, 0x8

    or-int v18, v18, v19

    or-int v4, v4, v18

    aput v4, v12, v10

    .line 103
    :goto_4
    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v10, v2

    move v5, v4

    goto/16 :goto_2

    .line 110
    :cond_1
    mul-int v18, v2, v14

    mul-int v19, v4, v15

    add-int v18, v18, v19

    add-int v18, v18, v17

    if-gez v18, :cond_2

    .line 111
    const/4 v2, 0x0

    goto :goto_3

    .line 113
    :cond_2
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-int/2addr v2, v2

    mul-int/2addr v4, v4

    add-int/2addr v2, v4

    add-int v2, v2, v16

    int-to-double v0, v2

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v2, v0

    goto :goto_3

    :cond_3
    move v2, v3

    .line 115
    goto :goto_3

    .line 128
    :cond_4
    add-int/lit8 v4, v10, 0x1

    const/high16 v18, -0x1000000

    shl-int/lit8 v19, v2, 0x10

    or-int v18, v18, v19

    shl-int/lit8 v19, v2, 0x8

    or-int v18, v18, v19

    or-int v2, v2, v18

    aput v2, v12, v10

    move v2, v4

    goto :goto_4

    .line 98
    :cond_5
    add-int/lit8 v2, v11, 0x1

    add-int v9, v9, p1

    move v11, v2

    move v6, v10

    goto/16 :goto_1

    .line 132
    :cond_6
    return-object v12
.end method

.method public getAzimuth()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->a:F

    return v0
.end method

.method public getBumpHeight()F
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->d:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->b:F

    return v0
.end method

.method public getEmboss()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->c:Z

    return v0
.end method

.method public setAzimuth(F)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->a:F

    .line 40
    return-void
.end method

.method public setBumpHeight(F)V
    .locals 1

    .prologue
    .line 55
    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->d:F

    .line 56
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->b:F

    .line 48
    return-void
.end method

.method public setEmboss(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/EmbossFilter;->c:Z

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "Stylize/Emboss..."

    return-object v0
.end method
