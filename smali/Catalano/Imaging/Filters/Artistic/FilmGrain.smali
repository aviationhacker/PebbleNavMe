.class public LCatalano/Imaging/Filters/Artistic/FilmGrain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x7f

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->a:I

    .line 36
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->b:D

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x7f

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->a:I

    .line 36
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->b:D

    .line 80
    iput p1, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->a:I

    .line 81
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x7f

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->a:I

    .line 36
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->b:D

    .line 89
    iput p1, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->a:I

    .line 90
    iput-wide p2, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->b:D

    .line 91
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 96
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    .line 99
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v8

    .line 100
    new-instance v0, LCatalano/Imaging/FastBitmap;

    sget-object v1, LCatalano/Imaging/FastBitmap$ColorSpace;->RGB:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v0, v7, v8, v1}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    move v1, v6

    .line 102
    :goto_0
    if-ge v1, v8, :cond_1

    move v2, v6

    .line 103
    :goto_1
    if-ge v2, v7, :cond_0

    .line 104
    iget v3, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->a:I

    iget v4, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->a:I

    iget v5, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->a:I

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_1
    new-instance v1, LCatalano/Imaging/Filters/GaussianNoise;

    iget-wide v2, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->b:D

    invoke-direct {v1, v2, v3}, LCatalano/Imaging/Filters/GaussianNoise;-><init>(D)V

    .line 109
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/GaussianNoise;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 111
    new-instance v1, LCatalano/Imaging/Filters/Artistic/Blend;

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Overlay:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    invoke-direct {v1, v0, v2}, LCatalano/Imaging/Filters/Artistic/Blend;-><init>(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;)V

    .line 112
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Artistic/Blend;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 115
    :cond_2
    return-void
.end method

.method public getGrain()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->a:I

    return v0
.end method

.method public getStdDev()D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->b:D

    return-wide v0
.end method

.method public setGrain(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->a:I

    .line 52
    return-void
.end method

.method public setStdDev(D)V
    .locals 1

    .prologue
    .line 67
    iput-wide p1, p0, LCatalano/Imaging/Filters/Artistic/FilmGrain;->b:D

    .line 68
    return-void
.end method
