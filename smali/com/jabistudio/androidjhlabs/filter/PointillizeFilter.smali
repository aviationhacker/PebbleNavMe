.class public Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;
.super Lcom/jabistudio/androidjhlabs/filter/CellularFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:Z

.field private c:I

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;-><init>()V

    .line 24
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->a:F

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->b:Z

    .line 26
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->c:I

    .line 27
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->d:F

    .line 30
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->setScale(F)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->setRandomness(F)V

    .line 32
    return-void
.end method


# virtual methods
.method public getEdgeColor()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->c:I

    return v0
.end method

.method public getEdgeThickness()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->a:F

    return v0
.end method

.method public getFadeEdges()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->b:Z

    return v0
.end method

.method public getFuzziness()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->d:F

    return v0
.end method

.method public getPixel(II[III)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v5, 0x447a0000    # 1000.0f

    const/4 v6, 0x0

    .line 67
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->m00:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->m01:F

    int-to-float v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 68
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->m10:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->m11:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 69
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->scale:F

    div-float/2addr v0, v2

    .line 70
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->scale:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->stretch:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 71
    add-float/2addr v0, v5

    .line 72
    add-float/2addr v1, v5

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->evaluate(FF)F

    .line 75
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    .line 76
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->x:F

    sub-float/2addr v1, v5

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v2, p4, -0x1

    invoke-static {v1, v6, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v1

    .line 77
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->y:F

    sub-float/2addr v2, v5

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->scale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v3, p5, -0x1

    invoke-static {v2, v6, v3}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v2

    .line 78
    mul-int/2addr v2, p4

    add-int/2addr v1, v2

    aget v1, p3, v1

    .line 80
    iget-boolean v2, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->b:Z

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    .line 82
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->x:F

    sub-float/2addr v3, v5

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->scale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v4, p4, -0x1

    invoke-static {v3, v6, v4}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v3

    .line 83
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->y:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->scale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v5, p5, -0x1

    invoke-static {v4, v6, v5}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v4

    .line 84
    mul-int/2addr v4, p4

    add-int/2addr v3, v4

    aget v3, p3, v3

    .line 85
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    invoke-static {v0, v1, v3}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v0

    .line 90
    :goto_0
    return v0

    .line 87
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->a:F

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->a:F

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->d:F

    add-float/2addr v4, v5

    invoke-static {v3, v4, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v0

    sub-float v0, v2, v0

    .line 88
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->c:I

    invoke-static {v0, v2, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v0

    goto :goto_0
.end method

.method public setEdgeColor(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->c:I

    .line 52
    return-void
.end method

.method public setEdgeThickness(F)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->a:F

    .line 36
    return-void
.end method

.method public setFadeEdges(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->b:Z

    .line 44
    return-void
.end method

.method public setFuzziness(F)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PointillizeFilter;->d:F

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "Pixellate/Pointillize..."

    return-object v0
.end method
