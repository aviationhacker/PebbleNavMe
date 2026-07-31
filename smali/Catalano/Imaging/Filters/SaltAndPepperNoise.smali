.class public LCatalano/Imaging/Filters/SaltAndPepperNoise;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Filters/SaltAndPepperNoise;->a:I

    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Filters/SaltAndPepperNoise;->b:Ljava/util/Random;

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Filters/SaltAndPepperNoise;->a:I

    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Filters/SaltAndPepperNoise;->b:Ljava/util/Random;

    .line 50
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/SaltAndPepperNoise;->a:I

    .line 51
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x2

    .line 55
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    .line 56
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    .line 57
    mul-int v3, v1, v2

    iget v4, p0, LCatalano/Imaging/Filters/SaltAndPepperNoise;->a:I

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0xc8

    .line 59
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    :goto_0
    if-ge v0, v3, :cond_4

    .line 61
    iget-object v4, p0, LCatalano/Imaging/Filters/SaltAndPepperNoise;->b:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 62
    iget-object v5, p0, LCatalano/Imaging/Filters/SaltAndPepperNoise;->b:Ljava/util/Random;

    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 64
    new-array v6, v10, [I

    fill-array-data v6, :array_0

    .line 65
    iget-object v7, p0, LCatalano/Imaging/Filters/SaltAndPepperNoise;->b:Ljava/util/Random;

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 67
    aget v6, v6, v7

    invoke-virtual {p1, v4, v5, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    :goto_1
    if-ge v0, v3, :cond_4

    .line 72
    iget-object v4, p0, LCatalano/Imaging/Filters/SaltAndPepperNoise;->b:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 73
    iget-object v5, p0, LCatalano/Imaging/Filters/SaltAndPepperNoise;->b:Ljava/util/Random;

    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 75
    new-array v6, v10, [I

    fill-array-data v6, :array_1

    .line 76
    iget-object v7, p0, LCatalano/Imaging/Filters/SaltAndPepperNoise;->b:Ljava/util/Random;

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 77
    iget-object v8, p0, LCatalano/Imaging/Filters/SaltAndPepperNoise;->b:Ljava/util/Random;

    invoke-virtual {v8, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 79
    if-nez v7, :cond_2

    .line 80
    aget v6, v6, v8

    invoke-virtual {p1, v4, v5, v6}, LCatalano/Imaging/FastBitmap;->setRed(III)V

    .line 71
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_2
    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    .line 83
    aget v6, v6, v8

    invoke-virtual {p1, v4, v5, v6}, LCatalano/Imaging/FastBitmap;->setGreen(III)V

    goto :goto_2

    .line 85
    :cond_3
    if-ne v7, v10, :cond_1

    .line 86
    aget v6, v6, v8

    invoke-virtual {p1, v4, v5, v6}, LCatalano/Imaging/FastBitmap;->setBlue(III)V

    goto :goto_2

    .line 90
    :cond_4
    return-void

    .line 64
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 75
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
