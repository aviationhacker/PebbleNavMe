.class public LCatalano/Imaging/Filters/Log;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 13

    .prologue
    const/high16 v12, -0x1000000

    const-wide v6, 0x406fe00000000000L    # 255.0

    const/4 v1, 0x0

    const/16 v3, 0xff

    .line 46
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v6, v4

    .line 47
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v4

    move v0, v1

    .line 49
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_3

    .line 50
    aget v2, v4, v0

    and-int/lit16 v2, v2, 0xff

    .line 53
    if-eqz v2, :cond_0

    int-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    double-to-int v2, v8

    .line 56
    :cond_0
    if-gez v2, :cond_1

    move v2, v1

    .line 57
    :cond_1
    if-le v2, v3, :cond_2

    move v2, v3

    .line 59
    :cond_2
    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v5, v12

    shl-int/lit8 v8, v2, 0x8

    or-int/2addr v5, v8

    or-int/2addr v2, v5

    aput v2, v4, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 63
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v8

    move v0, v1

    .line 64
    :goto_1
    array-length v2, v8

    if-ge v0, v2, :cond_d

    .line 65
    aget v2, v8, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v5, v2, 0xff

    .line 66
    aget v2, v8, v0

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v4, v2, 0xff

    .line 67
    aget v2, v8, v0

    and-int/lit16 v2, v2, 0xff

    .line 70
    if-eqz v5, :cond_4

    int-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    double-to-int v5, v10

    .line 71
    :cond_4
    if-eqz v4, :cond_5

    int-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    double-to-int v4, v10

    .line 72
    :cond_5
    if-eqz v2, :cond_6

    int-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    double-to-int v2, v10

    .line 75
    :cond_6
    if-gez v5, :cond_7

    move v5, v1

    .line 76
    :cond_7
    if-le v5, v3, :cond_8

    move v5, v3

    .line 78
    :cond_8
    if-gez v4, :cond_9

    move v4, v1

    .line 79
    :cond_9
    if-le v4, v3, :cond_a

    move v4, v3

    .line 81
    :cond_a
    if-gez v2, :cond_b

    move v2, v1

    .line 82
    :cond_b
    if-le v2, v3, :cond_c

    move v2, v3

    .line 85
    :cond_c
    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v12

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    or-int/2addr v2, v4

    aput v2, v8, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_d
    return-void
.end method
