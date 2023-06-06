.class public LCatalano/Imaging/Texture/BinaryPattern/WeberBinaryPattern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Texture/BinaryPattern/IBinaryPattern;


# instance fields
.field private a:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const-wide v0, -0x4036666666666666L    # -0.2

    invoke-direct {p0, v0, v1}, LCatalano/Imaging/Texture/BinaryPattern/WeberBinaryPattern;-><init>(D)V

    .line 59
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, LCatalano/Imaging/Texture/BinaryPattern/WeberBinaryPattern;->a:D

    .line 67
    return-void
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/ImageHistogram;
    .locals 14

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WBP works only with grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 75
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 78
    const/16 v0, 0x100

    new-array v6, v0, [I

    move v3, v2

    .line 80
    :goto_0
    if-ge v3, v5, :cond_a

    move v1, v2

    .line 81
    :goto_1
    if-ge v1, v4, :cond_9

    .line 82
    invoke-virtual {p1, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    int-to-double v8, v0

    .line 83
    const/4 v0, 0x0

    .line 84
    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p1, v7, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v10, v7

    sub-double/2addr v10, v8

    div-double/2addr v10, v8

    iget-wide v12, p0, LCatalano/Imaging/Texture/BinaryPattern/WeberBinaryPattern;->a:D

    cmpl-double v7, v10, v12

    if-lez v7, :cond_1

    const/16 v0, 0x80

    .line 85
    :cond_1
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v10, v7

    sub-double/2addr v10, v8

    div-double/2addr v10, v8

    iget-wide v12, p0, LCatalano/Imaging/Texture/BinaryPattern/WeberBinaryPattern;->a:D

    cmpl-double v7, v10, v12

    if-lez v7, :cond_2

    add-int/lit8 v0, v0, 0x40

    .line 86
    :cond_2
    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {p1, v7, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v10, v7

    sub-double/2addr v10, v8

    div-double/2addr v10, v8

    iget-wide v12, p0, LCatalano/Imaging/Texture/BinaryPattern/WeberBinaryPattern;->a:D

    cmpl-double v7, v10, v12

    if-lez v7, :cond_3

    add-int/lit8 v0, v0, 0x20

    .line 87
    :cond_3
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v3, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v10, v7

    sub-double/2addr v10, v8

    div-double/2addr v10, v8

    iget-wide v12, p0, LCatalano/Imaging/Texture/BinaryPattern/WeberBinaryPattern;->a:D

    cmpl-double v7, v10, v12

    if-lez v7, :cond_4

    add-int/lit8 v0, v0, 0x10

    .line 88
    :cond_4
    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {p1, v7, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v10, v7

    sub-double/2addr v10, v8

    div-double/2addr v10, v8

    iget-wide v12, p0, LCatalano/Imaging/Texture/BinaryPattern/WeberBinaryPattern;->a:D

    cmpl-double v7, v10, v12

    if-lez v7, :cond_5

    add-int/lit8 v0, v0, 0x8

    .line 89
    :cond_5
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v10, v7

    sub-double/2addr v10, v8

    div-double/2addr v10, v8

    iget-wide v12, p0, LCatalano/Imaging/Texture/BinaryPattern/WeberBinaryPattern;->a:D

    cmpl-double v7, v10, v12

    if-lez v7, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 90
    :cond_6
    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p1, v7, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v10, v7

    sub-double/2addr v10, v8

    div-double/2addr v10, v8

    iget-wide v12, p0, LCatalano/Imaging/Texture/BinaryPattern/WeberBinaryPattern;->a:D

    cmpl-double v7, v10, v12

    if-lez v7, :cond_7

    add-int/lit8 v0, v0, 0x2

    .line 91
    :cond_7
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p1, v3, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v10, v7

    sub-double/2addr v10, v8

    div-double v8, v10, v8

    iget-wide v10, p0, LCatalano/Imaging/Texture/BinaryPattern/WeberBinaryPattern;->a:D

    cmpl-double v7, v8, v10

    if-lez v7, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 92
    :cond_8
    aget v7, v6, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v0

    .line 81
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 80
    :cond_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 95
    :cond_a
    new-instance v0, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v0, v6}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    return-object v0
.end method

.method public getThreshold()D
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, LCatalano/Imaging/Texture/BinaryPattern/WeberBinaryPattern;->a:D

    return-wide v0
.end method

.method public setThreshold(D)V
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, LCatalano/Imaging/Texture/BinaryPattern/WeberBinaryPattern;->a:D

    .line 51
    return-void
.end method
