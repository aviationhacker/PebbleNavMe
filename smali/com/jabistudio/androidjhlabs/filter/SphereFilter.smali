.class public Lcom/jabistudio/androidjhlabs/filter/SphereFilter;
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
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 26
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->a:F

    .line 27
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->b:F

    .line 28
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->c:F

    .line 29
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->d:F

    .line 30
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->e:F

    .line 31
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->f:F

    .line 32
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->g:F

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->setEdgeAction(I)V

    .line 39
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->setRadius(F)V

    .line 40
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    .line 136
    int-to-float v0, p2

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->e:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->h:F

    .line 137
    int-to-float v0, p3

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->i:F

    .line 138
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->a:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 139
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->a:F

    .line 140
    :cond_0
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 141
    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->b:F

    .line 142
    :cond_1
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->a:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->c:F

    .line 143
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->b:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->d:F

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getCentre()[F
    .locals 3

    .prologue
    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 128
    const/4 v1, 0x0

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->e:F

    aput v2, v0, v1

    .line 129
    const/4 v1, 0x1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->f:F

    aput v2, v0, v1

    .line 130
    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->e:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->f:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->a:F

    return v0
.end method

.method public getRefractionIndex()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->g:F

    return v0
.end method

.method public setCentre(FF)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->e:F

    .line 118
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->f:F

    .line 119
    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->e:F

    .line 87
    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->f:F

    .line 100
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->a:F

    .line 68
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->b:F

    .line 69
    return-void
.end method

.method public setRefractionIndex(F)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->g:F

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const-string v0, "Distort/Sphere..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 12

    .prologue
    .line 148
    int-to-float v0, p1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->h:F

    sub-float/2addr v0, v1

    .line 149
    int-to-float v1, p2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->i:F

    sub-float/2addr v1, v2

    .line 150
    mul-float v2, v0, v0

    .line 151
    mul-float v3, v1, v1

    .line 152
    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->d:F

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->d:F

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->c:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    .line 153
    const/4 v0, 0x0

    int-to-float v1, p1

    aput v1, p3, v0

    .line 154
    const/4 v0, 0x1

    int-to-float v1, p2

    aput v1, p3, v0

    .line 173
    :goto_0
    return-void

    .line 156
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->g:F

    div-float/2addr v4, v5

    .line 158
    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->c:F

    div-float v6, v2, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->d:F

    div-float v6, v3, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->a:F

    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/SphereFilter;->b:F

    mul-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 159
    mul-float v6, v5, v5

    .line 161
    float-to-double v8, v0

    add-float v0, v2, v6

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 162
    const v2, 0x3fc90fdb

    sub-float/2addr v2, v0

    .line 163
    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    float-to-double v10, v4

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    double-to-float v2, v8

    .line 164
    const v7, 0x3fc90fdb

    sub-float v0, v7, v0

    sub-float/2addr v0, v2

    .line 165
    const/4 v2, 0x0

    int-to-float v7, p1

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v0, v8

    mul-float/2addr v0, v5

    sub-float v0, v7, v0

    aput v0, p3, v2

    .line 167
    float-to-double v0, v1

    add-float v2, v3, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 168
    const v1, 0x3fc90fdb

    sub-float/2addr v1, v0

    .line 169
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    float-to-double v6, v4

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 170
    const v2, 0x3fc90fdb

    sub-float v0, v2, v0

    sub-float/2addr v0, v1

    .line 171
    const/4 v1, 0x1

    int-to-float v2, p2

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float/2addr v0, v5

    sub-float v0, v2, v0

    aput v0, p3, v1

    goto/16 :goto_0
.end method
