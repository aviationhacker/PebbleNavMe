.class public Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;
.super Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;
.source "SourceFile"


# instance fields
.field private a:[[I

.field private b:F

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;-><init>()V

    .line 29
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->b:F

    .line 30
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->c:F

    .line 31
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->d:F

    .line 32
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->e:F

    .line 35
    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILandroid/graphics/Rect;)[I
    .locals 9

    .prologue
    .line 70
    new-instance v0, Lcom/jabistudio/androidjhlabs/filter/Histogram;

    const/4 v4, 0x0

    move-object v1, p3

    move v2, p1

    move v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/jabistudio/androidjhlabs/filter/Histogram;-><init>([IIIII)V

    .line 74
    invoke-virtual {v0}, Lcom/jabistudio/androidjhlabs/filter/Histogram;->getNumSamples()I

    move-result v0

    if-lez v0, :cond_2

    .line 75
    const/4 v0, 0x3

    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->a:[[I

    .line 77
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->b:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v3, v0, v1

    .line 78
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->c:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    .line 79
    cmpl-float v1, v3, v0

    if-nez v1, :cond_0

    .line 80
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 81
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v1, 0x3

    if-ge v2, v1, :cond_3

    .line 82
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x100

    if-ge v1, v4, :cond_1

    .line 83
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->a:[[I

    aget-object v4, v4, v2

    const/high16 v5, 0x437f0000    # 255.0f

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->d:F

    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->e:F

    iget v8, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->d:F

    sub-float/2addr v7, v8

    int-to-float v8, v1

    sub-float/2addr v8, v3

    mul-float/2addr v7, v8

    sub-float v8, v0, v3

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v5

    aput v5, v4, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 86
    :cond_2
    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->a:[[I

    .line 88
    :cond_3
    const/4 v1, 0x0

    .line 89
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, p2, :cond_5

    .line 90
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_4

    .line 91
    aget v3, p3, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->filterRGB(III)I

    move-result v3

    aput v3, p3, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 89
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 94
    :cond_5
    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->a:[[I

    .line 96
    return-object p3
.end method

.method public filterRGB(III)I
    .locals 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->a:[[I

    if-eqz v0, :cond_0

    .line 101
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    .line 102
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->a:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    shr-int/lit8 v2, p3, 0x10

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    .line 103
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->a:[[I

    const/4 v3, 0x1

    aget-object v2, v2, v3

    shr-int/lit8 v3, p3, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    .line 104
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->a:[[I

    const/4 v4, 0x2

    aget-object v3, v3, v4

    and-int/lit16 v4, p3, 0xff

    aget v3, v3, v4

    .line 106
    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int p3, v0, v3

    .line 108
    :cond_0
    return p3
.end method

.method public getHighLevel()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->c:F

    return v0
.end method

.method public getHighOutputLevel()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->e:F

    return v0
.end method

.method public getLowLevel()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->b:F

    return v0
.end method

.method public getLowOutputLevel()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->d:F

    return v0
.end method

.method public setHighLevel(F)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->c:F

    .line 47
    return-void
.end method

.method public setHighOutputLevel(F)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->e:F

    .line 63
    return-void
.end method

.method public setLowLevel(F)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->b:F

    .line 39
    return-void
.end method

.method public setLowOutputLevel(F)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/LevelsFilter;->d:F

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "Colors/Levels..."

    return-object v0
.end method
