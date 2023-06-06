.class public LCatalano/Imaging/Filters/Artistic/HeatMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Artistic/HeatMap;->a:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Artistic/HeatMap;->a:Z

    .line 64
    iput-boolean p1, p0, LCatalano/Imaging/Filters/Artistic/HeatMap;->a:Z

    .line 65
    return-void
.end method

.method private a(DDD)[I
    .locals 13

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    const/4 v1, 0x0

    .line 104
    const/4 v2, 0x0

    .line 106
    sub-double v4, p1, p3

    sub-double v6, p5, p3

    div-double/2addr v4, v6

    .line 108
    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_3

    .line 109
    const-wide v2, 0x3fc999999999999aL    # 0.2

    div-double v2, v4, v2

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    .line 114
    :cond_0
    :goto_0
    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_4

    .line 115
    const-wide v6, 0x3fc999999999999aL    # 0.2

    sub-double v6, v4, v6

    const-wide v8, 0x3fd999999999999aL    # 0.4

    div-double/2addr v6, v8

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 120
    :cond_1
    :goto_1
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_2

    .line 121
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    div-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 124
    :cond_2
    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const/4 v0, 0x2

    aput v2, v3, v0

    return-object v3

    .line 110
    :cond_3
    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    const-wide v6, 0x3fe6666666666666L    # 0.7

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_0

    .line 111
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fc999999999999aL    # 0.2

    sub-double v6, v4, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    div-double/2addr v6, v8

    sub-double/2addr v2, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    goto :goto_0

    .line 116
    :cond_4
    const-wide v6, 0x3fe3333333333333L    # 0.6

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1

    .line 117
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3fe3333333333333L    # 0.6

    sub-double v8, v4, v8

    const-wide v10, 0x3fd3333333333333L    # 0.3

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v6, v8

    double-to-int v1, v6

    goto :goto_1
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/4 v8, 0x0

    .line 70
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->toGrayscale()V

    .line 74
    :cond_0
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Artistic/HeatMap;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, LCatalano/Imaging/Filters/Invert;

    invoke-direct {v0}, LCatalano/Imaging/Filters/Invert;-><init>()V

    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/Invert;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 76
    :cond_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v10

    .line 77
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v11

    .line 79
    invoke-static {p1}, LCatalano/Imaging/Tools/ImageStatistics;->Minimum(LCatalano/Imaging/FastBitmap;)I

    move-result v12

    .line 80
    invoke-static {p1}, LCatalano/Imaging/Tools/ImageStatistics;->Maximum(LCatalano/Imaging/FastBitmap;)I

    move-result v13

    .line 82
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->toRGB()V

    move v9, v8

    .line 83
    :goto_0
    if-ge v9, v11, :cond_3

    move v0, v8

    .line 84
    :goto_1
    if-ge v0, v10, :cond_2

    .line 86
    invoke-virtual {p1, v9, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v1

    int-to-double v2, v1

    int-to-double v4, v12

    int-to-double v6, v13

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, LCatalano/Imaging/Filters/Artistic/HeatMap;->a(DDD)[I

    move-result-object v1

    .line 87
    invoke-virtual {p1, v9, v0, v1}, LCatalano/Imaging/FastBitmap;->setRGB(II[I)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 91
    :cond_3
    return-void
.end method

.method public isInvert()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Artistic/HeatMap;->a:Z

    return v0
.end method

.method public setInvert(Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, LCatalano/Imaging/Filters/Artistic/HeatMap;->a:Z

    .line 52
    return-void
.end method
