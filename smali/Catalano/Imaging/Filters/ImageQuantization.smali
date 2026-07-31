.class public LCatalano/Imaging/Filters/ImageQuantization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x10

    iput v0, p0, LCatalano/Imaging/Filters/ImageQuantization;->a:I

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x10

    iput v0, p0, LCatalano/Imaging/Filters/ImageQuantization;->a:I

    .line 46
    invoke-static {p1}, LCatalano/Math/Tools;->isPowerOf2(I)Z

    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/ImageQuantization;->a:I

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {p1}, LCatalano/Math/Tools;->NextPowerOf2(I)I

    move-result v0

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/ImageQuantization;->a:I

    goto :goto_0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 11

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 60
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    .line 61
    iget v0, p0, LCatalano/Imaging/Filters/ImageQuantization;->a:I

    add-int/lit8 v0, v0, -0x1

    div-int v3, v2, v0

    .line 62
    div-int v8, v2, v3

    .line 64
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_3

    move v5, v1

    .line 65
    :goto_0
    if-ge v5, v7, :cond_4

    move v4, v1

    .line 66
    :goto_1
    if-ge v4, v6, :cond_2

    .line 67
    invoke-virtual {p1, v5, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    move v0, v1

    move v2, v3

    .line 69
    :goto_2
    if-ge v0, v8, :cond_1

    .line 70
    mul-int v10, v0, v3

    if-le v9, v10, :cond_0

    if-gt v9, v2, :cond_0

    .line 71
    mul-int v10, v0, v3

    invoke-virtual {p1, v5, v4, v10}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 73
    :cond_0
    add-int/2addr v2, v3

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 66
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 65
    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 80
    :cond_3
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageQuantization only works with grayscale images"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    :cond_4
    return-void
.end method
