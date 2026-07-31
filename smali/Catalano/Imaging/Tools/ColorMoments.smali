.class public LCatalano/Imaging/Tools/ColorMoments;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, LCatalano/Imaging/Tools/ColorMoments;->a:[D

    .line 60
    return-void

    .line 39
    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>(DDD)V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, LCatalano/Imaging/Tools/ColorMoments;->a:[D

    .line 69
    new-array v0, v1, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    const/4 v1, 0x2

    aput-wide p5, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Tools/ColorMoments;->a:[D

    .line 70
    return-void

    .line 39
    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;)D
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0, p1}, LCatalano/Imaging/Tools/ColorMoments;->ComputeMatrixMoment(LCatalano/Imaging/FastBitmap;)[[D

    move-result-object v0

    .line 81
    invoke-virtual {p0, p2}, LCatalano/Imaging/Tools/ColorMoments;->ComputeMatrixMoment(LCatalano/Imaging/FastBitmap;)[[D

    move-result-object v1

    .line 83
    invoke-virtual {p0, v0, v1}, LCatalano/Imaging/Tools/ColorMoments;->Compute([[D[[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Compute([[D[[D)D
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v1, 0x0

    .line 94
    const-wide/16 v2, 0x0

    move v4, v1

    .line 95
    :goto_0
    if-ge v4, v12, :cond_1

    move v0, v1

    .line 96
    :goto_1
    if-ge v0, v12, :cond_0

    .line 97
    iget-object v5, p0, LCatalano/Imaging/Tools/ColorMoments;->a:[D

    aget-wide v6, v5, v0

    aget-object v5, p1, v4

    aget-wide v8, v5, v0

    aget-object v5, p2, v4

    aget-wide v10, v5, v0

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 101
    :cond_1
    return-wide v2
.end method

.method public ComputeMatrixMoment(LCatalano/Imaging/FastBitmap;)[[D
    .locals 30

    .prologue
    .line 111
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v16

    .line 112
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v17

    .line 113
    mul-int v2, v16, v17

    int-to-double v0, v2

    move-wide/from16 v18, v0

    .line 115
    const/4 v5, 0x0

    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v3, 0x0

    .line 118
    const/4 v2, 0x0

    move v6, v2

    :goto_0
    move/from16 v0, v17

    if-ge v6, v0, :cond_1

    .line 119
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v2, v0, :cond_0

    .line 120
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v7

    add-int/2addr v5, v7

    .line 121
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v7

    add-int/2addr v4, v7

    .line 122
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v7

    add-int/2addr v3, v7

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    :cond_0
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_0

    .line 127
    :cond_1
    int-to-double v6, v5

    div-double v20, v6, v18

    .line 128
    int-to-double v4, v4

    div-double v22, v4, v18

    .line 129
    int-to-double v2, v3

    div-double v24, v2, v18

    .line 132
    const-wide/16 v14, 0x0

    .line 133
    const-wide/16 v12, 0x0

    .line 134
    const-wide/16 v10, 0x0

    .line 136
    const-wide/16 v8, 0x0

    .line 137
    const-wide/16 v6, 0x0

    .line 138
    const-wide/16 v4, 0x0

    .line 139
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    move/from16 v0, v17

    if-ge v3, v0, :cond_3

    .line 140
    const/4 v2, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v2, v0, :cond_2

    .line 141
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v26, v20

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    add-double v14, v14, v26

    .line 142
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v26, v22

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    add-double v12, v12, v26

    .line 143
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v26, v24

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    add-double v10, v10, v26

    .line 145
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v26, v20

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    add-double v8, v8, v26

    .line 146
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v26, v22

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    add-double v6, v6, v26

    .line 147
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v26, v24

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    add-double v4, v4, v26

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 139
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2

    .line 151
    :cond_3
    div-double v2, v14, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 152
    div-double v2, v12, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 153
    div-double v2, v10, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 155
    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 156
    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 157
    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 159
    const/4 v2, 0x3

    const/4 v3, 0x3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 160
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/16 v16, 0x0

    aput-wide v20, v3, v16

    .line 161
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/16 v16, 0x1

    aput-wide v14, v3, v16

    .line 162
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v14, 0x2

    aput-wide v8, v3, v14

    .line 164
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v8, 0x0

    aput-wide v22, v3, v8

    .line 165
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v8, 0x1

    aput-wide v12, v3, v8

    .line 166
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v8, 0x2

    aput-wide v6, v3, v8

    .line 168
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/4 v6, 0x0

    aput-wide v24, v3, v6

    .line 169
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/4 v6, 0x1

    aput-wide v10, v3, v6

    .line 170
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    .line 172
    return-object v2
.end method

.method public getWeight()[D
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, LCatalano/Imaging/Tools/ColorMoments;->a:[D

    return-object v0
.end method

.method public setWeight([D)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, LCatalano/Imaging/Tools/ColorMoments;->a:[D

    .line 55
    return-void
.end method
