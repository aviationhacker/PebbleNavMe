.class public LCatalano/Imaging/Filters/Artistic/PencilSketch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:D

.field private c:I

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, -0x46

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->a:I

    .line 38
    const-wide v0, 0x3ff6666666666666L    # 1.4

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->b:D

    .line 39
    const/4 v0, 0x5

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->c:I

    .line 40
    const-wide/high16 v0, -0x3fec000000000000L    # -5.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->d:D

    .line 109
    return-void
.end method

.method public constructor <init>(IDID)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, -0x46

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->a:I

    .line 38
    const-wide v0, 0x3ff6666666666666L    # 1.4

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->b:D

    .line 39
    const/4 v0, 0x5

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->c:I

    .line 40
    const-wide/high16 v0, -0x3fec000000000000L    # -5.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->d:D

    .line 119
    iput p1, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->a:I

    .line 120
    iput-wide p2, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->b:D

    .line 121
    iput p4, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->c:I

    .line 122
    iput-wide p5, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->d:D

    .line 123
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 6

    .prologue
    .line 128
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 130
    new-instance v1, LCatalano/Imaging/FastBitmap;

    invoke-direct {v1, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 132
    new-instance v2, LCatalano/Imaging/Filters/SaturationCorrection;

    iget v3, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->a:I

    int-to-float v3, v3

    invoke-direct {v2, v3}, LCatalano/Imaging/Filters/SaturationCorrection;-><init>(F)V

    .line 133
    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/SaturationCorrection;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 135
    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 136
    new-instance v2, LCatalano/Imaging/Filters/Invert;

    invoke-direct {v2}, LCatalano/Imaging/Filters/Invert;-><init>()V

    .line 137
    invoke-virtual {v2, v1}, LCatalano/Imaging/Filters/Invert;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 139
    new-instance v2, LCatalano/Imaging/Filters/GaussianBlur;

    iget-wide v4, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->b:D

    iget v3, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->c:I

    invoke-direct {v2, v4, v5, v3}, LCatalano/Imaging/Filters/GaussianBlur;-><init>(DI)V

    .line 140
    invoke-virtual {v2, v1}, LCatalano/Imaging/Filters/GaussianBlur;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 142
    new-instance v2, LCatalano/Imaging/Filters/Artistic/Blend;

    sget-object v3, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->ColorDodge:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    invoke-direct {v2, v1, v3}, LCatalano/Imaging/Filters/Artistic/Blend;-><init>(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;)V

    .line 143
    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/Artistic/Blend;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 145
    new-instance v1, LCatalano/Imaging/Filters/GammaCorrection;

    iget-wide v4, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->d:D

    invoke-direct {v1, v4, v5}, LCatalano/Imaging/Filters/GammaCorrection;-><init>(D)V

    .line 146
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/GammaCorrection;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 148
    sget-object v1, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Overlay:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    invoke-virtual {v2, v1}, LCatalano/Imaging/Filters/Artistic/Blend;->setAlgorithm(LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;)V

    .line 149
    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/Artistic/Blend;->setOverlay(LCatalano/Imaging/FastBitmap;)V

    .line 150
    invoke-virtual {v2, p1}, LCatalano/Imaging/Filters/Artistic/Blend;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 152
    :cond_0
    return-void
.end method

.method public getGamma()D
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->d:D

    return-wide v0
.end method

.method public getSaturationCorrection()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->a:I

    return v0
.end method

.method public getSigma()D
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->b:D

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->c:I

    return v0
.end method

.method public setGamma(D)V
    .locals 1

    .prologue
    .line 103
    iput-wide p1, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->d:D

    .line 104
    return-void
.end method

.method public setSaturationCorrection(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->a:I

    .line 56
    return-void
.end method

.method public setSigma(D)V
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->b:D

    .line 72
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, LCatalano/Imaging/Filters/Artistic/PencilSketch;->c:I

    .line 88
    return-void
.end method
