.class public Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:Z

.field private c:Z

.field private d:[I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->a:F

    .line 37
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 20

    .prologue
    .line 112
    .line 115
    mul-int v2, p2, p3

    new-array v3, v2, [I

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->d:[I

    if-nez v2, :cond_0

    move-object v2, v3

    .line 160
    :goto_0
    return-object v2

    .line 119
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->e:I

    .line 120
    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->f:I

    .line 122
    const/high16 v2, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->a:F

    mul-float v8, v2, v4

    .line 124
    move/from16 v0, p2

    new-array v9, v0, [I

    .line 125
    new-array v10, v6, [I

    .line 127
    const/4 v2, 0x0

    move v5, v2

    :goto_1
    move/from16 v0, p3

    if-ge v5, v0, :cond_4

    .line 128
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v5, v1, v9}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->getLineRGB([III[I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->d:[I

    rem-int v4, v5, v7

    invoke-static {v2, v4, v6, v10}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->getLineRGB([III[I)V

    .line 132
    const/4 v2, 0x0

    move v4, v2

    :goto_2
    move/from16 v0, p2

    if-ge v4, v0, :cond_3

    .line 133
    rem-int v2, v4, v6

    aget v2, v10, v2

    .line 134
    aget v11, v9, v4

    .line 135
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->b:Z

    if-eqz v12, :cond_1

    .line 136
    const v12, 0xffffff

    xor-int/2addr v2, v12

    .line 137
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->c:Z

    if-eqz v12, :cond_2

    .line 138
    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->brightness(I)I

    move-result v2

    .line 139
    invoke-static {v11}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->brightness(I)I

    move-result v12

    .line 140
    const/high16 v13, 0x3f800000    # 1.0f

    int-to-float v14, v12

    sub-float/2addr v14, v8

    int-to-float v12, v12

    add-float/2addr v12, v8

    int-to-float v2, v2

    invoke-static {v14, v12, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v2

    sub-float v2, v13, v2

    .line 141
    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v2, v12

    float-to-int v2, v2

    .line 142
    const/high16 v12, -0x1000000

    and-int/2addr v11, v12

    shl-int/lit8 v12, v2, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v2, 0x8

    or-int/2addr v11, v12

    or-int/2addr v2, v11

    aput v2, v9, v4

    .line 132
    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 144
    :cond_2
    shr-int/lit8 v12, v11, 0x10

    and-int/lit16 v12, v12, 0xff

    .line 145
    shr-int/lit8 v13, v11, 0x8

    and-int/lit16 v13, v13, 0xff

    .line 146
    and-int/lit16 v14, v11, 0xff

    .line 147
    shr-int/lit8 v15, v2, 0x10

    and-int/lit16 v15, v15, 0xff

    .line 148
    shr-int/lit8 v16, v2, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 149
    and-int/lit16 v2, v2, 0xff

    .line 150
    const/high16 v17, 0x437f0000    # 255.0f

    const/high16 v18, 0x3f800000    # 1.0f

    int-to-float v0, v12

    move/from16 v19, v0

    sub-float v19, v19, v8

    int-to-float v12, v12

    add-float/2addr v12, v8

    int-to-float v15, v15

    move/from16 v0, v19

    invoke-static {v0, v12, v15}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v12

    sub-float v12, v18, v12

    mul-float v12, v12, v17

    float-to-int v12, v12

    .line 151
    const/high16 v15, 0x437f0000    # 255.0f

    const/high16 v17, 0x3f800000    # 1.0f

    int-to-float v0, v13

    move/from16 v18, v0

    sub-float v18, v18, v8

    int-to-float v13, v13

    add-float/2addr v13, v8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v13, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v13

    sub-float v13, v17, v13

    mul-float/2addr v13, v15

    float-to-int v13, v13

    .line 152
    const/high16 v15, 0x437f0000    # 255.0f

    const/high16 v16, 0x3f800000    # 1.0f

    int-to-float v0, v14

    move/from16 v17, v0

    sub-float v17, v17, v8

    int-to-float v14, v14

    add-float/2addr v14, v8

    int-to-float v2, v2

    move/from16 v0, v17

    invoke-static {v0, v14, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v2

    sub-float v2, v16, v2

    mul-float/2addr v2, v15

    float-to-int v2, v2

    .line 153
    const/high16 v14, -0x1000000

    and-int/2addr v11, v14

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v13, 0x8

    or-int/2addr v11, v12

    or-int/2addr v2, v11

    aput v2, v9, v4

    goto :goto_3

    .line 157
    :cond_3
    move/from16 v0, p2

    invoke-static {v3, v5, v0, v9}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->setLineRGB([III[I)V

    .line 127
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1

    :cond_4
    move-object v2, v3

    .line 160
    goto/16 :goto_0
.end method

.method public getInvert()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->b:Z

    return v0
.end method

.method public getMask()[I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->d:[I

    return-object v0
.end method

.method public getMonochrome()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->c:Z

    return v0
.end method

.method public getSoftness()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->a:F

    return v0
.end method

.method public setInvert(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->b:Z

    .line 87
    return-void
.end method

.method public setMask([I)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->d:[I

    .line 66
    return-void
.end method

.method public setMaskHeight(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->f:I

    .line 83
    return-void
.end method

.method public setMaskWidth(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->e:I

    .line 79
    return-void
.end method

.method public setMonochrome(Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->c:Z

    .line 100
    return-void
.end method

.method public setSoftness(F)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/HalftoneFilter;->a:F

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "Stylize/Halftone..."

    return-object v0
.end method
