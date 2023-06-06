.class public LCatalano/Imaging/Filters/BradleyLocalThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x29

    iput v0, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->a:I

    .line 37
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->b:F

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x29

    iput v0, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->a:I

    .line 37
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->b:F

    .line 49
    iput p1, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->a:I

    .line 50
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x29

    iput v0, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->a:I

    .line 37
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->b:F

    .line 58
    iput p1, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->a:I

    .line 59
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    .line 95
    new-instance v8, LCatalano/Imaging/Tools/IntegralImage;

    invoke-direct {v8, p1}, LCatalano/Imaging/Tools/IntegralImage;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 97
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 98
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v10

    .line 99
    add-int/lit8 v3, v9, -0x1

    .line 100
    add-int/lit8 v1, v10, -0x1

    .line 102
    iget v0, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->a:I

    div-int/lit8 v11, v0, 0x2

    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->b:F

    sub-float v12, v0, v2

    .line 106
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v10, :cond_5

    .line 108
    sub-int v2, v7, v11

    .line 109
    add-int v0, v7, v11

    .line 111
    if-gez v2, :cond_6

    .line 112
    const/4 v2, 0x0

    move v6, v2

    .line 113
    :goto_1
    if-le v0, v1, :cond_0

    move v0, v1

    .line 116
    :cond_0
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-ge v5, v9, :cond_4

    .line 117
    sub-int v4, v5, v11

    .line 118
    add-int v2, v5, v11

    .line 120
    if-gez v4, :cond_1

    .line 121
    const/4 v4, 0x0

    .line 122
    :cond_1
    if-le v2, v3, :cond_2

    move v2, v3

    .line 126
    :cond_2
    invoke-virtual {p1, v7, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v13

    invoke-virtual {v8, v6, v4, v0, v2}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMeanUnsafe(IIII)F

    move-result v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    if-ge v13, v2, :cond_3

    const/4 v2, 0x0

    .line 127
    :goto_3
    invoke-virtual {p1, v7, v5, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 116
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 126
    :cond_3
    const/16 v2, 0xff

    goto :goto_3

    .line 106
    :cond_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 130
    :cond_5
    return-void

    :cond_6
    move v6, v2

    goto :goto_1
.end method

.method public getPixelBrightnessDifferenceLimit()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->b:F

    return v0
.end method

.method public getWindowSize()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->a:I

    return v0
.end method

.method public setPixelBrightnessDifferenceLimit(F)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->b:F

    .line 91
    return-void
.end method

.method public setWindowSize(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, LCatalano/Imaging/Filters/BradleyLocalThreshold;->a:I

    .line 75
    return-void
.end method
