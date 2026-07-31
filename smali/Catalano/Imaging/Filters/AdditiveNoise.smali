.class public LCatalano/Imaging/Filters/AdditiveNoise;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, -0xa

    iput v0, p0, LCatalano/Imaging/Filters/AdditiveNoise;->a:I

    .line 41
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Filters/AdditiveNoise;->b:I

    .line 78
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, -0xa

    iput v0, p0, LCatalano/Imaging/Filters/AdditiveNoise;->a:I

    .line 41
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Filters/AdditiveNoise;->b:I

    .line 86
    iput p1, p0, LCatalano/Imaging/Filters/AdditiveNoise;->a:I

    .line 87
    iput p2, p0, LCatalano/Imaging/Filters/AdditiveNoise;->b:I

    .line 88
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntRange;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, -0xa

    iput v0, p0, LCatalano/Imaging/Filters/AdditiveNoise;->a:I

    .line 41
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Filters/AdditiveNoise;->b:I

    .line 95
    invoke-virtual {p1}, LCatalano/Core/IntRange;->getMin()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/AdditiveNoise;->a:I

    .line 96
    invoke-virtual {p1}, LCatalano/Core/IntRange;->getMax()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/AdditiveNoise;->b:I

    .line 97
    return-void
.end method

.method private a(II)I
    .locals 8

    .prologue
    .line 150
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    sub-int v1, p1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v4, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 11

    .prologue
    const/16 v10, 0xff

    const/4 v6, 0x0

    .line 102
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    .line 105
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    move v1, v6

    .line 107
    :goto_0
    if-ge v1, v3, :cond_4

    move v0, v6

    .line 108
    :goto_1
    if-ge v0, v2, :cond_0

    .line 110
    invoke-virtual {p1, v1, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    .line 111
    iget v5, p0, LCatalano/Imaging/Filters/AdditiveNoise;->a:I

    iget v7, p0, LCatalano/Imaging/Filters/AdditiveNoise;->b:I

    invoke-direct {p0, v5, v7}, LCatalano/Imaging/Filters/AdditiveNoise;->a(II)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 112
    invoke-virtual {p1, v1, v0, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    .line 120
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v8

    move v1, v6

    .line 122
    :goto_2
    if-ge v1, v8, :cond_4

    move v2, v6

    .line 123
    :goto_3
    if-ge v2, v7, :cond_2

    .line 125
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    .line 126
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    .line 127
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    .line 129
    iget v3, p0, LCatalano/Imaging/Filters/AdditiveNoise;->a:I

    iget v9, p0, LCatalano/Imaging/Filters/AdditiveNoise;->b:I

    invoke-direct {p0, v3, v9}, LCatalano/Imaging/Filters/AdditiveNoise;->a(II)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 130
    iget v0, p0, LCatalano/Imaging/Filters/AdditiveNoise;->a:I

    iget v9, p0, LCatalano/Imaging/Filters/AdditiveNoise;->b:I

    invoke-direct {p0, v0, v9}, LCatalano/Imaging/Filters/AdditiveNoise;->a(II)I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 131
    iget v0, p0, LCatalano/Imaging/Filters/AdditiveNoise;->a:I

    iget v9, p0, LCatalano/Imaging/Filters/AdditiveNoise;->b:I

    invoke-direct {p0, v0, v9}, LCatalano/Imaging/Filters/AdditiveNoise;->a(II)I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object v0, p1

    .line 133
    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 122
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 139
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Additive Noise only supports Grayscale and RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_4
    return-void
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, LCatalano/Imaging/Filters/AdditiveNoise;->b:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, LCatalano/Imaging/Filters/AdditiveNoise;->a:I

    return v0
.end method

.method public setMax(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, LCatalano/Imaging/Filters/AdditiveNoise;->b:I

    .line 73
    return-void
.end method

.method public setMin(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, LCatalano/Imaging/Filters/AdditiveNoise;->a:I

    .line 57
    return-void
.end method
