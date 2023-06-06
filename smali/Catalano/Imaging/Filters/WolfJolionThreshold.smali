.class public LCatalano/Imaging/Filters/WolfJolionThreshold;
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
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->a:I

    .line 39
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->b:D

    .line 40
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->c:D

    .line 93
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->a:I

    .line 39
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->b:D

    .line 40
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->c:D

    .line 109
    iput-wide p1, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->b:D

    .line 110
    iput-wide p3, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->c:D

    .line 111
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->a:I

    .line 39
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->b:D

    .line 40
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->c:D

    .line 100
    iput p1, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->a:I

    .line 101
    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->a:I

    .line 39
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->b:D

    .line 40
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->c:D

    .line 120
    iput p1, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->a:I

    .line 121
    iput-wide p2, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->b:D

    .line 122
    iput-wide p4, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->c:D

    .line 123
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 20

    .prologue
    .line 128
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    new-instance v6, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 131
    new-instance v7, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 133
    new-instance v2, LCatalano/Imaging/Filters/Integral/IntegralMean;

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/WolfJolionThreshold;->a:I

    invoke-direct {v2, v3}, LCatalano/Imaging/Filters/Integral/IntegralMean;-><init>(I)V

    .line 134
    invoke-virtual {v2, v6}, LCatalano/Imaging/Filters/Integral/IntegralMean;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 136
    new-instance v2, LCatalano/Imaging/Filters/Integral/IntegralVariance;

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/WolfJolionThreshold;->a:I

    invoke-direct {v2, v3}, LCatalano/Imaging/Filters/Integral/IntegralVariance;-><init>(I)V

    .line 137
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/Integral/IntegralVariance;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 139
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    mul-int v8, v2, v3

    .line 141
    const/4 v3, 0x0

    .line 142
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v8, :cond_0

    .line 143
    invoke-virtual {v7, v4}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    .line 144
    if-le v2, v3, :cond_6

    .line 142
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_0

    .line 147
    :cond_0
    const/16 v4, 0xff

    .line 148
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-ge v5, v8, :cond_1

    .line 149
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    .line 150
    if-ge v2, v4, :cond_5

    .line 148
    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    goto :goto_2

    .line 153
    :cond_1
    const/4 v2, 0x0

    move v5, v2

    :goto_4
    if-ge v5, v8, :cond_4

    .line 154
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    int-to-double v10, v2

    .line 155
    invoke-virtual {v6, v5}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    int-to-double v12, v2

    .line 156
    invoke-virtual {v7, v5}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    int-to-double v14, v2

    .line 158
    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/WolfJolionThreshold;->b:D

    move-wide/from16 v16, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    int-to-double v0, v3

    move-wide/from16 v18, v0

    div-double v14, v14, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v18

    int-to-double v0, v4

    move-wide/from16 v18, v0

    sub-double v18, v12, v18

    mul-double v14, v14, v18

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    cmpl-double v2, v10, v12

    if-lez v2, :cond_2

    const/16 v2, 0xff

    .line 160
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v2}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 153
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_4

    .line 158
    :cond_2
    const/4 v2, 0x0

    goto :goto_5

    .line 165
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wolf Threshold only works in grayscale images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_4
    return-void

    :cond_5
    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method public getK()D
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->b:D

    return-wide v0
.end method

.method public getR()D
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->c:D

    return-wide v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->a:I

    return v0
.end method

.method public setK(D)V
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->b:D

    .line 72
    return-void
.end method

.method public setR(D)V
    .locals 1

    .prologue
    .line 87
    iput-wide p1, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->c:D

    .line 88
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, LCatalano/Imaging/Filters/WolfJolionThreshold;->a:I

    .line 56
    return-void
.end method
