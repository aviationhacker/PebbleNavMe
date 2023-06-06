.class public final LCatalano/Math/Geometry/PointsCloud;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Math/Geometry/PointsCloud$FurthestPoint;
    }
.end annotation


# static fields
.field private static a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    const v0, 0x3dcccccd    # 0.1f

    sput v0, LCatalano/Math/Geometry/PointsCloud;->a:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FindQuadrilateralCorners(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 15
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
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 223
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-static {p0}, LCatalano/Math/Geometry/PointsCloud;->GetBoundingRectangle(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 228
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 229
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Core/IntPoint;

    .line 231
    invoke-static {v1, v0}, LCatalano/Core/IntPoint;->Subtract(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)LCatalano/Core/IntPoint;

    move-result-object v1

    .line 233
    invoke-virtual {v1, v12}, LCatalano/Core/IntPoint;->Divide(I)V

    .line 234
    invoke-virtual {v0, v1}, LCatalano/Core/IntPoint;->Add(LCatalano/Core/IntPoint;)V

    .line 237
    sget v2, LCatalano/Math/Geometry/PointsCloud;->a:F

    iget v7, v1, LCatalano/Core/IntPoint;->x:I

    iget v1, v1, LCatalano/Core/IntPoint;->y:I

    add-int/2addr v1, v7

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v7, v1, v2

    .line 240
    invoke-static {p0, v0}, LCatalano/Math/Geometry/PointsCloud;->GetFurthestPoint(Ljava/util/ArrayList;LCatalano/Core/IntPoint;)LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    move-result-object v0

    invoke-virtual {v0}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->toIntPoint()LCatalano/Core/IntPoint;

    move-result-object v8

    .line 242
    invoke-static {p0, v8}, LCatalano/Math/Geometry/PointsCloud;->GetFurthestPoint(Ljava/util/ArrayList;LCatalano/Core/IntPoint;)LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    move-result-object v0

    invoke-virtual {v0}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->toIntPoint()LCatalano/Core/IntPoint;

    move-result-object v9

    .line 244
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-static {p0, v8, v9}, LCatalano/Math/Geometry/PointsCloud;->GetFurthestPointsFromLine(Ljava/util/ArrayList;LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)[LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    move-result-object v2

    .line 253
    aget-object v0, v2, v5

    invoke-virtual {v0}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->toIntPoint()LCatalano/Core/IntPoint;

    move-result-object v0

    .line 254
    aget-object v1, v2, v5

    iget v10, v1, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    .line 256
    aget-object v1, v2, v4

    invoke-virtual {v1}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->toIntPoint()LCatalano/Core/IntPoint;

    move-result-object v1

    .line 257
    aget-object v2, v2, v4

    iget v2, v2, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    .line 272
    cmpl-float v11, v10, v7

    if-ltz v11, :cond_0

    cmpl-float v11, v2, v7

    if-gez v11, :cond_1

    :cond_0
    cmpg-float v11, v10, v7

    if-gez v11, :cond_6

    const/4 v11, 0x0

    cmpl-float v11, v10, v11

    if-eqz v11, :cond_6

    cmpg-float v11, v2, v7

    if-gez v11, :cond_6

    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-eqz v11, :cond_6

    .line 281
    :cond_1
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 283
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_2
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 287
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_3
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v4

    :goto_1
    if-ge v1, v2, :cond_d

    .line 381
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v7, v0, LCatalano/Core/IntPoint;->x:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    if-lt v7, v0, :cond_4

    .line 382
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v7, v0, LCatalano/Core/IntPoint;->x:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    if-ne v7, v0, :cond_5

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v7, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    if-ge v7, v0, :cond_5

    .line 384
    :cond_4
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 385
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-virtual {v6, v5, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 295
    :cond_6
    cmpl-float v2, v10, v2

    if-lez v2, :cond_7

    .line 298
    :goto_2
    invoke-static {p0, v8, v0}, LCatalano/Math/Geometry/PointsCloud;->GetFurthestPointsFromLine(Ljava/util/ArrayList;LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)[LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    move-result-object v10

    .line 300
    aget-object v1, v10, v5

    invoke-virtual {v1}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->toIntPoint()LCatalano/Core/IntPoint;

    move-result-object v2

    .line 301
    aget-object v1, v10, v5

    iget v11, v1, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    .line 302
    aget-object v1, v10, v4

    invoke-virtual {v1}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->toIntPoint()LCatalano/Core/IntPoint;

    move-result-object v1

    .line 303
    aget-object v10, v10, v4

    iget v10, v10, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    .line 307
    cmpl-float v11, v11, v7

    if-ltz v11, :cond_8

    cmpl-float v10, v10, v7

    if-ltz v10, :cond_8

    .line 309
    invoke-virtual {v1, v9}, LCatalano/Core/IntPoint;->DistanceTo(LCatalano/Core/IntPoint;)F

    move-result v10

    invoke-virtual {v2, v9}, LCatalano/Core/IntPoint;->DistanceTo(LCatalano/Core/IntPoint;)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_19

    :goto_3
    move-object v2, v1

    move v1, v4

    .line 332
    :goto_4
    if-nez v1, :cond_9

    .line 336
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    .line 295
    goto :goto_2

    .line 316
    :cond_8
    invoke-static {p0, v9, v0}, LCatalano/Math/Geometry/PointsCloud;->GetFurthestPointsFromLine(Ljava/util/ArrayList;LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)[LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    move-result-object v10

    .line 318
    aget-object v1, v10, v5

    invoke-virtual {v1}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->toIntPoint()LCatalano/Core/IntPoint;

    move-result-object v2

    .line 319
    aget-object v1, v10, v5

    iget v11, v1, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    .line 320
    aget-object v1, v10, v4

    invoke-virtual {v1}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->toIntPoint()LCatalano/Core/IntPoint;

    move-result-object v1

    .line 321
    aget-object v10, v10, v4

    iget v10, v10, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    .line 323
    cmpl-float v11, v11, v7

    if-ltz v11, :cond_18

    cmpl-float v10, v10, v7

    if-ltz v10, :cond_18

    .line 325
    invoke-virtual {v1, v8}, LCatalano/Core/IntPoint;->DistanceTo(LCatalano/Core/IntPoint;)F

    move-result v10

    invoke-virtual {v2, v8}, LCatalano/Core/IntPoint;->DistanceTo(LCatalano/Core/IntPoint;)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_17

    :goto_5
    move-object v2, v1

    move v1, v4

    .line 328
    goto :goto_4

    .line 340
    :cond_9
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-static {p0, v8, v2}, LCatalano/Math/Geometry/PointsCloud;->GetFurthestPointsFromLine(Ljava/util/ArrayList;LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)[LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    move-result-object v10

    .line 347
    aget-object v0, v10, v5

    invoke-virtual {v0}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->toIntPoint()LCatalano/Core/IntPoint;

    move-result-object v0

    .line 348
    aget-object v1, v10, v5

    iget v11, v1, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    .line 349
    aget-object v1, v10, v4

    invoke-virtual {v1}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->toIntPoint()LCatalano/Core/IntPoint;

    move-result-object v1

    .line 350
    aget-object v10, v10, v4

    iget v10, v10, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    .line 352
    cmpl-float v10, v10, v7

    if-ltz v10, :cond_b

    cmpl-float v7, v11, v7

    if-ltz v7, :cond_b

    .line 354
    invoke-virtual {v0, v9}, LCatalano/Core/IntPoint;->DistanceTo(LCatalano/Core/IntPoint;)F

    move-result v7

    invoke-virtual {v1, v9}, LCatalano/Core/IntPoint;->DistanceTo(LCatalano/Core/IntPoint;)F

    move-result v10

    cmpl-float v7, v7, v10

    if-lez v7, :cond_c

    .line 373
    :cond_a
    :goto_6
    if-eq v0, v8, :cond_3

    if-eq v0, v9, :cond_3

    if-eq v0, v2, :cond_3

    .line 374
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 359
    :cond_b
    invoke-static {p0, v9, v2}, LCatalano/Math/Geometry/PointsCloud;->GetFurthestPointsFromLine(Ljava/util/ArrayList;LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)[LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    move-result-object v7

    .line 361
    aget-object v0, v7, v5

    invoke-virtual {v0}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->toIntPoint()LCatalano/Core/IntPoint;

    move-result-object v0

    .line 362
    aget-object v1, v7, v5

    iget v1, v1, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    .line 363
    aget-object v1, v7, v4

    invoke-virtual {v1}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->toIntPoint()LCatalano/Core/IntPoint;

    move-result-object v1

    .line 364
    aget-object v7, v7, v4

    iget v7, v7, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    .line 366
    invoke-virtual {v0, v8}, LCatalano/Core/IntPoint;->DistanceTo(LCatalano/Core/IntPoint;)F

    move-result v7

    invoke-virtual {v1, v8}, LCatalano/Core/IntPoint;->DistanceTo(LCatalano/Core/IntPoint;)F

    move-result v10

    cmpl-float v7, v7, v10

    if-lez v7, :cond_c

    if-eq v0, v9, :cond_c

    if-ne v0, v2, :cond_a

    :cond_c
    move-object v0, v1

    goto :goto_6

    .line 392
    :cond_d
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v1, v0, LCatalano/Core/IntPoint;->x:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    if-eq v1, v0, :cond_f

    .line 393
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v1, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    sub-int v0, v1, v0

    int-to-float v1, v0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v2, v0, LCatalano/Core/IntPoint;->x:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    div-float v0, v1, v0

    move v1, v0

    .line 396
    :goto_7
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v2, v0, LCatalano/Core/IntPoint;->x:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    if-eq v2, v0, :cond_11

    .line 397
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v2, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    sub-int v0, v2, v0

    int-to-float v2, v0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v7, v0, LCatalano/Core/IntPoint;->x:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    sub-int v0, v7, v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 400
    :goto_8
    cmpg-float v0, v2, v1

    if-gez v0, :cond_16

    .line 402
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 403
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-virtual {v6, v12, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 411
    :goto_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x4

    if-ne v0, v7, :cond_e

    .line 413
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v7, v0, LCatalano/Core/IntPoint;->x:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    if-eq v7, v0, :cond_13

    .line 414
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v3, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    sub-int v0, v3, v0

    int-to-float v3, v0

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v7, v0, LCatalano/Core/IntPoint;->x:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    sub-int v0, v7, v0

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 417
    :goto_a
    cmpg-float v3, v0, v2

    if-gez v3, :cond_15

    .line 419
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 420
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-virtual {v6, v13, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 427
    :goto_b
    cmpg-float v0, v2, v1

    if-gez v0, :cond_e

    .line 429
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 430
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v12, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-virtual {v6, v13, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_e
    return-object v6

    .line 394
    :cond_f
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v1, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    if-le v1, v0, :cond_10

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    move v1, v0

    goto/16 :goto_7

    :cond_10
    move v1, v3

    goto/16 :goto_7

    .line 398
    :cond_11
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v2, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    if-le v2, v0, :cond_12

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    goto/16 :goto_8

    :cond_12
    move v2, v3

    goto/16 :goto_8

    .line 415
    :cond_13
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v7, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    if-le v7, v0, :cond_14

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_a

    :cond_14
    move v0, v3

    goto :goto_a

    :cond_15
    move v2, v0

    goto :goto_b

    :cond_16
    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_9

    :cond_17
    move-object v1, v2

    goto/16 :goto_5

    :cond_18
    move v1, v5

    goto/16 :goto_4

    :cond_19
    move-object v1, v2

    goto/16 :goto_3
.end method

.method public static GetBoundingRectangle(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
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
    const v1, 0x7fffffff

    const/high16 v0, -0x80000000

    .line 39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    move v3, v0

    move v4, v1

    move v1, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 48
    iget v5, v0, LCatalano/Core/IntPoint;->x:I

    .line 49
    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    .line 52
    if-ge v5, v4, :cond_0

    move v4, v5

    .line 54
    :cond_0
    if-le v5, v3, :cond_1

    move v3, v5

    .line 58
    :cond_1
    if-ge v0, v2, :cond_2

    move v2, v0

    .line 60
    :cond_2
    if-le v0, v1, :cond_5

    :goto_1
    move v1, v0

    .line 62
    goto :goto_0

    .line 64
    :cond_3
    if-le v4, v3, :cond_4

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of points can not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_4
    new-instance v0, LCatalano/Core/IntPoint;

    invoke-direct {v0, v4, v2}, LCatalano/Core/IntPoint;-><init>(II)V

    .line 68
    new-instance v2, LCatalano/Core/IntPoint;

    invoke-direct {v2, v3, v1}, LCatalano/Core/IntPoint;-><init>(II)V

    .line 70
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-object v6

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static GetCenterOfGravity(Ljava/util/ArrayList;)LCatalano/Core/FloatPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)",
            "LCatalano/Core/FloatPoint;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    move v3, v1

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 82
    iget v5, v0, LCatalano/Core/IntPoint;->x:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 83
    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 84
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    .line 85
    goto :goto_0

    .line 87
    :cond_0
    int-to-float v0, v3

    div-float v0, v2, v0

    .line 88
    int-to-float v2, v3

    div-float/2addr v1, v2

    .line 90
    new-instance v2, LCatalano/Core/FloatPoint;

    invoke-direct {v2, v0, v1}, LCatalano/Core/FloatPoint;-><init>(FF)V

    return-object v2
.end method

.method public static GetFurthestPoint(Ljava/util/ArrayList;LCatalano/Core/IntPoint;)LCatalano/Math/Geometry/PointsCloud$FurthestPoint;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;",
            "LCatalano/Core/IntPoint;",
            ")",
            "LCatalano/Math/Geometry/PointsCloud$FurthestPoint;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v3, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    invoke-direct {v3}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;-><init>()V

    .line 95
    const/high16 v0, -0x40800000    # -1.0f

    .line 97
    iget v4, p1, LCatalano/Core/IntPoint;->x:I

    .line 98
    iget v5, p1, LCatalano/Core/IntPoint;->y:I

    .line 100
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 102
    iget v2, v0, LCatalano/Core/IntPoint;->x:I

    sub-int v2, v4, v2

    .line 103
    iget v7, v0, LCatalano/Core/IntPoint;->y:I

    sub-int v7, v5, v7

    .line 106
    mul-int/2addr v2, v2

    mul-int/2addr v7, v7

    add-int/2addr v2, v7

    int-to-float v2, v2

    .line 108
    cmpl-float v7, v2, v1

    if-lez v7, :cond_1

    .line 111
    iget v1, v0, LCatalano/Core/IntPoint;->x:I

    iput v1, v3, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->x:I

    .line 112
    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    iput v0, v3, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->y:I

    .line 113
    iput v2, v3, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    move v0, v2

    :goto_1
    move v1, v0

    .line 115
    goto :goto_0

    .line 117
    :cond_0
    return-object v3

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static GetFurthestPointFromLine(Ljava/util/ArrayList;LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)LCatalano/Core/IntPoint;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;",
            "LCatalano/Core/IntPoint;",
            "LCatalano/Core/IntPoint;",
            ")",
            "LCatalano/Core/IntPoint;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 175
    .line 178
    iget v0, p2, LCatalano/Core/IntPoint;->x:I

    iget v2, p1, LCatalano/Core/IntPoint;->x:I

    if-eq v0, v2, :cond_0

    .line 180
    iget v0, p2, LCatalano/Core/IntPoint;->y:I

    iget v2, p1, LCatalano/Core/IntPoint;->y:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p2, LCatalano/Core/IntPoint;->x:I

    iget v3, p1, LCatalano/Core/IntPoint;->x:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v3, v0, v2

    .line 181
    iget v0, p1, LCatalano/Core/IntPoint;->y:I

    int-to-float v0, v0

    iget v2, p1, LCatalano/Core/IntPoint;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float v4, v0, v2

    .line 183
    mul-float v0, v3, v3

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 186
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 187
    iget v2, v0, LCatalano/Core/IntPoint;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    iget v7, v0, LCatalano/Core/IntPoint;->y:I

    int-to-float v7, v7

    sub-float/2addr v2, v7

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 189
    cmpl-float v7, v2, v1

    if-lez v7, :cond_3

    move-object p1, v0

    move v0, v2

    :goto_1
    move v1, v0

    .line 193
    goto :goto_0

    .line 196
    :cond_0
    iget v2, p1, LCatalano/Core/IntPoint;->x:I

    .line 199
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 200
    iget v4, v0, LCatalano/Core/IntPoint;->x:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    .line 202
    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    move-object p1, v0

    .line 204
    goto :goto_2

    .line 208
    :cond_2
    return-object p1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static GetFurthestPointsFromLine(Ljava/util/ArrayList;LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)[LCatalano/Math/Geometry/PointsCloud$FurthestPoint;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;",
            "LCatalano/Core/IntPoint;",
            "LCatalano/Core/IntPoint;",
            ")[",
            "LCatalano/Math/Geometry/PointsCloud$FurthestPoint;"
        }
    .end annotation

    .prologue
    .line 122
    const/4 v2, 0x2

    new-array v10, v2, [LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    .line 123
    const/4 v2, 0x0

    new-instance v3, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;-><init>(LCatalano/Core/IntPoint;)V

    aput-object v3, v10, v2

    .line 124
    const/4 v2, 0x1

    new-instance v3, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;-><init>(LCatalano/Core/IntPoint;)V

    aput-object v3, v10, v2

    .line 126
    const-wide/16 v4, 0x0

    .line 127
    const-wide/16 v2, 0x0

    .line 129
    move-object/from16 v0, p2

    iget v6, v0, LCatalano/Core/IntPoint;->x:I

    move-object/from16 v0, p1

    iget v7, v0, LCatalano/Core/IntPoint;->x:I

    if-eq v6, v7, :cond_1

    .line 131
    move-object/from16 v0, p2

    iget v6, v0, LCatalano/Core/IntPoint;->y:I

    move-object/from16 v0, p1

    iget v7, v0, LCatalano/Core/IntPoint;->y:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p2

    iget v7, v0, LCatalano/Core/IntPoint;->x:I

    move-object/from16 v0, p1

    iget v8, v0, LCatalano/Core/IntPoint;->x:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float v11, v6, v7

    .line 132
    move-object/from16 v0, p1

    iget v6, v0, LCatalano/Core/IntPoint;->y:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    iget v7, v0, LCatalano/Core/IntPoint;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, v11

    sub-float v12, v6, v7

    .line 134
    mul-float v6, v11, v11

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v13, v6

    .line 137
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-wide v6, v4

    move-wide v4, v2

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    .line 138
    float-to-double v8, v11

    iget v3, v2, LCatalano/Core/IntPoint;->x:I

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v8, v8, v16

    float-to-double v0, v12

    move-wide/from16 v16, v0

    add-double v8, v8, v16

    iget v3, v2, LCatalano/Core/IntPoint;->y:I

    int-to-double v0, v3

    move-wide/from16 v16, v0

    sub-double v8, v8, v16

    float-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v8, v8, v16

    .line 140
    cmpl-double v3, v8, v6

    if-lez v3, :cond_0

    .line 142
    const/4 v3, 0x0

    new-instance v6, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    double-to-float v7, v8

    invoke-direct {v6, v2, v7}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;-><init>(LCatalano/Core/IntPoint;F)V

    aput-object v6, v10, v3

    move-wide v6, v8

    .line 144
    :cond_0
    cmpg-double v3, v8, v4

    if-gez v3, :cond_5

    .line 146
    const/4 v3, 0x1

    new-instance v4, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    double-to-float v5, v8

    invoke-direct {v4, v2, v5}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;-><init>(LCatalano/Core/IntPoint;F)V

    aput-object v4, v10, v3

    move-wide v2, v8

    :goto_1
    move-wide v4, v2

    .line 148
    goto :goto_0

    .line 151
    :cond_1
    move-object/from16 v0, p1

    iget v8, v0, LCatalano/Core/IntPoint;->x:I

    .line 154
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v6, v4

    move-wide v4, v2

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    .line 155
    iget v3, v2, LCatalano/Core/IntPoint;->x:I

    sub-int v3, v8, v3

    int-to-float v3, v3

    .line 157
    float-to-double v12, v3

    cmpl-double v11, v12, v6

    if-lez v11, :cond_2

    .line 158
    float-to-double v6, v3

    .line 159
    const/4 v11, 0x0

    new-instance v12, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    invoke-direct {v12, v2, v3}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;-><init>(LCatalano/Core/IntPoint;F)V

    aput-object v12, v10, v11

    .line 161
    :cond_2
    float-to-double v12, v3

    cmpg-double v11, v12, v4

    if-gez v11, :cond_3

    .line 162
    float-to-double v4, v3

    .line 163
    const/4 v11, 0x1

    new-instance v12, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;

    invoke-direct {v12, v2, v3}, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;-><init>(LCatalano/Core/IntPoint;F)V

    aput-object v12, v10, v11

    :cond_3
    move-wide v2, v4

    move-wide v4, v2

    .line 165
    goto :goto_2

    .line 169
    :cond_4
    const/4 v2, 0x1

    aget-object v2, v10, v2

    neg-double v4, v4

    double-to-float v3, v4

    iput v3, v2, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    .line 171
    return-object v10

    :cond_5
    move-wide v2, v4

    goto :goto_1
.end method

.method public static Shift(Ljava/util/ArrayList;LCatalano/Core/IntPoint;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;",
            "LCatalano/Core/IntPoint;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 26
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 27
    invoke-virtual {v0, p1}, LCatalano/Core/IntPoint;->Add(LCatalano/Core/IntPoint;)V

    .line 28
    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public static getQuadrilateralRelativeDistortionLimit()F
    .locals 1

    .prologue
    .line 214
    sget v0, LCatalano/Math/Geometry/PointsCloud;->a:F

    return v0
.end method

.method public static setQuadrilateralRelativeDistortionLimit(F)V
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, LCatalano/Math/Geometry/PointsCloud;->a:F

    .line 219
    return-void
.end method
