.class public Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransformFilter;
.source "SourceFile"


# instance fields
.field private a:[F

.field private b:[F

.field private c:F

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 29
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->c:F

    .line 30
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->d:F

    .line 31
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->e:F

    .line 32
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->f:F

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->setEdgeAction(I)V

    .line 36
    return-void
.end method

.method private a(II)I
    .locals 5

    .prologue
    .line 125
    const/high16 v0, 0x42fe0000    # 127.0f

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, p1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->c:F

    div-float/2addr v2, v3

    int-to-float v3, p2

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->c:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise2(FF)F

    move-result v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 9

    .prologue
    const/16 v8, 0x100

    .line 115
    new-array v0, v8, [F

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->a:[F

    .line 116
    new-array v0, v8, [F

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->b:[F

    .line 117
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_0

    .line 118
    const v1, 0x40c90fdb

    int-to-float v2, v0

    mul-float/2addr v1, v2

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->f:F

    mul-float/2addr v1, v2

    .line 119
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->a:[F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->d:F

    neg-float v3, v3

    float-to-double v4, v3

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    aput v3, v2, v0

    .line 120
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->b:[F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->d:F

    float-to-double v4, v3

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v1, v4

    aput v1, v2, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->a()V

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getAmount()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->e:F

    return v0
.end method

.method public getTurbulence()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->f:F

    return v0
.end method

.method public getXScale()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->c:F

    return v0
.end method

.method public getYScale()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->d:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->e:F

    .line 83
    return-void
.end method

.method public setTurbulence(F)V
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->f:F

    .line 103
    return-void
.end method

.method public setXScale(F)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->c:F

    .line 45
    return-void
.end method

.method public setYScale(F)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->d:F

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "Distort/Marble..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 4

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->a(II)I

    move-result v0

    .line 130
    const/4 v1, 0x0

    int-to-float v2, p1

    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->a:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, p3, v1

    .line 131
    const/4 v1, 0x1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/MarbleFilter;->b:[F

    aget v0, v3, v0

    add-float/2addr v0, v2

    aput v0, p3, v1

    .line 132
    return-void
.end method
