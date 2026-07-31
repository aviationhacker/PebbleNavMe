.class public LCatalano/Imaging/Texture/BinaryPattern/LocalBinaryPattern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Texture/BinaryPattern/IBinaryPattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/ImageHistogram;
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LBP works only with grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 46
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 49
    const/16 v0, 0x100

    new-array v6, v0, [I

    move v3, v2

    .line 51
    :goto_0
    if-ge v3, v5, :cond_a

    move v1, v2

    .line 52
    :goto_1
    if-ge v1, v4, :cond_9

    .line 53
    invoke-virtual {p1, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 54
    const/4 v0, 0x0

    .line 55
    add-int/lit8 v8, v3, -0x1

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {p1, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int/2addr v8, v7

    if-ltz v8, :cond_1

    const/16 v0, 0x80

    .line 56
    :cond_1
    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p1, v8, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int/2addr v8, v7

    if-ltz v8, :cond_2

    add-int/lit8 v0, v0, 0x40

    .line 57
    :cond_2
    add-int/lit8 v8, v3, -0x1

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p1, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int/2addr v8, v7

    if-ltz v8, :cond_3

    add-int/lit8 v0, v0, 0x20

    .line 58
    :cond_3
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v3, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int/2addr v8, v7

    if-ltz v8, :cond_4

    add-int/lit8 v0, v0, 0x10

    .line 59
    :cond_4
    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p1, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int/2addr v8, v7

    if-ltz v8, :cond_5

    add-int/lit8 v0, v0, 0x8

    .line 60
    :cond_5
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int/2addr v8, v7

    if-ltz v8, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 61
    :cond_6
    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {p1, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int/2addr v8, v7

    if-ltz v8, :cond_7

    add-int/lit8 v0, v0, 0x2

    .line 62
    :cond_7
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p1, v3, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int v7, v8, v7

    if-ltz v7, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 63
    :cond_8
    aget v7, v6, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v0

    .line 52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 51
    :cond_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 66
    :cond_a
    new-instance v0, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v0, v6}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    return-object v0
.end method
