.class public LCatalano/Imaging/Filters/ZhangSuenThinning;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:[I

.field private b:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LCatalano/Imaging/Filters/ZhangSuenThinning;->a:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, LCatalano/Imaging/Filters/ZhangSuenThinning;->b:[I

    .line 58
    return-void

    .line 35
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x3
        0x0
        0x0
        0x3
        0x1
        0x1
        0x0
        0x1
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x3
        0x0
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x3
        0x0
        0x2
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x0
        0x3
        0x0
        0x2
        0x0
        0x0
        0x0
        0x3
        0x1
        0x0
        0x0
        0x1
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x3
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x3
        0x1
        0x3
        0x0
        0x0
        0x1
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x3
        0x0
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x2
        0x2
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x2
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a(I[ILCatalano/Imaging/FastBitmap;)I
    .locals 18

    .prologue
    .line 84
    invoke-virtual/range {p3 .. p3}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    .line 85
    invoke-virtual/range {p3 .. p3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 87
    mul-int v1, v8, v7

    new-array v9, v1, [I

    .line 88
    invoke-virtual/range {p3 .. p3}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    mul-int v4, v8, v7

    invoke-static {v1, v2, v9, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    const/4 v2, 0x0

    .line 92
    const/4 v1, 0x1

    move v6, v1

    :goto_0
    add-int/lit8 v1, v7, -0x2

    if-gt v6, v1, :cond_c

    .line 93
    mul-int v1, v6, v8

    add-int/lit8 v3, v1, 0x1

    .line 94
    const/4 v1, 0x1

    move v4, v1

    move v5, v3

    :goto_1
    add-int/lit8 v1, v8, -0x2

    if-gt v4, v1, :cond_b

    .line 95
    aget v1, v9, v5

    and-int/lit16 v3, v1, 0xff

    .line 97
    if-eqz v3, :cond_d

    .line 98
    sub-int v1, v5, v8

    add-int/lit8 v1, v1, -0x1

    aget v1, v9, v1

    and-int/lit16 v10, v1, 0xff

    .line 99
    sub-int v1, v5, v8

    aget v1, v9, v1

    and-int/lit16 v11, v1, 0xff

    .line 100
    sub-int v1, v5, v8

    add-int/lit8 v1, v1, 0x1

    aget v1, v9, v1

    and-int/lit16 v12, v1, 0xff

    .line 101
    add-int/lit8 v1, v5, -0x1

    aget v1, v9, v1

    and-int/lit16 v13, v1, 0xff

    .line 102
    add-int/lit8 v1, v5, 0x1

    aget v1, v9, v1

    and-int/lit16 v14, v1, 0xff

    .line 103
    add-int v1, v5, v8

    add-int/lit8 v1, v1, -0x1

    aget v1, v9, v1

    and-int/lit16 v15, v1, 0xff

    .line 104
    add-int v1, v5, v8

    aget v1, v9, v1

    and-int/lit16 v0, v1, 0xff

    move/from16 v16, v0

    .line 105
    add-int v1, v5, v8

    add-int/lit8 v1, v1, 0x1

    aget v1, v9, v1

    and-int/lit16 v0, v1, 0xff

    move/from16 v17, v0

    .line 106
    const/4 v1, 0x0

    .line 107
    if-eqz v10, :cond_0

    const/4 v1, 0x1

    .line 108
    :cond_0
    if-eqz v11, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 109
    :cond_1
    if-eqz v12, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 110
    :cond_2
    if-eqz v14, :cond_3

    or-int/lit8 v1, v1, 0x8

    .line 111
    :cond_3
    if-eqz v17, :cond_4

    or-int/lit8 v1, v1, 0x10

    .line 112
    :cond_4
    if-eqz v16, :cond_5

    or-int/lit8 v1, v1, 0x20

    .line 113
    :cond_5
    if-eqz v15, :cond_6

    or-int/lit8 v1, v1, 0x40

    .line 114
    :cond_6
    if-eqz v13, :cond_7

    or-int/lit16 v1, v1, 0x80

    .line 115
    :cond_7
    aget v1, p2, v1

    .line 116
    and-int/lit8 v10, p1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 117
    const/4 v10, 0x2

    if-eq v1, v10, :cond_8

    const/4 v10, 0x3

    if-ne v1, v10, :cond_d

    .line 118
    :cond_8
    const/4 v3, 0x0

    .line 119
    add-int/lit8 v1, v2, 0x1

    move v2, v3

    .line 128
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v2}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 94
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v3

    move v2, v1

    goto/16 :goto_1

    .line 122
    :cond_9
    const/4 v10, 0x1

    if-eq v1, v10, :cond_a

    const/4 v10, 0x3

    if-ne v1, v10, :cond_d

    .line 123
    :cond_a
    const/4 v3, 0x0

    .line 124
    add-int/lit8 v1, v2, 0x1

    move v2, v3

    goto :goto_2

    .line 92
    :cond_b
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    .line 131
    :cond_c
    return v2

    :cond_d
    move v1, v2

    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    const/4 v0, 0x0

    .line 67
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, LCatalano/Imaging/Filters/ZhangSuenThinning;->a:[I

    invoke-direct {p0, v0, v2, p1}, LCatalano/Imaging/Filters/ZhangSuenThinning;->a(I[ILCatalano/Imaging/FastBitmap;)I

    move-result v2

    .line 68
    add-int/lit8 v0, v1, 0x1

    iget-object v3, p0, LCatalano/Imaging/Filters/ZhangSuenThinning;->a:[I

    invoke-direct {p0, v1, v3, p1}, LCatalano/Imaging/Filters/ZhangSuenThinning;->a(I[ILCatalano/Imaging/FastBitmap;)I

    move-result v1

    add-int/2addr v1, v2

    .line 69
    if-gtz v1, :cond_0

    .line 72
    :cond_1
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, LCatalano/Imaging/Filters/ZhangSuenThinning;->b:[I

    invoke-direct {p0, v0, v2, p1}, LCatalano/Imaging/Filters/ZhangSuenThinning;->a(I[ILCatalano/Imaging/FastBitmap;)I

    move-result v2

    .line 73
    add-int/lit8 v0, v1, 0x1

    iget-object v3, p0, LCatalano/Imaging/Filters/ZhangSuenThinning;->b:[I

    invoke-direct {p0, v1, v3, p1}, LCatalano/Imaging/Filters/ZhangSuenThinning;->a(I[ILCatalano/Imaging/FastBitmap;)I

    move-result v1

    add-int/2addr v1, v2

    .line 74
    if-gtz v1, :cond_1

    .line 80
    return-void

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zhang Suen Thinning only works with grayscale image."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
