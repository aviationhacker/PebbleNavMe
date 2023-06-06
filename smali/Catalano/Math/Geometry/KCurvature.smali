.class public LCatalano/Math/Geometry/KCurvature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public k:I

.field public suppression:I

.field public theta:LCatalano/Core/DoubleRange;


# direct methods
.method public constructor <init>(ILCatalano/Core/DoubleRange;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, LCatalano/Math/Geometry/KCurvature;->k:I

    .line 58
    iput-object p2, p0, LCatalano/Math/Geometry/KCurvature;->theta:LCatalano/Core/DoubleRange;

    .line 59
    return-void
.end method


# virtual methods
.method public FindPeaks(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v6, v2, [D

    .line 69
    const/4 v2, 0x0

    move v5, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_2

    .line 71
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Math/Geometry/KCurvature;->k:I

    add-int/2addr v2, v5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, LCatalano/Math/Tools;->Mod(II)I

    move-result v2

    .line 72
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Math/Geometry/KCurvature;->k:I

    sub-int v3, v5, v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, LCatalano/Math/Tools;->Mod(II)I

    move-result v4

    .line 74
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    .line 75
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LCatalano/Core/IntPoint;

    .line 76
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LCatalano/Core/IntPoint;

    .line 78
    new-instance v7, LCatalano/Core/DoublePoint;

    iget v8, v3, LCatalano/Core/IntPoint;->x:I

    iget v9, v2, LCatalano/Core/IntPoint;->x:I

    sub-int/2addr v8, v9

    iget v9, v3, LCatalano/Core/IntPoint;->y:I

    iget v2, v2, LCatalano/Core/IntPoint;->y:I

    sub-int v2, v9, v2

    invoke-direct {v7, v8, v2}, LCatalano/Core/DoublePoint;-><init>(II)V

    .line 79
    new-instance v2, LCatalano/Core/DoublePoint;

    iget v8, v3, LCatalano/Core/IntPoint;->x:I

    iget v9, v4, LCatalano/Core/IntPoint;->x:I

    sub-int/2addr v8, v9

    iget v3, v3, LCatalano/Core/IntPoint;->y:I

    iget v4, v4, LCatalano/Core/IntPoint;->y:I

    sub-int/2addr v3, v4

    invoke-direct {v2, v8, v3}, LCatalano/Core/DoublePoint;-><init>(II)V

    .line 81
    iget-wide v8, v7, LCatalano/Core/DoublePoint;->y:D

    iget-wide v10, v7, LCatalano/Core/DoublePoint;->x:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 82
    iget-wide v10, v2, LCatalano/Core/DoublePoint;->y:D

    iget-wide v2, v2, LCatalano/Core/DoublePoint;->x:D

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 83
    sub-double v2, v8, v2

    .line 85
    const-wide/16 v8, 0x0

    cmpg-double v4, v2, v8

    if-gez v4, :cond_0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v2, v8

    .line 87
    :cond_0
    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v8

    .line 89
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/Geometry/KCurvature;->theta:LCatalano/Core/DoubleRange;

    invoke-virtual {v4, v2, v3}, LCatalano/Core/DoubleRange;->isInside(D)Z

    move-result v4

    if-eqz v4, :cond_1

    aput-wide v2, v6, v5

    .line 69
    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_0

    .line 93
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Math/Geometry/KCurvature;->suppression:I

    .line 94
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const/4 v2, 0x0

    :goto_1
    array-length v3, v6

    if-ge v2, v3, :cond_8

    .line 96
    aget-wide v8, v6, v2

    .line 97
    const-wide/16 v10, 0x0

    cmpl-double v3, v8, v10

    if-nez v3, :cond_4

    .line 95
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    :cond_4
    const/4 v4, 0x1

    .line 101
    neg-int v3, v5

    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    :goto_3
    if-ge v4, v5, :cond_7

    if-eqz v3, :cond_7

    .line 102
    add-int v10, v2, v4

    array-length v11, v6

    invoke-static {v10, v11}, LCatalano/Math/Tools;->Mod(II)I

    move-result v10

    .line 104
    aget-wide v12, v6, v10

    .line 106
    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-nez v11, :cond_5

    .line 101
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 109
    :cond_5
    cmpg-double v11, v12, v8

    if-gez v11, :cond_6

    .line 110
    const/4 v3, 0x0

    goto :goto_4

    .line 111
    :cond_6
    const-wide/16 v12, 0x0

    aput-wide v12, v6, v10

    goto :goto_4

    .line 113
    :cond_7
    if-eqz v3, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 115
    :cond_8
    return-object v7
.end method
