.class public Lcom/jabistudio/androidjhlabs/filter/BlockFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/BlockFilter;->a:I

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/BlockFilter;->a:I

    .line 42
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/BlockFilter;->a:I

    .line 43
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 16

    .prologue
    .line 66
    .line 69
    mul-int v1, p2, p3

    new-array v12, v1, [I

    .line 70
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jabistudio/androidjhlabs/filter/BlockFilter;->a:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/BlockFilter;->a:I

    mul-int/2addr v1, v2

    new-array v7, v1, [I

    .line 71
    const/4 v3, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v3, v0, :cond_5

    .line 72
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v2, v0, :cond_4

    .line 73
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jabistudio/androidjhlabs/filter/BlockFilter;->a:I

    sub-int v4, p2, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 74
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jabistudio/androidjhlabs/filter/BlockFilter;->a:I

    sub-int v5, p3, v3

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 75
    mul-int v13, v4, v5

    move-object/from16 v1, p1

    move/from16 v6, p2

    .line 76
    invoke-static/range {v1 .. v7}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->getRGB([IIIIII[I)V

    .line 77
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-ge v11, v5, :cond_1

    .line 81
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_0

    .line 82
    aget v14, v7, v6

    .line 83
    shr-int/lit8 v15, v14, 0x10

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v10, v15

    .line 84
    shr-int/lit8 v15, v14, 0x8

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v9, v15

    .line 85
    and-int/lit16 v14, v14, 0xff

    add-int/2addr v8, v14

    .line 86
    add-int/lit8 v6, v6, 0x1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 80
    :cond_0
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_2

    .line 89
    :cond_1
    div-int v1, v10, v13

    shl-int/lit8 v1, v1, 0x10

    div-int v6, v9, v13

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v1, v6

    div-int v6, v8, v13

    or-int v9, v1, v6

    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v1, 0x0

    move v8, v1

    :goto_4
    if-ge v8, v5, :cond_3

    .line 92
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v4, :cond_2

    .line 93
    aget v10, v7, v6

    const/high16 v11, -0x1000000

    and-int/2addr v10, v11

    or-int/2addr v10, v9

    aput v10, v7, v6

    .line 94
    add-int/lit8 v6, v6, 0x1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 91
    :cond_2
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_4

    :cond_3
    move-object v1, v12

    move/from16 v6, p2

    .line 97
    invoke-static/range {v1 .. v7}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->setRGB([IIIIII[I)V

    .line 72
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jabistudio/androidjhlabs/filter/BlockFilter;->a:I

    add-int/2addr v2, v1

    goto :goto_1

    .line 71
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jabistudio/androidjhlabs/filter/BlockFilter;->a:I

    add-int/2addr v3, v1

    goto :goto_0

    .line 100
    :cond_5
    return-object v12
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/BlockFilter;->a:I

    return v0
.end method

.method public setBlockSize(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/BlockFilter;->a:I

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "Pixellate/Mosaic..."

    return-object v0
.end method
