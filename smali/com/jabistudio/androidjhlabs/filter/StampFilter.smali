.class public Lcom/jabistudio/androidjhlabs/filter/StampFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/StampFilter;-><init>(F)V

    .line 39
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->b:F

    .line 28
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->c:F

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->f:I

    .line 32
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->g:I

    .line 46
    invoke-virtual {p0, p1}, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->setThreshold(F)V

    .line 47
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 5

    .prologue
    const v4, 0x443f4000    # 765.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 143
    mul-int v0, p2, p3

    new-array v0, v0, [I

    .line 144
    new-instance v0, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->c:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;-><init>(F)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->filter([III)[I

    move-result-object v0

    .line 145
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->a:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->b:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->d:F

    .line 146
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->a:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->e:F

    .line 147
    invoke-super {p0, v0, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public filterRGB(III)I
    .locals 3

    .prologue
    .line 151
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    .line 152
    shr-int/lit8 v0, p3, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 153
    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 154
    and-int/lit16 v2, p3, 0xff

    .line 155
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 156
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->d:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->e:F

    int-to-float v0, v0

    invoke-static {v1, v2, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v0

    .line 157
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->g:I

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->f:I

    invoke-static {v0, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v0

    return v0
.end method

.method public getBlack()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->g:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->c:F

    return v0
.end method

.method public getSoftness()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->b:F

    return v0
.end method

.method public getThreshold()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->a:F

    return v0
.end method

.method public getWhite()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->f:I

    return v0
.end method

.method public setBlack(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->g:I

    .line 131
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->c:F

    .line 57
    return-void
.end method

.method public setSoftness(F)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->b:F

    .line 95
    return-void
.end method

.method public setThreshold(F)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->a:F

    .line 75
    return-void
.end method

.method public setWhite(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/StampFilter;->f:I

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "Stylize/Stamp..."

    return-object v0
.end method
