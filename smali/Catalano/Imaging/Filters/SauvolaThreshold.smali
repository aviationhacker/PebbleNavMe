.class public LCatalano/Imaging/Filters/SauvolaThreshold;
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

    iput v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->a:I

    .line 38
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->b:D

    .line 39
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->c:D

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

    iput v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->a:I

    .line 38
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->b:D

    .line 39
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->c:D

    .line 108
    iput-wide p1, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->b:D

    .line 109
    iput-wide p3, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->c:D

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

    iput v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->a:I

    .line 38
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->b:D

    .line 39
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->c:D

    .line 99
    iput p1, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->a:I

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

    iput v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->a:I

    .line 38
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->b:D

    .line 39
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->c:D

    .line 119
    iput p1, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->a:I

    .line 120
    iput-wide p2, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->b:D

    .line 121
    iput-wide p4, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->c:D

    .line 122
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 20

    .prologue
    .line 127
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    new-instance v4, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 130
    new-instance v5, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 132
    new-instance v2, LCatalano/Imaging/Filters/Integral/IntegralMean;

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/SauvolaThreshold;->a:I

    invoke-direct {v2, v3}, LCatalano/Imaging/Filters/Integral/IntegralMean;-><init>(I)V

    .line 133
    invoke-virtual {v2, v4}, LCatalano/Imaging/Filters/Integral/IntegralMean;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 135
    new-instance v2, LCatalano/Imaging/Filters/Integral/IntegralVariance;

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/SauvolaThreshold;->a:I

    invoke-direct {v2, v3}, LCatalano/Imaging/Filters/Integral/IntegralVariance;-><init>(I)V

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/Integral/IntegralVariance;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 138
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    mul-int v6, v2, v3

    .line 140
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_2

    .line 141
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    int-to-double v8, v2

    .line 142
    invoke-virtual {v4, v3}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    int-to-double v10, v2

    .line 143
    invoke-virtual {v5, v3}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    int-to-double v12, v2

    .line 144
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/SauvolaThreshold;->b:D

    move-wide/from16 v16, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/SauvolaThreshold;->c:D

    move-wide/from16 v18, v0

    div-double v12, v12, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v12, v12, v18

    mul-double v12, v12, v16

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    cmpl-double v2, v8, v10

    if-lez v2, :cond_0

    const/16 v2, 0xff

    .line 146
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 140
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 144
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 151
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Sauvola Threshold only works in grayscale images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_2
    return-void
.end method

.method public getK()D
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->b:D

    return-wide v0
.end method

.method public getR()D
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->c:D

    return-wide v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->a:I

    return v0
.end method

.method public setK(D)V
    .locals 1

    .prologue
    .line 70
    iput-wide p1, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->b:D

    .line 71
    return-void
.end method

.method public setR(D)V
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->c:D

    .line 87
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, LCatalano/Imaging/Filters/SauvolaThreshold;->a:I

    .line 55
    return-void
.end method
