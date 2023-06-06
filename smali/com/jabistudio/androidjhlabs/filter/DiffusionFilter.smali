.class public Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;
.super Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:[I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->a:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x7
        0x3
        0x5
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;-><init>()V

    .line 36
    const/16 v0, 0x10

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->c:I

    .line 37
    iput-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->d:Z

    .line 38
    iput-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->e:Z

    .line 39
    const/4 v0, 0x6

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->f:I

    .line 45
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->a:[I

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->setMatrix([I)V

    .line 46
    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILandroid/graphics/Rect;)[I
    .locals 21

    .prologue
    .line 124
    mul-int v1, p1, p2

    new-array v10, v1, [I

    .line 127
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->f:I

    new-array v11, v1, [I

    .line 128
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->f:I

    if-ge v1, v2, :cond_0

    .line 129
    mul-int/lit16 v2, v1, 0xff

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->f:I

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v2, v3

    .line 130
    aput v2, v11, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    const/16 v1, 0x100

    new-array v12, v1, [I

    .line 133
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    .line 134
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->f:I

    mul-int/2addr v2, v1

    div-int/lit16 v2, v2, 0x100

    aput v2, v12, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    :cond_1
    const/4 v1, 0x0

    move v9, v1

    :goto_2
    move/from16 v0, p2

    if-ge v9, v0, :cond_b

    .line 137
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->d:Z

    if-eqz v1, :cond_4

    and-int/lit8 v1, v9, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    move v8, v1

    .line 139
    :goto_3
    if-eqz v8, :cond_5

    .line 140
    mul-int v1, v9, p1

    add-int v1, v1, p1

    add-int/lit8 v2, v1, -0x1

    .line 141
    const/4 v1, -0x1

    .line 146
    :goto_4
    const/4 v3, 0x0

    move v6, v3

    move v7, v2

    :goto_5
    move/from16 v0, p1

    if-ge v6, v0, :cond_a

    .line 147
    aget v5, p3, v7

    .line 149
    shr-int/lit8 v2, v5, 0x10

    and-int/lit16 v4, v2, 0xff

    .line 150
    shr-int/lit8 v2, v5, 0x8

    and-int/lit16 v3, v2, 0xff

    .line 151
    and-int/lit16 v2, v5, 0xff

    .line 153
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->e:Z

    if-nez v13, :cond_2

    .line 154
    add-int/2addr v3, v4

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    move v3, v2

    move v4, v2

    .line 156
    :cond_2
    aget v13, v12, v4

    aget v13, v11, v13

    .line 157
    aget v14, v12, v3

    aget v14, v11, v14

    .line 158
    aget v15, v12, v2

    aget v15, v11, v15

    .line 160
    const/high16 v16, -0x1000000

    and-int v5, v5, v16

    shl-int/lit8 v16, v13, 0x10

    or-int v5, v5, v16

    shl-int/lit8 v16, v14, 0x8

    or-int v5, v5, v16

    or-int/2addr v5, v15

    aput v5, v10, v7

    .line 162
    sub-int v13, v4, v13

    .line 163
    sub-int v14, v3, v14

    .line 164
    sub-int v15, v2, v15

    .line 166
    const/4 v2, -0x1

    move v5, v2

    :goto_6
    const/4 v2, 0x1

    if-gt v5, v2, :cond_9

    .line 167
    add-int v2, v5, v9

    .line 168
    if-ltz v2, :cond_8

    move/from16 v0, p2

    if-ge v2, v0, :cond_8

    .line 169
    const/4 v2, -0x1

    move v4, v2

    :goto_7
    const/4 v2, 0x1

    if-gt v4, v2, :cond_8

    .line 170
    add-int v2, v4, v6

    .line 171
    if-ltz v2, :cond_3

    move/from16 v0, p1

    if-ge v2, v0, :cond_3

    .line 173
    if-eqz v8, :cond_6

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->b:[I

    add-int/lit8 v3, v5, 0x1

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    move v3, v2

    .line 177
    :goto_8
    if-eqz v3, :cond_3

    .line 178
    if-eqz v8, :cond_7

    sub-int v2, v7, v4

    .line 179
    :goto_9
    aget v16, p3, v2

    .line 180
    shr-int/lit8 v17, v16, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 181
    shr-int/lit8 v18, v16, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 182
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 183
    mul-int v19, v13, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->c:I

    move/from16 v20, v0

    div-int v19, v19, v20

    add-int v17, v17, v19

    .line 184
    mul-int v19, v14, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->c:I

    move/from16 v20, v0

    div-int v19, v19, v20

    add-int v18, v18, v19

    .line 185
    mul-int/2addr v3, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->c:I

    move/from16 v19, v0

    div-int v3, v3, v19

    add-int v3, v3, v16

    .line 186
    aget v16, p3, v2

    const/high16 v19, -0x1000000

    and-int v16, v16, v19

    invoke-static/range {v17 .. v17}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v17

    shl-int/lit8 v17, v17, 0x10

    or-int v16, v16, v17

    invoke-static/range {v18 .. v18}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v17

    shl-int/lit8 v17, v17, 0x8

    or-int v16, v16, v17

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v3

    or-int v3, v3, v16

    aput v3, p3, v2

    .line 169
    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_7

    .line 137
    :cond_4
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_3

    .line 143
    :cond_5
    mul-int v2, v9, p1

    .line 144
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 176
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->b:[I

    add-int/lit8 v3, v5, 0x1

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    move v3, v2

    goto :goto_8

    .line 178
    :cond_7
    add-int v2, v7, v4

    goto :goto_9

    .line 166
    :cond_8
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_6

    .line 192
    :cond_9
    add-int v3, v7, v1

    .line 146
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v7, v3

    goto/16 :goto_5

    .line 136
    :cond_a
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_2

    .line 196
    :cond_b
    return-object v10
.end method

.method public getColorDither()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->e:Z

    return v0
.end method

.method public getLevels()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->f:I

    return v0
.end method

.method public getMatrix()[I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->b:[I

    return-object v0
.end method

.method public getSerpentine()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->d:Z

    return v0
.end method

.method public setColorDither(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->e:Z

    .line 73
    return-void
.end method

.method public setLevels(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->f:I

    .line 112
    return-void
.end method

.method public setMatrix([I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->b:[I

    .line 91
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->c:I

    .line 92
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 93
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->c:I

    aget v2, p1, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->c:I

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public setSerpentine(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/DiffusionFilter;->d:Z

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const-string v0, "Colors/Diffusion Dither..."

    return-object v0
.end method
