.class public Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;
.super Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;
.source "SourceFile"


# static fields
.field protected static final matrix:[I


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->matrix:[I

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
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;-><init>()V

    .line 42
    const/16 v0, 0x10

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->a:I

    .line 45
    const/16 v0, 0x100

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->c:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->d:Z

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILandroid/graphics/Rect;)[I
    .locals 8

    .prologue
    .line 169
    mul-int v0, p1, p2

    new-array v2, v0, [I

    .line 171
    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->c:I

    iget-boolean v6, p0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->b:Z

    iget-boolean v7, p0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->d:Z

    move-object v0, p0

    move-object v1, p3

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->quantize([I[IIIIZZ)V

    .line 173
    return-object v2
.end method

.method public getDither()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->b:Z

    return v0
.end method

.method public getNumColors()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->c:I

    return v0
.end method

.method public getSerpentine()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->d:Z

    return v0
.end method

.method public quantize([I[IIIIZZ)V
    .locals 20

    .prologue
    .line 97
    mul-int v2, p3, p4

    .line 98
    new-instance v10, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;

    invoke-direct {v10}, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;-><init>()V

    .line 99
    move/from16 v0, p5

    invoke-interface {v10, v0}, Lcom/jabistudio/androidjhlabs/filter/Quantizer;->setup(I)V

    .line 100
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v10, v0, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/Quantizer;->addPixels([III)V

    .line 101
    invoke-interface {v10}, Lcom/jabistudio/androidjhlabs/filter/Quantizer;->buildColorTable()[I

    move-result-object v11

    .line 103
    if-nez p6, :cond_0

    .line 104
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_9

    .line 105
    aget v3, p1, v1

    invoke-interface {v10, v3}, Lcom/jabistudio/androidjhlabs/filter/Quantizer;->getIndexForColor(I)I

    move-result v3

    aget v3, v11, v3

    aput v3, p2, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    const/4 v1, 0x0

    move v9, v1

    :goto_1
    move/from16 v0, p4

    if-ge v9, v0, :cond_9

    .line 109
    if-eqz p7, :cond_2

    and-int/lit8 v1, v9, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    move v8, v1

    .line 111
    :goto_2
    if-eqz v8, :cond_3

    .line 112
    mul-int v1, v9, p3

    add-int v1, v1, p3

    add-int/lit8 v2, v1, -0x1

    .line 113
    const/4 v1, -0x1

    .line 118
    :goto_3
    const/4 v3, 0x0

    move v6, v3

    move v7, v2

    :goto_4
    move/from16 v0, p3

    if-ge v6, v0, :cond_8

    .line 119
    aget v2, p1, v7

    .line 120
    invoke-interface {v10, v2}, Lcom/jabistudio/androidjhlabs/filter/Quantizer;->getIndexForColor(I)I

    move-result v3

    aget v3, v11, v3

    .line 122
    aput v3, p2, v7

    .line 124
    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 125
    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 126
    and-int/lit16 v2, v2, 0xff

    .line 128
    shr-int/lit8 v12, v3, 0x10

    and-int/lit16 v12, v12, 0xff

    .line 129
    shr-int/lit8 v13, v3, 0x8

    and-int/lit16 v13, v13, 0xff

    .line 130
    and-int/lit16 v3, v3, 0xff

    .line 132
    sub-int v12, v4, v12

    .line 133
    sub-int v13, v5, v13

    .line 134
    sub-int v14, v2, v3

    .line 136
    const/4 v2, -0x1

    move v5, v2

    :goto_5
    const/4 v2, 0x1

    if-gt v5, v2, :cond_7

    .line 137
    add-int v2, v5, v9

    .line 138
    if-ltz v2, :cond_6

    move/from16 v0, p4

    if-ge v2, v0, :cond_6

    .line 139
    const/4 v2, -0x1

    move v4, v2

    :goto_6
    const/4 v2, 0x1

    if-gt v4, v2, :cond_6

    .line 140
    add-int v2, v4, v6

    .line 141
    if-ltz v2, :cond_1

    move/from16 v0, p3

    if-ge v2, v0, :cond_1

    .line 143
    if-eqz v8, :cond_4

    .line 144
    sget-object v2, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->matrix:[I

    add-int/lit8 v3, v5, 0x1

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    move v3, v2

    .line 147
    :goto_7
    if-eqz v3, :cond_1

    .line 148
    if-eqz v8, :cond_5

    sub-int v2, v7, v4

    .line 149
    :goto_8
    aget v15, p1, v2

    .line 150
    shr-int/lit8 v16, v15, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 151
    shr-int/lit8 v17, v15, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 152
    and-int/lit16 v15, v15, 0xff

    .line 153
    mul-int v18, v12, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->a:I

    move/from16 v19, v0

    div-int v18, v18, v19

    add-int v16, v16, v18

    .line 154
    mul-int v18, v13, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->a:I

    move/from16 v19, v0

    div-int v18, v18, v19

    add-int v17, v17, v18

    .line 155
    mul-int/2addr v3, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->a:I

    move/from16 v18, v0

    div-int v3, v3, v18

    add-int/2addr v3, v15

    .line 156
    invoke-static/range {v16 .. v16}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v15

    shl-int/lit8 v15, v15, 0x10

    invoke-static/range {v17 .. v17}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v16

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v3

    or-int/2addr v3, v15

    aput v3, p1, v2

    .line 139
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_6

    .line 109
    :cond_2
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_2

    .line 115
    :cond_3
    mul-int v2, v9, p3

    .line 116
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 146
    :cond_4
    sget-object v2, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->matrix:[I

    add-int/lit8 v3, v5, 0x1

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    move v3, v2

    goto :goto_7

    .line 148
    :cond_5
    add-int v2, v7, v4

    goto :goto_8

    .line 136
    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_5

    .line 162
    :cond_7
    add-int v3, v7, v1

    .line 118
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v7, v3

    goto/16 :goto_4

    .line 108
    :cond_8
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_1

    .line 166
    :cond_9
    return-void
.end method

.method public setDither(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->b:Z

    .line 70
    return-void
.end method

.method public setNumColors(I)V
    .locals 2

    .prologue
    .line 53
    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->c:I

    .line 54
    return-void
.end method

.method public setSerpentine(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/QuantizeFilter;->d:Z

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "Colors/Quantize..."

    return-object v0
.end method
