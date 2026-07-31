.class public LCatalano/Math/Geometry/GeometryTools;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAngleBetweenVectors(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)F
    .locals 6

    .prologue
    .line 35
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p0, LCatalano/Core/IntPoint;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 36
    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    iget v2, p0, LCatalano/Core/IntPoint;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 38
    iget v2, p2, LCatalano/Core/IntPoint;->x:I

    iget v3, p0, LCatalano/Core/IntPoint;->x:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 39
    iget v3, p2, LCatalano/Core/IntPoint;->y:I

    iget v4, p0, LCatalano/Core/IntPoint;->y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 41
    mul-float v4, v0, v2

    mul-float v5, v1, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
