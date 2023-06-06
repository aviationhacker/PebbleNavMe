.class public LCatalano/Imaging/Texture/BinaryPattern/ImprovedLocalBinaryPattern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Texture/BinaryPattern/IBinaryPattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/ImageHistogram;
    .locals 12

    .prologue
    const/16 v11, 0x1ff

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ILBP works only with grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 47
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 50
    new-array v8, v11, [I

    move v5, v3

    .line 52
    :goto_0
    if-ge v5, v7, :cond_b

    move v2, v3

    move v0, v1

    .line 54
    :goto_1
    if-ge v2, v6, :cond_a

    .line 55
    add-int/lit8 v4, v5, -0x1

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 56
    add-int/lit8 v4, v5, -0x1

    invoke-virtual {p1, v4, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 57
    add-int/lit8 v4, v5, -0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 58
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v5, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 59
    invoke-virtual {p1, v5, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 60
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v5, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 61
    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 62
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p1, v4, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 63
    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 64
    div-int/lit8 v4, v0, 0x9

    .line 67
    add-int/lit8 v0, v5, -0x1

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p1, v0, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    sub-int/2addr v0, v4

    if-ltz v0, :cond_c

    const/16 v0, 0x80

    .line 68
    :goto_2
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v4

    if-ltz v9, :cond_1

    add-int/lit8 v0, v0, 0x40

    .line 69
    :cond_1
    add-int/lit8 v9, v5, -0x1

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v4

    if-ltz v9, :cond_2

    add-int/lit8 v0, v0, 0x20

    .line 70
    :cond_2
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v5, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v4

    if-ltz v9, :cond_3

    add-int/lit8 v0, v0, 0x10

    .line 71
    :cond_3
    add-int/lit8 v9, v5, 0x1

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v4

    if-ltz v9, :cond_4

    add-int/lit8 v0, v0, 0x8

    .line 72
    :cond_4
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v4

    if-ltz v9, :cond_5

    add-int/lit8 v0, v0, 0x4

    .line 73
    :cond_5
    add-int/lit8 v9, v5, 0x1

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v4

    if-ltz v9, :cond_6

    add-int/lit8 v0, v0, 0x2

    .line 74
    :cond_6
    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p1, v5, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v4

    if-ltz v9, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 77
    :cond_7
    invoke-virtual {p1, v5, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v4

    if-ltz v9, :cond_8

    add-int/lit16 v0, v0, 0x100

    .line 80
    :cond_8
    if-ne v0, v11, :cond_9

    move v0, v1

    .line 82
    :cond_9
    aget v9, v8, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v0

    .line 54
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto/16 :goto_1

    .line 52
    :cond_a
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 85
    :cond_b
    new-instance v0, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v0, v8}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    return-object v0

    :cond_c
    move v0, v1

    goto :goto_2
.end method
