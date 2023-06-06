.class public Lcom/jabistudio/androidjhlabs/filter/SwimFilter;
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

    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 26
    const/high16 v0, 0x42000000    # 32.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->a:F

    .line 27
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->b:F

    .line 28
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->c:F

    .line 29
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->d:F

    .line 30
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->e:F

    .line 31
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->f:F

    .line 32
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->g:F

    .line 33
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->h:F

    .line 34
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->i:F

    .line 35
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->j:F

    .line 38
    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->d:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->c:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->a:F

    return v0
.end method

.method public getStretch()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->b:F

    return v0
.end method

.method public getTime()F
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->f:F

    return v0
.end method

.method public getTurbulence()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->e:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->d:F

    .line 49
    return-void
.end method

.method public setAngle(F)V
    .locals 4

    .prologue
    .line 107
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->c:F

    .line 108
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 109
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 110
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->g:F

    .line 111
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->h:F

    .line 112
    neg-float v1, v1

    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->i:F

    .line 113
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->j:F

    .line 114
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->a:F

    .line 69
    return-void
.end method

.method public setStretch(F)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->b:F

    .line 89
    return-void
.end method

.method public setTime(F)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->f:F

    .line 153
    return-void
.end method

.method public setTurbulence(F)V
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->e:F

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "Distort/Swim..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 165
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->g:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->h:F

    int-to-float v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 166
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->i:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->j:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 167
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->a:F

    div-float/2addr v0, v2

    .line 168
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->a:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->b:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 170
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->e:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 171
    int-to-float v2, p1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->d:F

    add-float v4, v0, v7

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->f:F

    invoke-static {v4, v1, v5}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise3(FFF)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v8

    .line 172
    int-to-float v2, p2

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->d:F

    add-float/2addr v1, v7

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->f:F

    invoke-static {v0, v1, v4}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise3(FFF)F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    aput v0, p3, v9

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    int-to-float v2, p1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->d:F

    add-float v4, v0, v7

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->e:F

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->f:F

    invoke-static {v4, v1, v5, v6}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->turbulence3(FFFF)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v8

    .line 175
    int-to-float v2, p2

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->d:F

    add-float/2addr v1, v7

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->e:F

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/SwimFilter;->f:F

    invoke-static {v0, v1, v4, v5}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->turbulence3(FFFF)F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    aput v0, p3, v9

    goto :goto_0
.end method
