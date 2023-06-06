.class public LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:D

.field private static final e:D


# instance fields
.field private a:Ljava/lang/Double;

.field private b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x33ffffff

    .line 48
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->d:D

    .line 49
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    sput-wide v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->e:D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    .line 42
    iput-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    return-void
.end method

.method private a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;[LCatalano/Core/DoublePoint;)D
    .locals 46

    .prologue
    .line 219
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    .line 220
    const-wide/16 v10, 0x0

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v10, v11, v2}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;D[LCatalano/Core/DoublePoint;)Ljava/lang/Double;

    move-result-object v7

    .line 222
    if-nez v7, :cond_0

    .line 223
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 511
    :goto_0
    return-wide v6

    .line 225
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    if-nez v6, :cond_1

    .line 226
    move-object/from16 v0, p0

    iput-object v7, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    .line 231
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 232
    move-object/from16 v0, p0

    iget-boolean v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    if-nez v6, :cond_3

    .line 233
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 229
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    invoke-virtual {v6, v7}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v6

    if-gez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    :goto_2
    move-object/from16 v0, p0

    iput-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    goto :goto_1

    :cond_2
    move-object v6, v7

    goto :goto_2

    .line 235
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v6}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->getScales()[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;

    .line 236
    sget-wide v12, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->d:D

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v12, v13, v2}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;D[LCatalano/Core/DoublePoint;)Ljava/lang/Double;

    move-result-object v7

    .line 238
    if-nez v7, :cond_4

    .line 239
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 241
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    invoke-virtual {v6, v7}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v6

    if-gez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    :goto_3
    move-object/from16 v0, p0

    iput-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    .line 242
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 243
    move-object/from16 v0, p0

    iget-boolean v14, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    if-nez v14, :cond_7

    .line 244
    cmpg-double v6, v6, v8

    if-gez v6, :cond_6

    .line 245
    const/4 v6, 0x0

    :goto_4
    move/from16 v0, v30

    if-ge v6, v0, :cond_6

    .line 246
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 247
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 245
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    move-object v6, v7

    .line 241
    goto :goto_3

    .line 250
    :cond_6
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 252
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v14}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->getScales()[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;

    .line 253
    cmpg-double v14, v8, v6

    if-gez v14, :cond_4b

    move-wide/from16 v42, v8

    move-wide v8, v10

    move-wide v10, v6

    move-wide/from16 v6, v42

    .line 261
    :goto_5
    const-wide v14, 0x3ff9e3779b97f4a8L    # 1.618033988749895

    sub-double v16, v8, v12

    mul-double v14, v14, v16

    add-double v16, v8, v14

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;D[LCatalano/Core/DoublePoint;)Ljava/lang/Double;

    move-result-object v15

    .line 263
    if-nez v15, :cond_9

    .line 264
    const/4 v6, 0x0

    :goto_6
    move/from16 v0, v30

    if-ge v6, v0, :cond_8

    .line 265
    aget-object v7, p1, v6

    iget-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v12, p2, v6

    iget-wide v12, v12, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    iput-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 266
    aget-object v7, p1, v6

    iget-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v12, p2, v6

    iget-wide v12, v12, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    iput-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 264
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 268
    :cond_8
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 270
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    invoke-virtual {v14, v15}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v14

    if-gez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    :goto_7
    move-object/from16 v0, p0

    iput-object v14, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    .line 271
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 272
    cmpg-double v18, v14, v6

    if-gez v18, :cond_c

    .line 273
    move-object/from16 v0, p0

    iget-boolean v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    .line 274
    const/4 v6, 0x0

    :goto_8
    move/from16 v0, v30

    if-ge v6, v0, :cond_b

    .line 275
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->x:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 276
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->y:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 274
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_a
    move-object v14, v15

    .line 270
    goto :goto_7

    .line 278
    :cond_b
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    :cond_c
    move-wide/from16 v18, v8

    move-wide v8, v12

    move-wide/from16 v42, v10

    move-wide v10, v6

    move-wide/from16 v6, v42

    .line 283
    :goto_9
    cmpg-double v12, v14, v10

    if-gtz v12, :cond_4a

    .line 284
    sub-double v12, v18, v8

    sub-double v20, v10, v14

    mul-double v12, v12, v20

    .line 285
    sub-double v20, v18, v16

    sub-double v6, v10, v6

    mul-double v6, v6, v20

    .line 286
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    sub-double v22, v18, v16

    mul-double v22, v22, v6

    sub-double v22, v18, v22

    sub-double v24, v18, v8

    mul-double v24, v24, v12

    add-double v22, v22, v24

    mul-double v20, v20, v22

    .line 287
    sget-wide v22, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->e:D

    sub-double v24, v6, v12

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    cmpg-double v22, v22, v24

    if-gez v22, :cond_d

    sub-double/2addr v6, v12

    div-double v12, v20, v6

    .line 289
    :goto_a
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    sub-double v20, v16, v18

    mul-double v6, v6, v20

    add-double v20, v18, v6

    .line 290
    const-wide/16 v6, 0x0

    sub-double v22, v18, v12

    sub-double v24, v12, v16

    mul-double v22, v22, v24

    cmpg-double v6, v6, v22

    if-gez v6, :cond_1b

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v12, v13, v2}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;D[LCatalano/Core/DoublePoint;)Ljava/lang/Double;

    move-result-object v7

    .line 292
    if-nez v7, :cond_10

    .line 293
    const/4 v6, 0x0

    :goto_b
    move/from16 v0, v30

    if-ge v6, v0, :cond_f

    .line 294
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->x:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 295
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->y:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 293
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 287
    :cond_d
    cmpg-double v6, v12, v6

    if-gez v6, :cond_e

    sget-wide v6, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->e:D

    div-double v12, v20, v6

    goto :goto_a

    :cond_e
    move-wide/from16 v0, v20

    neg-double v6, v0

    sget-wide v12, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->e:D

    div-double v12, v6, v12

    goto :goto_a

    .line 297
    :cond_f
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 299
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    invoke-virtual {v6, v7}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v6

    if-gez v6, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    :goto_c
    move-object/from16 v0, p0

    iput-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    .line 300
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 301
    cmpg-double v20, v6, v14

    if-gez v20, :cond_15

    .line 302
    move-object/from16 v0, p0

    iget-boolean v8, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    if-nez v8, :cond_13

    .line 303
    const/4 v6, 0x0

    :goto_d
    move/from16 v0, v30

    if-ge v6, v0, :cond_12

    .line 304
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 305
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 303
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_11
    move-object v6, v7

    .line 299
    goto :goto_c

    .line 307
    :cond_12
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    :cond_13
    move-wide v8, v12

    move-wide/from16 v14, v18

    .line 434
    :goto_e
    const-wide/16 v12, 0x0

    .line 435
    const-wide/16 v10, 0x0

    .line 442
    cmpg-double v18, v16, v14

    if-gez v18, :cond_30

    move-wide/from16 v18, v10

    move-wide/from16 v20, v12

    move-wide/from16 v22, v14

    move-wide/from16 v24, v16

    move-wide/from16 v16, v8

    move-wide v10, v6

    move-wide v12, v8

    move-wide v14, v8

    move-wide v8, v6

    .line 453
    :cond_14
    :goto_f
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    add-double v28, v24, v22

    mul-double v32, v26, v28

    .line 454
    sget-wide v26, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->d:D

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    sget-wide v28, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->e:D

    add-double v28, v28, v26

    .line 455
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v34, v26, v28

    .line 456
    sub-double v26, v16, v32

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    sub-double v38, v22, v24

    mul-double v36, v36, v38

    sub-double v36, v34, v36

    cmpg-double v26, v26, v36

    if-gtz v26, :cond_32

    .line 457
    const-wide/16 v8, 0x0

    .line 458
    const/4 v6, 0x0

    :goto_10
    move/from16 v0, v30

    if-ge v6, v0, :cond_31

    .line 459
    aget-object v7, p1, v6

    iget-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v12, p2, v6

    iget-wide v12, v12, LCatalano/Core/DoublePoint;->x:D

    mul-double v12, v12, v16

    add-double/2addr v10, v12

    iput-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 460
    aget-object v7, p1, v6

    iget-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v12, p2, v6

    iget-wide v12, v12, LCatalano/Core/DoublePoint;->y:D

    mul-double v12, v12, v16

    add-double/2addr v10, v12

    iput-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 461
    aget-object v7, p2, v6

    iget-wide v10, v7, LCatalano/Core/DoublePoint;->x:D

    aget-object v7, p2, v6

    iget-wide v12, v7, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v10, v12

    aget-object v7, p2, v6

    iget-wide v12, v7, LCatalano/Core/DoublePoint;->y:D

    aget-object v7, p2, v6

    iget-wide v14, v7, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 458
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 316
    :cond_15
    cmpg-double v6, v10, v6

    if-gez v6, :cond_16

    move-wide/from16 v16, v12

    move-wide v6, v10

    move-wide v14, v8

    move-wide/from16 v8, v18

    .line 319
    goto :goto_e

    .line 322
    :cond_16
    const-wide v6, 0x3ff9e3779b97f4a8L    # 1.618033988749895

    sub-double v8, v16, v18

    mul-double/2addr v6, v8

    add-double v8, v16, v6

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v8, v9, v2}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;D[LCatalano/Core/DoublePoint;)Ljava/lang/Double;

    move-result-object v7

    .line 324
    if-nez v7, :cond_18

    .line 325
    const/4 v6, 0x0

    :goto_11
    move/from16 v0, v30

    if-ge v6, v0, :cond_17

    .line 326
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->x:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 327
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->y:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 325
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 329
    :cond_17
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 331
    :cond_18
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    invoke-virtual {v6, v7}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v6

    if-gez v6, :cond_19

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    :goto_12
    move-object/from16 v0, p0

    iput-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    .line 332
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 333
    cmpg-double v12, v6, v14

    if-gez v12, :cond_26

    .line 334
    move-object/from16 v0, p0

    iget-boolean v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    if-nez v12, :cond_26

    .line 335
    const/4 v6, 0x0

    :goto_13
    move/from16 v0, v30

    if-ge v6, v0, :cond_1a

    .line 336
    aget-object v7, p1, v6

    iget-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v12, p2, v6

    iget-wide v12, v12, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    iput-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 337
    aget-object v7, p1, v6

    iget-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v12, p2, v6

    iget-wide v12, v12, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    iput-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 335
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_19
    move-object v6, v7

    .line 331
    goto :goto_12

    .line 339
    :cond_1a
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 344
    :cond_1b
    const-wide/16 v6, 0x0

    sub-double v8, v16, v12

    sub-double v22, v12, v20

    mul-double v8, v8, v22

    cmpg-double v6, v6, v8

    if-gez v6, :cond_27

    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v12, v13, v2}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;D[LCatalano/Core/DoublePoint;)Ljava/lang/Double;

    move-result-object v7

    .line 346
    if-nez v7, :cond_1d

    .line 347
    const/4 v6, 0x0

    :goto_14
    move/from16 v0, v30

    if-ge v6, v0, :cond_1c

    .line 348
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->x:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 349
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->y:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 347
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 351
    :cond_1c
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 353
    :cond_1d
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    invoke-virtual {v6, v7}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v6

    if-gez v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    :goto_15
    move-object/from16 v0, p0

    iput-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    .line 354
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 355
    cmpg-double v6, v8, v14

    if-gez v6, :cond_49

    .line 356
    move-object/from16 v0, p0

    iget-boolean v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    if-nez v6, :cond_20

    .line 357
    const/4 v6, 0x0

    :goto_16
    move/from16 v0, v30

    if-ge v6, v0, :cond_1f

    .line 358
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 359
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 357
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_1e
    move-object v6, v7

    .line 353
    goto :goto_15

    .line 361
    :cond_1f
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 365
    :cond_20
    const-wide v6, 0x3ff9e3779b97f4a8L    # 1.618033988749895

    sub-double v10, v12, v16

    mul-double/2addr v6, v10

    add-double v10, v12, v6

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v10, v11, v2}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;D[LCatalano/Core/DoublePoint;)Ljava/lang/Double;

    move-result-object v7

    .line 369
    if-nez v7, :cond_22

    .line 370
    const/4 v6, 0x0

    :goto_17
    move/from16 v0, v30

    if-ge v6, v0, :cond_21

    .line 371
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 372
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 370
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 374
    :cond_21
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 376
    :cond_22
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    invoke-virtual {v6, v7}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v6

    if-gez v6, :cond_23

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    :goto_18
    move-object/from16 v0, p0

    iput-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    .line 377
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 378
    cmpg-double v18, v6, v8

    if-gez v18, :cond_25

    .line 379
    move-object/from16 v0, p0

    iget-boolean v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    move/from16 v18, v0

    if-nez v18, :cond_25

    .line 380
    const/4 v6, 0x0

    :goto_19
    move/from16 v0, v30

    if-ge v6, v0, :cond_24

    .line 381
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v12, p2, v6

    iget-wide v12, v12, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v12, v10

    add-double/2addr v8, v12

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 382
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v12, p2, v6

    iget-wide v12, v12, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v12, v10

    add-double/2addr v8, v12

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 380
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_23
    move-object v6, v7

    .line 376
    goto :goto_18

    .line 384
    :cond_24
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    :cond_25
    move-wide/from16 v42, v10

    move-wide v10, v8

    move-wide/from16 v8, v42

    :goto_1a
    move-wide/from16 v18, v16

    move-wide/from16 v16, v12

    move-wide/from16 v42, v14

    move-wide v14, v10

    move-wide/from16 v10, v42

    :cond_26
    move-wide/from16 v42, v6

    move-wide v6, v10

    move-wide v10, v14

    move-wide/from16 v14, v42

    move-wide/from16 v44, v16

    move-wide/from16 v16, v8

    move-wide/from16 v8, v18

    move-wide/from16 v18, v44

    .line 433
    goto/16 :goto_9

    .line 390
    :cond_27
    const-wide/16 v6, 0x0

    sub-double v8, v12, v20

    sub-double v12, v20, v16

    mul-double/2addr v8, v12

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_2b

    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;D[LCatalano/Core/DoublePoint;)Ljava/lang/Double;

    move-result-object v7

    .line 393
    if-nez v7, :cond_29

    .line 394
    const/4 v6, 0x0

    :goto_1b
    move/from16 v0, v30

    if-ge v6, v0, :cond_28

    .line 395
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->x:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 396
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->y:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 394
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 398
    :cond_28
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 400
    :cond_29
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    invoke-virtual {v6, v7}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v6

    if-gez v6, :cond_2a

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    :goto_1c
    move-object/from16 v0, p0

    iput-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    .line 401
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-wide/from16 v8, v20

    .line 416
    :goto_1d
    cmpg-double v12, v6, v14

    if-gez v12, :cond_26

    .line 417
    move-object/from16 v0, p0

    iget-boolean v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    if-nez v12, :cond_26

    .line 418
    const/4 v6, 0x0

    :goto_1e
    move/from16 v0, v30

    if-ge v6, v0, :cond_2f

    .line 419
    aget-object v7, p1, v6

    iget-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v12, p2, v6

    iget-wide v12, v12, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    iput-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 420
    aget-object v7, p1, v6

    iget-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v12, p2, v6

    iget-wide v12, v12, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    iput-wide v10, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 418
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_2a
    move-object v6, v7

    .line 400
    goto :goto_1c

    .line 404
    :cond_2b
    const-wide v6, 0x3ff9e3779b97f4a8L    # 1.618033988749895

    sub-double v8, v16, v18

    mul-double/2addr v6, v8

    add-double v8, v16, v6

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v8, v9, v2}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;D[LCatalano/Core/DoublePoint;)Ljava/lang/Double;

    move-result-object v7

    .line 406
    if-nez v7, :cond_2d

    .line 407
    const/4 v6, 0x0

    :goto_1f
    move/from16 v0, v30

    if-ge v6, v0, :cond_2c

    .line 408
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->x:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 409
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->y:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 407
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 411
    :cond_2c
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 413
    :cond_2d
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    invoke-virtual {v6, v7}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v6

    if-gez v6, :cond_2e

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    :goto_20
    move-object/from16 v0, p0

    iput-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    .line 414
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_1d

    :cond_2e
    move-object v6, v7

    .line 413
    goto :goto_20

    .line 422
    :cond_2f
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    :cond_30
    move-wide/from16 v18, v10

    move-wide/from16 v20, v12

    move-wide/from16 v22, v16

    move-wide/from16 v24, v14

    move-wide/from16 v16, v8

    move-wide v10, v6

    move-wide v12, v8

    move-wide v14, v8

    move-wide v8, v6

    .line 450
    goto/16 :goto_f

    .line 463
    :cond_31
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    goto/16 :goto_0

    .line 465
    :cond_32
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    cmpg-double v26, v28, v26

    if-gez v26, :cond_3a

    .line 466
    sub-double v26, v16, v12

    sub-double v36, v10, v8

    mul-double v36, v36, v26

    .line 467
    sub-double v26, v16, v14

    sub-double v38, v10, v6

    mul-double v38, v38, v26

    .line 468
    sub-double v26, v16, v14

    mul-double v26, v26, v38

    sub-double v40, v16, v12

    mul-double v40, v40, v36

    sub-double v26, v26, v40

    .line 469
    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    sub-double v36, v38, v36

    mul-double v36, v36, v40

    .line 470
    const-wide/16 v38, 0x0

    cmpg-double v31, v38, v36

    if-gez v31, :cond_33

    .line 471
    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    .line 473
    :cond_33
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->abs(D)D

    move-result-wide v36

    .line 476
    const-wide/high16 v38, 0x3fe0000000000000L    # 0.5

    mul-double v38, v38, v36

    mul-double v18, v18, v38

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v38

    cmpg-double v18, v18, v38

    if-lez v18, :cond_34

    sub-double v18, v24, v16

    mul-double v18, v18, v36

    cmpg-double v18, v26, v18

    if-lez v18, :cond_34

    sub-double v18, v22, v16

    mul-double v18, v18, v36

    cmpg-double v18, v18, v26

    if-gtz v18, :cond_37

    .line 478
    :cond_34
    cmpg-double v18, v32, v16

    if-gtz v18, :cond_36

    sub-double v18, v24, v16

    .line 479
    :goto_21
    const-wide v20, 0x3fd8722191a02d61L    # 0.38196601125010515

    mul-double v20, v20, v18

    move-wide/from16 v42, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v42

    :cond_35
    :goto_22
    move-wide/from16 v42, v20

    move-wide/from16 v20, v18

    move-wide/from16 v18, v42

    .line 493
    :goto_23
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    cmpg-double v26, v28, v26

    if-gtz v26, :cond_3c

    add-double v26, v16, v20

    .line 495
    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;D[LCatalano/Core/DoublePoint;)Ljava/lang/Double;

    move-result-object v29

    .line 496
    if-nez v29, :cond_3f

    .line 497
    const/4 v6, 0x0

    :goto_25
    move/from16 v0, v30

    if-ge v6, v0, :cond_3e

    .line 498
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->x:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 499
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->y:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 497
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 478
    :cond_36
    sub-double v18, v22, v16

    goto :goto_21

    .line 482
    :cond_37
    div-double v18, v26, v36

    .line 483
    add-double v26, v16, v18

    .line 484
    sub-double v36, v26, v24

    cmpg-double v31, v36, v34

    if-ltz v31, :cond_38

    sub-double v26, v22, v26

    cmpg-double v26, v26, v34

    if-gez v26, :cond_35

    .line 485
    :cond_38
    cmpg-double v18, v16, v32

    if-gtz v18, :cond_39

    move-wide/from16 v18, v28

    goto :goto_22

    :cond_39
    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v18, v0

    goto :goto_22

    .line 490
    :cond_3a
    cmpg-double v18, v32, v16

    if-gtz v18, :cond_3b

    sub-double v18, v24, v16

    .line 491
    :goto_26
    const-wide v20, 0x3fd8722191a02d61L    # 0.38196601125010515

    mul-double v20, v20, v18

    goto :goto_23

    .line 490
    :cond_3b
    sub-double v18, v22, v16

    goto :goto_26

    .line 493
    :cond_3c
    const-wide/16 v26, 0x0

    cmpg-double v26, v26, v20

    if-gtz v26, :cond_3d

    :goto_27
    add-double v26, v16, v28

    goto :goto_24

    :cond_3d
    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    goto :goto_27

    .line 501
    :cond_3e
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 503
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v28

    if-gez v28, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    move-object/from16 v28, v0

    :goto_28
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    .line 504
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    .line 505
    cmpg-double v31, v28, v10

    if-gtz v31, :cond_44

    .line 506
    move-object/from16 v0, p0

    iget-boolean v8, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    if-nez v8, :cond_42

    .line 507
    const/4 v6, 0x0

    :goto_29
    move/from16 v0, v30

    if-ge v6, v0, :cond_41

    .line 508
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->x:D

    mul-double v10, v10, v26

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 509
    aget-object v7, p1, v6

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v10, p2, v6

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->y:D

    mul-double v10, v10, v26

    add-double/2addr v8, v10

    iput-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 507
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_40
    move-object/from16 v28, v29

    .line 503
    goto :goto_28

    .line 511
    :cond_41
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 513
    :cond_42
    cmpg-double v8, v16, v26

    if-gtz v8, :cond_43

    move-wide/from16 v24, v16

    :goto_2a
    move-wide v8, v6

    move-wide v14, v12

    move-wide/from16 v12, v16

    move-wide v6, v10

    move-wide/from16 v10, v28

    move-wide/from16 v16, v26

    .line 524
    goto/16 :goto_f

    :cond_43
    move-wide/from16 v22, v16

    .line 517
    goto :goto_2a

    .line 527
    :cond_44
    cmpg-double v31, v26, v16

    if-gez v31, :cond_46

    move-wide/from16 v24, v26

    .line 533
    :goto_2b
    cmpg-double v31, v28, v6

    if-lez v31, :cond_45

    cmpl-double v31, v12, v16

    if-nez v31, :cond_47

    :cond_45
    move-wide v8, v6

    move-wide v14, v12

    move-wide/from16 v12, v26

    move-wide/from16 v6, v28

    .line 537
    goto/16 :goto_f

    :cond_46
    move-wide/from16 v22, v26

    .line 531
    goto :goto_2b

    .line 540
    :cond_47
    cmpg-double v31, v28, v8

    if-lez v31, :cond_48

    cmpl-double v31, v14, v16

    if-eqz v31, :cond_48

    cmpl-double v31, v14, v12

    if-nez v31, :cond_14

    :cond_48
    move-wide/from16 v8, v28

    move-wide/from16 v14, v26

    .line 542
    goto/16 :goto_f

    :cond_49
    move-wide v6, v8

    move-wide v8, v12

    move-wide/from16 v12, v16

    move-wide/from16 v16, v18

    move-wide/from16 v42, v10

    move-wide v10, v14

    move-wide/from16 v14, v42

    goto/16 :goto_1a

    :cond_4a
    move-wide v6, v10

    move-wide v14, v8

    move-wide/from16 v8, v18

    goto/16 :goto_e

    :cond_4b
    move-wide/from16 v42, v12

    move-wide v12, v10

    move-wide v10, v8

    move-wide/from16 v8, v42

    goto/16 :goto_5
.end method

.method private a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;D[LCatalano/Core/DoublePoint;)Ljava/lang/Double;
    .locals 8

    .prologue
    .line 141
    array-length v1, p1

    .line 142
    new-array v2, v1, [LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    .line 143
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 144
    new-instance v3, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v4, p1, v0

    iget-wide v4, v4, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v6, p1, v0

    iget-wide v6, v6, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    invoke-direct {v3, v4, v5, v6, v7}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;-><init>(DD)V

    aput-object v3, v2, v0

    .line 145
    aget-object v3, v2, v0

    iget-wide v4, v3, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v6, p4, v0

    iget-wide v6, v6, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v6, p2

    add-double/2addr v4, v6

    iput-wide v4, v3, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 146
    aget-object v3, v2, v0

    iget-wide v4, v3, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v6, p4, v0

    iget-wide v6, v6, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v6, p2

    add-double/2addr v4, v6

    iput-wide v4, v3, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v0, v2}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    .line 149
    iget-boolean v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    if-nez v0, :cond_1

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/Double;

    iget-object v1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v1}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->energy()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1
.end method

.method private a(LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;)V
    .locals 11

    .prologue
    .line 550
    iput-object p1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    .line 554
    invoke-interface {p1}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->getNodes()[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    move-result-object v8

    .line 555
    array-length v9, v8

    .line 556
    new-array v10, v9, [LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    .line 557
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_0

    .line 558
    new-instance v1, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v2, v8, v0

    iget-wide v2, v2, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v4, v8, v0

    iget-wide v4, v4, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v6, v8, v0

    iget-boolean v6, v6, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->frozen:Z

    aget-object v7, v8, v0

    iget-boolean v7, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->hidden:Z

    invoke-direct/range {v1 .. v7}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;-><init>(DDZZ)V

    aput-object v1, v10, v0

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_0
    return-void
.end method

.method private a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V
    .locals 26

    .prologue
    .line 75
    move-object/from16 v0, p1

    array-length v14, v0

    .line 76
    new-array v15, v14, [LCatalano/Core/DoublePoint;

    .line 77
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v14, :cond_0

    .line 78
    new-instance v3, LCatalano/Core/DoublePoint;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, LCatalano/Core/DoublePoint;-><init>(DD)V

    aput-object v3, v15, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct/range {p0 .. p1}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)[LCatalano/Core/DoublePoint;

    move-result-object v2

    .line 81
    if-nez v2, :cond_1

    .line 138
    :goto_1
    return-void

    .line 86
    :cond_1
    const-wide/16 v6, 0x0

    .line 87
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v14, :cond_2

    .line 88
    aget-object v4, v15, v3

    aget-object v5, v2, v3

    iget-wide v8, v5, LCatalano/Core/DoublePoint;->x:D

    neg-double v8, v8

    iput-wide v8, v4, LCatalano/Core/DoublePoint;->x:D

    .line 89
    aget-object v4, v15, v3

    aget-object v5, v2, v3

    iget-wide v8, v5, LCatalano/Core/DoublePoint;->y:D

    neg-double v8, v8

    iput-wide v8, v4, LCatalano/Core/DoublePoint;->y:D

    .line 90
    aget-object v4, v2, v3

    iget-wide v4, v4, LCatalano/Core/DoublePoint;->x:D

    aget-object v8, v2, v3

    iget-wide v8, v8, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v4, v8

    aget-object v8, v2, v3

    iget-wide v8, v8, LCatalano/Core/DoublePoint;->y:D

    aget-object v10, v2, v3

    iget-wide v10, v10, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    add-double/2addr v6, v4

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 92
    :cond_2
    sget-wide v4, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->d:D

    cmpg-double v3, v6, v4

    if-gtz v3, :cond_3

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    .line 137
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    goto :goto_1

    .line 96
    :cond_3
    const-wide/16 v4, 0x0

    .line 97
    const/4 v3, 0x0

    mul-int/lit8 v16, v14, 0x2

    move v8, v3

    move-wide v10, v6

    :goto_4
    move/from16 v0, v16

    if-gt v8, v0, :cond_a

    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;[LCatalano/Core/DoublePoint;)D

    move-result-wide v6

    .line 99
    const-wide/16 v12, 0x0

    cmpg-double v3, v6, v12

    if-gez v3, :cond_4

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    goto :goto_1

    .line 103
    :cond_4
    add-double v12, v4, v6

    .line 104
    invoke-direct/range {p0 .. p1}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)[LCatalano/Core/DoublePoint;

    move-result-object v9

    .line 105
    if-nez v9, :cond_5

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    goto :goto_1

    .line 109
    :cond_5
    const-wide/16 v6, 0x0

    .line 110
    const-wide/16 v4, 0x0

    .line 111
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v14, :cond_6

    .line 112
    aget-object v17, v9, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v18, v0

    aget-object v17, v9, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v20, v0

    aget-object v17, v2, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    aget-object v17, v9, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v20, v0

    aget-object v17, v9, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v22, v0

    aget-object v17, v2, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v4, v4, v18

    .line 114
    aget-object v17, v9, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v18, v0

    aget-object v17, v9, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    aget-object v17, v9, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v20, v0

    aget-object v17, v9, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v6, v6, v18

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 116
    :cond_6
    sget-wide v2, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->d:D

    cmpg-double v2, v6, v2

    if-gtz v2, :cond_7

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    goto/16 :goto_1

    .line 121
    :cond_7
    div-double v10, v4, v10

    .line 122
    const-wide/16 v4, 0x0

    .line 123
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v14, :cond_8

    .line 124
    aget-object v3, v15, v2

    aget-object v17, v15, v2

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v10

    aget-object v17, v9, v2

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v3, LCatalano/Core/DoublePoint;->x:D

    .line 125
    aget-object v3, v15, v2

    aget-object v17, v15, v2

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v10

    aget-object v17, v9, v2

    move-object/from16 v0, v17

    iget-wide v0, v0, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v3, LCatalano/Core/DoublePoint;->y:D

    .line 126
    aget-object v3, v15, v2

    iget-wide v0, v3, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v18, v0

    aget-object v3, v15, v2

    iget-wide v0, v3, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    aget-object v3, v15, v2

    iget-wide v0, v3, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v20, v0

    aget-object v3, v15, v2

    iget-wide v0, v3, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v4, v4, v18

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 128
    :cond_8
    sget-wide v2, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->d:D

    cmpg-double v2, v4, v2

    if-gtz v2, :cond_9

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    goto/16 :goto_1

    .line 97
    :cond_9
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move-wide v10, v6

    move-wide v4, v12

    move-object v2, v9

    goto/16 :goto_4

    .line 136
    :cond_a
    sget-wide v6, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->d:D

    cmpg-double v3, v6, v4

    if-ltz v3, :cond_1

    goto/16 :goto_3
.end method

.method private b([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)[LCatalano/Core/DoublePoint;
    .locals 12

    .prologue
    .line 156
    array-length v2, p1

    .line 157
    iget-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v0, p1}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    .line 158
    iget-boolean v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    if-nez v0, :cond_1

    .line 159
    const/4 v0, 0x0

    .line 215
    :cond_0
    :goto_0
    return-object v0

    .line 161
    :cond_1
    iget-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v0}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->getEnergyGradient()[LCatalano/Core/DoublePoint;

    move-result-object v3

    .line 162
    if-eqz v3, :cond_3

    .line 163
    new-array v0, v2, [LCatalano/Core/DoublePoint;

    .line 164
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 165
    aget-object v4, p1, v1

    iget-boolean v4, v4, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->frozen:Z

    if-eqz v4, :cond_2

    .line 166
    new-instance v4, LCatalano/Core/DoublePoint;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct {v4, v6, v7, v8, v9}, LCatalano/Core/DoublePoint;-><init>(DD)V

    aput-object v4, v0, v1

    .line 164
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    :cond_2
    new-instance v4, LCatalano/Core/DoublePoint;

    aget-object v5, v3, v1

    iget-wide v6, v5, LCatalano/Core/DoublePoint;->x:D

    aget-object v5, v3, v1

    iget-wide v8, v5, LCatalano/Core/DoublePoint;->y:D

    invoke-direct {v4, v6, v7, v8, v9}, LCatalano/Core/DoublePoint;-><init>(DD)V

    aput-object v4, v0, v1

    goto :goto_2

    .line 175
    :cond_3
    new-array v3, v2, [LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    .line 176
    new-array v0, v2, [LCatalano/Core/DoublePoint;

    .line 177
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_4

    .line 178
    new-instance v4, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v5, p1, v1

    iget-wide v6, v5, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v5, p1, v1

    iget-wide v8, v5, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    invoke-direct {v4, v6, v7, v8, v9}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;-><init>(DD)V

    aput-object v4, v3, v1

    .line 179
    new-instance v4, LCatalano/Core/DoublePoint;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct {v4, v6, v7, v8, v9}, LCatalano/Core/DoublePoint;-><init>(DD)V

    aput-object v4, v0, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 181
    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_a

    .line 182
    aget-object v4, p1, v1

    iget-boolean v4, v4, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->frozen:Z

    if-nez v4, :cond_9

    .line 183
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget-wide v6, v5, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    sget-wide v8, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->d:D

    sub-double/2addr v6, v8

    iput-wide v6, v4, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 184
    iget-object v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v4, v3}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    .line 185
    iget-boolean v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    if-nez v4, :cond_5

    .line 186
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :cond_5
    iget-object v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v4}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->energy()D

    move-result-wide v4

    .line 189
    aget-object v6, v3, v1

    aget-object v7, p1, v1

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    sget-wide v10, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->d:D

    add-double/2addr v8, v10

    iput-wide v8, v6, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 190
    iget-object v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v6, v3}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    .line 191
    iget-boolean v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    if-nez v6, :cond_6

    .line 192
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 194
    :cond_6
    iget-object v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v6}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->energy()D

    move-result-wide v6

    .line 195
    aget-object v8, v0, v1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    sub-double v4, v6, v4

    mul-double/2addr v4, v10

    sget-wide v6, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->d:D

    div-double/2addr v4, v6

    iput-wide v4, v8, LCatalano/Core/DoublePoint;->x:D

    .line 196
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget-wide v6, v5, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    iput-wide v6, v4, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 197
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget-wide v6, v5, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    sget-wide v8, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->d:D

    sub-double/2addr v6, v8

    iput-wide v6, v4, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 198
    iget-object v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v4, v3}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    .line 199
    iget-boolean v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    if-nez v4, :cond_7

    .line 200
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 202
    :cond_7
    iget-object v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v4}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->energy()D

    move-result-wide v4

    .line 203
    aget-object v6, v3, v1

    aget-object v7, p1, v1

    iget-wide v8, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    sget-wide v10, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->d:D

    add-double/2addr v8, v10

    iput-wide v8, v6, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 204
    iget-object v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v6, v3}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    .line 205
    iget-boolean v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    if-nez v6, :cond_8

    .line 206
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 208
    :cond_8
    iget-object v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v6}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->energy()D

    move-result-wide v6

    .line 209
    aget-object v8, v0, v1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    sub-double v4, v6, v4

    mul-double/2addr v4, v10

    sget-wide v6, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->d:D

    div-double/2addr v4, v6

    iput-wide v4, v8, LCatalano/Core/DoublePoint;->y:D

    .line 210
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget-wide v6, v5, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    iput-wide v6, v4, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 181
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 213
    :cond_a
    iget-object v1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    invoke-interface {v1, p1}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public DrawOvuscule(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;III)V
    .locals 11

    .prologue
    .line 573
    invoke-direct {p0, p2}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a(LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;)V

    .line 575
    invoke-interface {p2}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->getScales()[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;

    move-result-object v2

    .line 577
    new-instance v3, LCatalano/Imaging/FastGraphics;

    invoke-direct {v3, p1}, LCatalano/Imaging/FastGraphics;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 578
    const/16 v0, 0xff

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4}, LCatalano/Imaging/FastGraphics;->setColor(III)V

    .line 580
    const/4 v0, 0x0

    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 581
    aget-object v0, v2, v1

    iget-object v5, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->a:[I

    .line 582
    aget-object v0, v2, v1

    iget-object v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->b:[I

    .line 583
    new-instance v7, LCatalano/Imaging/Shapes/IntPolygon;

    invoke-direct {v7}, LCatalano/Imaging/Shapes/IntPolygon;-><init>()V

    .line 584
    aget-object v0, v2, v1

    iget v8, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->c:I

    .line 585
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_0

    .line 586
    aget v9, v6, v0

    aget v10, v5, v0

    invoke-virtual {v7, v9, v10}, LCatalano/Imaging/Shapes/IntPolygon;->addPoint(II)V

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 589
    :cond_0
    invoke-virtual {v3, v7}, LCatalano/Imaging/FastGraphics;->DrawPolygon(LCatalano/Imaging/Shapes/IntPolygon;)V

    .line 580
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 592
    :cond_1
    return-void
.end method

.method public Optimize(LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;)V
    .locals 11

    .prologue
    .line 56
    iput-object p1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->b:LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a:Ljava/lang/Double;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->c:Z

    .line 60
    invoke-interface {p1}, LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;->getNodes()[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    move-result-object v8

    .line 61
    array-length v9, v8

    .line 62
    new-array v10, v9, [LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    .line 63
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_0

    .line 64
    new-instance v1, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v2, v8, v0

    iget-wide v2, v2, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    aget-object v4, v8, v0

    iget-wide v4, v4, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    aget-object v6, v8, v0

    iget-boolean v6, v6, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->frozen:Z

    aget-object v7, v8, v0

    iget-boolean v7, v7, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->hidden:Z

    invoke-direct/range {v1 .. v7}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;-><init>(DDZZ)V

    aput-object v1, v10, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0, v10}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DKeeper;->a([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    .line 68
    return-void
.end method
