.class public LCatalano/Math/Vector3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, LCatalano/Math/Vector3;->z:F

    iput p1, p0, LCatalano/Math/Vector3;->y:F

    iput p1, p0, LCatalano/Math/Vector3;->x:F

    .line 75
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, LCatalano/Math/Vector3;->x:F

    .line 65
    iput p2, p0, LCatalano/Math/Vector3;->y:F

    .line 66
    iput p3, p0, LCatalano/Math/Vector3;->z:F

    .line 67
    return-void
.end method

.method public static Add(LCatalano/Math/Vector3;F)LCatalano/Math/Vector3;
    .locals 4

    .prologue
    .line 150
    new-instance v0, LCatalano/Math/Vector3;

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    add-float/2addr v1, p1

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    add-float/2addr v2, p1

    iget v3, p0, LCatalano/Math/Vector3;->z:F

    add-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, LCatalano/Math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static Add(LCatalano/Math/Vector3;LCatalano/Math/Vector3;)LCatalano/Math/Vector3;
    .locals 5

    .prologue
    .line 140
    new-instance v0, LCatalano/Math/Vector3;

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    iget v2, p1, LCatalano/Math/Vector3;->x:F

    add-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    iget v3, p1, LCatalano/Math/Vector3;->y:F

    add-float/2addr v2, v3

    iget v3, p0, LCatalano/Math/Vector3;->z:F

    iget v4, p1, LCatalano/Math/Vector3;->z:F

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, LCatalano/Math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static Cross(LCatalano/Math/Vector3;LCatalano/Math/Vector3;)LCatalano/Math/Vector3;
    .locals 6

    .prologue
    .line 255
    new-instance v0, LCatalano/Math/Vector3;

    iget v1, p0, LCatalano/Math/Vector3;->y:F

    iget v2, p1, LCatalano/Math/Vector3;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Vector3;->z:F

    iget v3, p1, LCatalano/Math/Vector3;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Vector3;->z:F

    iget v3, p1, LCatalano/Math/Vector3;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, LCatalano/Math/Vector3;->x:F

    iget v4, p1, LCatalano/Math/Vector3;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, LCatalano/Math/Vector3;->x:F

    iget v4, p1, LCatalano/Math/Vector3;->y:F

    mul-float/2addr v3, v4

    iget v4, p0, LCatalano/Math/Vector3;->y:F

    iget v5, p1, LCatalano/Math/Vector3;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, LCatalano/Math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static Divide(LCatalano/Math/Vector3;F)LCatalano/Math/Vector3;
    .locals 4

    .prologue
    .line 210
    new-instance v0, LCatalano/Math/Vector3;

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    div-float/2addr v1, p1

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    div-float/2addr v2, p1

    iget v3, p0, LCatalano/Math/Vector3;->z:F

    div-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, LCatalano/Math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static Divide(LCatalano/Math/Vector3;LCatalano/Math/Vector3;)LCatalano/Math/Vector3;
    .locals 5

    .prologue
    .line 200
    new-instance v0, LCatalano/Math/Vector3;

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    iget v2, p1, LCatalano/Math/Vector3;->x:F

    div-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    iget v3, p1, LCatalano/Math/Vector3;->y:F

    div-float/2addr v2, v3

    iget v3, p0, LCatalano/Math/Vector3;->z:F

    iget v4, p1, LCatalano/Math/Vector3;->z:F

    div-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, LCatalano/Math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static Dot(LCatalano/Math/Vector3;LCatalano/Math/Vector3;)F
    .locals 3

    .prologue
    .line 268
    iget v0, p0, LCatalano/Math/Vector3;->x:F

    iget v1, p1, LCatalano/Math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector3;->y:F

    iget v2, p1, LCatalano/Math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector3;->z:F

    iget v2, p1, LCatalano/Math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static Multiply(LCatalano/Math/Vector3;F)LCatalano/Math/Vector3;
    .locals 4

    .prologue
    .line 190
    new-instance v0, LCatalano/Math/Vector3;

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, LCatalano/Math/Vector3;->z:F

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, LCatalano/Math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static Multiply(LCatalano/Math/Vector3;LCatalano/Math/Vector3;)LCatalano/Math/Vector3;
    .locals 5

    .prologue
    .line 180
    new-instance v0, LCatalano/Math/Vector3;

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    iget v2, p1, LCatalano/Math/Vector3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    iget v3, p1, LCatalano/Math/Vector3;->y:F

    mul-float/2addr v2, v3

    iget v3, p0, LCatalano/Math/Vector3;->z:F

    iget v4, p1, LCatalano/Math/Vector3;->z:F

    mul-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, LCatalano/Math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static Subtract(LCatalano/Math/Vector3;F)LCatalano/Math/Vector3;
    .locals 4

    .prologue
    .line 170
    new-instance v0, LCatalano/Math/Vector3;

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    sub-float/2addr v1, p1

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    sub-float/2addr v2, p1

    iget v3, p0, LCatalano/Math/Vector3;->z:F

    sub-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, LCatalano/Math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static Subtract(LCatalano/Math/Vector3;LCatalano/Math/Vector3;)LCatalano/Math/Vector3;
    .locals 5

    .prologue
    .line 160
    new-instance v0, LCatalano/Math/Vector3;

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    iget v2, p1, LCatalano/Math/Vector3;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    iget v3, p1, LCatalano/Math/Vector3;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, LCatalano/Math/Vector3;->z:F

    iget v4, p1, LCatalano/Math/Vector3;->z:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, LCatalano/Math/Vector3;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public Abs()LCatalano/Math/Vector3;
    .locals 4

    .prologue
    .line 245
    new-instance v0, LCatalano/Math/Vector3;

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, LCatalano/Math/Vector3;->z:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LCatalano/Math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public Inverse()LCatalano/Math/Vector3;
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 234
    new-instance v3, LCatalano/Math/Vector3;

    iget v0, p0, LCatalano/Math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p0, LCatalano/Math/Vector3;->y:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    iget v4, p0, LCatalano/Math/Vector3;->z:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_2

    :goto_2
    invoke-direct {v3, v0, v2, v1}, LCatalano/Math/Vector3;-><init>(FFF)V

    return-object v3

    :cond_0
    iget v0, p0, LCatalano/Math/Vector3;->z:F

    div-float v0, v5, v0

    goto :goto_0

    :cond_1
    iget v2, p0, LCatalano/Math/Vector3;->y:F

    div-float v2, v5, v2

    goto :goto_1

    :cond_2
    iget v1, p0, LCatalano/Math/Vector3;->z:F

    div-float v1, v5, v1

    goto :goto_2
.end method

.method public Norm()F
    .locals 3

    .prologue
    .line 114
    iget v0, p0, LCatalano/Math/Vector3;->x:F

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector3;->y:F

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector3;->z:F

    iget v2, p0, LCatalano/Math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public Normalize()F
    .locals 3

    .prologue
    .line 218
    iget v0, p0, LCatalano/Math/Vector3;->x:F

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector3;->y:F

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector3;->z:F

    iget v2, p0, LCatalano/Math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 219
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 221
    iget v2, p0, LCatalano/Math/Vector3;->x:F

    mul-float/2addr v2, v1

    iput v2, p0, LCatalano/Math/Vector3;->x:F

    .line 222
    iget v2, p0, LCatalano/Math/Vector3;->y:F

    mul-float/2addr v2, v1

    iput v2, p0, LCatalano/Math/Vector3;->y:F

    .line 223
    iget v2, p0, LCatalano/Math/Vector3;->z:F

    mul-float/2addr v1, v2

    iput v1, p0, LCatalano/Math/Vector3;->z:F

    .line 225
    return v0
.end method

.method public Square()F
    .locals 3

    .prologue
    .line 122
    iget v0, p0, LCatalano/Math/Vector3;->x:F

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector3;->y:F

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector3;->z:F

    iget v2, p0, LCatalano/Math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LCatalano/Math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    check-cast p1, LCatalano/Math/Vector3;

    .line 287
    iget v0, p0, LCatalano/Math/Vector3;->x:F

    iget v1, p1, LCatalano/Math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, LCatalano/Math/Vector3;->y:F

    iget v1, p1, LCatalano/Math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, LCatalano/Math/Vector3;->z:F

    iget v1, p1, LCatalano/Math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMax()F
    .locals 2

    .prologue
    .line 82
    iget v0, p0, LCatalano/Math/Vector3;->x:F

    iget v1, p0, LCatalano/Math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, LCatalano/Math/Vector3;->x:F

    iget v1, p0, LCatalano/Math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, LCatalano/Math/Vector3;->x:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, LCatalano/Math/Vector3;->z:F

    goto :goto_0

    :cond_1
    iget v0, p0, LCatalano/Math/Vector3;->y:F

    iget v1, p0, LCatalano/Math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, LCatalano/Math/Vector3;->y:F

    goto :goto_0

    :cond_2
    iget v0, p0, LCatalano/Math/Vector3;->z:F

    goto :goto_0
.end method

.method public getMaxIndex()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 98
    iget v1, p0, LCatalano/Math/Vector3;->x:F

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    iget v2, p0, LCatalano/Math/Vector3;->z:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, LCatalano/Math/Vector3;->y:F

    iget v2, p0, LCatalano/Math/Vector3;->z:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMin()F
    .locals 2

    .prologue
    .line 90
    iget v0, p0, LCatalano/Math/Vector3;->x:F

    iget v1, p0, LCatalano/Math/Vector3;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, LCatalano/Math/Vector3;->x:F

    iget v1, p0, LCatalano/Math/Vector3;->z:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, LCatalano/Math/Vector3;->x:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, LCatalano/Math/Vector3;->z:F

    goto :goto_0

    :cond_1
    iget v0, p0, LCatalano/Math/Vector3;->y:F

    iget v1, p0, LCatalano/Math/Vector3;->z:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, LCatalano/Math/Vector3;->y:F

    goto :goto_0

    :cond_2
    iget v0, p0, LCatalano/Math/Vector3;->z:F

    goto :goto_0
.end method

.method public getMinIndex()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 106
    iget v1, p0, LCatalano/Math/Vector3;->x:F

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    iget v2, p0, LCatalano/Math/Vector3;->z:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, LCatalano/Math/Vector3;->y:F

    iget v2, p0, LCatalano/Math/Vector3;->z:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toArray()[F
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, LCatalano/Math/Vector3;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, LCatalano/Math/Vector3;->z:F

    aput v2, v0, v1

    return-object v0
.end method

.method public toVector4()LCatalano/Math/Vector4;
    .locals 5

    .prologue
    .line 280
    new-instance v0, LCatalano/Math/Vector4;

    iget v1, p0, LCatalano/Math/Vector3;->x:F

    iget v2, p0, LCatalano/Math/Vector3;->y:F

    iget v3, p0, LCatalano/Math/Vector3;->z:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, LCatalano/Math/Vector4;-><init>(FFFF)V

    return-object v0
.end method
