.class public final LCatalano/Imaging/Tools/ShapeDescriptors;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Area(LCatalano/Imaging/FastBitmap;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 55
    move v0, v1

    move v2, v1

    .line 56
    :goto_0
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 57
    :goto_1
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 58
    invoke-virtual {p0, v0, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_2

    .line 59
    add-int/lit8 v4, v2, 0x1

    .line 57
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    return v2

    :cond_2
    move v4, v2

    goto :goto_2
.end method

.method public static AreaEquivalentDiameter(I)D
    .locals 4

    .prologue
    .line 73
    const-wide v0, 0x3ff45f306dc9c883L    # 1.2732395447351628

    .line 74
    int-to-double v2, p0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static EulerNumber(LCatalano/Imaging/FastBitmap;)I
    .locals 1

    .prologue
    .line 108
    new-instance v0, LCatalano/Imaging/Filters/Invert;

    invoke-direct {v0}, LCatalano/Imaging/Filters/Invert;-><init>()V

    .line 109
    invoke-virtual {v0, p0}, LCatalano/Imaging/Filters/Invert;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 111
    new-instance v0, LCatalano/Imaging/Tools/BlobDetection;

    invoke-direct {v0}, LCatalano/Imaging/Tools/BlobDetection;-><init>()V

    .line 112
    invoke-virtual {v0, p0}, LCatalano/Imaging/Tools/BlobDetection;->ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 115
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 117
    :cond_0
    return v0
.end method

.method public static FeretDiameter(Ljava/util/List;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 128
    const-wide/16 v0, 0x0

    .line 129
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v2, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, LCatalano/Core/IntPoint;

    .line 130
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v10, v2

    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LCatalano/Core/IntPoint;

    .line 131
    iget v0, v8, LCatalano/Core/IntPoint;->x:I

    int-to-double v0, v0

    iget v2, v8, LCatalano/Core/IntPoint;->y:I

    int-to-double v2, v2

    iget v4, v6, LCatalano/Core/IntPoint;->x:I

    int-to-double v4, v4

    iget v6, v6, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, LCatalano/Math/Distances/Distance;->SquaredEuclidean(DDDD)D

    move-result-wide v0

    .line 132
    cmpl-double v2, v0, v10

    if-lez v2, :cond_0

    move-wide v10, v0

    .line 133
    goto :goto_1

    :cond_1
    move-wide v2, v10

    .line 136
    goto :goto_0

    .line 138
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static FeretPoints(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v3, LCatalano/Core/IntPoint;

    invoke-direct {v3}, LCatalano/Core/IntPoint;-><init>()V

    .line 150
    new-instance v2, LCatalano/Core/IntPoint;

    invoke-direct {v2}, LCatalano/Core/IntPoint;-><init>()V

    .line 152
    const-wide/16 v0, 0x0

    .line 153
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v4, v3

    move-object/from16 v17, v2

    move-wide v2, v0

    move-object/from16 v1, v17

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, LCatalano/Core/IntPoint;

    .line 154
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-wide v10, v2

    move-object v12, v1

    move-object v13, v4

    :cond_0
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, LCatalano/Core/IntPoint;

    .line 155
    iget v0, v8, LCatalano/Core/IntPoint;->x:I

    int-to-double v0, v0

    iget v2, v8, LCatalano/Core/IntPoint;->y:I

    int-to-double v2, v2

    iget v4, v9, LCatalano/Core/IntPoint;->x:I

    int-to-double v4, v4

    iget v6, v9, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, LCatalano/Math/Distances/Distance;->SquaredEuclidean(DDDD)D

    move-result-wide v0

    .line 156
    cmpl-double v2, v0, v10

    if-lez v2, :cond_0

    move-wide v10, v0

    move-object v12, v9

    move-object v13, v8

    .line 159
    goto :goto_1

    :cond_1
    move-wide v2, v10

    move-object v1, v12

    move-object v4, v13

    .line 162
    goto :goto_0

    .line 164
    :cond_2
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-object v14
.end method

.method public static Irregularity(D)D
    .locals 2

    .prologue
    .line 171
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static MaximumErrorCircularity(DD)D
    .locals 2

    .prologue
    .line 181
    sub-double v0, p0, p2

    return-wide v0
.end method

.method public static MaximumInscribedCircle(LCatalano/Imaging/FastBitmap;)D
    .locals 2

    .prologue
    .line 191
    new-instance v0, LCatalano/Imaging/Filters/DistanceTransform;

    invoke-direct {v0}, LCatalano/Imaging/Filters/DistanceTransform;-><init>()V

    .line 192
    invoke-virtual {v0, p0}, LCatalano/Imaging/Filters/DistanceTransform;->Compute(LCatalano/Imaging/FastBitmap;)[[F

    move-result-object v0

    .line 194
    invoke-static {v0}, LCatalano/Math/Matrix;->Max([[F)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static MinimumCircumscribedCircle(LCatalano/Core/IntPoint;Ljava/util/ArrayList;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Core/IntPoint;",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 206
    const-wide/16 v0, 0x1

    .line 207
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 208
    invoke-static {v0, p0}, LCatalano/Math/Distances/Distance;->SquaredEuclidean(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)D

    move-result-wide v0

    .line 209
    cmpl-double v5, v0, v2

    if-lez v5, :cond_1

    :goto_1
    move-wide v2, v0

    .line 212
    goto :goto_0

    .line 214
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public static PerimeterEquivalentDiameter(I)D
    .locals 4

    .prologue
    .line 239
    int-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static Roundness(ID)D
    .locals 7

    .prologue
    .line 250
    mul-int/lit8 v0, p0, 0x4

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v4, p1, p1

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static Shape(II)D
    .locals 2

    .prologue
    .line 261
    mul-int v0, p1, p1

    div-int/2addr v0, p0

    int-to-double v0, v0

    return-wide v0
.end method

.method public static StarPoint(LCatalano/Imaging/FastBitmap;)LCatalano/Core/IntPoint;
    .locals 1

    .prologue
    .line 225
    new-instance v0, LCatalano/Imaging/Filters/DistanceTransform;

    invoke-direct {v0}, LCatalano/Imaging/Filters/DistanceTransform;-><init>()V

    .line 226
    invoke-virtual {v0, p0}, LCatalano/Imaging/Filters/DistanceTransform;->Compute(LCatalano/Imaging/FastBitmap;)[[F

    move-result-object v0

    .line 228
    invoke-static {v0}, LCatalano/Math/Matrix;->MaxIndex([[F)LCatalano/Core/IntPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ThinnessRatio(II)D
    .locals 4

    .prologue
    .line 272
    const-wide v0, 0x402921fb54442d18L    # 12.566370614359172

    .line 273
    div-int v2, p0, p1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public Circularity(II)D
    .locals 4

    .prologue
    .line 85
    const-wide v0, 0x402921fb54442d18L    # 12.566370614359172

    .line 86
    int-to-double v2, p1

    mul-double/2addr v0, v2

    mul-int v2, p2, p2

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public Compactness(ID)D
    .locals 2

    .prologue
    .line 97
    invoke-static {p1}, LCatalano/Imaging/Tools/ShapeDescriptors;->AreaEquivalentDiameter(I)D

    move-result-wide v0

    div-double/2addr v0, p2

    return-wide v0
.end method
