.class public Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->a:F

    .line 27
    const-wide/high16 v0, 0x405b000000000000L    # 108.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->b:F

    .line 28
    const-wide v0, 0x4064400000000000L    # 162.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->c:F

    .line 29
    const-wide v0, 0x4056800000000000L    # 90.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->d:F

    .line 32
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 32

    .prologue
    .line 109
    .line 112
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->a:F

    mul-float/2addr v4, v5

    const v5, 0x3fb4fdf4    # 1.414f

    mul-float v9, v4, v5

    .line 113
    const/4 v4, 0x3

    new-array v10, v4, [F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->b:F

    aput v5, v10, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->c:F

    aput v5, v10, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->d:F

    aput v5, v10, v4

    .line 114
    const/4 v4, 0x5

    new-array v11, v4, [F

    fill-array-data v11, :array_0

    .line 115
    const/4 v4, 0x5

    new-array v12, v4, [F

    fill-array-data v12, :array_1

    .line 116
    const/high16 v4, 0x40000000    # 2.0f

    div-float v13, v9, v4

    .line 117
    move/from16 v0, p2

    new-array v14, v0, [I

    .line 119
    mul-int v4, p2, p3

    new-array v15, v4, [I

    .line 120
    const/4 v4, 0x0

    move v8, v4

    :goto_0
    move/from16 v0, p3

    if-ge v8, v0, :cond_5

    .line 121
    const/4 v5, 0x0

    mul-int v4, v8, p2

    :goto_1
    move/from16 v0, p2

    if-ge v5, v0, :cond_0

    .line 122
    aget v6, p1, v4

    const/high16 v7, -0x1000000

    and-int/2addr v6, v7

    const v7, 0xffffff

    or-int/2addr v6, v7

    aput v6, v14, v5

    .line 121
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 123
    :cond_0
    const/4 v4, 0x0

    move v7, v4

    :goto_2
    const/4 v4, 0x3

    if-ge v7, v4, :cond_3

    .line 124
    mul-int/lit8 v4, v7, 0x8

    rsub-int/lit8 v16, v4, 0x10

    .line 125
    const/16 v4, 0xff

    shl-int v17, v4, v16

    .line 126
    aget v4, v10, v7

    .line 127
    float-to-double v0, v4

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    .line 128
    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v19, v0

    .line 130
    const/4 v4, 0x0

    move v6, v4

    :goto_3
    move/from16 v0, p2

    if-ge v6, v0, :cond_2

    .line 132
    int-to-float v4, v6

    mul-float v4, v4, v19

    int-to-float v5, v8

    mul-float v5, v5, v18

    add-float/2addr v4, v5

    .line 133
    neg-int v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v18

    int-to-float v0, v8

    move/from16 v20, v0

    mul-float v20, v20, v19

    add-float v5, v5, v20

    .line 136
    sub-float v20, v4, v13

    move/from16 v0, v20

    invoke-static {v0, v9}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(FF)F

    move-result v20

    sub-float v4, v4, v20

    add-float v20, v4, v13

    .line 137
    sub-float v4, v5, v13

    invoke-static {v4, v9}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(FF)F

    move-result v4

    sub-float v4, v5, v4

    add-float v21, v4, v13

    .line 139
    const/high16 v5, 0x3f800000    # 1.0f

    .line 143
    const/4 v4, 0x0

    :goto_4
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ge v4, v0, :cond_1

    .line 145
    aget v22, v11, v4

    mul-float v22, v22, v9

    add-float v22, v22, v20

    .line 146
    aget v23, v12, v4

    mul-float v23, v23, v9

    add-float v23, v23, v21

    .line 148
    mul-float v24, v22, v19

    mul-float v25, v23, v18

    sub-float v24, v24, v25

    .line 149
    mul-float v22, v22, v18

    mul-float v23, v23, v19

    add-float v22, v22, v23

    .line 151
    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    const/16 v25, 0x0

    add-int/lit8 v26, p2, -0x1

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v23

    .line 152
    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    add-int/lit8 v27, p3, -0x1

    invoke-static/range {v25 .. v27}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v25

    .line 153
    mul-int v25, v25, p2

    add-int v23, v23, v25

    aget v23, p1, v23

    .line 154
    shr-int v23, v23, v16

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    .line 155
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v25, 0x437f0000    # 255.0f

    div-float v23, v23, v25

    .line 156
    const/high16 v25, 0x3f800000    # 1.0f

    mul-float v23, v23, v23

    sub-float v23, v25, v23

    .line 157
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v13

    move-wide/from16 v28, v0

    const-wide v30, 0x3ff69fbe76c8b439L    # 1.414

    mul-double v28, v28, v30

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v23, v0

    .line 158
    int-to-float v0, v6

    move/from16 v25, v0

    sub-float v24, v25, v24

    .line 159
    int-to-float v0, v8

    move/from16 v25, v0

    sub-float v22, v25, v22

    .line 160
    mul-float v24, v24, v24

    .line 161
    mul-float v22, v22, v22

    .line 162
    add-float v22, v22, v24

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v22, v0

    .line 163
    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    add-float v25, v25, v22

    move/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v22

    sub-float v22, v24, v22

    .line 164
    move/from16 v0, v22

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 167
    :cond_1
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 168
    shl-int v4, v4, v16

    .line 169
    xor-int/lit8 v5, v17, -0x1

    xor-int/2addr v4, v5

    .line 170
    const/high16 v5, -0x1000000

    or-int/2addr v4, v5

    .line 171
    aget v5, v14, v6

    and-int/2addr v4, v5

    aput v4, v14, v6

    .line 130
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_3

    .line 123
    :cond_2
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_2

    .line 174
    :cond_3
    const/4 v5, 0x0

    .line 175
    mul-int v4, v8, p2

    :goto_5
    mul-int v6, v8, p2

    add-int v6, v6, p2

    if-ge v4, v6, :cond_4

    .line 176
    aget v6, v14, v5

    aput v6, v15, v4

    .line 177
    add-int/lit8 v5, v5, 0x1

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 120
    :cond_4
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto/16 :goto_0

    .line 181
    :cond_5
    return-object v15

    .line 114
    nop

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 115
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getCyanScreenAngle()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->b:F

    return v0
.end method

.method public getMagentaScreenAngle()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->c:F

    return v0
.end method

.method public getYellowScreenAngle()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->d:F

    return v0
.end method

.method public getdotRadius()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->a:F

    return v0
.end method

.method public setCyanScreenAngle(F)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->b:F

    .line 70
    return-void
.end method

.method public setMagentaScreenAngle(F)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->c:F

    .line 88
    return-void
.end method

.method public setYellowScreenAngle(F)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->d:F

    .line 106
    return-void
.end method

.method public setdotRadius(F)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ColorHalftoneFilter;->a:F

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "Pixellate/Color Halftone..."

    return-object v0
.end method
