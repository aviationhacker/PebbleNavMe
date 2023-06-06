.class public Lcom/jabistudio/androidjhlabs/filter/DiffuseFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransformFilter;
.source "SourceFile"


# instance fields
.field private a:[F

.field private b:[F

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 27
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/DiffuseFilter;->c:F

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/DiffuseFilter;->setEdgeAction(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 9

    .prologue
    const/16 v8, 0x100

    .line 61
    new-array v0, v8, [F

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/DiffuseFilter;->a:[F

    .line 62
    new-array v0, v8, [F

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/DiffuseFilter;->b:[F

    .line 63
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_0

    .line 64
    const v1, 0x40c90fdb

    int-to-float v2, v0

    mul-float/2addr v1, v2

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v1, v2

    .line 65
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/DiffuseFilter;->a:[F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/DiffuseFilter;->c:F

    float-to-double v4, v3

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    aput v3, v2, v0

    .line 66
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/DiffuseFilter;->b:[F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/DiffuseFilter;->c:F

    float-to-double v4, v3

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v1, v4

    aput v1, v2, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/DiffuseFilter;->c:F

    return v0
.end method

.method public setScale(F)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/DiffuseFilter;->c:F

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "Distort/Diffuse..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 55
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v1, v2

    .line 56
    const/4 v2, 0x0

    int-to-float v3, p1

    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/DiffuseFilter;->a:[F

    aget v4, v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, p3, v2

    .line 57
    const/4 v2, 0x1

    int-to-float v3, p2

    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/DiffuseFilter;->b:[F

    aget v0, v4, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    aput v0, p3, v2

    .line 58
    return-void
.end method
