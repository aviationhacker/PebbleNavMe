.class public LCatalano/Imaging/Tools/NearestNeighborMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;->Vertical:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    iput-object v0, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->a:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    .line 38
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->b:I

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;->Vertical:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    iput-object v0, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->a:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    .line 38
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->b:I

    .line 82
    iput p1, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->b:I

    .line 83
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;->Vertical:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    iput-object v0, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->a:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    .line 38
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->b:I

    .line 90
    iput-object p1, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->a:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    .line 91
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;I)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;->Vertical:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    iput-object v0, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->a:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    .line 38
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->b:I

    .line 99
    iput-object p1, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->a:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    .line 100
    iput p2, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->b:I

    .line 101
    return-void
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)[[I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 110
    new-instance v0, LCatalano/Imaging/Filters/DistanceTransform;

    invoke-direct {v0}, LCatalano/Imaging/Filters/DistanceTransform;-><init>()V

    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/DistanceTransform;->Compute(LCatalano/Imaging/FastBitmap;)[[F

    move-result-object v3

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 113
    array-length v5, v3

    .line 114
    aget-object v0, v3, v1

    array-length v6, v0

    move v2, v1

    .line 116
    :goto_0
    if-ge v2, v5, :cond_2

    move v0, v1

    .line 117
    :goto_1
    if-ge v0, v6, :cond_1

    .line 118
    aget-object v7, v3, v2

    aget v7, v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    .line 119
    new-instance v7, LCatalano/Core/IntPoint;

    invoke-direct {v7, v2, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p0, p1, v4}, LCatalano/Imaging/Tools/NearestNeighborMatrix;->ProcessImage(LCatalano/Imaging/FastBitmap;Ljava/util/ArrayList;)[[I

    move-result-object v0

    return-object v0
.end method

.method public ProcessImage(LCatalano/Imaging/FastBitmap;Ljava/util/ArrayList;)[[I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Imaging/FastBitmap;",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)[[I"
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v17

    .line 137
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v18

    .line 138
    move/from16 v0, v18

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [[I

    .line 140
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->a:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    sget-object v3, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;->Vertical:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    if-ne v2, v3, :cond_6

    .line 144
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->b:I

    .line 145
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    .line 146
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v2, v0, :cond_1

    .line 147
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    const/16 v6, 0xff

    if-ne v5, v6, :cond_0

    .line 148
    aget-object v5, v10, v2

    aput v3, v5, v4

    .line 150
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 145
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 155
    :cond_2
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_e

    .line 156
    const/4 v2, 0x0

    move v13, v2

    :goto_3
    move/from16 v0, v18

    if-ge v13, v0, :cond_5

    .line 158
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-nez v2, :cond_4

    .line 160
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 161
    new-instance v2, LCatalano/Core/IntPoint;

    invoke-direct {v2}, LCatalano/Core/IntPoint;-><init>()V

    .line 162
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object v12, v2

    move-wide v14, v4

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, LCatalano/Core/IntPoint;

    .line 163
    int-to-double v2, v13

    move/from16 v0, v16

    int-to-double v4, v0

    iget v6, v11, LCatalano/Core/IntPoint;->x:I

    int-to-double v6, v6

    iget v8, v11, LCatalano/Core/IntPoint;->y:I

    int-to-double v8, v8

    invoke-static/range {v2 .. v9}, LCatalano/Math/Distances/Distance;->SquaredEuclidean(DDDD)D

    move-result-wide v4

    .line 164
    cmpg-double v2, v4, v14

    if-gez v2, :cond_10

    move-object v2, v11

    :goto_5
    move-object v12, v2

    move-wide v14, v4

    .line 168
    goto :goto_4

    .line 169
    :cond_3
    aget-object v2, v10, v13

    iget v3, v12, LCatalano/Core/IntPoint;->x:I

    aget-object v3, v10, v3

    iget v4, v12, LCatalano/Core/IntPoint;->y:I

    aget v3, v3, v4

    aput v3, v2, v16

    .line 156
    :cond_4
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_3

    .line 155
    :cond_5
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_2

    .line 179
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->b:I

    .line 180
    const/4 v2, 0x0

    move v4, v2

    :goto_6
    move/from16 v0, v18

    if-ge v4, v0, :cond_9

    .line 181
    const/4 v2, 0x0

    :goto_7
    move/from16 v0, v17

    if-ge v2, v0, :cond_8

    .line 182
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    const/16 v6, 0xff

    if-ne v5, v6, :cond_7

    .line 183
    aget-object v5, v10, v4

    aput v3, v5, v2

    .line 185
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 180
    :cond_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_6

    .line 190
    :cond_9
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_8
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    .line 191
    const/4 v2, 0x0

    move v13, v2

    :goto_9
    move/from16 v0, v17

    if-ge v13, v0, :cond_c

    .line 193
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v13}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    if-nez v2, :cond_b

    .line 195
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 196
    new-instance v2, LCatalano/Core/IntPoint;

    invoke-direct {v2}, LCatalano/Core/IntPoint;-><init>()V

    .line 197
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object v12, v2

    move-wide v14, v4

    :goto_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, LCatalano/Core/IntPoint;

    .line 198
    move/from16 v0, v16

    int-to-double v2, v0

    int-to-double v4, v13

    iget v6, v11, LCatalano/Core/IntPoint;->x:I

    int-to-double v6, v6

    iget v8, v11, LCatalano/Core/IntPoint;->y:I

    int-to-double v8, v8

    invoke-static/range {v2 .. v9}, LCatalano/Math/Distances/Distance;->SquaredEuclidean(DDDD)D

    move-result-wide v4

    .line 199
    cmpg-double v2, v4, v14

    if-gez v2, :cond_f

    move-object v2, v11

    :goto_b
    move-object v12, v2

    move-wide v14, v4

    .line 203
    goto :goto_a

    .line 204
    :cond_a
    aget-object v2, v10, v16

    iget v3, v12, LCatalano/Core/IntPoint;->x:I

    aget-object v3, v10, v3

    iget v4, v12, LCatalano/Core/IntPoint;->y:I

    aget v3, v3, v4

    aput v3, v2, v13

    .line 191
    :cond_b
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_9

    .line 190
    :cond_c
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_8

    .line 212
    :cond_d
    const/4 v2, 0x0

    check-cast v2, [[I

    move-object v10, v2

    :cond_e
    return-object v10

    :cond_f
    move-object v2, v12

    move-wide v4, v14

    goto :goto_b

    :cond_10
    move-object v2, v12

    move-wide v4, v14

    goto/16 :goto_5
.end method

.method public getDirection()LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->a:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    return-object v0
.end method

.method public getPoint(III)LCatalano/Core/IntPoint;
    .locals 4

    .prologue
    .line 224
    add-int/lit8 v0, p1, -0x1

    .line 225
    div-int v1, v0, p3

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 226
    rem-int/2addr v0, p2

    .line 228
    new-instance v2, LCatalano/Core/IntPoint;

    invoke-direct {v2, v1, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    return-object v2
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->b:I

    return v0
.end method

.method public setDirection(LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->a:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    .line 54
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, LCatalano/Imaging/Tools/NearestNeighborMatrix;->b:I

    .line 70
    return-void
.end method
