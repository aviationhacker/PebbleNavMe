.class public Lcom/jabistudio/androidjhlabs/filter/CircleFilter;
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
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 41
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 26
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->a:F

    .line 27
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->b:F

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->c:F

    .line 29
    const v0, 0x40490fdb    # (float)Math.PI

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->d:F

    .line 30
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->e:F

    .line 31
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->f:F

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->setEdgeAction(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 2

    .prologue
    .line 180
    int-to-float v0, p2

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->i:F

    .line 181
    int-to-float v0, p3

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->j:F

    .line 182
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->i:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->e:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->g:F

    .line 183
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->j:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->h:F

    .line 184
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->i:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->i:F

    .line 185
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->c:F

    return v0
.end method

.method public getCentre()[F
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 174
    const/4 v1, 0x0

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->e:F

    aput v2, v0, v1

    .line 175
    const/4 v1, 0x1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->f:F

    aput v2, v0, v1

    .line 176
    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->e:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->f:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->b:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->a:F

    return v0
.end method

.method public getSpreadAngle()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->d:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->c:F

    .line 71
    return-void
.end method

.method public setCentre(FF)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->e:F

    .line 164
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->f:F

    .line 165
    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->e:F

    .line 128
    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->f:F

    .line 146
    return-void
.end method

.method public setHeight(F)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->b:F

    .line 52
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->a:F

    .line 110
    return-void
.end method

.method public setSpreadAngle(F)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->d:F

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "Distort/Circle..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 7

    .prologue
    const v6, 0x3727c5ac    # 1.0E-5f

    .line 189
    int-to-float v0, p1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->g:F

    sub-float/2addr v0, v1

    .line 190
    int-to-float v1, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->h:F

    sub-float/2addr v1, v2

    .line 191
    neg-float v2, v1

    float-to-double v2, v2

    neg-float v4, v0

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->c:F

    add-float/2addr v2, v3

    .line 192
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 194
    const v1, 0x40c90fdb

    invoke-static {v2, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(FF)F

    move-result v1

    .line 196
    const/4 v2, 0x0

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->i:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->d:F

    add-float/2addr v3, v6

    div-float/2addr v1, v3

    aput v1, p3, v2

    .line 197
    const/4 v1, 0x1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->j:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->a:F

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/CircleFilter;->b:F

    add-float/2addr v4, v6

    div-float/2addr v0, v4

    sub-float v0, v3, v0

    mul-float/2addr v0, v2

    aput v0, p3, v1

    .line 198
    return-void
.end method
