.class public LCatalano/Imaging/Tools/ColorDifference;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DeltaC([F[F)D
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 44
    aget v0, p1, v4

    float-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    aget v2, p1, v5

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 45
    aget v2, p0, v4

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aget v4, p0, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 47
    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static DeltaCMC([F[FFF)D
    .locals 18

    .prologue
    .line 94
    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x2

    aget v4, p0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 95
    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x2

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 97
    mul-double v2, v6, v6

    mul-double/2addr v2, v6

    mul-double/2addr v2, v6

    .line 98
    const-wide v4, 0x409db00000000000L    # 1900.0

    add-double/2addr v4, v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 99
    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget v3, p0, v3

    invoke-static {v2, v3}, LCatalano/Imaging/Tools/ColorDifference;->a(FF)D

    move-result-wide v2

    .line 102
    const-wide v4, 0x4064800000000000L    # 164.0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x4075900000000000L    # 345.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    .line 103
    :cond_0
    const-wide v4, 0x3fd70a3d70a3d70aL    # 0.36

    const-wide v12, 0x3fd999999999999aL    # 0.4

    const-wide v14, 0x4041800000000000L    # 35.0

    add-double/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    .line 108
    :goto_0
    const/4 v4, 0x0

    aget v4, p0, v4

    const/high16 v5, 0x41800000    # 16.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 109
    const-wide v4, 0x3fe05a1cac083127L    # 0.511

    .line 113
    :goto_1
    const-wide v12, 0x3fb05532617c1bdaL    # 0.0638

    mul-double/2addr v12, v6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v16, 0x3f8ad42c3c9eecc0L    # 0.0131

    mul-double v16, v16, v6

    add-double v14, v14, v16

    div-double/2addr v12, v14

    const-wide v14, 0x3fe46a7ef9db22d1L    # 0.638

    add-double/2addr v12, v14

    .line 114
    mul-double/2addr v2, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v14

    sub-double/2addr v2, v10

    mul-double/2addr v2, v12

    .line 115
    const/4 v10, 0x1

    aget v10, p1, v10

    const/4 v11, 0x1

    aget v11, p0, v11

    sub-float/2addr v10, v11

    float-to-double v10, v10

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const/4 v14, 0x2

    aget v14, p1, v14

    const/4 v15, 0x2

    aget v15, p0, v15

    sub-float/2addr v14, v15

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v10, v14

    sub-double v14, v8, v6

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 117
    const/4 v14, 0x0

    aget v14, p1, v14

    const/4 v15, 0x0

    aget v15, p0, v15

    sub-float/2addr v14, v15

    div-float v14, v14, p2

    float-to-double v14, v14

    mul-double/2addr v4, v14

    .line 118
    sub-double v6, v8, v6

    move/from16 v0, p2

    float-to-double v8, v0

    div-double/2addr v6, v8

    mul-double/2addr v6, v12

    .line 119
    div-double v2, v10, v2

    .line 120
    mul-double/2addr v4, v4

    mul-double/2addr v6, v6

    add-double/2addr v4, v6

    mul-double/2addr v2, v2

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2

    .line 105
    :cond_1
    const-wide v4, 0x3fe1eb851eb851ecL    # 0.56

    const-wide v12, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v14, 0x4065000000000000L    # 168.0

    add-double/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    goto/16 :goto_0

    .line 111
    :cond_2
    const-wide v4, 0x3fa4faacd9e83e42L    # 0.040975

    const/4 v12, 0x0

    aget v12, p0, v12

    float-to-double v12, v12

    mul-double/2addr v4, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide v14, 0x3f9212d77318fc50L    # 0.01765

    const/16 v16, 0x0

    aget v16, p0, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    div-double/2addr v4, v12

    goto/16 :goto_1
.end method

.method public static DeltaE([F[F)D
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 75
    aget v0, p0, v1

    aget v1, p1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 76
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    aget v2, p0, v3

    aget v3, p1, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    .line 77
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    aget v2, p0, v6

    aget v3, p1, v6

    sub-float/2addr v2, v3

    float-to-double v2, v2

    .line 78
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 80
    return-wide v0
.end method

.method public static DeltaH([F[F)D
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 58
    invoke-static {p0, p1}, LCatalano/Imaging/Tools/ColorDifference;->DeltaC([F[F)D

    move-result-wide v0

    .line 60
    aget v2, p1, v3

    aget v3, p0, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 61
    aget v4, p1, v5

    aget v5, p0, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 63
    add-double/2addr v2, v4

    mul-double/2addr v0, v0

    sub-double v0, v2, v0

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(FF)D
    .locals 6

    .prologue
    const-wide v2, 0x4066800000000000L    # 180.0

    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 126
    cmpl-float v4, p0, v5

    if-ltz v4, :cond_0

    cmpl-float v4, p1, v5

    if-nez v4, :cond_0

    .line 137
    :goto_0
    return-wide v0

    .line 127
    :cond_0
    cmpg-float v4, p0, v5

    if-gez v4, :cond_1

    cmpl-float v4, p1, v5

    if-nez v4, :cond_1

    move-wide v0, v2

    goto :goto_0

    .line 128
    :cond_1
    cmpl-float v4, p0, v5

    if-nez v4, :cond_2

    cmpl-float v4, p1, v5

    if-lez v4, :cond_2

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    .line 129
    :cond_2
    cmpl-float v4, p0, v5

    if-nez v4, :cond_3

    cmpg-float v4, p1, v5

    if-gez v4, :cond_3

    const-wide v0, 0x4070e00000000000L    # 270.0

    goto :goto_0

    .line 132
    :cond_3
    cmpl-float v4, p0, v5

    if-lez v4, :cond_4

    cmpl-float v4, p1, v5

    if-lez v4, :cond_4

    .line 133
    :cond_4
    cmpg-float v4, p0, v5

    if-gez v4, :cond_5

    move-wide v0, v2

    .line 134
    :cond_5
    cmpl-float v2, p0, v5

    if-lez v2, :cond_6

    cmpg-float v2, p1, v5

    if-gez v2, :cond_6

    const-wide v0, 0x4076800000000000L    # 360.0

    .line 136
    :cond_6
    float-to-double v2, p1

    float-to-double v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 137
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0
.end method
