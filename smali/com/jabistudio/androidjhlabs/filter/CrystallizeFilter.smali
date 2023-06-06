.class public Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;
.super Lcom/jabistudio/androidjhlabs/filter/CellularFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;-><init>()V

    .line 26
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->a:F

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->b:Z

    .line 28
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->c:I

    .line 31
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->setScale(F)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->setRandomness(F)V

    .line 33
    return-void
.end method


# virtual methods
.method public getEdgeColor()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->c:I

    return v0
.end method

.method public getEdgeThickness()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->a:F

    return v0
.end method

.method public getFadeEdges()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->b:Z

    return v0
.end method

.method public getPixel(II[III)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v5, 0x0

    .line 60
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->m00:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->m01:F

    int-to-float v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 61
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->m10:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->m11:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 62
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->scale:F

    div-float/2addr v0, v2

    .line 63
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->scale:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->stretch:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 64
    add-float/2addr v0, v6

    .line 65
    add-float/2addr v1, v6

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->evaluate(FF)F

    .line 68
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    .line 69
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    .line 70
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->x:F

    sub-float/2addr v2, v6

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->scale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v3, p4, -0x1

    invoke-static {v2, v5, v3}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v2

    .line 71
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->y:F

    sub-float/2addr v3, v6

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->scale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v4, p5, -0x1

    invoke-static {v3, v5, v4}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v3

    .line 72
    mul-int/2addr v3, p4

    add-int/2addr v2, v3

    aget v2, p3, v2

    .line 73
    sub-float v0, v1, v0

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->a:F

    div-float/2addr v0, v1

    .line 74
    const/4 v1, 0x0

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->a:F

    invoke-static {v1, v3, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v0

    .line 75
    iget-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->b:Z

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->x:F

    sub-float/2addr v1, v6

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->scale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int/lit8 v3, p4, -0x1

    invoke-static {v1, v5, v3}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v1

    .line 77
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->y:F

    sub-float/2addr v3, v6

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->scale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v4, p5, -0x1

    invoke-static {v3, v5, v4}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v3

    .line 78
    mul-int/2addr v3, p4

    add-int/2addr v1, v3

    aget v1, p3, v1

    .line 79
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v1

    .line 80
    invoke-static {v0, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v0

    .line 83
    :goto_0
    return v0

    .line 82
    :cond_0
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->c:I

    invoke-static {v0, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v0

    goto :goto_0
.end method

.method public setEdgeColor(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->c:I

    .line 53
    return-void
.end method

.method public setEdgeThickness(F)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->a:F

    .line 37
    return-void
.end method

.method public setFadeEdges(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/CrystallizeFilter;->b:Z

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "Pixellate/Crystallize..."

    return-object v0
.end method
