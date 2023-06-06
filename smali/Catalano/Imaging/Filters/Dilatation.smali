.class public LCatalano/Imaging/Filters/Dilatation;
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

    iput v0, p0, LCatalano/Imaging/Filters/Dilatation;->a:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/Dilatation;->a:I

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

    iput v0, p0, LCatalano/Imaging/Filters/Dilatation;->a:I

    .line 53
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Dilatation;->a:I

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

    iput v0, p0, LCatalano/Imaging/Filters/Dilatation;->a:I

    .line 61
    iput-object p1, p0, LCatalano/Imaging/Filters/Dilatation;->b:[[I

    .line 62
    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 145
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 146
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, LCatalano/Imaging/Filters/Dilatation;->b:[[I

    move v0, v1

    .line 147
    :goto_0
    iget-object v2, p0, LCatalano/Imaging/Filters/Dilatation;->b:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 148
    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Filters/Dilatation;->b:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 149
    iget-object v3, p0, LCatalano/Imaging/Filters/Dilatation;->b:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aput v4, v3, v2

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
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

    iget-object v1, v0, LCatalano/Imaging/Filters/Dilatation;->b:[[I

    if-nez v1, :cond_0

    .line 72
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Dilatation;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Dilatation;->a(I)V

    .line 74
    :cond_0
    new-instance v9, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 75
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v13, :cond_5

    .line 76
    const/4 v1, 0x0

    move v7, v1

    :goto_1
    if-ge v7, v14, :cond_4

    .line 78
    const/4 v3, 0x0

    .line 79
    const/4 v2, 0x0

    .line 80
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Dilatation;->a:I

    sub-int v1, v8, v1

    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Dilatation;->a:I

    add-int/2addr v4, v8

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_2

    .line 81
    const/4 v5, 0x0

    .line 82
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Dilatation;->a:I

    sub-int v4, v7, v4

    move v6, v5

    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/Dilatation;->a:I

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    if-ge v4, v5, :cond_1

    .line 84
    if-ltz v1, :cond_11

    if-ge v1, v13, :cond_11

    if-ltz v4, :cond_11

    if-ge v4, v14, :cond_11

    .line 85
    invoke-virtual {v9, v1, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Filters/Dilatation;->b:[[I

    aget-object v10, v10, v3

    aget v10, v10, v6

    add-int/2addr v5, v10

    .line 87
    if-le v5, v2, :cond_11

    .line 91
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 82
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto :goto_3

    .line 93
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 96
    :cond_2
    const/16 v1, 0xff

    if-le v2, v1, :cond_3

    const/16 v2, 0xff

    .line 97
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 76
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    .line 75
    :cond_4
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0

    .line 101
    :cond_5
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Filters/Dilatation;->b:[[I

    if-nez v1, :cond_6

    .line 103
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Dilatation;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Dilatation;->a(I)V

    .line 105
    :cond_6
    new-instance v15, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 106
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v13, :cond_f

    .line 107
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v14, :cond_e

    .line 109
    const/4 v7, 0x0

    .line 110
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 111
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Dilatation;->a:I

    sub-int v1, v2, v1

    move/from16 v17, v4

    move v4, v6

    move/from16 v6, v17

    :goto_7
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/Dilatation;->a:I

    add-int/2addr v8, v2

    add-int/lit8 v8, v8, 0x1

    if-ge v1, v8, :cond_a

    .line 112
    const/4 v9, 0x0

    .line 113
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/Dilatation;->a:I

    sub-int v8, v3, v8

    move v10, v9

    move/from16 v17, v4

    move v4, v6

    move/from16 v6, v17

    :goto_8
    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/Dilatation;->a:I

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_9

    .line 115
    if-ltz v1, :cond_10

    if-ge v1, v13, :cond_10

    if-ltz v8, :cond_10

    if-ge v8, v14, :cond_10

    .line 116
    invoke-virtual {v15, v1, v8}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Filters/Dilatation;->b:[[I

    aget-object v11, v11, v7

    aget v11, v11, v10

    add-int v12, v9, v11

    .line 117
    invoke-virtual {v15, v1, v8}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Filters/Dilatation;->b:[[I

    aget-object v11, v11, v7

    aget v11, v11, v10

    add-int/2addr v11, v9

    .line 118
    invoke-virtual {v15, v1, v8}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Filters/Dilatation;->b:[[I

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    aget v16, v16, v10

    add-int v9, v9, v16

    .line 120
    if-le v12, v6, :cond_7

    move v6, v12

    .line 123
    :cond_7
    if-le v11, v5, :cond_8

    move v5, v11

    .line 126
    :cond_8
    if-le v9, v4, :cond_10

    move/from16 v17, v9

    move v9, v6

    move/from16 v6, v17

    .line 130
    :goto_9
    add-int/lit8 v10, v10, 0x1

    .line 113
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v4, v6

    move v6, v9

    goto :goto_8

    .line 132
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 111
    add-int/lit8 v1, v1, 0x1

    move/from16 v17, v4

    move v4, v6

    move/from16 v6, v17

    goto :goto_7

    .line 135
    :cond_a
    const/16 v1, 0xff

    if-le v4, v1, :cond_b

    const/16 v4, 0xff

    .line 136
    :cond_b
    const/16 v1, 0xff

    if-le v5, v1, :cond_c

    const/16 v5, 0xff

    .line 137
    :cond_c
    const/16 v1, 0xff

    if-le v6, v1, :cond_d

    const/16 v6, 0xff

    :cond_d
    move-object/from16 v1, p1

    .line 138
    invoke-virtual/range {v1 .. v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 106
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 142
    :cond_f
    return-void

    :cond_10
    move v9, v6

    move v6, v4

    goto :goto_9

    :cond_11
    move v5, v2

    goto/16 :goto_4
.end method
