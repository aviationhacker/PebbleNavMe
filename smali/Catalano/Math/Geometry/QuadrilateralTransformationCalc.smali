.class public final LCatalano/Math/Geometry/QuadrilateralTransformationCalc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MapQuadToQuad(Ljava/util/ArrayList;Ljava/util/ArrayList;)[[D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)[[D"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(Ljava/util/ArrayList;)[[D

    move-result-object v0

    .line 137
    invoke-static {p1}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(Ljava/util/ArrayList;)[[D

    move-result-object v1

    .line 139
    if-nez v1, :cond_0

    .line 140
    const/4 v0, 0x0

    check-cast v0, [[D

    .line 142
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a([[D)[[D

    move-result-object v0

    invoke-static {v1, v0}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a([[D[[D)[[D

    move-result-object v0

    goto :goto_0
.end method

.method private static a(DDDD)D
    .locals 4

    .prologue
    .line 45
    mul-double v0, p0, p6

    mul-double v2, p2, p4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static a(Ljava/util/ArrayList;)[[D
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)[[D"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v2, 0x3

    const/4 v3, 0x3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, [[D

    .line 87
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v3, v2, LCatalano/Core/IntPoint;->x:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->x:I

    sub-int/2addr v3, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->x:I

    add-int/2addr v3, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->x:I

    sub-int v2, v3, v2

    int-to-double v10, v2

    .line 88
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v3, v2, LCatalano/Core/IntPoint;->y:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->y:I

    sub-int/2addr v3, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->y:I

    add-int/2addr v3, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->y:I

    sub-int v2, v3, v2

    int-to-double v14, v2

    .line 90
    const-wide v2, 0x3d3c25c268497682L    # 1.0E-13

    cmpg-double v2, v10, v2

    if-gez v2, :cond_0

    const-wide v2, -0x42c3da3d97b6897eL    # -1.0E-13

    cmpl-double v2, v10, v2

    if-lez v2, :cond_0

    const-wide v2, 0x3d3c25c268497682L    # 1.0E-13

    cmpg-double v2, v14, v2

    if-gez v2, :cond_0

    const-wide v2, -0x42c3da3d97b6897eL    # -1.0E-13

    cmpl-double v2, v14, v2

    if-lez v2, :cond_0

    .line 93
    const/4 v2, 0x0

    aget-object v3, v18, v2

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v5, v2, LCatalano/Core/IntPoint;->x:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->x:I

    sub-int v2, v5, v2

    int-to-double v6, v2

    aput-wide v6, v3, v4

    .line 94
    const/4 v2, 0x0

    aget-object v3, v18, v2

    const/4 v4, 0x1

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v5, v2, LCatalano/Core/IntPoint;->x:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->x:I

    sub-int v2, v5, v2

    int-to-double v6, v2

    aput-wide v6, v3, v4

    .line 95
    const/4 v2, 0x0

    aget-object v3, v18, v2

    const/4 v4, 0x2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->x:I

    int-to-double v6, v2

    aput-wide v6, v3, v4

    .line 97
    const/4 v2, 0x1

    aget-object v3, v18, v2

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v5, v2, LCatalano/Core/IntPoint;->y:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->y:I

    sub-int v2, v5, v2

    int-to-double v6, v2

    aput-wide v6, v3, v4

    .line 98
    const/4 v2, 0x1

    aget-object v3, v18, v2

    const/4 v4, 0x1

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v5, v2, LCatalano/Core/IntPoint;->y:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->y:I

    sub-int v2, v5, v2

    int-to-double v6, v2

    aput-wide v6, v3, v4

    .line 99
    const/4 v2, 0x1

    aget-object v3, v18, v2

    const/4 v4, 0x2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v2

    aput-wide v6, v3, v4

    .line 101
    const/4 v2, 0x2

    aget-object v2, v18, v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 102
    const/4 v2, 0x2

    aget-object v2, v18, v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 103
    const/4 v2, 0x2

    aget-object v2, v18, v2

    const/4 v3, 0x2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    :goto_0
    move-object/from16 v2, v18

    .line 131
    :goto_1
    return-object v2

    .line 109
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v3, v2, LCatalano/Core/IntPoint;->x:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->x:I

    sub-int v2, v3, v2

    int-to-double v2, v2

    .line 110
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LCatalano/Core/IntPoint;

    iget v5, v4, LCatalano/Core/IntPoint;->x:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LCatalano/Core/IntPoint;

    iget v4, v4, LCatalano/Core/IntPoint;->x:I

    sub-int v4, v5, v4

    int-to-double v4, v4

    .line 111
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LCatalano/Core/IntPoint;

    iget v7, v6, LCatalano/Core/IntPoint;->y:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LCatalano/Core/IntPoint;

    iget v6, v6, LCatalano/Core/IntPoint;->y:I

    sub-int v6, v7, v6

    int-to-double v6, v6

    .line 112
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LCatalano/Core/IntPoint;

    iget v9, v8, LCatalano/Core/IntPoint;->y:I

    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LCatalano/Core/IntPoint;

    iget v8, v8, LCatalano/Core/IntPoint;->y:I

    sub-int v8, v9, v8

    int-to-double v8, v8

    .line 114
    invoke-static/range {v2 .. v9}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(DDDD)D

    move-result-wide v20

    .line 116
    const-wide/16 v12, 0x0

    cmpl-double v12, v20, v12

    if-nez v12, :cond_1

    .line 117
    const/4 v2, 0x0

    check-cast v2, [[D

    goto :goto_1

    .line 119
    :cond_1
    const/4 v12, 0x2

    aget-object v19, v18, v12

    const/16 v22, 0x0

    move-wide v12, v4

    move-wide/from16 v16, v8

    invoke-static/range {v10 .. v17}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(DDDD)D

    move-result-wide v4

    div-double v4, v4, v20

    aput-wide v4, v19, v22

    .line 120
    const/4 v4, 0x2

    aget-object v12, v18, v4

    const/4 v13, 0x1

    move-wide v4, v10

    move-wide v8, v14

    invoke-static/range {v2 .. v9}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(DDDD)D

    move-result-wide v2

    div-double v2, v2, v20

    aput-wide v2, v12, v13

    .line 121
    const/4 v2, 0x2

    aget-object v2, v18, v2

    const/4 v3, 0x2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 123
    const/4 v2, 0x0

    aget-object v3, v18, v2

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v5, v2, LCatalano/Core/IntPoint;->x:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->x:I

    sub-int v2, v5, v2

    int-to-double v6, v2

    const/4 v2, 0x2

    aget-object v2, v18, v2

    const/4 v5, 0x0

    aget-wide v8, v2, v5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->x:I

    int-to-double v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v3, v4

    .line 124
    const/4 v2, 0x0

    aget-object v3, v18, v2

    const/4 v4, 0x1

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v5, v2, LCatalano/Core/IntPoint;->x:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->x:I

    sub-int v2, v5, v2

    int-to-double v6, v2

    const/4 v2, 0x2

    aget-object v2, v18, v2

    const/4 v5, 0x1

    aget-wide v8, v2, v5

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->x:I

    int-to-double v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v3, v4

    .line 125
    const/4 v2, 0x0

    aget-object v3, v18, v2

    const/4 v4, 0x2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->x:I

    int-to-double v6, v2

    aput-wide v6, v3, v4

    .line 127
    const/4 v2, 0x1

    aget-object v3, v18, v2

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v5, v2, LCatalano/Core/IntPoint;->y:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->y:I

    sub-int v2, v5, v2

    int-to-double v6, v2

    const/4 v2, 0x2

    aget-object v2, v18, v2

    const/4 v5, 0x0

    aget-wide v8, v2, v5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->y:I

    int-to-double v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v3, v4

    .line 128
    const/4 v2, 0x1

    aget-object v3, v18, v2

    const/4 v4, 0x1

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v5, v2, LCatalano/Core/IntPoint;->y:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->y:I

    sub-int v2, v5, v2

    int-to-double v6, v2

    const/4 v2, 0x2

    aget-object v2, v18, v2

    const/4 v5, 0x1

    aget-wide v8, v2, v5

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->y:I

    int-to-double v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v3, v4

    .line 129
    const/4 v2, 0x1

    aget-object v3, v18, v2

    const/4 v4, 0x2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    iget v2, v2, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v2

    aput-wide v6, v3, v4

    goto/16 :goto_0
.end method

.method private static a([[D)[[D
    .locals 13

    .prologue
    const/4 v0, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 68
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [[D

    .line 69
    aget-object v9, v8, v10

    aget-object v0, p0, v11

    aget-wide v0, v0, v11

    aget-object v2, p0, v11

    aget-wide v2, v2, v12

    aget-object v4, p0, v12

    aget-wide v4, v4, v11

    aget-object v6, p0, v12

    aget-wide v6, v6, v12

    invoke-static/range {v0 .. v7}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(DDDD)D

    move-result-wide v0

    aput-wide v0, v9, v10

    .line 70
    aget-object v9, v8, v11

    aget-object v0, p0, v11

    aget-wide v0, v0, v12

    aget-object v2, p0, v11

    aget-wide v2, v2, v10

    aget-object v4, p0, v12

    aget-wide v4, v4, v12

    aget-object v6, p0, v12

    aget-wide v6, v6, v10

    invoke-static/range {v0 .. v7}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(DDDD)D

    move-result-wide v0

    aput-wide v0, v9, v10

    .line 71
    aget-object v9, v8, v12

    aget-object v0, p0, v11

    aget-wide v0, v0, v10

    aget-object v2, p0, v11

    aget-wide v2, v2, v11

    aget-object v4, p0, v12

    aget-wide v4, v4, v10

    aget-object v6, p0, v12

    aget-wide v6, v6, v11

    invoke-static/range {v0 .. v7}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(DDDD)D

    move-result-wide v0

    aput-wide v0, v9, v10

    .line 72
    aget-object v9, v8, v10

    aget-object v0, p0, v12

    aget-wide v0, v0, v11

    aget-object v2, p0, v12

    aget-wide v2, v2, v12

    aget-object v4, p0, v10

    aget-wide v4, v4, v11

    aget-object v6, p0, v10

    aget-wide v6, v6, v12

    invoke-static/range {v0 .. v7}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(DDDD)D

    move-result-wide v0

    aput-wide v0, v9, v11

    .line 73
    aget-object v9, v8, v11

    aget-object v0, p0, v12

    aget-wide v0, v0, v12

    aget-object v2, p0, v12

    aget-wide v2, v2, v10

    aget-object v4, p0, v10

    aget-wide v4, v4, v12

    aget-object v6, p0, v10

    aget-wide v6, v6, v10

    invoke-static/range {v0 .. v7}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(DDDD)D

    move-result-wide v0

    aput-wide v0, v9, v11

    .line 74
    aget-object v9, v8, v12

    aget-object v0, p0, v12

    aget-wide v0, v0, v10

    aget-object v2, p0, v12

    aget-wide v2, v2, v11

    aget-object v4, p0, v10

    aget-wide v4, v4, v10

    aget-object v6, p0, v10

    aget-wide v6, v6, v11

    invoke-static/range {v0 .. v7}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(DDDD)D

    move-result-wide v0

    aput-wide v0, v9, v11

    .line 75
    aget-object v9, v8, v10

    aget-object v0, p0, v10

    aget-wide v0, v0, v11

    aget-object v2, p0, v10

    aget-wide v2, v2, v12

    aget-object v4, p0, v11

    aget-wide v4, v4, v11

    aget-object v6, p0, v11

    aget-wide v6, v6, v12

    invoke-static/range {v0 .. v7}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(DDDD)D

    move-result-wide v0

    aput-wide v0, v9, v12

    .line 76
    aget-object v9, v8, v11

    aget-object v0, p0, v10

    aget-wide v0, v0, v12

    aget-object v2, p0, v10

    aget-wide v2, v2, v10

    aget-object v4, p0, v11

    aget-wide v4, v4, v12

    aget-object v6, p0, v11

    aget-wide v6, v6, v10

    invoke-static/range {v0 .. v7}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(DDDD)D

    move-result-wide v0

    aput-wide v0, v9, v12

    .line 77
    aget-object v9, v8, v12

    aget-object v0, p0, v10

    aget-wide v0, v0, v10

    aget-object v2, p0, v10

    aget-wide v2, v2, v11

    aget-object v4, p0, v11

    aget-wide v4, v4, v10

    aget-object v6, p0, v11

    aget-wide v6, v6, v11

    invoke-static/range {v0 .. v7}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->a(DDDD)D

    move-result-wide v0

    aput-wide v0, v9, v12

    .line 79
    return-object v8
.end method

.method private static a([[D[[D)[[D
    .locals 11

    .prologue
    const/4 v0, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 50
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 52
    aget-object v1, v0, v8

    aget-object v2, p0, v8

    aget-wide v2, v2, v8

    aget-object v4, p1, v8

    aget-wide v4, v4, v8

    mul-double/2addr v2, v4

    aget-object v4, p0, v8

    aget-wide v4, v4, v9

    aget-object v6, p1, v9

    aget-wide v6, v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-object v4, p0, v8

    aget-wide v4, v4, v10

    aget-object v6, p1, v10

    aget-wide v6, v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v1, v8

    .line 53
    aget-object v1, v0, v8

    aget-object v2, p0, v8

    aget-wide v2, v2, v8

    aget-object v4, p1, v8

    aget-wide v4, v4, v9

    mul-double/2addr v2, v4

    aget-object v4, p0, v8

    aget-wide v4, v4, v9

    aget-object v6, p1, v9

    aget-wide v6, v6, v9

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-object v4, p0, v8

    aget-wide v4, v4, v10

    aget-object v6, p1, v10

    aget-wide v6, v6, v9

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v1, v9

    .line 54
    aget-object v1, v0, v8

    aget-object v2, p0, v8

    aget-wide v2, v2, v8

    aget-object v4, p1, v8

    aget-wide v4, v4, v10

    mul-double/2addr v2, v4

    aget-object v4, p0, v8

    aget-wide v4, v4, v9

    aget-object v6, p1, v9

    aget-wide v6, v6, v10

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-object v4, p0, v8

    aget-wide v4, v4, v10

    aget-object v6, p1, v10

    aget-wide v6, v6, v10

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v1, v10

    .line 55
    aget-object v1, v0, v9

    aget-object v2, p0, v9

    aget-wide v2, v2, v8

    aget-object v4, p1, v8

    aget-wide v4, v4, v8

    mul-double/2addr v2, v4

    aget-object v4, p0, v9

    aget-wide v4, v4, v9

    aget-object v6, p1, v9

    aget-wide v6, v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-object v4, p0, v9

    aget-wide v4, v4, v10

    aget-object v6, p1, v10

    aget-wide v6, v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v1, v8

    .line 56
    aget-object v1, v0, v9

    aget-object v2, p0, v9

    aget-wide v2, v2, v8

    aget-object v4, p1, v8

    aget-wide v4, v4, v9

    mul-double/2addr v2, v4

    aget-object v4, p0, v9

    aget-wide v4, v4, v9

    aget-object v6, p1, v9

    aget-wide v6, v6, v9

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-object v4, p0, v9

    aget-wide v4, v4, v10

    aget-object v6, p1, v10

    aget-wide v6, v6, v9

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v1, v9

    .line 57
    aget-object v1, v0, v9

    aget-object v2, p0, v9

    aget-wide v2, v2, v8

    aget-object v4, p1, v8

    aget-wide v4, v4, v10

    mul-double/2addr v2, v4

    aget-object v4, p0, v9

    aget-wide v4, v4, v9

    aget-object v6, p1, v9

    aget-wide v6, v6, v10

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-object v4, p0, v9

    aget-wide v4, v4, v10

    aget-object v6, p1, v10

    aget-wide v6, v6, v10

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v1, v10

    .line 58
    aget-object v1, v0, v10

    aget-object v2, p0, v10

    aget-wide v2, v2, v8

    aget-object v4, p1, v8

    aget-wide v4, v4, v8

    mul-double/2addr v2, v4

    aget-object v4, p0, v10

    aget-wide v4, v4, v9

    aget-object v6, p1, v9

    aget-wide v6, v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-object v4, p0, v10

    aget-wide v4, v4, v10

    aget-object v6, p1, v10

    aget-wide v6, v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v1, v8

    .line 59
    aget-object v1, v0, v10

    aget-object v2, p0, v10

    aget-wide v2, v2, v8

    aget-object v4, p1, v8

    aget-wide v4, v4, v9

    mul-double/2addr v2, v4

    aget-object v4, p0, v10

    aget-wide v4, v4, v9

    aget-object v6, p1, v9

    aget-wide v6, v6, v9

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-object v4, p0, v10

    aget-wide v4, v4, v10

    aget-object v6, p1, v10

    aget-wide v6, v6, v9

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v1, v9

    .line 60
    aget-object v1, v0, v10

    aget-object v2, p0, v10

    aget-wide v2, v2, v8

    aget-object v4, p1, v8

    aget-wide v4, v4, v10

    mul-double/2addr v2, v4

    aget-object v4, p0, v10

    aget-wide v4, v4, v9

    aget-object v6, p1, v9

    aget-wide v6, v6, v10

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-object v4, p0, v10

    aget-wide v4, v4, v10

    aget-object v6, p1, v10

    aget-wide v6, v6, v10

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v1, v10

    .line 62
    return-object v0
.end method
