.class public LCatalano/Math/Vector4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, LCatalano/Math/Vector4;->w:F

    iput p1, p0, LCatalano/Math/Vector4;->z:F

    iput p1, p0, LCatalano/Math/Vector4;->y:F

    iput p1, p0, LCatalano/Math/Vector4;->x:F

    .line 82
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, LCatalano/Math/Vector4;->x:F

    .line 71
    iput p2, p0, LCatalano/Math/Vector4;->y:F

    .line 72
    iput p3, p0, LCatalano/Math/Vector4;->z:F

    .line 73
    iput p4, p0, LCatalano/Math/Vector4;->w:F

    .line 74
    return-void
.end method

.method public static Add(LCatalano/Math/Vector4;F)LCatalano/Math/Vector4;
    .locals 5

    .prologue
    .line 217
    new-instance v0, LCatalano/Math/Vector4;

    iget v1, p0, LCatalano/Math/Vector4;->x:F

    add-float/2addr v1, p1

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    add-float/2addr v2, p1

    iget v3, p0, LCatalano/Math/Vector4;->z:F

    add-float/2addr v3, p1

    iget v4, p0, LCatalano/Math/Vector4;->w:F

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, LCatalano/Math/Vector4;-><init>(FFFF)V

    return-object v0
.end method

.method public static Add(LCatalano/Math/Vector4;LCatalano/Math/Vector4;)LCatalano/Math/Vector4;
    .locals 6

    .prologue
    .line 207
    new-instance v0, LCatalano/Math/Vector4;

    iget v1, p0, LCatalano/Math/Vector4;->x:F

    iget v2, p1, LCatalano/Math/Vector4;->x:F

    add-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    iget v3, p1, LCatalano/Math/Vector4;->y:F

    add-float/2addr v2, v3

    iget v3, p0, LCatalano/Math/Vector4;->z:F

    iget v4, p1, LCatalano/Math/Vector4;->z:F

    add-float/2addr v3, v4

    iget v4, p0, LCatalano/Math/Vector4;->w:F

    iget v5, p1, LCatalano/Math/Vector4;->w:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, LCatalano/Math/Vector4;-><init>(FFFF)V

    return-object v0
.end method

.method public static Divide(LCatalano/Math/Vector4;F)LCatalano/Math/Vector4;
    .locals 5

    .prologue
    .line 277
    new-instance v0, LCatalano/Math/Vector4;

    iget v1, p0, LCatalano/Math/Vector4;->x:F

    div-float/2addr v1, p1

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    div-float/2addr v2, p1

    iget v3, p0, LCatalano/Math/Vector4;->z:F

    div-float/2addr v3, p1

    iget v4, p0, LCatalano/Math/Vector4;->w:F

    div-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, LCatalano/Math/Vector4;-><init>(FFFF)V

    return-object v0
.end method

.method public static Divide(LCatalano/Math/Vector4;LCatalano/Math/Vector4;)LCatalano/Math/Vector4;
    .locals 6

    .prologue
    .line 267
    new-instance v0, LCatalano/Math/Vector4;

    iget v1, p0, LCatalano/Math/Vector4;->x:F

    iget v2, p1, LCatalano/Math/Vector4;->x:F

    div-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    iget v3, p1, LCatalano/Math/Vector4;->y:F

    div-float/2addr v2, v3

    iget v3, p0, LCatalano/Math/Vector4;->z:F

    iget v4, p1, LCatalano/Math/Vector4;->z:F

    div-float/2addr v3, v4

    iget v4, p0, LCatalano/Math/Vector4;->w:F

    iget v5, p1, LCatalano/Math/Vector4;->w:F

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, LCatalano/Math/Vector4;-><init>(FFFF)V

    return-object v0
.end method

.method public static Dot(LCatalano/Math/Vector4;LCatalano/Math/Vector4;)F
    .locals 3

    .prologue
    .line 325
    iget v0, p0, LCatalano/Math/Vector4;->x:F

    iget v1, p1, LCatalano/Math/Vector4;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector4;->y:F

    iget v2, p1, LCatalano/Math/Vector4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector4;->z:F

    iget v2, p1, LCatalano/Math/Vector4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector4;->w:F

    iget v2, p1, LCatalano/Math/Vector4;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static Multiply(LCatalano/Math/Vector4;F)LCatalano/Math/Vector4;
    .locals 5

    .prologue
    .line 257
    new-instance v0, LCatalano/Math/Vector4;

    iget v1, p0, LCatalano/Math/Vector4;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, LCatalano/Math/Vector4;->z:F

    mul-float/2addr v3, p1

    iget v4, p0, LCatalano/Math/Vector4;->w:F

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, LCatalano/Math/Vector4;-><init>(FFFF)V

    return-object v0
.end method

.method public static Multiply(LCatalano/Math/Vector4;LCatalano/Math/Vector4;)LCatalano/Math/Vector4;
    .locals 6

    .prologue
    .line 247
    new-instance v0, LCatalano/Math/Vector4;

    iget v1, p0, LCatalano/Math/Vector4;->x:F

    iget v2, p1, LCatalano/Math/Vector4;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    iget v3, p1, LCatalano/Math/Vector4;->y:F

    mul-float/2addr v2, v3

    iget v3, p0, LCatalano/Math/Vector4;->z:F

    iget v4, p1, LCatalano/Math/Vector4;->z:F

    mul-float/2addr v3, v4

    iget v4, p0, LCatalano/Math/Vector4;->w:F

    iget v5, p1, LCatalano/Math/Vector4;->w:F

    mul-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, LCatalano/Math/Vector4;-><init>(FFFF)V

    return-object v0
.end method

.method public static Subtract(LCatalano/Math/Vector4;F)LCatalano/Math/Vector4;
    .locals 5

    .prologue
    .line 237
    new-instance v0, LCatalano/Math/Vector4;

    iget v1, p0, LCatalano/Math/Vector4;->x:F

    sub-float/2addr v1, p1

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    sub-float/2addr v2, p1

    iget v3, p0, LCatalano/Math/Vector4;->z:F

    sub-float/2addr v3, p1

    iget v4, p0, LCatalano/Math/Vector4;->w:F

    sub-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, LCatalano/Math/Vector4;-><init>(FFFF)V

    return-object v0
.end method

.method public static Subtract(LCatalano/Math/Vector4;LCatalano/Math/Vector4;)LCatalano/Math/Vector4;
    .locals 6

    .prologue
    .line 227
    new-instance v0, LCatalano/Math/Vector4;

    iget v1, p0, LCatalano/Math/Vector4;->x:F

    iget v2, p1, LCatalano/Math/Vector4;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    iget v3, p1, LCatalano/Math/Vector4;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, LCatalano/Math/Vector4;->z:F

    iget v4, p1, LCatalano/Math/Vector4;->z:F

    sub-float/2addr v3, v4

    iget v4, p0, LCatalano/Math/Vector4;->w:F

    iget v5, p1, LCatalano/Math/Vector4;->w:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, LCatalano/Math/Vector4;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public Abs()LCatalano/Math/Vector4;
    .locals 5

    .prologue
    .line 314
    new-instance v0, LCatalano/Math/Vector4;

    iget v1, p0, LCatalano/Math/Vector4;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, LCatalano/Math/Vector4;->z:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, LCatalano/Math/Vector4;->w:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, LCatalano/Math/Vector4;-><init>(FFFF)V

    return-object v0
.end method

.method public Inverse()LCatalano/Math/Vector4;
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 302
    new-instance v4, LCatalano/Math/Vector4;

    iget v0, p0, LCatalano/Math/Vector4;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p0, LCatalano/Math/Vector4;->y:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    iget v3, p0, LCatalano/Math/Vector4;->y:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_2

    move v3, v1

    :goto_2
    iget v5, p0, LCatalano/Math/Vector4;->w:F

    cmpl-float v5, v5, v1

    if-nez v5, :cond_3

    :goto_3
    invoke-direct {v4, v0, v2, v3, v1}, LCatalano/Math/Vector4;-><init>(FFFF)V

    return-object v4

    :cond_0
    iget v0, p0, LCatalano/Math/Vector4;->z:F

    div-float v0, v6, v0

    goto :goto_0

    :cond_1
    iget v2, p0, LCatalano/Math/Vector4;->y:F

    div-float v2, v6, v2

    goto :goto_1

    :cond_2
    iget v3, p0, LCatalano/Math/Vector4;->y:F

    div-float v3, v6, v3

    goto :goto_2

    :cond_3
    iget v1, p0, LCatalano/Math/Vector4;->w:F

    div-float v1, v6, v1

    goto :goto_3
.end method

.method public Norm()F
    .locals 3

    .prologue
    .line 181
    iget v0, p0, LCatalano/Math/Vector4;->x:F

    iget v1, p0, LCatalano/Math/Vector4;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector4;->y:F

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector4;->z:F

    iget v2, p0, LCatalano/Math/Vector4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector4;->w:F

    iget v2, p0, LCatalano/Math/Vector4;->w:F

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
    .line 285
    iget v0, p0, LCatalano/Math/Vector4;->x:F

    iget v1, p0, LCatalano/Math/Vector4;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector4;->y:F

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector4;->z:F

    iget v2, p0, LCatalano/Math/Vector4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector4;->w:F

    iget v2, p0, LCatalano/Math/Vector4;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 286
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 288
    iget v2, p0, LCatalano/Math/Vector4;->x:F

    mul-float/2addr v2, v1

    iput v2, p0, LCatalano/Math/Vector4;->x:F

    .line 289
    iget v2, p0, LCatalano/Math/Vector4;->y:F

    mul-float/2addr v2, v1

    iput v2, p0, LCatalano/Math/Vector4;->y:F

    .line 290
    iget v2, p0, LCatalano/Math/Vector4;->z:F

    mul-float/2addr v2, v1

    iput v2, p0, LCatalano/Math/Vector4;->z:F

    .line 291
    iget v2, p0, LCatalano/Math/Vector4;->w:F

    mul-float/2addr v1, v2

    iput v1, p0, LCatalano/Math/Vector4;->w:F

    .line 293
    return v0
.end method

.method public Square()F
    .locals 3

    .prologue
    .line 189
    iget v0, p0, LCatalano/Math/Vector4;->x:F

    iget v1, p0, LCatalano/Math/Vector4;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector4;->y:F

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector4;->z:F

    iget v2, p0, LCatalano/Math/Vector4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Vector4;->w:F

    iget v2, p0, LCatalano/Math/Vector4;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LCatalano/Math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    check-cast p1, LCatalano/Math/Vector4;

    .line 341
    iget v0, p0, LCatalano/Math/Vector4;->x:F

    iget v1, p1, LCatalano/Math/Vector4;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, LCatalano/Math/Vector4;->y:F

    iget v1, p1, LCatalano/Math/Vector4;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, LCatalano/Math/Vector4;->z:F

    iget v1, p1, LCatalano/Math/Vector4;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, LCatalano/Math/Vector4;->w:F

    iget v1, p1, LCatalano/Math/Vector4;->w:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 342
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMax()F
    .locals 3

    .prologue
    .line 89
    iget v0, p0, LCatalano/Math/Vector4;->x:F

    iget v1, p0, LCatalano/Math/Vector4;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, LCatalano/Math/Vector4;->x:F

    .line 90
    :goto_0
    iget v1, p0, LCatalano/Math/Vector4;->z:F

    iget v2, p0, LCatalano/Math/Vector4;->w:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, LCatalano/Math/Vector4;->z:F

    .line 92
    :goto_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    :goto_2
    return v0

    .line 89
    :cond_0
    iget v0, p0, LCatalano/Math/Vector4;->y:F

    goto :goto_0

    .line 90
    :cond_1
    iget v1, p0, LCatalano/Math/Vector4;->w:F

    goto :goto_1

    :cond_2
    move v0, v1

    .line 92
    goto :goto_2
.end method

.method public getMaxIndex()I
    .locals 4

    .prologue
    .line 111
    .line 116
    iget v0, p0, LCatalano/Math/Vector4;->x:F

    iget v1, p0, LCatalano/Math/Vector4;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 118
    iget v1, p0, LCatalano/Math/Vector4;->x:F

    .line 119
    const/4 v0, 0x0

    .line 127
    :goto_0
    iget v2, p0, LCatalano/Math/Vector4;->z:F

    iget v3, p0, LCatalano/Math/Vector4;->w:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 129
    iget v3, p0, LCatalano/Math/Vector4;->z:F

    .line 130
    const/4 v2, 0x2

    .line 138
    :goto_1
    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    :goto_2
    return v0

    .line 123
    :cond_0
    iget v1, p0, LCatalano/Math/Vector4;->y:F

    .line 124
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    iget v3, p0, LCatalano/Math/Vector4;->w:F

    .line 135
    const/4 v2, 0x3

    goto :goto_1

    :cond_2
    move v0, v2

    .line 138
    goto :goto_2
.end method

.method public getMin()F
    .locals 3

    .prologue
    .line 100
    iget v0, p0, LCatalano/Math/Vector4;->x:F

    iget v1, p0, LCatalano/Math/Vector4;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, LCatalano/Math/Vector4;->x:F

    .line 101
    :goto_0
    iget v1, p0, LCatalano/Math/Vector4;->z:F

    iget v2, p0, LCatalano/Math/Vector4;->w:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p0, LCatalano/Math/Vector4;->z:F

    .line 103
    :goto_1
    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    :goto_2
    return v0

    .line 100
    :cond_0
    iget v0, p0, LCatalano/Math/Vector4;->y:F

    goto :goto_0

    .line 101
    :cond_1
    iget v1, p0, LCatalano/Math/Vector4;->w:F

    goto :goto_1

    :cond_2
    move v0, v1

    .line 103
    goto :goto_2
.end method

.method public getMinIndex()I
    .locals 4

    .prologue
    .line 146
    .line 151
    iget v0, p0, LCatalano/Math/Vector4;->x:F

    iget v1, p0, LCatalano/Math/Vector4;->y:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 153
    iget v1, p0, LCatalano/Math/Vector4;->x:F

    .line 154
    const/4 v0, 0x0

    .line 162
    :goto_0
    iget v2, p0, LCatalano/Math/Vector4;->z:F

    iget v3, p0, LCatalano/Math/Vector4;->w:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 164
    iget v3, p0, LCatalano/Math/Vector4;->z:F

    .line 165
    const/4 v2, 0x2

    .line 173
    :goto_1
    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    :goto_2
    return v0

    .line 158
    :cond_0
    iget v1, p0, LCatalano/Math/Vector4;->y:F

    .line 159
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    iget v3, p0, LCatalano/Math/Vector4;->w:F

    .line 170
    const/4 v2, 0x3

    goto :goto_1

    :cond_2
    move v0, v2

    .line 173
    goto :goto_2
.end method

.method public toArray()[F
    .locals 3

    .prologue
    .line 197
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, LCatalano/Math/Vector4;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, LCatalano/Math/Vector4;->z:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, LCatalano/Math/Vector4;->w:F

    aput v2, v0, v1

    return-object v0
.end method

.method public toVector3()LCatalano/Math/Vector3;
    .locals 5

    .prologue
    .line 334
    new-instance v0, LCatalano/Math/Vector3;

    iget v1, p0, LCatalano/Math/Vector4;->x:F

    iget v2, p0, LCatalano/Math/Vector4;->w:F

    div-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Vector4;->y:F

    iget v3, p0, LCatalano/Math/Vector4;->w:F

    div-float/2addr v2, v3

    iget v3, p0, LCatalano/Math/Vector4;->z:F

    iget v4, p0, LCatalano/Math/Vector4;->w:F

    div-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, LCatalano/Math/Vector3;-><init>(FFF)V

    return-object v0
.end method
