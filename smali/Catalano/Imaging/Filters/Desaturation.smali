.class public LCatalano/Imaging/Filters/Desaturation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, LCatalano/Imaging/Filters/Desaturation;->a:D

    .line 58
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, LCatalano/Imaging/Filters/Desaturation;->a:D

    .line 65
    invoke-virtual {p0, p1, p2}, LCatalano/Imaging/Filters/Desaturation;->setSaturationFactor(D)V

    .line 66
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 12

    .prologue
    .line 71
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v1

    .line 75
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 77
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v2

    int-to-double v2, v2

    .line 78
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    int-to-double v4, v4

    .line 79
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    int-to-double v6, v6

    .line 81
    const-wide v8, 0x3fcb333333333333L    # 0.2125

    mul-double/2addr v8, v2

    const-wide v10, 0x3fe6e48e8a71de6aL    # 0.7154

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide v10, 0x3fb27525460aa64cL    # 0.0721

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    .line 83
    iget-wide v10, p0, LCatalano/Imaging/Filters/Desaturation;->a:D

    sub-double/2addr v2, v8

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    .line 84
    iget-wide v10, p0, LCatalano/Imaging/Filters/Desaturation;->a:D

    sub-double/2addr v4, v8

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    .line 85
    iget-wide v10, p0, LCatalano/Imaging/Filters/Desaturation;->a:D

    sub-double/2addr v6, v8

    mul-double/2addr v6, v10

    add-double/2addr v6, v8

    .line 87
    double-to-int v2, v2

    double-to-int v3, v4

    double-to-int v4, v6

    invoke-virtual {p1, v0, v2, v3, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Desaturation only works in RGB space color."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    return-void
.end method

.method public getSaturationFactor()D
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, LCatalano/Imaging/Filters/Desaturation;->a:D

    return-wide v0
.end method

.method public setSaturationFactor(D)V
    .locals 5

    .prologue
    .line 52
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Desaturation;->a:D

    .line 53
    return-void
.end method
