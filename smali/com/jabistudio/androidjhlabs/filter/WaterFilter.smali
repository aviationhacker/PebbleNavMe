.class public Lcom/jabistudio/androidjhlabs/filter/WaterFilter;
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 26
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->a:F

    .line 27
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->b:F

    .line 28
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->c:F

    .line 29
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->d:F

    .line 30
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->e:F

    .line 31
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->f:F

    .line 33
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->g:F

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->setEdgeAction(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 2

    .prologue
    .line 177
    int-to-float v0, p2

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->d:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->h:F

    .line 178
    int-to-float v0, p3

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->e:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->i:F

    .line 179
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 180
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->h:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->i:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->f:F

    .line 181
    :cond_0
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->f:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->g:F

    .line 182
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getAmplitude()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->b:F

    return v0
.end method

.method public getCentre()[F
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 148
    const/4 v1, 0x0

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->d:F

    aput v2, v0, v1

    .line 149
    const/4 v1, 0x1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->e:F

    aput v2, v0, v1

    .line 150
    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->d:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->e:F

    return v0
.end method

.method public getPhase()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->c:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->f:F

    return v0
.end method

.method public getWavelength()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->a:F

    return v0
.end method

.method public setAmplitude(F)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->b:F

    .line 66
    return-void
.end method

.method public setCentre(FF)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->d:F

    .line 138
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->e:F

    .line 139
    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->d:F

    .line 102
    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->e:F

    .line 120
    return-void
.end method

.method public setPhase(F)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->c:F

    .line 84
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 160
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->f:F

    .line 161
    return-void
.end method

.method public setWavelength(F)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->a:F

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "Distort/Water Ripples..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 186
    int-to-float v0, p1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->h:F

    sub-float v1, v0, v1

    .line 187
    int-to-float v0, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->i:F

    sub-float v2, v0, v2

    .line 188
    mul-float v0, v1, v1

    mul-float v3, v2, v2

    add-float/2addr v0, v3

    .line 189
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->g:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 190
    int-to-float v0, p1

    aput v0, p3, v6

    .line 191
    int-to-float v0, p2

    aput v0, p3, v7

    .line 201
    :goto_0
    return-void

    .line 193
    :cond_0
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 194
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->b:F

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->a:F

    div-float v4, v3, v4

    const v5, 0x40c90fdb

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->c:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v0, v4

    .line 195
    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->f:F

    sub-float/2addr v4, v3

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->f:F

    div-float/2addr v4, v5

    mul-float/2addr v0, v4

    .line 196
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_1

    .line 197
    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/WaterFilter;->a:F

    div-float v3, v4, v3

    mul-float/2addr v0, v3

    .line 198
    :cond_1
    int-to-float v3, p1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    aput v1, p3, v6

    .line 199
    int-to-float v1, p2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    aput v0, p3, v7

    goto :goto_0
.end method
