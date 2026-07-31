.class public LCatalano/Imaging/Filters/NiblackThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->a:I

    .line 38
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->b:D

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->c:D

    .line 92
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->a:I

    .line 38
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->b:D

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->c:D

    .line 108
    iput-wide p1, p0, LCatalano/Imaging/Filters/NiblackThreshold;->b:D

    .line 109
    iput-wide p3, p0, LCatalano/Imaging/Filters/NiblackThreshold;->c:D

    .line 110
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->a:I

    .line 38
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->b:D

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->c:D

    .line 99
    iput p1, p0, LCatalano/Imaging/Filters/NiblackThreshold;->a:I

    .line 100
    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->a:I

    .line 38
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->b:D

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->c:D

    .line 119
    iput p1, p0, LCatalano/Imaging/Filters/NiblackThreshold;->a:I

    .line 120
    iput-wide p2, p0, LCatalano/Imaging/Filters/NiblackThreshold;->b:D

    .line 121
    iput-wide p4, p0, LCatalano/Imaging/Filters/NiblackThreshold;->c:D

    .line 122
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    new-instance v3, LCatalano/Imaging/FastBitmap;

    invoke-direct {v3, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 130
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 132
    new-instance v0, LCatalano/Imaging/Filters/Integral/IntegralMean;

    iget v2, p0, LCatalano/Imaging/Filters/NiblackThreshold;->a:I

    invoke-direct {v0, v2}, LCatalano/Imaging/Filters/Integral/IntegralMean;-><init>(I)V

    .line 133
    invoke-virtual {v0, v3}, LCatalano/Imaging/Filters/Integral/IntegralMean;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 135
    new-instance v0, LCatalano/Imaging/Filters/Integral/IntegralVariance;

    iget v2, p0, LCatalano/Imaging/Filters/NiblackThreshold;->a:I

    invoke-direct {v0, v2}, LCatalano/Imaging/Filters/Integral/IntegralVariance;-><init>(I)V

    .line 136
    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/Integral/IntegralVariance;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 138
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    mul-int v5, v0, v2

    move v2, v1

    .line 139
    :goto_0
    if-ge v2, v5, :cond_2

    .line 140
    invoke-virtual {p1, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    int-to-float v0, v0

    .line 141
    invoke-virtual {v3, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v6

    int-to-float v6, v6

    .line 142
    invoke-virtual {v4, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v7

    int-to-float v7, v7

    .line 143
    float-to-double v8, v0

    float-to-double v10, v6

    iget-wide v12, p0, LCatalano/Imaging/Filters/NiblackThreshold;->b:D

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    iget-wide v10, p0, LCatalano/Imaging/Filters/NiblackThreshold;->c:D

    sub-double/2addr v6, v10

    cmpl-double v0, v8, v6

    if-lez v0, :cond_0

    const/16 v0, 0xff

    .line 145
    :goto_1
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 139
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 143
    goto :goto_1

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Niblack Threshold only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    return-void
.end method

.method public getC()D
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->c:D

    return-wide v0
.end method

.method public getK()D
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->b:D

    return-wide v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, LCatalano/Imaging/Filters/NiblackThreshold;->a:I

    return v0
.end method

.method public setC(D)V
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, LCatalano/Imaging/Filters/NiblackThreshold;->c:D

    .line 87
    return-void
.end method

.method public setK(D)V
    .locals 1

    .prologue
    .line 70
    iput-wide p1, p0, LCatalano/Imaging/Filters/NiblackThreshold;->b:D

    .line 71
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, LCatalano/Imaging/Filters/NiblackThreshold;->a:I

    .line 55
    return-void
.end method
