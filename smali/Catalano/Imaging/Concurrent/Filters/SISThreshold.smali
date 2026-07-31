.class public LCatalano/Imaging/Concurrent/Filters/SISThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CalculateThreshold(LCatalano/Imaging/FastBitmap;)I
    .locals 13

    .prologue
    .line 58
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    .line 62
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    .line 63
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .line 65
    const/4 v0, 0x1

    move v10, v0

    :goto_0
    if-ge v10, v12, :cond_2

    .line 66
    const/4 v0, 0x1

    move-wide v6, v2

    move-wide v8, v4

    move v4, v0

    :goto_1
    if-ge v4, v11, :cond_1

    .line 68
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {p1, v0, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    add-int/lit8 v1, v10, -0x1

    invoke-virtual {p1, v1, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    .line 69
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p1, v10, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    add-int/lit8 v3, v4, -0x1

    invoke-virtual {p1, v10, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    .line 71
    cmpl-double v5, v0, v2

    if-lez v5, :cond_0

    .line 72
    :goto_2
    add-double/2addr v8, v0

    .line 73
    invoke-virtual {p1, v10, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    add-double v2, v6, v0

    .line 66
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-wide v6, v2

    goto :goto_1

    :cond_0
    move-wide v0, v2

    .line 71
    goto :goto_2

    .line 65
    :cond_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    move-wide v2, v6

    move-wide v4, v8

    goto :goto_0

    .line 78
    :cond_2
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_3
    div-double v0, v2, v4

    double-to-int v0, v0

    goto :goto_3

    .line 82
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SIS threshold only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0, p1}, LCatalano/Imaging/Concurrent/Filters/SISThreshold;->CalculateThreshold(LCatalano/Imaging/FastBitmap;)I

    move-result v0

    .line 46
    new-instance v1, LCatalano/Imaging/Concurrent/Filters/Threshold;

    invoke-direct {v1, v0}, LCatalano/Imaging/Concurrent/Filters/Threshold;-><init>(I)V

    .line 47
    invoke-virtual {v1, p1}, LCatalano/Imaging/Concurrent/Filters/Threshold;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 49
    return-void
.end method
