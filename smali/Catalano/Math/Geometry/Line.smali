.class public LCatalano/Math/Geometry/Line;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, LCatalano/Math/Geometry/Line;->a:F

    .line 55
    iput p2, p0, LCatalano/Math/Geometry/Line;->b:F

    .line 56
    return-void
.end method

.method private constructor <init>(FFZ)V
    .locals 5

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const v0, 0x3c8efa35

    mul-float/2addr v0, p2

    .line 62
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 63
    new-instance v2, LCatalano/Core/FloatPoint;

    mul-float v3, p1, v0

    mul-float v4, p1, v1

    invoke-direct {v2, v3, v4}, LCatalano/Core/FloatPoint;-><init>(FF)V

    .line 66
    neg-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Geometry/Line;->a:F

    .line 68
    iget v0, p0, LCatalano/Math/Geometry/Line;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget v0, v2, LCatalano/Core/FloatPoint;->y:F

    iget v1, p0, LCatalano/Math/Geometry/Line;->a:F

    iget v2, v2, LCatalano/Core/FloatPoint;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Geometry/Line;->b:F

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, LCatalano/Math/Geometry/Line;->b:F

    goto :goto_0
.end method

.method private constructor <init>(LCatalano/Core/IntPoint;F)V
    .locals 4

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const v0, 0x3c8efa35

    mul-float/2addr v0, p2

    .line 81
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double v0, v2, v0

    double-to-float v0, v0

    iput v0, p0, LCatalano/Math/Geometry/Line;->a:F

    .line 83
    iget v0, p0, LCatalano/Math/Geometry/Line;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget v0, p1, LCatalano/Core/IntPoint;->y:I

    int-to-float v0, v0

    iget v1, p0, LCatalano/Math/Geometry/Line;->a:F

    iget v2, p1, LCatalano/Core/IntPoint;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Geometry/Line;->b:F

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    int-to-float v0, v0

    iput v0, p0, LCatalano/Math/Geometry/Line;->b:F

    goto :goto_0
.end method

.method public constructor <init>(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1, p2}, LCatalano/Core/IntPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Start point of the line cannot be the same as its end point."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :cond_0
    iget v0, p2, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 47
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 49
    :cond_1
    iget v1, p2, LCatalano/Core/IntPoint;->y:I

    iget v2, p1, LCatalano/Core/IntPoint;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v0, v1, v0

    iput v0, p0, LCatalano/Math/Geometry/Line;->a:F

    .line 50
    iget v0, p0, LCatalano/Math/Geometry/Line;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    int-to-float v0, v0

    :goto_0
    iput v0, p0, LCatalano/Math/Geometry/Line;->b:F

    .line 51
    return-void

    .line 50
    :cond_2
    iget v0, p1, LCatalano/Core/IntPoint;->y:I

    int-to-float v0, v0

    iget v1, p0, LCatalano/Math/Geometry/Line;->a:F

    iget v2, p1, LCatalano/Core/IntPoint;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public static FromPointTheta(LCatalano/Core/IntPoint;F)LCatalano/Math/Geometry/Line;
    .locals 1

    .prologue
    .line 122
    new-instance v0, LCatalano/Math/Geometry/Line;

    invoke-direct {v0, p0, p1}, LCatalano/Math/Geometry/Line;-><init>(LCatalano/Core/IntPoint;F)V

    return-object v0
.end method

.method public static FromPoints(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)LCatalano/Math/Geometry/Line;
    .locals 1

    .prologue
    .line 110
    new-instance v0, LCatalano/Math/Geometry/Line;

    invoke-direct {v0, p0, p1}, LCatalano/Math/Geometry/Line;-><init>(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)V

    return-object v0
.end method

.method public static FromRTheta(FF)LCatalano/Math/Geometry/Line;
    .locals 2

    .prologue
    .line 118
    new-instance v0, LCatalano/Math/Geometry/Line;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LCatalano/Math/Geometry/Line;-><init>(FFZ)V

    return-object v0
.end method

.method public static FromSlopeIntercept(FF)LCatalano/Math/Geometry/Line;
    .locals 1

    .prologue
    .line 114
    new-instance v0, LCatalano/Math/Geometry/Line;

    invoke-direct {v0, p0, p1}, LCatalano/Math/Geometry/Line;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public DistanceToPoint(LCatalano/Core/IntPoint;)F
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, LCatalano/Math/Geometry/Line;->isVertical()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget v0, p0, LCatalano/Math/Geometry/Line;->a:F

    iget v1, p0, LCatalano/Math/Geometry/Line;->a:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 167
    iget v1, p0, LCatalano/Math/Geometry/Line;->a:F

    iget v2, p1, LCatalano/Core/IntPoint;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Geometry/Line;->b:F

    add-float/2addr v1, v2

    iget v2, p1, LCatalano/Core/IntPoint;->y:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 174
    :goto_0
    return v0

    .line 171
    :cond_0
    iget v0, p0, LCatalano/Math/Geometry/Line;->b:F

    iget v1, p1, LCatalano/Core/IntPoint;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0
.end method

.method public GetAngleBetweenLines(LCatalano/Math/Geometry/Line;)F
    .locals 8

    .prologue
    const/4 v1, 0x0

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 126
    iget v2, p1, LCatalano/Math/Geometry/Line;->a:F

    .line 128
    invoke-virtual {p0}, LCatalano/Math/Geometry/Line;->isVertical()Z

    move-result v0

    .line 129
    invoke-virtual {p1}, LCatalano/Math/Geometry/Line;->isVertical()Z

    move-result v3

    .line 132
    iget v4, p0, LCatalano/Math/Geometry/Line;->a:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :cond_0
    move v0, v1

    .line 158
    :cond_1
    :goto_0
    return v0

    .line 137
    :cond_2
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    .line 138
    iget v0, p0, LCatalano/Math/Geometry/Line;->a:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    iget v0, p0, LCatalano/Math/Geometry/Line;->a:F

    sub-float v0, v2, v0

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, LCatalano/Math/Geometry/Line;->a:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    div-float/2addr v0, v2

    .line 139
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 153
    :goto_2
    const v2, 0x42652ee1

    mul-float/2addr v0, v2

    .line 155
    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 156
    neg-float v0, v0

    goto :goto_0

    .line 138
    :cond_3
    iget v0, p0, LCatalano/Math/Geometry/Line;->a:F

    sub-float/2addr v0, v2

    goto :goto_1

    .line 144
    :cond_4
    if-eqz v0, :cond_5

    .line 145
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-double v2, v0

    mul-double/2addr v2, v4

    sub-double v2, v6, v2

    double-to-float v0, v2

    goto :goto_2

    .line 148
    :cond_5
    iget v0, p0, LCatalano/Math/Geometry/Line;->a:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    iget v0, p0, LCatalano/Math/Geometry/Line;->a:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-double v4, v0

    mul-double/2addr v2, v4

    sub-double v2, v6, v2

    double-to-float v0, v2

    goto :goto_2
.end method

.method public getIntercept()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, LCatalano/Math/Geometry/Line;->b:F

    return v0
.end method

.method public getSlope()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, LCatalano/Math/Geometry/Line;->a:F

    return v0
.end method

.method public isHorizontal()Z
    .locals 2

    .prologue
    .line 98
    iget v0, p0, LCatalano/Math/Geometry/Line;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVertical()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, LCatalano/Math/Geometry/Line;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method
