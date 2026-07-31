.class public LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Texture/BinaryPattern/IBinaryPattern;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;-><init>(II)V

    .line 28
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    .line 37
    iput p2, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    .line 38
    return-void
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/ImageHistogram;
    .locals 12

    .prologue
    .line 43
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Multiblock LBP works only with grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    :cond_0
    new-instance v3, LCatalano/Imaging/Tools/IntegralImage;

    invoke-direct {v3, p1}, LCatalano/Imaging/Tools/IntegralImage;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 52
    const/16 v0, 0x100

    new-array v4, v0, [I

    .line 54
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    iget v1, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    mul-int/lit8 v1, v1, 0x3

    sub-int v5, v0, v1

    .line 55
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    iget v1, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    mul-int/lit8 v1, v1, 0x3

    sub-int v6, v0, v1

    .line 56
    const/16 v0, 0x9

    new-array v7, v0, [I

    .line 58
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v6, :cond_a

    .line 59
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_9

    .line 62
    const/4 v0, 0x0

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    add-int/2addr v8, v2

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    add-int/2addr v9, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v2, v1, v8, v9}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMean(IIII)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v0

    .line 63
    const/4 v0, 0x1

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v2, v8, v9, v10}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMean(IIII)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v0

    .line 64
    const/4 v0, 0x2

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    iget v9, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    mul-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v2, v8, v9, v10}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMean(IIII)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v0

    .line 67
    const/4 v0, 0x3

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    add-int/2addr v8, v2

    iget v9, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v8, v1, v9, v10}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMean(IIII)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v0

    .line 68
    const/4 v0, 0x4

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    add-int/2addr v8, v2

    iget v9, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    add-int/2addr v9, v1

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v2

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v8, v9, v10, v11}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMean(IIII)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v0

    .line 69
    const/4 v0, 0x5

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    add-int/2addr v8, v2

    iget v9, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    iget v10, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v2

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v8, v9, v10, v11}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMean(IIII)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v0

    .line 72
    const/4 v0, 0x6

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    iget v9, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v8, v1, v9, v10}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMean(IIII)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v0

    .line 73
    const/4 v0, 0x7

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    iget v9, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    add-int/2addr v9, v1

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    mul-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v2

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v8, v9, v10, v11}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMean(IIII)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v0

    .line 74
    const/16 v0, 0x8

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    iget v9, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    iget v10, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->b:I

    mul-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v2

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, LCatalano/Imaging/Texture/BinaryPattern/MultiblockLocalBinaryPattern;->a:I

    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v8, v9, v10, v11}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMean(IIII)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v0

    .line 76
    const/4 v0, 0x0

    .line 78
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, 0x4

    aget v9, v7, v9

    sub-int/2addr v8, v9

    if-ltz v8, :cond_1

    const/16 v0, 0x80

    .line 79
    :cond_1
    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, 0x4

    aget v9, v7, v9

    sub-int/2addr v8, v9

    if-ltz v8, :cond_2

    add-int/lit8 v0, v0, 0x40

    .line 80
    :cond_2
    const/4 v8, 0x2

    aget v8, v7, v8

    const/4 v9, 0x4

    aget v9, v7, v9

    sub-int/2addr v8, v9

    if-ltz v8, :cond_3

    add-int/lit8 v0, v0, 0x20

    .line 81
    :cond_3
    const/4 v8, 0x5

    aget v8, v7, v8

    const/4 v9, 0x4

    aget v9, v7, v9

    sub-int/2addr v8, v9

    if-ltz v8, :cond_4

    add-int/lit8 v0, v0, 0x10

    .line 82
    :cond_4
    const/16 v8, 0x8

    aget v8, v7, v8

    const/4 v9, 0x4

    aget v9, v7, v9

    sub-int/2addr v8, v9

    if-ltz v8, :cond_5

    add-int/lit8 v0, v0, 0x8

    .line 83
    :cond_5
    const/4 v8, 0x7

    aget v8, v7, v8

    const/4 v9, 0x4

    aget v9, v7, v9

    sub-int/2addr v8, v9

    if-ltz v8, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 84
    :cond_6
    const/4 v8, 0x6

    aget v8, v7, v8

    const/4 v9, 0x4

    aget v9, v7, v9

    sub-int/2addr v8, v9

    if-ltz v8, :cond_7

    add-int/lit8 v0, v0, 0x2

    .line 85
    :cond_7
    const/4 v8, 0x3

    aget v8, v7, v8

    const/4 v9, 0x4

    aget v9, v7, v9

    sub-int/2addr v8, v9

    if-ltz v8, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 86
    :cond_8
    aget v8, v4, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, v4, v0

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 58
    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 89
    :cond_a
    new-instance v0, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v0, v4}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    return-object v0
.end method
