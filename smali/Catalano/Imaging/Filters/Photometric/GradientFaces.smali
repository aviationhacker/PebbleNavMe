.class public LCatalano/Imaging/Filters/Photometric/GradientFaces;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Filters/Photometric/IPhotometricFilter;


# instance fields
.field private a:D

.field private b:[[D

.field private c:[[D

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 101
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    invoke-direct {p0, v0, v1}, LCatalano/Imaging/Filters/Photometric/GradientFaces;-><init>(D)V

    .line 102
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LCatalano/Imaging/Filters/Photometric/GradientFaces;-><init>(DZ)V

    .line 110
    return-void
.end method

.method public constructor <init>(DZ)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->d:Z

    .line 118
    invoke-virtual {p0, p1, p2}, LCatalano/Imaging/Filters/Photometric/GradientFaces;->setSigma(D)V

    .line 119
    iput-boolean p3, p0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->d:Z

    .line 120
    return-void
.end method

.method private a(D)V
    .locals 15

    .prologue
    .line 125
    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 126
    mul-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v5, 0x2

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 127
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 128
    neg-int v3, v5

    .line 129
    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x0

    aget-object v4, v0, v4

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 130
    aget-object v6, v0, v1

    add-int/lit8 v4, v3, 0x1

    int-to-double v8, v3

    aput-wide v8, v6, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {v0}, LCatalano/Math/Matrix;->Transpose([[D)[[D

    move-result-object v3

    .line 135
    array-length v1, v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    array-length v2, v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->b:[[D

    .line 136
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->b:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 137
    const/4 v2, 0x0

    :goto_3
    iget-object v4, p0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->b:[[D

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 138
    iget-object v4, p0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->b:[[D

    aget-object v4, v4, v1

    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    aget-object v5, v0, v1

    aget-wide v8, v5, v2

    mul-double/2addr v6, v8

    aget-object v5, v0, v1

    aget-wide v8, v5, v2

    aget-object v5, v0, v1

    aget-wide v10, v5, v2

    mul-double/2addr v8, v10

    aget-object v5, v3, v1

    aget-wide v10, v5, v2

    aget-object v5, v3, v1

    aget-wide v12, v5, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    neg-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v12, p1, p1

    mul-double/2addr v10, v12

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, v4, v2

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 136
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 141
    :cond_3
    iget-object v0, p0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->b:[[D

    invoke-static {v0}, LCatalano/Math/Matrix;->Transpose([[D)[[D

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->c:[[D

    .line 143
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 26

    .prologue
    .line 149
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v18

    .line 150
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v19

    .line 151
    move/from16 v0, v19

    move/from16 v1, v18

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [[D

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->b:[[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v13, v2, 0x2

    .line 156
    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 157
    const-wide v4, -0x10000000000001L

    .line 159
    const/4 v2, 0x0

    move v11, v2

    move-wide/from16 v2, v16

    :goto_0
    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    .line 160
    const/4 v6, 0x0

    move v10, v6

    move-wide v14, v4

    move-wide/from16 v16, v2

    :goto_1
    move/from16 v0, v18

    if-ge v10, v0, :cond_7

    .line 161
    const-wide/16 v4, 0x0

    .line 162
    const/4 v2, 0x0

    move-wide v6, v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->b:[[D

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 163
    sub-int v3, v2, v13

    add-int v20, v11, v3

    .line 164
    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->b:[[D

    const/4 v9, 0x0

    aget-object v8, v8, v9

    array-length v8, v8

    if-ge v3, v8, :cond_5

    .line 165
    sub-int v8, v3, v13

    add-int/2addr v8, v10

    .line 166
    if-ltz v20, :cond_0

    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    if-ltz v8, :cond_0

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->b:[[D

    aget-object v9, v9, v2

    aget-wide v22, v9, v3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    int-to-double v0, v9

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v6, v6, v22

    .line 168
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->c:[[D

    aget-object v9, v9, v2

    aget-wide v22, v9, v3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    int-to-double v8, v8

    mul-double v8, v8, v22

    add-double/2addr v4, v8

    .line 164
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 172
    :cond_0
    add-int v8, v11, v2

    sub-int v9, v8, v13

    .line 173
    add-int v8, v10, v3

    sub-int/2addr v8, v13

    .line 175
    if-gez v9, :cond_1

    const/4 v9, 0x0

    .line 176
    :cond_1
    move/from16 v0, v19

    if-lt v9, v0, :cond_2

    add-int/lit8 v9, v19, -0x1

    .line 178
    :cond_2
    if-gez v8, :cond_3

    const/4 v8, 0x0

    .line 179
    :cond_3
    move/from16 v0, v18

    if-lt v8, v0, :cond_4

    add-int/lit8 v8, v18, -0x1

    .line 181
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->b:[[D

    move-object/from16 v21, v0

    aget-object v21, v21, v2

    aget-wide v22, v21, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v6, v6, v22

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->c:[[D

    move-object/from16 v21, v0

    aget-object v21, v21, v2

    aget-wide v22, v21, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    int-to-double v8, v8

    mul-double v8, v8, v22

    add-double/2addr v4, v8

    goto :goto_4

    .line 162
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 187
    :cond_6
    aget-object v2, v12, v11

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v2, v10

    .line 188
    aget-object v2, v12, v11

    aget-wide v2, v2, v10

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 189
    aget-object v2, v12, v11

    aget-wide v2, v2, v10

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 160
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    goto/16 :goto_1

    .line 159
    :cond_7
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move-wide v4, v14

    move-wide/from16 v2, v16

    goto/16 :goto_0

    .line 194
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v6, v0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->d:Z

    if-eqz v6, :cond_c

    .line 195
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 196
    const-wide v4, -0x10000000000001L

    .line 197
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    .line 198
    const/4 v2, 0x0

    :goto_5
    array-length v3, v12

    if-ge v2, v3, :cond_b

    .line 199
    const/4 v3, 0x0

    :goto_6
    const/4 v10, 0x0

    aget-object v10, v12, v10

    array-length v10, v10

    if-ge v3, v10, :cond_a

    .line 200
    aget-object v10, v12, v2

    aget-wide v10, v10, v3

    const-wide/16 v14, 0x0

    cmpl-double v10, v10, v14

    if-ltz v10, :cond_9

    .line 201
    aget-object v10, v12, v2

    aget-wide v14, v10, v3

    add-double/2addr v14, v8

    aput-wide v14, v10, v3

    .line 204
    :goto_7
    aget-object v10, v12, v2

    aget-wide v10, v10, v3

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 205
    aget-object v10, v12, v2

    aget-wide v10, v10, v3

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 203
    :cond_9
    aget-object v10, v12, v2

    aget-object v11, v12, v2

    aget-wide v14, v11, v3

    sub-double v14, v8, v14

    aput-wide v14, v10, v3

    goto :goto_7

    .line 198
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    move-wide v2, v6

    .line 211
    :cond_c
    const/4 v6, 0x0

    move v14, v6

    :goto_8
    move/from16 v0, v19

    if-ge v14, v0, :cond_e

    .line 212
    const/4 v6, 0x0

    move v13, v6

    :goto_9
    move/from16 v0, v18

    if-ge v13, v0, :cond_d

    .line 213
    const-wide/16 v6, 0x0

    const-wide v8, 0x406fe00000000000L    # 255.0

    aget-object v10, v12, v14

    aget-wide v10, v10, v13

    invoke-static/range {v2 .. v11}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v6

    double-to-int v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 212
    add-int/lit8 v6, v13, 0x1

    move v13, v6

    goto :goto_9

    .line 211
    :cond_d
    add-int/lit8 v6, v14, 0x1

    move v14, v6

    goto :goto_8

    .line 216
    :cond_e
    return-void
.end method

.method public getSigma()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->a:D

    return-wide v0
.end method

.method public isUseEquation()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->d:Z

    return v0
.end method

.method public setSigma(D)V
    .locals 1

    .prologue
    .line 77
    iput-wide p1, p0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->a:D

    .line 78
    invoke-direct {p0, p1, p2}, LCatalano/Imaging/Filters/Photometric/GradientFaces;->a(D)V

    .line 79
    return-void
.end method

.method public setUseEquation(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, LCatalano/Imaging/Filters/Photometric/GradientFaces;->d:Z

    .line 95
    return-void
.end method
