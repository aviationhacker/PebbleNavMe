.class public LCatalano/Imaging/Tools/QuadrilateralTransformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IProcessImage;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->a:Z

    .line 44
    iput-boolean v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->b:Z

    .line 138
    iput-boolean v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->a:Z

    .line 139
    iput-object p1, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    .line 140
    invoke-direct {p0}, LCatalano/Imaging/Tools/QuadrilateralTransformation;->a()V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->a:Z

    .line 44
    iput-boolean v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->b:Z

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->a:Z

    .line 151
    iput-object p1, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    .line 152
    iput p2, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->c:I

    .line 153
    iput p3, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->d:I

    .line 154
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 315
    iget-object v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source quadrilateral was not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget-object v1, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Core/IntPoint;

    invoke-virtual {v0, v1}, LCatalano/Core/IntPoint;->DistanceTo(LCatalano/Core/IntPoint;)F

    move-result v2

    iget-object v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    .line 319
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget-object v1, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Core/IntPoint;

    invoke-virtual {v0, v1}, LCatalano/Core/IntPoint;->DistanceTo(LCatalano/Core/IntPoint;)F

    move-result v0

    .line 318
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->c:I

    .line 320
    iget-object v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget-object v1, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Core/IntPoint;

    invoke-virtual {v0, v1}, LCatalano/Core/IntPoint;->DistanceTo(LCatalano/Core/IntPoint;)F

    move-result v2

    iget-object v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    .line 321
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget-object v1, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Core/IntPoint;

    invoke-virtual {v0, v1}, LCatalano/Core/IntPoint;->DistanceTo(LCatalano/Core/IntPoint;)F

    move-result v0

    .line 320
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->d:I

    .line 322
    return-void
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/FastBitmap;
    .locals 36

    .prologue
    .line 159
    new-instance v2, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->c:I

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->d:I

    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getColorSpace()LCatalano/Imaging/FastBitmap$ColorSpace;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 161
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 162
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v10

    .line 164
    move-object/from16 v0, p0

    iget v11, v0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->c:I

    .line 165
    move-object/from16 v0, p0

    iget v12, v0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->d:I

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    new-instance v4, LCatalano/Core/IntPoint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v4, LCatalano/Core/IntPoint;

    add-int/lit8 v5, v11, -0x1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v4, LCatalano/Core/IntPoint;

    add-int/lit8 v5, v11, -0x1

    add-int/lit8 v6, v12, -0x1

    invoke-direct {v4, v5, v6}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v4, LCatalano/Core/IntPoint;

    const/4 v5, 0x0

    add-int/lit8 v6, v12, -0x1

    invoke-direct {v4, v5, v6}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    invoke-static {v3, v4}, LCatalano/Math/Geometry/QuadrilateralTransformationCalc;->MapQuadToQuad(Ljava/util/ArrayList;Ljava/util/ArrayList;)[[D

    move-result-object v13

    .line 176
    move-object/from16 v0, p0

    iget-boolean v3, v0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->b:Z

    if-nez v3, :cond_5

    .line 177
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v12, :cond_2

    .line 179
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v11, :cond_1

    .line 180
    const/4 v5, 0x2

    aget-object v5, v13, v5

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    int-to-double v14, v4

    mul-double/2addr v6, v14

    const/4 v5, 0x2

    aget-object v5, v13, v5

    const/4 v8, 0x1

    aget-wide v14, v5, v8

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    const/4 v5, 0x2

    aget-object v5, v13, v5

    const/4 v8, 0x2

    aget-wide v14, v5, v8

    add-double/2addr v6, v14

    .line 181
    const/4 v5, 0x0

    aget-object v5, v13, v5

    const/4 v8, 0x0

    aget-wide v14, v5, v8

    int-to-double v0, v4

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const/4 v5, 0x0

    aget-object v5, v13, v5

    const/4 v8, 0x1

    aget-wide v16, v5, v8

    int-to-double v0, v3

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    const/4 v5, 0x0

    aget-object v5, v13, v5

    const/4 v8, 0x2

    aget-wide v16, v5, v8

    add-double v14, v14, v16

    div-double/2addr v14, v6

    .line 182
    const/4 v5, 0x1

    aget-object v5, v13, v5

    const/4 v8, 0x0

    aget-wide v16, v5, v8

    int-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const/4 v5, 0x1

    aget-object v5, v13, v5

    const/4 v8, 0x1

    aget-wide v18, v5, v8

    int-to-double v0, v3

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    const/4 v5, 0x1

    aget-object v5, v13, v5

    const/4 v8, 0x2

    aget-wide v18, v5, v8

    add-double v16, v16, v18

    div-double v16, v16, v6

    .line 184
    const-wide/16 v6, 0x0

    cmpl-double v5, v14, v6

    if-ltz v5, :cond_0

    const-wide/16 v6, 0x0

    cmpl-double v5, v16, v6

    if-ltz v5, :cond_0

    int-to-double v6, v9

    cmpg-double v5, v14, v6

    if-gez v5, :cond_0

    int-to-double v6, v10

    cmpg-double v5, v16, v6

    if-gez v5, :cond_0

    .line 186
    move-wide/from16 v0, v16

    double-to-int v5, v0

    double-to-int v6, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v5

    .line 187
    move-wide/from16 v0, v16

    double-to-int v6, v0

    double-to-int v7, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v6

    .line 188
    move-wide/from16 v0, v16

    double-to-int v7, v0

    double-to-int v8, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v7

    .line 189
    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 179
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 178
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 194
    :cond_2
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 195
    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v12, :cond_f

    .line 196
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v11, :cond_4

    .line 197
    const/4 v5, 0x2

    aget-object v5, v13, v5

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    int-to-double v14, v3

    mul-double/2addr v6, v14

    const/4 v5, 0x2

    aget-object v5, v13, v5

    const/4 v8, 0x1

    aget-wide v14, v5, v8

    int-to-double v0, v4

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    const/4 v5, 0x2

    aget-object v5, v13, v5

    const/4 v8, 0x2

    aget-wide v14, v5, v8

    add-double/2addr v6, v14

    .line 198
    const/4 v5, 0x0

    aget-object v5, v13, v5

    const/4 v8, 0x0

    aget-wide v14, v5, v8

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const/4 v5, 0x0

    aget-object v5, v13, v5

    const/4 v8, 0x1

    aget-wide v16, v5, v8

    int-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    const/4 v5, 0x0

    aget-object v5, v13, v5

    const/4 v8, 0x2

    aget-wide v16, v5, v8

    add-double v14, v14, v16

    div-double/2addr v14, v6

    .line 199
    const/4 v5, 0x1

    aget-object v5, v13, v5

    const/4 v8, 0x0

    aget-wide v16, v5, v8

    int-to-double v0, v3

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const/4 v5, 0x1

    aget-object v5, v13, v5

    const/4 v8, 0x1

    aget-wide v18, v5, v8

    int-to-double v0, v4

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    const/4 v5, 0x1

    aget-object v5, v13, v5

    const/4 v8, 0x2

    aget-wide v18, v5, v8

    add-double v16, v16, v18

    div-double v6, v16, v6

    .line 201
    const-wide/16 v16, 0x0

    cmpl-double v5, v14, v16

    if-ltz v5, :cond_3

    const-wide/16 v16, 0x0

    cmpl-double v5, v6, v16

    if-ltz v5, :cond_3

    int-to-double v0, v9

    move-wide/from16 v16, v0

    cmpg-double v5, v14, v16

    if-gez v5, :cond_3

    int-to-double v0, v10

    move-wide/from16 v16, v0

    cmpg-double v5, v6, v16

    if-gez v5, :cond_3

    .line 203
    double-to-int v5, v6

    double-to-int v6, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    .line 204
    invoke-virtual {v2, v4, v3, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 196
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 195
    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_2

    .line 211
    :cond_5
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 212
    add-int/lit8 v14, v9, -0x1

    .line 213
    add-int/lit8 v15, v10, -0x1

    .line 223
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v12, :cond_a

    .line 224
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v11, :cond_9

    .line 225
    const/4 v5, 0x2

    aget-object v5, v13, v5

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    int-to-double v0, v4

    move-wide/from16 v16, v0

    mul-double v6, v6, v16

    const/4 v5, 0x2

    aget-object v5, v13, v5

    const/4 v8, 0x1

    aget-wide v16, v5, v8

    int-to-double v0, v3

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v6, v6, v16

    const/4 v5, 0x2

    aget-object v5, v13, v5

    const/4 v8, 0x2

    aget-wide v16, v5, v8

    add-double v6, v6, v16

    .line 226
    const/4 v5, 0x0

    aget-object v5, v13, v5

    const/4 v8, 0x0

    aget-wide v16, v5, v8

    int-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const/4 v5, 0x0

    aget-object v5, v13, v5

    const/4 v8, 0x1

    aget-wide v18, v5, v8

    int-to-double v0, v3

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    const/4 v5, 0x0

    aget-object v5, v13, v5

    const/4 v8, 0x2

    aget-wide v18, v5, v8

    add-double v16, v16, v18

    div-double v16, v16, v6

    .line 227
    const/4 v5, 0x1

    aget-object v5, v13, v5

    const/4 v8, 0x0

    aget-wide v18, v5, v8

    int-to-double v0, v4

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const/4 v5, 0x1

    aget-object v5, v13, v5

    const/4 v8, 0x1

    aget-wide v20, v5, v8

    int-to-double v0, v3

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const/4 v5, 0x1

    aget-object v5, v13, v5

    const/4 v8, 0x2

    aget-wide v20, v5, v8

    add-double v18, v18, v20

    div-double v18, v18, v6

    .line 229
    const-wide/16 v6, 0x0

    cmpl-double v5, v16, v6

    if-ltz v5, :cond_6

    const-wide/16 v6, 0x0

    cmpl-double v5, v18, v6

    if-ltz v5, :cond_6

    int-to-double v6, v9

    cmpg-double v5, v16, v6

    if-gez v5, :cond_6

    int-to-double v6, v10

    cmpg-double v5, v18, v6

    if-gez v5, :cond_6

    .line 230
    move-wide/from16 v0, v16

    double-to-int v8, v0

    .line 231
    if-ne v8, v14, :cond_7

    move v7, v8

    .line 232
    :goto_6
    int-to-double v0, v8

    move-wide/from16 v20, v0

    sub-double v16, v16, v20

    .line 233
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v16

    .line 235
    move-wide/from16 v0, v18

    double-to-int v6, v0

    .line 236
    if-ne v6, v15, :cond_8

    move v5, v6

    .line 237
    :goto_7
    int-to-double v0, v6

    move-wide/from16 v22, v0

    sub-double v18, v18, v22

    .line 238
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v18

    .line 241
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v24

    .line 242
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v25

    .line 243
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v26

    .line 244
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v27

    .line 247
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v28

    .line 248
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v29

    .line 249
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v30

    .line 250
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v31

    .line 253
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v32

    .line 254
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v33

    .line 255
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v8

    .line 256
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v7

    .line 258
    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v34, v34, v20

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v16

    add-double v24, v24, v34

    mul-double v24, v24, v22

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v34, v34, v20

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v16

    add-double v26, v26, v34

    mul-double v26, v26, v18

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v5, v0

    .line 259
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v20

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v16

    add-double v24, v24, v26

    mul-double v24, v24, v22

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v20

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v16

    add-double v26, v26, v28

    mul-double v26, v26, v18

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v6, v0

    .line 260
    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v20

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v16

    add-double v24, v24, v26

    mul-double v22, v22, v24

    int-to-double v0, v8

    move-wide/from16 v24, v0

    mul-double v20, v20, v24

    int-to-double v0, v7

    move-wide/from16 v24, v0

    mul-double v16, v16, v24

    add-double v16, v16, v20

    mul-double v16, v16, v18

    add-double v16, v16, v22

    move-wide/from16 v0, v16

    double-to-int v7, v0

    .line 262
    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 224
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 231
    :cond_7
    add-int/lit8 v5, v8, 0x1

    move v7, v5

    goto/16 :goto_6

    .line 236
    :cond_8
    add-int/lit8 v5, v6, 0x1

    goto/16 :goto_7

    .line 223
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 268
    :cond_a
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 269
    add-int/lit8 v14, v9, -0x1

    .line 270
    add-int/lit8 v15, v10, -0x1

    .line 278
    const/4 v3, 0x0

    move v8, v3

    :goto_8
    if-ge v8, v12, :cond_f

    .line 279
    const/4 v3, 0x0

    move v7, v3

    :goto_9
    if-ge v7, v11, :cond_e

    .line 280
    const/4 v3, 0x2

    aget-object v3, v13, v3

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    int-to-double v0, v7

    move-wide/from16 v16, v0

    mul-double v4, v4, v16

    const/4 v3, 0x2

    aget-object v3, v13, v3

    const/4 v6, 0x1

    aget-wide v16, v3, v6

    int-to-double v0, v8

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v4, v4, v16

    const/4 v3, 0x2

    aget-object v3, v13, v3

    const/4 v6, 0x2

    aget-wide v16, v3, v6

    add-double v4, v4, v16

    .line 281
    const/4 v3, 0x0

    aget-object v3, v13, v3

    const/4 v6, 0x0

    aget-wide v16, v3, v6

    int-to-double v0, v7

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const/4 v3, 0x0

    aget-object v3, v13, v3

    const/4 v6, 0x1

    aget-wide v18, v3, v6

    int-to-double v0, v8

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    const/4 v3, 0x0

    aget-object v3, v13, v3

    const/4 v6, 0x2

    aget-wide v18, v3, v6

    add-double v16, v16, v18

    div-double v16, v16, v4

    .line 282
    const/4 v3, 0x1

    aget-object v3, v13, v3

    const/4 v6, 0x0

    aget-wide v18, v3, v6

    int-to-double v0, v7

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const/4 v3, 0x1

    aget-object v3, v13, v3

    const/4 v6, 0x1

    aget-wide v20, v3, v6

    int-to-double v0, v8

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const/4 v3, 0x1

    aget-object v3, v13, v3

    const/4 v6, 0x2

    aget-wide v20, v3, v6

    add-double v18, v18, v20

    div-double v18, v18, v4

    .line 284
    const-wide/16 v4, 0x0

    cmpl-double v3, v16, v4

    if-ltz v3, :cond_b

    const-wide/16 v4, 0x0

    cmpl-double v3, v18, v4

    if-ltz v3, :cond_b

    int-to-double v4, v9

    cmpg-double v3, v16, v4

    if-gez v3, :cond_b

    int-to-double v4, v10

    cmpg-double v3, v18, v4

    if-gez v3, :cond_b

    .line 285
    move-wide/from16 v0, v16

    double-to-int v6, v0

    .line 286
    if-ne v6, v14, :cond_c

    move v5, v6

    .line 287
    :goto_a
    int-to-double v0, v6

    move-wide/from16 v20, v0

    sub-double v16, v16, v20

    .line 288
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v16

    .line 290
    move-wide/from16 v0, v18

    double-to-int v4, v0

    .line 291
    if-ne v4, v15, :cond_d

    move v3, v4

    .line 292
    :goto_b
    int-to-double v0, v4

    move-wide/from16 v22, v0

    sub-double v18, v18, v22

    .line 293
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v18

    .line 296
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v24

    .line 297
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    .line 298
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 299
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    .line 301
    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v20

    int-to-double v4, v4

    mul-double v4, v4, v16

    add-double v4, v4, v24

    mul-double v4, v4, v22

    int-to-double v0, v6

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    int-to-double v0, v3

    move-wide/from16 v22, v0

    mul-double v16, v16, v22

    add-double v16, v16, v20

    mul-double v16, v16, v18

    add-double v4, v4, v16

    double-to-int v3, v4

    .line 302
    invoke-virtual {v2, v8, v7, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 279
    :cond_b
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto/16 :goto_9

    .line 286
    :cond_c
    add-int/lit8 v3, v6, 0x1

    move v5, v3

    goto :goto_a

    .line 291
    :cond_d
    add-int/lit8 v3, v4, 0x1

    goto :goto_b

    .line 278
    :cond_e
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_8

    .line 310
    :cond_f
    return-object v2
.end method

.method public getNewHeight()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->d:I

    return v0
.end method

.method public getNewWidth()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->c:I

    return v0
.end method

.method public getSourceQuadrilateral()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isAutomaticSizeCalculaton()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->a:Z

    return v0
.end method

.method public isUseInterpolation()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->b:Z

    return v0
.end method

.method public setAutomaticSizeCalculaton(Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->a:Z

    .line 63
    if-eqz p1, :cond_0

    invoke-direct {p0}, LCatalano/Imaging/Tools/QuadrilateralTransformation;->a()V

    .line 64
    :cond_0
    return-void
.end method

.method public setNewHeight(I)V
    .locals 1

    .prologue
    .line 113
    iput p1, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->d:I

    .line 114
    iget-boolean v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->d:I

    .line 115
    :cond_0
    return-void
.end method

.method public setNewWidth(I)V
    .locals 1

    .prologue
    .line 96
    iput p1, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->c:I

    .line 97
    iget-boolean v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->c:I

    .line 98
    :cond_0
    return-void
.end method

.method public setSourceQuadrilateral(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->e:Ljava/util/ArrayList;

    .line 80
    iget-boolean v0, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, LCatalano/Imaging/Tools/QuadrilateralTransformation;->a()V

    .line 81
    :cond_0
    return-void
.end method

.method public setUseInterpolation(Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, LCatalano/Imaging/Tools/QuadrilateralTransformation;->b:Z

    .line 131
    return-void
.end method
