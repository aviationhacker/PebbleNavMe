.class public LCatalano/Imaging/Filters/Artistic/Solarize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p1, p2}, LCatalano/Imaging/Filters/Artistic/Solarize;->setPercentage(D)V

    .line 63
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 4

    .prologue
    .line 68
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 69
    new-instance v1, LCatalano/Imaging/FastBitmap;

    invoke-direct {v1, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 71
    new-instance v2, LCatalano/Imaging/Filters/Invert;

    invoke-direct {v2}, LCatalano/Imaging/Filters/Invert;-><init>()V

    .line 72
    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/Invert;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 74
    new-instance v2, LCatalano/Imaging/Filters/Artistic/Blend;

    sget-object v3, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Difference:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    invoke-direct {v2, v0, v3}, LCatalano/Imaging/Filters/Artistic/Blend;-><init>(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;)V

    .line 75
    invoke-virtual {v2, v1}, LCatalano/Imaging/Filters/Artistic/Blend;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 77
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->recycle()V

    .line 79
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Opacity;

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Artistic/Opacity;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 80
    iget-wide v2, p0, LCatalano/Imaging/Filters/Artistic/Solarize;->a:D

    invoke-virtual {v0, v2, v3}, LCatalano/Imaging/Filters/Artistic/Opacity;->setPercentage(D)V

    .line 81
    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/Artistic/Opacity;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 83
    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->recycle()V

    .line 85
    return-void
.end method

.method public getPercentage()D
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, LCatalano/Imaging/Filters/Artistic/Solarize;->a:D

    return-wide v0
.end method

.method public setPercentage(D)V
    .locals 5

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/Solarize;->a:D

    .line 50
    return-void
.end method
