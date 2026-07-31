.class public LCatalano/Imaging/Texture/BinaryPattern/MedianBinaryPattern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Texture/BinaryPattern/IBinaryPattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/ImageHistogram;
    .locals 14

    .prologue
    const/16 v13, 0x1ff

    const/4 v12, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MBP only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 48
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 51
    new-array v7, v13, [I

    .line 52
    const/16 v0, 0x9

    new-array v8, v0, [I

    move v4, v3

    .line 54
    :goto_0
    if-ge v4, v6, :cond_b

    move v2, v3

    .line 55
    :goto_1
    if-ge v2, v5, :cond_a

    .line 56
    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p1, v0, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    aput v0, v8, v1

    .line 57
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p1, v0, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    aput v0, v8, v3

    .line 58
    const/4 v0, 0x2

    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    aput v9, v8, v0

    .line 59
    const/4 v0, 0x3

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    aput v9, v8, v0

    .line 60
    invoke-virtual {p1, v4, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    aput v0, v8, v12

    .line 61
    const/4 v0, 0x5

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    aput v9, v8, v0

    .line 62
    const/4 v0, 0x6

    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    aput v9, v8, v0

    .line 63
    const/4 v0, 0x7

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    aput v9, v8, v0

    .line 64
    const/16 v0, 0x8

    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    aput v9, v8, v0

    .line 66
    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    .line 67
    aget v9, v8, v12

    .line 70
    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v0, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    sub-int/2addr v0, v9

    if-ltz v0, :cond_c

    const/16 v0, 0x80

    .line 71
    :goto_2
    add-int/lit8 v10, v4, -0x1

    invoke-virtual {p1, v10, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    sub-int/2addr v10, v9

    if-ltz v10, :cond_1

    add-int/lit8 v0, v0, 0x40

    .line 72
    :cond_1
    add-int/lit8 v10, v4, -0x1

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    sub-int/2addr v10, v9

    if-ltz v10, :cond_2

    add-int/lit8 v0, v0, 0x20

    .line 73
    :cond_2
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v4, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    sub-int/2addr v10, v9

    if-ltz v10, :cond_3

    add-int/lit8 v0, v0, 0x10

    .line 74
    :cond_3
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    sub-int/2addr v10, v9

    if-ltz v10, :cond_4

    add-int/lit8 v0, v0, 0x8

    .line 75
    :cond_4
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p1, v10, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    sub-int/2addr v10, v9

    if-ltz v10, :cond_5

    add-int/lit8 v0, v0, 0x4

    .line 76
    :cond_5
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {p1, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    sub-int/2addr v10, v9

    if-ltz v10, :cond_6

    add-int/lit8 v0, v0, 0x2

    .line 77
    :cond_6
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v4, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    sub-int/2addr v10, v9

    if-ltz v10, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 80
    :cond_7
    invoke-virtual {p1, v4, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    sub-int v9, v10, v9

    if-ltz v9, :cond_8

    add-int/lit16 v0, v0, 0x100

    .line 83
    :cond_8
    if-ne v0, v13, :cond_9

    move v0, v1

    .line 85
    :cond_9
    aget v9, v7, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v0

    .line 55
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 54
    :cond_a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    .line 88
    :cond_b
    new-instance v0, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v0, v7}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    return-object v0

    :cond_c
    move v0, v1

    goto :goto_2
.end method
