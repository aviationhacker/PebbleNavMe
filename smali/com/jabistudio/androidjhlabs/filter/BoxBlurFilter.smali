.class public Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->c:I

    .line 30
    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->d:Z

    .line 36
    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->c:I

    .line 30
    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->d:Z

    .line 45
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->a:F

    .line 46
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->b:F

    .line 47
    iput p3, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->c:I

    .line 48
    return-void
.end method

.method public static blur([I[IIIF)V
    .locals 16

    .prologue
    .line 99
    add-int/lit8 v3, p2, -0x1

    .line 100
    move/from16 v0, p4

    float-to-int v12, v0

    .line 101
    mul-int/lit8 v1, v12, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 102
    mul-int/lit16 v1, v2, 0x100

    new-array v13, v1, [I

    .line 104
    const/4 v1, 0x0

    :goto_0
    mul-int/lit16 v4, v2, 0x100

    if-ge v1, v4, :cond_0

    .line 105
    div-int v4, v1, v2

    aput v4, v13, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    const/4 v1, 0x0

    .line 109
    const/4 v10, 0x0

    move v11, v1

    :goto_1
    move/from16 v0, p3

    if-ge v10, v0, :cond_4

    .line 111
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 113
    neg-int v1, v12

    :goto_2
    if-gt v1, v12, :cond_1

    .line 114
    const/4 v7, 0x0

    add-int/lit8 v8, p2, -0x1

    invoke-static {v1, v7, v8}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v7

    add-int/2addr v7, v11

    aget v7, p0, v7

    .line 115
    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 116
    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    .line 117
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    .line 118
    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    :cond_1
    const/4 v1, 0x0

    move v7, v5

    move v8, v6

    move v9, v10

    move v5, v2

    move v6, v4

    move v4, v1

    :goto_3
    move/from16 v0, p2

    if-ge v4, v0, :cond_3

    .line 122
    aget v1, v13, v8

    shl-int/lit8 v1, v1, 0x18

    aget v2, v13, v7

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget v2, v13, v6

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget v2, v13, v5

    or-int/2addr v1, v2

    aput v1, p1, v9

    .line 124
    add-int v1, v4, v12

    add-int/lit8 v1, v1, 0x1

    .line 125
    if-le v1, v3, :cond_5

    move v2, v3

    .line 127
    :goto_4
    sub-int v1, v4, v12

    .line 128
    if-gez v1, :cond_2

    .line 129
    const/4 v1, 0x0

    .line 130
    :cond_2
    add-int/2addr v2, v11

    aget v2, p0, v2

    .line 131
    add-int/2addr v1, v11

    aget v1, p0, v1

    .line 133
    shr-int/lit8 v14, v2, 0x18

    and-int/lit16 v14, v14, 0xff

    shr-int/lit8 v15, v1, 0x18

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v14, v15

    add-int/2addr v8, v14

    .line 134
    const/high16 v14, 0xff0000

    and-int/2addr v14, v2

    const/high16 v15, 0xff0000

    and-int/2addr v15, v1

    sub-int/2addr v14, v15

    shr-int/lit8 v14, v14, 0x10

    add-int/2addr v7, v14

    .line 135
    const v14, 0xff00

    and-int/2addr v14, v2

    const v15, 0xff00

    and-int/2addr v15, v1

    sub-int/2addr v14, v15

    shr-int/lit8 v14, v14, 0x8

    add-int/2addr v6, v14

    .line 136
    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v1, v1, 0xff

    sub-int v1, v2, v1

    add-int v2, v5, v1

    .line 137
    add-int v5, v9, p3

    .line 121
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v9, v5

    move v5, v2

    goto :goto_3

    .line 139
    :cond_3
    add-int v1, v11, p2

    .line 109
    add-int/lit8 v10, v10, 0x1

    move v11, v1

    goto/16 :goto_1

    .line 141
    :cond_4
    return-void

    :cond_5
    move v2, v1

    goto :goto_4
.end method

.method public static blurFractional([I[IIIF)V
    .locals 19

    .prologue
    .line 144
    move/from16 v0, p4

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float v5, p4, v1

    .line 145
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    div-float v6, v1, v2

    .line 146
    const/4 v2, 0x0

    .line 148
    const/4 v1, 0x0

    move v3, v1

    move v4, v2

    :goto_0
    move/from16 v0, p3

    if-ge v3, v0, :cond_1

    .line 151
    const/4 v1, 0x0

    aget v1, p0, v1

    aput v1, p1, v3

    .line 152
    add-int v2, v3, p3

    .line 153
    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v7, p2, -0x1

    if-ge v1, v7, :cond_0

    .line 154
    add-int v7, v4, v1

    .line 155
    add-int/lit8 v8, v7, -0x1

    aget v8, p0, v8

    .line 156
    aget v9, p0, v7

    .line 157
    add-int/lit8 v7, v7, 0x1

    aget v7, p0, v7

    .line 159
    shr-int/lit8 v10, v8, 0x18

    and-int/lit16 v10, v10, 0xff

    .line 160
    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    .line 161
    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    .line 162
    and-int/lit16 v8, v8, 0xff

    .line 163
    shr-int/lit8 v13, v9, 0x18

    and-int/lit16 v13, v13, 0xff

    .line 164
    shr-int/lit8 v14, v9, 0x10

    and-int/lit16 v14, v14, 0xff

    .line 165
    shr-int/lit8 v15, v9, 0x8

    and-int/lit16 v15, v15, 0xff

    .line 166
    and-int/lit16 v9, v9, 0xff

    .line 167
    shr-int/lit8 v16, v7, 0x18

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 168
    shr-int/lit8 v17, v7, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 169
    shr-int/lit8 v18, v7, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 170
    and-int/lit16 v7, v7, 0xff

    .line 171
    add-int v10, v10, v16

    int-to-float v10, v10

    mul-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v10, v13

    .line 172
    add-int v11, v11, v17

    int-to-float v11, v11

    mul-float/2addr v11, v5

    float-to-int v11, v11

    add-int/2addr v11, v14

    .line 173
    add-int v12, v12, v18

    int-to-float v12, v12

    mul-float/2addr v12, v5

    float-to-int v12, v12

    add-int/2addr v12, v15

    .line 174
    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    add-int/2addr v7, v9

    .line 175
    int-to-float v8, v10

    mul-float/2addr v8, v6

    float-to-int v8, v8

    .line 176
    int-to-float v9, v11

    mul-float/2addr v9, v6

    float-to-int v9, v9

    .line 177
    int-to-float v10, v12

    mul-float/2addr v10, v6

    float-to-int v10, v10

    .line 178
    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    .line 179
    shl-int/lit8 v8, v8, 0x18

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v10, 0x8

    or-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, p1, v2

    .line 180
    add-int v2, v2, p3

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    :cond_0
    add-int/lit8 v1, p2, -0x1

    aget v1, p0, v1

    aput v1, p1, v2

    .line 183
    add-int v2, v4, p2

    .line 148
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v4, v2

    goto/16 :goto_0

    .line 185
    :cond_1
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 69
    .line 72
    mul-int v0, p2, p3

    new-array v0, v0, [I

    .line 73
    mul-int v0, p2, p3

    new-array v2, v0, [I

    .line 76
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->d:Z

    if-eqz v0, :cond_0

    .line 77
    array-length v0, p1

    invoke-static {p1, v1, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->premultiply([III)V

    :cond_0
    move v0, v1

    .line 78
    :goto_0
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->c:I

    if-ge v0, v3, :cond_1

    .line 79
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->a:F

    invoke-static {p1, v2, p2, p3, v3}, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->blur([I[IIIF)V

    .line 80
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->b:F

    invoke-static {v2, p1, p3, p2, v3}, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->blur([I[IIIF)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->a:F

    invoke-static {p1, v2, p2, p3, v0}, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->blurFractional([I[IIIF)V

    .line 83
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->b:F

    invoke-static {v2, p1, p3, p2, v0}, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->blurFractional([I[IIIF)V

    .line 84
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->d:Z

    if-eqz v0, :cond_2

    .line 85
    array-length v0, p1

    invoke-static {p1, v1, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->unpremultiply([III)V

    .line 87
    :cond_2
    return-object p1
.end method

.method public getHRadius()F
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->a:F

    return v0
.end method

.method public getIterations()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->c:I

    return v0
.end method

.method public getPremultiplyAlpha()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->d:Z

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->a:F

    return v0
.end method

.method public getVRadius()F
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->b:F

    return v0
.end method

.method public setHRadius(F)V
    .locals 0

    .prologue
    .line 194
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->a:F

    .line 195
    return-void
.end method

.method public setIterations(I)V
    .locals 0

    .prologue
    .line 251
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->c:I

    .line 252
    return-void
.end method

.method public setPremultiplyAlpha(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->d:Z

    .line 57
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->b:F

    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->a:F

    .line 233
    return-void
.end method

.method public setVRadius(F)V
    .locals 0

    .prologue
    .line 213
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/BoxBlurFilter;->b:F

    .line 214
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-string v0, "Blur/Box Blur..."

    return-object v0
.end method
