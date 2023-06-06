.class public LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/ActiveContour/Ovuscule/IOvusculeSnake2D;


# static fields
.field private static final K:D


# instance fields
.field private A:D

.field private B:D

.field private C:D

.field private D:D

.field private E:D

.field private F:D

.field private G:D

.field private H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

.field private I:I

.field private J:I

.field private a:LCatalano/Imaging/FastBitmap;

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private j:D

.field private k:D

.field private l:D

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:D

.field private r:D

.field private s:D

.field private t:D

.field private u:D

.field private v:D

.field private w:D

.field private x:D

.field private y:D

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const v0, 0x33ffffff

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->K:D

    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;DDDDDD)V
    .locals 8

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v4, 0x0

    iput-object v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->a:LCatalano/Imaging/FastBitmap;

    .line 61
    const/4 v4, 0x3

    new-array v4, v4, [LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    iput-object v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    .line 82
    iput-object p1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->a:LCatalano/Imaging/FastBitmap;

    .line 83
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    iput v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->I:I

    .line 84
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    iput v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->J:I

    .line 85
    iget-object v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    const/4 v5, 0x0

    new-instance v6, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    invoke-direct {v6, p4, p5, p2, p3}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;-><init>(DD)V

    aput-object v6, v4, v5

    .line 86
    iget-object v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    const/4 v5, 0x1

    new-instance v6, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    move-wide/from16 v0, p8

    invoke-direct {v6, v0, v1, p6, p7}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;-><init>(DD)V

    aput-object v6, v4, v5

    .line 87
    iget-object v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    const/4 v5, 0x2

    new-instance v6, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    move-wide/from16 v0, p12

    move-wide/from16 v2, p10

    invoke-direct {v6, v0, v1, v2, v3}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;-><init>(DD)V

    aput-object v6, v4, v5

    .line 88
    iget-object v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    invoke-virtual {p0, v4}, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V

    .line 89
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;LCatalano/Core/DoublePoint;LCatalano/Core/DoublePoint;LCatalano/Core/DoublePoint;)V
    .locals 16

    .prologue
    .line 74
    move-object/from16 v0, p2

    iget-wide v4, v0, LCatalano/Core/DoublePoint;->x:D

    move-object/from16 v0, p2

    iget-wide v6, v0, LCatalano/Core/DoublePoint;->y:D

    move-object/from16 v0, p3

    iget-wide v8, v0, LCatalano/Core/DoublePoint;->x:D

    move-object/from16 v0, p3

    iget-wide v10, v0, LCatalano/Core/DoublePoint;->y:D

    move-object/from16 v0, p4

    iget-wide v12, v0, LCatalano/Core/DoublePoint;->x:D

    move-object/from16 v0, p4

    iget-wide v14, v0, LCatalano/Core/DoublePoint;->y:D

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v15}, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;-><init>(LCatalano/Imaging/FastBitmap;DDDDDD)V

    .line 75
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)V
    .locals 16

    .prologue
    .line 78
    move-object/from16 v0, p2

    iget v2, v0, LCatalano/Core/IntPoint;->x:I

    int-to-double v4, v2

    move-object/from16 v0, p2

    iget v2, v0, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v2

    move-object/from16 v0, p3

    iget v2, v0, LCatalano/Core/IntPoint;->x:I

    int-to-double v8, v2

    move-object/from16 v0, p3

    iget v2, v0, LCatalano/Core/IntPoint;->y:I

    int-to-double v10, v2

    move-object/from16 v0, p4

    iget v2, v0, LCatalano/Core/IntPoint;->x:I

    int-to-double v12, v2

    move-object/from16 v0, p4

    iget v2, v0, LCatalano/Core/IntPoint;->y:I

    int-to-double v14, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v15}, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;-><init>(LCatalano/Imaging/FastBitmap;DDDDDD)V

    .line 79
    return-void
.end method

.method private a()D
    .locals 23

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->b:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 207
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->K:D

    div-double/2addr v2, v4

    .line 253
    :goto_0
    return-wide v2

    .line 209
    :cond_0
    const-wide/16 v6, 0x0

    .line 210
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->B:D

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 211
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->D:D

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->J:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 212
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->C:D

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 213
    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->E:D

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v3, v10

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->I:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 214
    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->B:D

    int-to-double v12, v5

    cmpg-double v3, v10, v12

    if-ltz v3, :cond_1

    int-to-double v10, v8

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->D:D

    cmpg-double v3, v10, v12

    if-ltz v3, :cond_1

    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->C:D

    int-to-double v12, v2

    cmpg-double v3, v10, v12

    if-ltz v3, :cond_1

    int-to-double v10, v9

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->E:D

    cmpg-double v3, v10, v12

    if-gez v3, :cond_2

    .line 215
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->K:D

    div-double/2addr v2, v4

    goto :goto_0

    .line 217
    :cond_2
    if-le v8, v5, :cond_3

    if-gt v9, v2, :cond_4

    .line 218
    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->K:D

    div-double/2addr v2, v4

    goto :goto_0

    :cond_4
    move/from16 v22, v2

    move-wide v2, v6

    move/from16 v6, v22

    .line 220
    :goto_1
    if-gt v6, v9, :cond_b

    .line 221
    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->G:D

    int-to-double v12, v6

    sub-double/2addr v10, v12

    .line 222
    mul-double v12, v10, v10

    move v4, v5

    .line 223
    :goto_2
    if-gt v4, v8, :cond_a

    .line 224
    move-object/from16 v0, p0

    iget-wide v14, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->F:D

    int-to-double v0, v4

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    .line 225
    mul-double v16, v14, v14

    .line 226
    add-double v18, v16, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 227
    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->d:D

    move-wide/from16 v20, v0

    mul-double v16, v16, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->e:D

    move-wide/from16 v20, v0

    mul-double v14, v14, v20

    mul-double/2addr v14, v10

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->f:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    add-double v14, v14, v16

    .line 228
    sget-wide v16, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->K:D

    cmpg-double v7, v14, v16

    if-gez v7, :cond_6

    .line 229
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v7, v6, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v14, v7

    sub-double/2addr v2, v14

    .line 223
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 232
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->h:D

    move-wide/from16 v16, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    div-double v14, v16, v14

    .line 233
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide v20, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    div-double v20, v14, v20

    sub-double v16, v16, v20

    mul-double v16, v16, v18

    .line 234
    const-wide v20, -0x40195f619980c433L    # -0.7071067811865476

    cmpg-double v7, v16, v20

    if-gez v7, :cond_7

    .line 235
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v7, v6, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v14, v7

    sub-double/2addr v2, v14

    .line 236
    goto :goto_3

    .line 238
    :cond_7
    const-wide v20, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    cmpg-double v7, v16, v20

    if-gez v7, :cond_8

    .line 239
    const-wide v14, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v7, v6, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v2, v14

    .line 240
    goto :goto_3

    .line 242
    :cond_8
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v16, v14

    mul-double v14, v14, v18

    .line 243
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpg-double v7, v14, v16

    if-gez v7, :cond_9

    .line 244
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v7, v6, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v14, v7

    add-double/2addr v2, v14

    .line 245
    goto :goto_3

    .line 247
    :cond_9
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v14, v16

    if-gez v7, :cond_5

    .line 248
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v16, v14

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v7, v6, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v2, v14

    .line 249
    goto/16 :goto_3

    .line 220
    :cond_a
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_1

    .line 253
    :cond_b
    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->b:D

    div-double/2addr v2, v4

    goto/16 :goto_0
.end method

.method private a(LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)[LCatalano/Core/DoublePoint;
    .locals 38

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->b:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 259
    const/4 v2, 0x0

    .line 361
    :goto_0
    return-object v2

    .line 261
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->B:D

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 262
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->D:D

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->J:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 263
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->C:D

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 264
    move-object/from16 v0, p0

    iget-wide v8, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->E:D

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->I:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 265
    move-object/from16 v0, p0

    iget-wide v8, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->B:D

    int-to-double v10, v4

    cmpg-double v2, v8, v10

    if-ltz v2, :cond_1

    int-to-double v8, v6

    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->D:D

    cmpg-double v2, v8, v10

    if-ltz v2, :cond_1

    move-object/from16 v0, p0

    iget-wide v8, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->C:D

    int-to-double v10, v3

    cmpg-double v2, v8, v10

    if-ltz v2, :cond_1

    int-to-double v8, v7

    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->E:D

    cmpg-double v2, v8, v10

    if-gez v2, :cond_2

    .line 266
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 268
    :cond_2
    if-le v6, v4, :cond_3

    if-gt v7, v3, :cond_4

    .line 269
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 271
    :cond_4
    const/4 v2, 0x3

    new-array v2, v2, [LCatalano/Core/DoublePoint;

    .line 272
    const/4 v5, 0x0

    new-instance v8, LCatalano/Core/DoublePoint;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct {v8, v10, v11, v12, v13}, LCatalano/Core/DoublePoint;-><init>(DD)V

    aput-object v8, v2, v5

    .line 273
    const/4 v5, 0x1

    new-instance v8, LCatalano/Core/DoublePoint;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct {v8, v10, v11, v12, v13}, LCatalano/Core/DoublePoint;-><init>(DD)V

    aput-object v8, v2, v5

    .line 274
    const/4 v5, 0x2

    new-instance v8, LCatalano/Core/DoublePoint;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct {v8, v10, v11, v12, v13}, LCatalano/Core/DoublePoint;-><init>(DD)V

    aput-object v8, v2, v5

    .line 275
    const/4 v5, 0x6

    new-array v8, v5, [D

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->m:D

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->r:D

    sub-double/2addr v10, v12

    aput-wide v10, v8, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    sub-double/2addr v10, v12

    aput-wide v10, v8, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->r:D

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->w:D

    sub-double/2addr v10, v12

    aput-wide v10, v8, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    sub-double/2addr v10, v12

    aput-wide v10, v8, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->w:D

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->m:D

    sub-double/2addr v10, v12

    aput-wide v10, v8, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    sub-double/2addr v10, v12

    aput-wide v10, v8, v5

    move v5, v3

    .line 276
    :goto_1
    if-gt v5, v7, :cond_c

    .line 277
    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->G:D

    int-to-double v12, v5

    sub-double/2addr v10, v12

    .line 278
    mul-double v12, v10, v10

    move v3, v4

    .line 279
    :goto_2
    if-gt v3, v6, :cond_b

    .line 280
    move-object/from16 v0, p0

    iget-wide v14, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->F:D

    int-to-double v0, v3

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    .line 281
    mul-double v16, v14, v14

    .line 282
    add-double v18, v16, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 283
    sget-wide v20, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->K:D

    cmpg-double v9, v18, v20

    if-gez v9, :cond_6

    .line 279
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 286
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v9, v5, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    int-to-double v0, v9

    move-wide/from16 v20, v0

    .line 287
    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->d:D

    move-wide/from16 v22, v0

    mul-double v16, v16, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->e:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v14

    mul-double v22, v22, v10

    add-double v16, v16, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->f:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    add-double v16, v16, v22

    .line 288
    sget-wide v22, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->K:D

    cmpg-double v9, v16, v22

    if-gez v9, :cond_7

    .line 289
    const/4 v9, 0x0

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    add-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    .line 290
    const/4 v9, 0x0

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->r:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    sub-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    .line 291
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    add-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    .line 292
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->w:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    sub-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    .line 293
    const/4 v9, 0x2

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    add-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    .line 294
    const/4 v9, 0x2

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->m:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    sub-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    goto/16 :goto_3

    .line 297
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->h:D

    move-wide/from16 v22, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    div-double v16, v22, v16

    .line 298
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide v24, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    div-double v24, v16, v24

    sub-double v22, v22, v24

    mul-double v22, v22, v18

    .line 299
    const-wide v24, -0x40195f619980c433L    # -0.7071067811865476

    cmpg-double v9, v22, v24

    if-gez v9, :cond_8

    .line 300
    const/4 v9, 0x0

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    add-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    .line 301
    const/4 v9, 0x0

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->r:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    sub-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    .line 302
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    add-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    .line 303
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->w:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    sub-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    .line 304
    const/4 v9, 0x2

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    add-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    .line 305
    const/4 v9, 0x2

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->m:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    sub-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    goto/16 :goto_3

    .line 308
    :cond_8
    const-wide v24, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    cmpg-double v9, v22, v24

    if-gez v9, :cond_9

    .line 309
    const-wide v22, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    mul-double v22, v22, v18

    .line 310
    mul-double v24, v16, v16

    mul-double v24, v24, v16

    mul-double v24, v24, v18

    const-wide/high16 v26, 0x4018000000000000L    # 6.0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    div-double v24, v24, v26

    .line 311
    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    move-wide/from16 v26, v0

    const-wide v28, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    sub-double v16, v28, v16

    mul-double v16, v16, v26

    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    mul-double v26, v26, v24

    mul-double v18, v18, v26

    div-double v16, v16, v18

    .line 312
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->d:D

    move-wide/from16 v26, v0

    mul-double v18, v18, v26

    add-double v18, v18, v16

    mul-double v18, v18, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->e:D

    move-wide/from16 v26, v0

    mul-double v26, v26, v10

    add-double v18, v18, v26

    .line 313
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->f:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v16, v16, v26

    mul-double v16, v16, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->e:D

    move-wide/from16 v26, v0

    mul-double v26, v26, v14

    add-double v16, v16, v26

    .line 314
    const-wide/high16 v26, 0x4022000000000000L    # 9.0

    const/4 v9, 0x5

    aget-wide v28, v8, v9

    mul-double v28, v28, v14

    const/4 v9, 0x4

    aget-wide v30, v8, v9

    mul-double v30, v30, v10

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    .line 315
    const-wide/high16 v28, 0x4022000000000000L    # 9.0

    const/4 v9, 0x1

    aget-wide v30, v8, v9

    mul-double v30, v30, v14

    const/4 v9, 0x0

    aget-wide v32, v8, v9

    mul-double v32, v32, v10

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    .line 316
    const-wide/high16 v30, 0x4022000000000000L    # 9.0

    const/4 v9, 0x3

    aget-wide v32, v8, v9

    mul-double v32, v32, v14

    const/4 v9, 0x2

    aget-wide v34, v8, v9

    mul-double v34, v34, v10

    sub-double v32, v32, v34

    mul-double v30, v30, v32

    .line 317
    const/4 v9, 0x0

    aget-object v9, v2, v9

    iget-wide v0, v9, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    move-wide/from16 v34, v0

    mul-double v34, v34, v22

    mul-double v36, v10, v26

    add-double v36, v36, v18

    mul-double v36, v36, v24

    sub-double v34, v34, v36

    mul-double v34, v34, v20

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    iput-wide v0, v9, LCatalano/Core/DoublePoint;->x:D

    .line 318
    const/4 v9, 0x0

    aget-object v9, v2, v9

    iget-wide v0, v9, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->r:D

    move-wide/from16 v34, v0

    mul-double v34, v34, v22

    mul-double v26, v26, v14

    sub-double v26, v26, v16

    mul-double v26, v26, v24

    sub-double v26, v34, v26

    mul-double v26, v26, v20

    add-double v26, v26, v32

    move-wide/from16 v0, v26

    iput-wide v0, v9, LCatalano/Core/DoublePoint;->y:D

    .line 319
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iget-wide v0, v9, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    move-wide/from16 v32, v0

    mul-double v32, v32, v22

    mul-double v34, v10, v28

    add-double v34, v34, v18

    mul-double v34, v34, v24

    sub-double v32, v32, v34

    mul-double v32, v32, v20

    sub-double v26, v26, v32

    move-wide/from16 v0, v26

    iput-wide v0, v9, LCatalano/Core/DoublePoint;->x:D

    .line 320
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iget-wide v0, v9, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->w:D

    move-wide/from16 v32, v0

    mul-double v32, v32, v22

    mul-double v28, v28, v14

    sub-double v28, v28, v16

    mul-double v28, v28, v24

    sub-double v28, v32, v28

    mul-double v28, v28, v20

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    iput-wide v0, v9, LCatalano/Core/DoublePoint;->y:D

    .line 321
    const/4 v9, 0x2

    aget-object v9, v2, v9

    iget-wide v0, v9, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    move-wide/from16 v28, v0

    mul-double v28, v28, v22

    mul-double v32, v10, v30

    add-double v18, v18, v32

    mul-double v18, v18, v24

    sub-double v18, v28, v18

    mul-double v18, v18, v20

    sub-double v18, v26, v18

    move-wide/from16 v0, v18

    iput-wide v0, v9, LCatalano/Core/DoublePoint;->x:D

    .line 322
    const/4 v9, 0x2

    aget-object v9, v2, v9

    iget-wide v0, v9, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->m:D

    move-wide/from16 v26, v0

    mul-double v22, v22, v26

    mul-double v14, v14, v30

    sub-double v14, v14, v16

    mul-double v14, v14, v24

    sub-double v14, v22, v14

    mul-double v14, v14, v20

    add-double v14, v14, v18

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    goto/16 :goto_3

    .line 325
    :cond_9
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v16

    mul-double v22, v22, v18

    .line 326
    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    cmpg-double v9, v22, v24

    if-gez v9, :cond_a

    .line 327
    const/4 v9, 0x0

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    sub-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    .line 328
    const/4 v9, 0x0

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->r:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    add-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    .line 329
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    sub-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    .line 330
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->w:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    add-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    .line 331
    const/4 v9, 0x2

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    sub-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->x:D

    .line 332
    const/4 v9, 0x2

    aget-object v9, v2, v9

    iget-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->m:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v20

    add-double v14, v14, v16

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    goto/16 :goto_3

    .line 335
    :cond_a
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v22, v24

    if-gez v9, :cond_5

    .line 336
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v18, v22

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    .line 337
    mul-double v24, v16, v16

    mul-double v24, v24, v16

    mul-double v24, v24, v18

    const-wide/high16 v26, 0x4028000000000000L    # 12.0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    div-double v24, v24, v26

    .line 338
    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v16, v28, v16

    mul-double v16, v16, v26

    const-wide/high16 v26, 0x4018000000000000L    # 6.0

    mul-double v26, v26, v24

    mul-double v18, v18, v26

    div-double v16, v16, v18

    .line 339
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->d:D

    move-wide/from16 v26, v0

    mul-double v18, v18, v26

    add-double v18, v18, v16

    mul-double v18, v18, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->e:D

    move-wide/from16 v26, v0

    mul-double v26, v26, v10

    add-double v18, v18, v26

    .line 340
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->f:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v16, v16, v26

    mul-double v16, v16, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->e:D

    move-wide/from16 v26, v0

    mul-double v26, v26, v14

    add-double v16, v16, v26

    .line 341
    const-wide/high16 v26, 0x4022000000000000L    # 9.0

    const/4 v9, 0x5

    aget-wide v28, v8, v9

    mul-double v28, v28, v14

    const/4 v9, 0x4

    aget-wide v30, v8, v9

    mul-double v30, v30, v10

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    .line 342
    const-wide/high16 v28, 0x4022000000000000L    # 9.0

    const/4 v9, 0x1

    aget-wide v30, v8, v9

    mul-double v30, v30, v14

    const/4 v9, 0x0

    aget-wide v32, v8, v9

    mul-double v32, v32, v10

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    .line 343
    const-wide/high16 v30, 0x4022000000000000L    # 9.0

    const/4 v9, 0x3

    aget-wide v32, v8, v9

    mul-double v32, v32, v14

    const/4 v9, 0x2

    aget-wide v34, v8, v9

    mul-double v34, v34, v10

    sub-double v32, v32, v34

    mul-double v30, v30, v32

    .line 344
    const/4 v9, 0x0

    aget-object v9, v2, v9

    iget-wide v0, v9, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    move-wide/from16 v34, v0

    mul-double v34, v34, v22

    mul-double v36, v10, v26

    add-double v36, v36, v18

    mul-double v36, v36, v24

    sub-double v34, v34, v36

    mul-double v34, v34, v20

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    iput-wide v0, v9, LCatalano/Core/DoublePoint;->x:D

    .line 345
    const/4 v9, 0x0

    aget-object v9, v2, v9

    iget-wide v0, v9, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->r:D

    move-wide/from16 v34, v0

    mul-double v34, v34, v22

    mul-double v26, v26, v14

    sub-double v26, v26, v16

    mul-double v26, v26, v24

    sub-double v26, v34, v26

    mul-double v26, v26, v20

    sub-double v26, v32, v26

    move-wide/from16 v0, v26

    iput-wide v0, v9, LCatalano/Core/DoublePoint;->y:D

    .line 346
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iget-wide v0, v9, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    move-wide/from16 v32, v0

    mul-double v32, v32, v22

    mul-double v34, v10, v28

    add-double v34, v34, v18

    mul-double v34, v34, v24

    sub-double v32, v32, v34

    mul-double v32, v32, v20

    add-double v26, v26, v32

    move-wide/from16 v0, v26

    iput-wide v0, v9, LCatalano/Core/DoublePoint;->x:D

    .line 347
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iget-wide v0, v9, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->w:D

    move-wide/from16 v32, v0

    mul-double v32, v32, v22

    mul-double v28, v28, v14

    sub-double v28, v28, v16

    mul-double v28, v28, v24

    sub-double v28, v32, v28

    mul-double v28, v28, v20

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    iput-wide v0, v9, LCatalano/Core/DoublePoint;->y:D

    .line 348
    const/4 v9, 0x2

    aget-object v9, v2, v9

    iget-wide v0, v9, LCatalano/Core/DoublePoint;->x:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    move-wide/from16 v28, v0

    mul-double v28, v28, v22

    mul-double v32, v10, v30

    add-double v18, v18, v32

    mul-double v18, v18, v24

    sub-double v18, v28, v18

    mul-double v18, v18, v20

    add-double v18, v18, v26

    move-wide/from16 v0, v18

    iput-wide v0, v9, LCatalano/Core/DoublePoint;->x:D

    .line 349
    const/4 v9, 0x2

    aget-object v9, v2, v9

    iget-wide v0, v9, LCatalano/Core/DoublePoint;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->m:D

    move-wide/from16 v26, v0

    mul-double v22, v22, v26

    mul-double v14, v14, v30

    sub-double v14, v14, v16

    mul-double v14, v14, v24

    sub-double v14, v22, v14

    mul-double v14, v14, v20

    sub-double v14, v18, v14

    iput-wide v14, v9, LCatalano/Core/DoublePoint;->y:D

    goto/16 :goto_3

    .line 276
    :cond_b
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_1

    .line 354
    :cond_c
    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    move-object/from16 v0, p0

    iget-wide v6, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->b:D

    mul-double/2addr v4, v6

    .line 355
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iget-wide v6, v3, LCatalano/Core/DoublePoint;->x:D

    div-double/2addr v6, v4

    iput-wide v6, v3, LCatalano/Core/DoublePoint;->x:D

    .line 356
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iget-wide v6, v3, LCatalano/Core/DoublePoint;->y:D

    div-double/2addr v6, v4

    iput-wide v6, v3, LCatalano/Core/DoublePoint;->y:D

    .line 357
    const/4 v3, 0x1

    aget-object v3, v2, v3

    iget-wide v6, v3, LCatalano/Core/DoublePoint;->x:D

    div-double/2addr v6, v4

    iput-wide v6, v3, LCatalano/Core/DoublePoint;->x:D

    .line 358
    const/4 v3, 0x1

    aget-object v3, v2, v3

    iget-wide v6, v3, LCatalano/Core/DoublePoint;->y:D

    div-double/2addr v6, v4

    iput-wide v6, v3, LCatalano/Core/DoublePoint;->y:D

    .line 359
    const/4 v3, 0x2

    aget-object v3, v2, v3

    iget-wide v6, v3, LCatalano/Core/DoublePoint;->x:D

    div-double/2addr v6, v4

    iput-wide v6, v3, LCatalano/Core/DoublePoint;->x:D

    .line 360
    const/4 v3, 0x2

    aget-object v3, v2, v3

    iget-wide v6, v3, LCatalano/Core/DoublePoint;->y:D

    div-double v4, v6, v4

    iput-wide v4, v3, LCatalano/Core/DoublePoint;->y:D

    goto/16 :goto_0
.end method

.method private a([LCatalano/Core/DoublePoint;[LCatalano/Core/DoublePoint;)[LCatalano/Core/DoublePoint;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 366
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 377
    :cond_0
    return-object v0

    .line 369
    :cond_1
    array-length v2, p1

    .line 370
    array-length v1, p2

    if-ne v2, v1, :cond_0

    .line 373
    new-array v0, v2, [LCatalano/Core/DoublePoint;

    .line 374
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 375
    new-instance v3, LCatalano/Core/DoublePoint;

    aget-object v4, p1, v1

    iget-wide v4, v4, LCatalano/Core/DoublePoint;->x:D

    aget-object v6, p2, v1

    iget-wide v6, v6, LCatalano/Core/DoublePoint;->x:D

    add-double/2addr v4, v6

    aget-object v6, p1, v1

    iget-wide v6, v6, LCatalano/Core/DoublePoint;->y:D

    aget-object v8, p2, v1

    iget-wide v8, v8, LCatalano/Core/DoublePoint;->y:D

    add-double/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, LCatalano/Core/DoublePoint;-><init>(DD)V

    aput-object v3, v0, v1

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b()D
    .locals 6

    .prologue
    .line 382
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 383
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->b:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private b(LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)[LCatalano/Core/DoublePoint;
    .locals 12

    .prologue
    .line 388
    const/4 v0, 0x3

    new-array v2, v0, [LCatalano/Core/DoublePoint;

    .line 389
    const/4 v0, 0x0

    new-instance v1, LCatalano/Core/DoublePoint;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v1, v4, v5, v6, v7}, LCatalano/Core/DoublePoint;-><init>(DD)V

    aput-object v1, v2, v0

    .line 390
    const/4 v0, 0x1

    new-instance v1, LCatalano/Core/DoublePoint;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v1, v4, v5, v6, v7}, LCatalano/Core/DoublePoint;-><init>(DD)V

    aput-object v1, v2, v0

    .line 391
    const/4 v0, 0x2

    new-instance v1, LCatalano/Core/DoublePoint;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v1, v4, v5, v6, v7}, LCatalano/Core/DoublePoint;-><init>(DD)V

    aput-object v1, v2, v0

    .line 392
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    mul-double/2addr v4, v0

    .line 393
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    mul-double/2addr v6, v0

    .line 394
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    iget-wide v8, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    mul-double/2addr v8, v0

    .line 395
    const-wide/16 v0, 0x0

    .line 396
    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_1

    .line 397
    const/4 v0, 0x0

    aget-object v0, v2, v0

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    neg-double v6, v6

    iget-wide v8, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    mul-double/2addr v6, v8

    iput-wide v6, v0, LCatalano/Core/DoublePoint;->x:D

    .line 398
    const/4 v0, 0x0

    aget-object v0, v2, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    iget-wide v10, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->r:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, v0, LCatalano/Core/DoublePoint;->y:D

    .line 399
    const/4 v0, 0x1

    aget-object v0, v2, v0

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    neg-double v6, v6

    iget-wide v8, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    mul-double/2addr v6, v8

    iput-wide v6, v0, LCatalano/Core/DoublePoint;->x:D

    .line 400
    const/4 v0, 0x1

    aget-object v0, v2, v0

    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    iget-wide v8, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->w:D

    iget-wide v10, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, v0, LCatalano/Core/DoublePoint;->y:D

    .line 401
    const/4 v0, 0x2

    aget-object v0, v2, v0

    neg-double v4, v4

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->x:D

    .line 402
    const/4 v0, 0x2

    aget-object v0, v2, v0

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->m:D

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    mul-double/2addr v4, v6

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->y:D

    .line 403
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->b:D

    mul-double/2addr v4, v6

    div-double/2addr v0, v4

    .line 423
    :cond_0
    :goto_0
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iget-wide v4, v3, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v4, v0

    iput-wide v4, v3, LCatalano/Core/DoublePoint;->x:D

    .line 424
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iget-wide v4, v3, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v4, v0

    iput-wide v4, v3, LCatalano/Core/DoublePoint;->y:D

    .line 425
    const/4 v3, 0x1

    aget-object v3, v2, v3

    iget-wide v4, v3, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v4, v0

    iput-wide v4, v3, LCatalano/Core/DoublePoint;->x:D

    .line 426
    const/4 v3, 0x1

    aget-object v3, v2, v3

    iget-wide v4, v3, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v4, v0

    iput-wide v4, v3, LCatalano/Core/DoublePoint;->y:D

    .line 427
    const/4 v3, 0x2

    aget-object v3, v2, v3

    iget-wide v4, v3, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v4, v0

    iput-wide v4, v3, LCatalano/Core/DoublePoint;->x:D

    .line 428
    const/4 v3, 0x2

    aget-object v3, v2, v3

    iget-wide v4, v3, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v0, v4

    iput-wide v0, v3, LCatalano/Core/DoublePoint;->y:D

    .line 429
    return-object v2

    .line 405
    :cond_1
    cmpg-double v3, v6, v8

    if-gtz v3, :cond_2

    cmpg-double v3, v6, v4

    if-gtz v3, :cond_2

    .line 406
    const/4 v0, 0x0

    aget-object v0, v2, v0

    neg-double v4, v6

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->x:D

    .line 407
    const/4 v0, 0x0

    aget-object v0, v2, v0

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->r:D

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    mul-double/2addr v4, v6

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->y:D

    .line 408
    const/4 v0, 0x1

    aget-object v0, v2, v0

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    neg-double v4, v4

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    mul-double/2addr v4, v6

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->x:D

    .line 409
    const/4 v0, 0x1

    aget-object v0, v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    iget-wide v8, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->w:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->y:D

    .line 410
    const/4 v0, 0x2

    aget-object v0, v2, v0

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    neg-double v4, v4

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    mul-double/2addr v4, v6

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->x:D

    .line 411
    const/4 v0, 0x2

    aget-object v0, v2, v0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->m:D

    iget-wide v8, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->y:D

    .line 412
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->b:D

    mul-double/2addr v4, v6

    div-double/2addr v0, v4

    goto/16 :goto_0

    .line 414
    :cond_2
    cmpg-double v3, v8, v4

    if-gtz v3, :cond_0

    cmpg-double v3, v8, v6

    if-gtz v3, :cond_0

    .line 415
    const/4 v0, 0x0

    aget-object v0, v2, v0

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    neg-double v4, v4

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    mul-double/2addr v4, v6

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->x:D

    .line 416
    const/4 v0, 0x0

    aget-object v0, v2, v0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->r:D

    iget-wide v10, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->y:D

    .line 417
    const/4 v0, 0x1

    aget-object v0, v2, v0

    neg-double v4, v8

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->x:D

    .line 418
    const/4 v0, 0x1

    aget-object v0, v2, v0

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->w:D

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    mul-double/2addr v4, v6

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->y:D

    .line 419
    const/4 v0, 0x2

    aget-object v0, v2, v0

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    neg-double v4, v4

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    mul-double/2addr v4, v6

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->x:D

    .line 420
    const/4 v0, 0x2

    aget-object v0, v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    iget-wide v8, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->m:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v0, LCatalano/Core/DoublePoint;->y:D

    .line 421
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->b:D

    mul-double/2addr v4, v6

    div-double/2addr v0, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public energy()D
    .locals 4

    .prologue
    .line 97
    invoke-direct {p0}, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->a()D

    move-result-wide v0

    .line 98
    invoke-direct {p0}, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->b()D

    move-result-wide v2

    .line 99
    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getEnergyGradient()[LCatalano/Core/DoublePoint;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v0, v0, v2

    iget-object v1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v1, v1, v3

    invoke-direct {p0, v0, v1}, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->a(LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)[LCatalano/Core/DoublePoint;

    move-result-object v0

    .line 106
    iget-object v1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v1, v1, v2

    iget-object v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->b(LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)[LCatalano/Core/DoublePoint;

    move-result-object v1

    .line 107
    invoke-direct {p0, v0, v1}, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->a([LCatalano/Core/DoublePoint;[LCatalano/Core/DoublePoint;)[LCatalano/Core/DoublePoint;

    move-result-object v0

    return-object v0
.end method

.method public getNodes()[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    return-object v0
.end method

.method public getScales()[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;
    .locals 20

    .prologue
    .line 119
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->c:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v3, v2

    .line 120
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->J:I

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->I:I

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x2

    if-le v3, v2, :cond_0

    .line 121
    const/4 v2, 0x0

    .line 145
    :goto_0
    return-object v2

    .line 123
    :cond_0
    new-array v4, v3, [I

    .line 124
    new-array v5, v3, [I

    .line 125
    new-array v6, v3, [I

    .line 126
    new-array v7, v3, [I

    .line 127
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 128
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v10, v2

    mul-double/2addr v8, v10

    int-to-double v10, v3

    div-double/2addr v8, v10

    .line 129
    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->F:D

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->i:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->z:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    aput v10, v4, v2

    .line 130
    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->G:D

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->j:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->A:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    aput v10, v5, v2

    .line 131
    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->F:D

    const-wide v12, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    move-object/from16 v0, p0

    iget-wide v14, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->i:D

    .line 132
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->z:D

    move-wide/from16 v16, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 131
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    aput v10, v6, v2

    .line 133
    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->G:D

    const-wide v12, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    move-object/from16 v0, p0

    iget-wide v14, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->j:D

    .line 134
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->A:D

    move-wide/from16 v16, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v16

    add-double/2addr v8, v14

    mul-double/2addr v8, v12

    add-double/2addr v8, v10

    .line 133
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    aput v8, v7, v2

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 136
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;

    .line 137
    const/4 v8, 0x0

    new-instance v9, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;-><init>(LCatalano/Imaging/Color;LCatalano/Imaging/Color;ZZ)V

    aput-object v9, v2, v8

    .line 138
    const/4 v8, 0x1

    new-instance v9, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;-><init>(LCatalano/Imaging/Color;LCatalano/Imaging/Color;ZZ)V

    aput-object v9, v2, v8

    .line 139
    const/4 v8, 0x0

    aget-object v8, v2, v8

    iput v3, v8, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->c:I

    .line 140
    const/4 v8, 0x0

    aget-object v8, v2, v8

    iput-object v4, v8, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->a:[I

    .line 141
    const/4 v4, 0x0

    aget-object v4, v2, v4

    iput-object v5, v4, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->b:[I

    .line 142
    const/4 v4, 0x1

    aget-object v4, v2, v4

    iput v3, v4, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->c:I

    .line 143
    const/4 v3, 0x1

    aget-object v3, v2, v3

    iput-object v6, v3, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->a:[I

    .line 144
    const/4 v3, 0x1

    aget-object v3, v2, v3

    iput-object v7, v3, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->b:[I

    goto/16 :goto_0
.end method

.method public setNodes([LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;)V
    .locals 14

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 151
    aget-object v0, p1, v4

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->k:D

    .line 152
    aget-object v0, p1, v4

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->l:D

    .line 153
    aget-object v0, p1, v5

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->p:D

    .line 154
    aget-object v0, p1, v5

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->q:D

    .line 155
    aget-object v0, p1, v6

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->u:D

    .line 156
    aget-object v0, p1, v6

    iget-wide v0, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->v:D

    .line 157
    iget-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v0, v0, v4

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->k:D

    iput-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 158
    iget-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v0, v0, v4

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->l:D

    iput-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 159
    iget-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v0, v0, v5

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->p:D

    iput-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 160
    iget-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v0, v0, v5

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->q:D

    iput-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 161
    iget-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v0, v0, v6

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->u:D

    iput-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->x:D

    .line 162
    iget-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->H:[LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;

    aget-object v0, v0, v6

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->v:D

    iput-wide v2, v0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->y:D

    .line 163
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->k:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->p:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->m:D

    .line 164
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->l:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->q:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    .line 165
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->p:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->u:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->r:D

    .line 166
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->q:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->v:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    .line 167
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->u:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->k:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->w:D

    .line 168
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->v:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->l:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    .line 169
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->k:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->q:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->l:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->p:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->o:D

    .line 170
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->p:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->v:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->q:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->u:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->t:D

    .line 171
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->u:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->l:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->v:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->k:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->y:D

    .line 172
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->k:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->p:D

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->u:D

    add-double/2addr v0, v2

    div-double/2addr v0, v12

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->F:D

    .line 173
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->l:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->q:D

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->v:D

    add-double/2addr v0, v2

    div-double/2addr v0, v12

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->G:D

    .line 174
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->l:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->q:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->v:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, v12

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->d:D

    .line 175
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->k:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->q:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->l:D

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->l:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->p:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->p:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->v:D

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->q:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->q:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->u:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->u:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->l:D

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->v:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->v:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->k:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, v12

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->e:D

    .line 177
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->k:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->m:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->p:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->r:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->u:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, v12

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->f:D

    .line 178
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->o:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->t:D

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    .line 179
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->h:D

    .line 180
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->m:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->w:D

    sub-double/2addr v0, v2

    div-double/2addr v0, v12

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->i:D

    .line 181
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->n:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->x:D

    sub-double/2addr v0, v2

    div-double/2addr v0, v12

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->j:D

    .line 182
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->r:D

    const-wide v2, 0x3ffbb67ae8584caaL    # 1.7320508075688772

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->z:D

    .line 183
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->s:D

    const-wide v2, 0x3ffbb67ae8584caaL    # 1.7320508075688772

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->A:D

    .line 184
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->i:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->i:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->z:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 185
    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->j:D

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->j:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->A:D

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->A:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 186
    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->F:D

    sub-double/2addr v4, v0

    iput-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->B:D

    .line 187
    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->G:D

    sub-double/2addr v4, v2

    iput-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->C:D

    .line 188
    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->F:D

    add-double/2addr v0, v4

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->D:D

    .line 189
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->G:D

    add-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->E:D

    .line 190
    iget-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->d:D

    iget-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->f:D

    add-double/2addr v0, v2

    div-double/2addr v0, v12

    .line 191
    mul-double v2, v0, v0

    iget-wide v4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    mul-double/2addr v4, v12

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->g:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 192
    const-wide v4, 0x3fde2b7dddfefa67L    # 0.47140452079103173

    sub-double v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 193
    const-wide v6, 0x3fde2b7dddfefa67L    # 0.47140452079103173

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    .line 194
    const-wide v2, 0x3ff358e1a79ed7e1L    # 1.2091995761561452

    iget-wide v6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->h:D

    mul-double/2addr v2, v6

    iput-wide v2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->b:D

    .line 195
    sub-double v2, v0, v4

    add-double v6, v0, v4

    div-double/2addr v2, v6

    .line 196
    mul-double/2addr v2, v2

    .line 197
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v4

    mul-double/2addr v0, v6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v6, v12, v2

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v12

    sub-double v2, v10, v2

    .line 198
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v2, v8

    div-double v2, v6, v2

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/Ovuscule;->c:D

    .line 199
    return-void
.end method
