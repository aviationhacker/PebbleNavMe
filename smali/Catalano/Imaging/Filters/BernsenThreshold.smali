.class public LCatalano/Imaging/Filters/BernsenThreshold;
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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/BernsenThreshold;->a:I

    .line 46
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/BernsenThreshold;->b:D

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/BernsenThreshold;->a:I

    .line 46
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/BernsenThreshold;->b:D

    .line 90
    iput p1, p0, LCatalano/Imaging/Filters/BernsenThreshold;->a:I

    .line 91
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/BernsenThreshold;->a:I

    .line 46
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/BernsenThreshold;->b:D

    .line 99
    iput p1, p0, LCatalano/Imaging/Filters/BernsenThreshold;->a:I

    .line 100
    iput-wide p2, p0, LCatalano/Imaging/Filters/BernsenThreshold;->b:D

    .line 101
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/16 v1, 0xff

    const/4 v2, 0x0

    .line 106
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 109
    new-instance v5, LCatalano/Imaging/FastBitmap;

    invoke-direct {v5, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 111
    new-instance v0, LCatalano/Imaging/Filters/Maximum;

    iget v3, p0, LCatalano/Imaging/Filters/BernsenThreshold;->a:I

    invoke-direct {v0, v3}, LCatalano/Imaging/Filters/Maximum;-><init>(I)V

    .line 112
    invoke-virtual {v0, v4}, LCatalano/Imaging/Filters/Maximum;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 114
    new-instance v0, LCatalano/Imaging/Filters/Minimum;

    iget v3, p0, LCatalano/Imaging/Filters/BernsenThreshold;->a:I

    invoke-direct {v0, v3}, LCatalano/Imaging/Filters/Minimum;-><init>(I)V

    .line 115
    invoke-virtual {v0, v5}, LCatalano/Imaging/Filters/Minimum;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 117
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    mul-int v6, v0, v3

    move v3, v2

    .line 119
    :goto_0
    if-ge v3, v6, :cond_4

    .line 120
    invoke-virtual {v4, v3}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    invoke-virtual {v5, v3}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v7

    sub-int/2addr v0, v7

    int-to-double v8, v0

    .line 121
    invoke-virtual {v4, v3}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    invoke-virtual {v5, v3}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v7

    add-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x2

    int-to-double v10, v0

    .line 123
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    .line 124
    iget-wide v12, p0, LCatalano/Imaging/Filters/BernsenThreshold;->b:D

    cmpg-double v7, v8, v12

    if-gez v7, :cond_1

    .line 125
    const-wide/high16 v8, 0x4060000000000000L    # 128.0

    cmpl-double v0, v10, v8

    if-ltz v0, :cond_0

    move v0, v1

    .line 129
    :goto_1
    invoke-virtual {p1, v3, v0}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 119
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 125
    goto :goto_1

    .line 127
    :cond_1
    int-to-double v8, v0

    cmpl-double v0, v8, v10

    if-ltz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    .line 133
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bernsen Threshold only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_4
    return-void
.end method

.method public getContrastThreshold()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, LCatalano/Imaging/Filters/BernsenThreshold;->b:D

    return-wide v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, LCatalano/Imaging/Filters/BernsenThreshold;->a:I

    return v0
.end method

.method public setContrastThreshold(D)V
    .locals 3

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Filters/BernsenThreshold;->b:D

    .line 78
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/BernsenThreshold;->a:I

    .line 62
    return-void
.end method
