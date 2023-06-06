.class public Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;
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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 26
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->a:F

    .line 27
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->b:F

    .line 28
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->c:F

    .line 29
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->d:F

    .line 31
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->e:F

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->setEdgeAction(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 2

    .prologue
    .line 138
    int-to-float v0, p2

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->f:F

    .line 139
    int-to-float v0, p3

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->c:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->g:F

    .line 140
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 141
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->f:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->g:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->d:F

    .line 142
    :cond_0
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->d:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->d:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->e:F

    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->a:F

    return v0
.end method

.method public getCentre()[F
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 113
    const/4 v1, 0x0

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->b:F

    aput v2, v0, v1

    .line 114
    const/4 v1, 0x1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->c:F

    aput v2, v0, v1

    .line 115
    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->b:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->c:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->d:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->a:F

    .line 49
    return-void
.end method

.method public setCentre(FF)V
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->b:F

    .line 103
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->c:F

    .line 104
    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->b:F

    .line 67
    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->c:F

    .line 85
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->d:F

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "Distort/Twirl..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 147
    int-to-float v0, p1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->f:F

    sub-float/2addr v0, v1

    .line 148
    int-to-float v1, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->g:F

    sub-float/2addr v1, v2

    .line 149
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 150
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->e:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 151
    int-to-float v0, p1

    aput v0, p3, v6

    .line 152
    int-to-float v0, p2

    aput v0, p3, v7

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 155
    float-to-double v4, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->a:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->d:F

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->d:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 156
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->f:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    aput v1, p3, v6

    .line 157
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/TwirlFilter;->g:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    aput v0, p3, v7

    goto :goto_0
.end method
