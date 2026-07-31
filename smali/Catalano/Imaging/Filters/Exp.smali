.class public LCatalano/Imaging/Filters/Exp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 12

    .prologue
    .line 47
    const-wide v0, 0x406fe00000000000L    # 255.0

    const-wide v2, 0x406fe00000000000L    # 255.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double v8, v0, v2

    .line 48
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v1

    .line 50
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 51
    aget v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    .line 52
    div-double/2addr v2, v8

    invoke-static {v2, v3}, LCatalano/Math/Approximation;->Highprecision_Exp(D)D

    move-result-wide v2

    .line 55
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v2, 0x0

    .line 56
    :cond_0
    const-wide v4, 0x406fe00000000000L    # 255.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 58
    :cond_1
    const/high16 v4, -0x1000000

    double-to-int v5, v2

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    double-to-int v5, v2

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    double-to-int v2, v2

    or-int/2addr v2, v4

    aput v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v1

    .line 64
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_9

    .line 65
    aget v2, v1, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    .line 66
    aget v4, v1, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    .line 67
    aget v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    int-to-double v10, v6

    .line 69
    div-double/2addr v2, v8

    invoke-static {v2, v3}, LCatalano/Math/Approximation;->Highprecision_Exp(D)D

    move-result-wide v6

    .line 70
    div-double v2, v4, v8

    invoke-static {v2, v3}, LCatalano/Math/Approximation;->Highprecision_Exp(D)D

    move-result-wide v4

    .line 71
    div-double v2, v10, v8

    invoke-static {v2, v3}, LCatalano/Math/Approximation;->Highprecision_Exp(D)D

    move-result-wide v2

    .line 74
    const-wide/16 v10, 0x0

    cmpg-double v10, v6, v10

    if-gez v10, :cond_3

    const-wide/16 v6, 0x0

    .line 75
    :cond_3
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v10, v6, v10

    if-lez v10, :cond_4

    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 77
    :cond_4
    const-wide/16 v10, 0x0

    cmpg-double v10, v4, v10

    if-gez v10, :cond_5

    const-wide/16 v4, 0x0

    .line 78
    :cond_5
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v10, v4, v10

    if-lez v10, :cond_6

    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 80
    :cond_6
    const-wide/16 v10, 0x0

    cmpg-double v10, v2, v10

    if-gez v10, :cond_7

    const-wide/16 v2, 0x0

    .line 81
    :cond_7
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v10, v2, v10

    if-lez v10, :cond_8

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 83
    :cond_8
    const/high16 v10, -0x1000000

    double-to-int v6, v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v10

    double-to-int v4, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v6

    double-to-int v2, v2

    or-int/2addr v2, v4

    aput v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_9
    return-void
.end method
