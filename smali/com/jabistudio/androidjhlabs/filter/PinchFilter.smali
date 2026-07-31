.class public Lcom/jabistudio/androidjhlabs/filter/PinchFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransformFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 38
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 26
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->a:F

    .line 27
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->b:F

    .line 28
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->c:F

    .line 29
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->d:F

    .line 30
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->e:F

    .line 32
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->f:F

    .line 39
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 2

    .prologue
    .line 154
    int-to-float v0, p2

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->i:F

    .line 155
    int-to-float v0, p3

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->j:F

    .line 156
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->i:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->g:F

    .line 157
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->j:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->c:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->h:F

    .line 158
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 159
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->g:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->h:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->d:F

    .line 160
    :cond_0
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->d:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->d:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->f:F

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getAmount()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->e:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->a:F

    return v0
.end method

.method public getCentre()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->b:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->c:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->b:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->c:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->d:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->e:F

    .line 142
    return-void
.end method

.method public setAngle(F)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->a:F

    .line 48
    return-void
.end method

.method public setCentre(Landroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 101
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->b:F

    .line 102
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->c:F

    .line 103
    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->b:F

    .line 66
    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->c:F

    .line 84
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->d:F

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "Distort/Pinch..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 165
    int-to-float v0, p1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->g:F

    sub-float/2addr v0, v1

    .line 166
    int-to-float v1, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->h:F

    sub-float/2addr v1, v2

    .line 167
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 169
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->f:F

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 170
    :cond_0
    int-to-float v0, p1

    aput v0, p3, v8

    .line 171
    int-to-float v0, p2

    aput v0, p3, v9

    .line 188
    :goto_0
    return-void

    .line 173
    :cond_1
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->f:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 174
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v6, v2

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->e:F

    neg-float v3, v3

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 176
    mul-float/2addr v0, v3

    .line 177
    mul-float/2addr v1, v3

    .line 179
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    .line 180
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->a:F

    mul-float/2addr v3, v2

    mul-float/2addr v2, v3

    .line 182
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 183
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 185
    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->g:F

    mul-float v5, v2, v0

    add-float/2addr v4, v5

    mul-float v5, v3, v1

    sub-float/2addr v4, v5

    aput v4, p3, v8

    .line 186
    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PinchFilter;->h:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p3, v9

    goto :goto_0
.end method
