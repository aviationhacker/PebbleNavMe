.class public Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransformFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:I

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 26
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->a:F

    .line 27
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->b:F

    .line 28
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->c:F

    .line 29
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->d:F

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->e:I

    .line 31
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->f:F

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->setEdgeAction(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 2

    .prologue
    .line 178
    int-to-float v0, p2

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->c:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->g:F

    .line 179
    int-to-float v0, p3

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->d:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->h:F

    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->a:F

    return v0
.end method

.method public getAngle2()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->b:F

    return v0
.end method

.method public getCentre()[F
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 153
    const/4 v1, 0x0

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->c:F

    aput v2, v0, v1

    .line 154
    const/4 v1, 0x1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->d:F

    aput v2, v0, v1

    .line 155
    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->c:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->d:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->f:F

    return v0
.end method

.method public getSides()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->e:I

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->a:F

    .line 70
    return-void
.end method

.method public setAngle2(F)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->b:F

    .line 89
    return-void
.end method

.method public setCentre(FF)V
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->c:F

    .line 143
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->d:F

    .line 144
    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->c:F

    .line 107
    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->d:F

    .line 125
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 165
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->f:F

    .line 166
    return-void
.end method

.method public setSides(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->e:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "Distort/Kaleidoscope..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 10

    .prologue
    .line 184
    int-to-float v0, p1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->g:F

    sub-float/2addr v0, v1

    float-to-double v2, v0

    .line 185
    int-to-float v0, p2

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->h:F

    sub-float/2addr v0, v1

    float-to-double v4, v0

    .line 186
    mul-double v0, v2, v2

    mul-double v6, v4, v4

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 187
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->a:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->b:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    .line 188
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->e:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->triangle(F)F

    move-result v2

    float-to-double v2, v2

    .line 189
    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->f:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 190
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 191
    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->f:F

    float-to-double v6, v6

    div-double v4, v6, v4

    .line 192
    div-double/2addr v0, v4

    double-to-float v0, v0

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->triangle(F)F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    .line 194
    :cond_0
    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->a:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    .line 196
    const/4 v4, 0x0

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->g:F

    float-to-double v6, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p3, v4

    .line 197
    const/4 v4, 0x1

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/KaleidoscopeFilter;->h:F

    float-to-double v6, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    double-to-float v0, v0

    aput v0, p3, v4

    .line 198
    return-void
.end method
