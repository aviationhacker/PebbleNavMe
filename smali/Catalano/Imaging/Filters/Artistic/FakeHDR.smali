.class public LCatalano/Imaging/Filters/Artistic/FakeHDR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:D

.field private b:I

.field private c:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->a:D

    .line 38
    const/16 v0, 0x28

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->b:I

    .line 39
    const-wide v0, 0x3fe3d70a3d70a3d7L    # 0.62

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->c:D

    .line 92
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->a:D

    .line 38
    const/16 v0, 0x28

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->b:I

    .line 39
    const-wide v0, 0x3fe3d70a3d70a3d7L    # 0.62

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->c:D

    .line 99
    invoke-virtual {p0, p1, p2}, LCatalano/Imaging/Filters/Artistic/FakeHDR;->setPercentage(D)V

    .line 100
    return-void
.end method

.method public constructor <init>(DID)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->a:D

    .line 38
    const/16 v0, 0x28

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->b:I

    .line 39
    const-wide v0, 0x3fe3d70a3d70a3d7L    # 0.62

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->c:D

    .line 109
    iput-wide p1, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->a:D

    .line 110
    iput p3, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->b:I

    .line 111
    iput-wide p4, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->c:D

    .line 112
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 6

    .prologue
    .line 117
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 118
    new-instance v1, LCatalano/Imaging/FastBitmap;

    invoke-direct {v1, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 120
    new-instance v2, LCatalano/Imaging/Filters/Desaturation;

    iget-wide v4, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->a:D

    invoke-direct {v2, v4, v5}, LCatalano/Imaging/Filters/Desaturation;-><init>(D)V

    .line 121
    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/Desaturation;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 123
    new-instance v2, LCatalano/Imaging/Filters/Invert;

    invoke-direct {v2}, LCatalano/Imaging/Filters/Invert;-><init>()V

    .line 124
    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/Invert;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 126
    new-instance v2, LCatalano/Imaging/Filters/GaussianBoxBlur;

    iget v3, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->b:I

    int-to-double v4, v3

    invoke-direct {v2, v4, v5}, LCatalano/Imaging/Filters/GaussianBoxBlur;-><init>(D)V

    .line 127
    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/GaussianBoxBlur;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 129
    new-instance v2, LCatalano/Imaging/Filters/Artistic/Blend;

    sget-object v3, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Overlay:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    invoke-direct {v2, v1, v3}, LCatalano/Imaging/Filters/Artistic/Blend;-><init>(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;)V

    .line 130
    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/Artistic/Blend;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 132
    new-instance v1, LCatalano/Imaging/FastBitmap;

    invoke-direct {v1, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 134
    sget-object v3, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->LinearLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    invoke-virtual {v2, v3}, LCatalano/Imaging/Filters/Artistic/Blend;->setAlgorithm(LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;)V

    .line 135
    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/Artistic/Blend;->setOverlay(LCatalano/Imaging/FastBitmap;)V

    .line 136
    invoke-virtual {v2, v1}, LCatalano/Imaging/Filters/Artistic/Blend;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 138
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Opacity;

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Artistic/Opacity;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 139
    iget-wide v2, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->c:D

    invoke-virtual {v0, v2, v3}, LCatalano/Imaging/Filters/Artistic/Opacity;->setPercentage(D)V

    .line 140
    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/Artistic/Opacity;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 142
    return-void
.end method

.method public getDesaturation()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->a:D

    return-wide v0
.end method

.method public getPercentage()D
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->c:D

    return-wide v0
.end method

.method public getSigma()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->b:I

    return v0
.end method

.method public setDesaturation(D)V
    .locals 1

    .prologue
    .line 54
    iput-wide p1, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->a:D

    .line 55
    return-void
.end method

.method public setPercentage(D)V
    .locals 5

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->c:D

    .line 87
    return-void
.end method

.method public setSigma(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, LCatalano/Imaging/Filters/Artistic/FakeHDR;->b:I

    .line 71
    return-void
.end method
