.class public LCatalano/Imaging/Filters/Erosion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:[[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Filters/Erosion;->a:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/Erosion;->a:I

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Filters/Erosion;->a:I

    .line 53
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Erosion;->a:I

    .line 54
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Filters/Erosion;->a:I

    .line 61
    iput-object p1, p0, LCatalano/Imaging/Filters/Erosion;->b:[[I

    .line 62
    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 144
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 145
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, LCatalano/Imaging/Filters/Erosion;->b:[[I

    move v0, v1

    .line 146
    :goto_0
    iget-object v2, p0, LCatalano/Imaging/Filters/Erosion;->b:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 147
    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Filters/Erosion;->b:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 148
    iget-object v3, p0, LCatalano/Imaging/Filters/Erosion;->b:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aput v4, v3, v2

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 18

    .prologue
    .line 67
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v13

    .line 68
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v14

    .line 70
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Filters/Erosion;->b:[[I

    if-nez v1, :cond_0

    .line 72
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Erosion;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Erosion;->a(I)V

    .line 75
    :cond_0
    new-instance v9, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 76
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v13, :cond_5

    .line 77
    const/4 v1, 0x0

    move v7, v1

    :goto_1
    if-ge v7, v14, :cond_4

    .line 79
    const/4 v2, 0x0

    .line 80
    const/16 v3, 0xff

    .line 81
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Erosion;->a:I

    sub-int v1, v8, v1

    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Erosion;->a:I

    add-int/2addr v4, v8

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_2

    .line 82
    const/4 v5, 0x0

    .line 83
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Erosion;->a:I

    sub-int v4, v7, v4

    :goto_3
    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Filters/Erosion;->a:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    if-ge v4, v6, :cond_1

    .line 84
    if-ltz v1, :cond_11

    if-ge v1, v13, :cond_11

    if-ltz v4, :cond_11

    if-ge v4, v14, :cond_11

    .line 85
    invoke-virtual {v9, v1, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Filters/Erosion;->b:[[I

    aget-object v10, v10, v2

    aget v10, v10, v5

    sub-int/2addr v6, v10

    .line 86
    if-ge v6, v3, :cond_11

    .line 89
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 83
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v6

    goto :goto_3

    .line 91
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 93
    :cond_2
    if-gez v3, :cond_3

    const/4 v3, 0x0

    .line 94
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 77
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    .line 76
    :cond_4
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Filters/Erosion;->b:[[I

    if-nez v1, :cond_6

    .line 100
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Erosion;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Erosion;->a(I)V

    .line 103
    :cond_6
    new-instance v15, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 104
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v13, :cond_f

    .line 105
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v14, :cond_e

    .line 107
    const/4 v4, 0x0

    .line 108
    const/16 v5, 0xff

    .line 110
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Erosion;->a:I

    sub-int v1, v2, v1

    move v6, v5

    move v7, v5

    :goto_7
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/Erosion;->a:I

    add-int/2addr v8, v2

    add-int/lit8 v8, v8, 0x1

    if-ge v1, v8, :cond_a

    .line 111
    const/4 v9, 0x0

    .line 112
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/Erosion;->a:I

    sub-int v8, v3, v8

    move/from16 v17, v6

    move v6, v5

    move/from16 v5, v17

    :goto_8
    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Filters/Erosion;->a:I

    add-int/2addr v10, v3

    add-int/lit8 v10, v10, 0x1

    if-ge v8, v10, :cond_9

    .line 114
    if-ltz v1, :cond_10

    if-ge v1, v13, :cond_10

    if-ltz v8, :cond_10

    if-ge v8, v14, :cond_10

    .line 115
    invoke-virtual {v15, v1, v8}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Filters/Erosion;->b:[[I

    aget-object v11, v11, v4

    aget v11, v11, v9

    sub-int v12, v10, v11

    .line 116
    invoke-virtual {v15, v1, v8}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Filters/Erosion;->b:[[I

    aget-object v11, v11, v4

    aget v11, v11, v9

    sub-int v11, v10, v11

    .line 117
    invoke-virtual {v15, v1, v8}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Filters/Erosion;->b:[[I

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    aget v16, v16, v9

    sub-int v10, v10, v16

    .line 119
    if-ge v12, v7, :cond_7

    move v7, v12

    .line 122
    :cond_7
    if-ge v11, v6, :cond_8

    move v6, v11

    .line 125
    :cond_8
    if-ge v10, v5, :cond_10

    move v11, v7

    move v7, v10

    move v10, v6

    .line 128
    :goto_9
    add-int/lit8 v6, v9, 0x1

    .line 112
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v9, v6

    move v5, v7

    move v6, v10

    move v7, v11

    goto :goto_8

    .line 130
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 110
    add-int/lit8 v1, v1, 0x1

    move/from16 v17, v5

    move v5, v6

    move/from16 v6, v17

    goto :goto_7

    .line 133
    :cond_a
    if-gez v7, :cond_d

    const/4 v4, 0x0

    .line 134
    :goto_a
    if-gez v5, :cond_b

    const/4 v5, 0x0

    .line 135
    :cond_b
    if-gez v6, :cond_c

    const/4 v6, 0x0

    :cond_c
    move-object/from16 v1, p1

    .line 137
    invoke-virtual/range {v1 .. v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_d
    move v4, v7

    .line 133
    goto :goto_a

    .line 104
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 141
    :cond_f
    return-void

    :cond_10
    move v10, v6

    move v11, v7

    move v7, v5

    goto :goto_9

    :cond_11
    move v6, v3

    goto/16 :goto_4
.end method
