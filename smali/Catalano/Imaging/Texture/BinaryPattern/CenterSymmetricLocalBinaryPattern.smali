.class public LCatalano/Imaging/Texture/BinaryPattern/CenterSymmetricLocalBinaryPattern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Texture/BinaryPattern/IBinaryPattern;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LCatalano/Imaging/Texture/BinaryPattern/CenterSymmetricLocalBinaryPattern;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, LCatalano/Imaging/Texture/BinaryPattern/CenterSymmetricLocalBinaryPattern;->a:I

    .line 64
    return-void
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/ImageHistogram;
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CS-LBP only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 73
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 76
    const/16 v0, 0x10

    new-array v6, v0, [I

    move v3, v2

    .line 77
    :goto_0
    if-ge v3, v5, :cond_6

    move v1, v2

    .line 78
    :goto_1
    if-ge v1, v4, :cond_5

    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    iput v7, p0, LCatalano/Imaging/Texture/BinaryPattern/CenterSymmetricLocalBinaryPattern;->a:I

    .line 81
    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p1, v7, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p1, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/CenterSymmetricLocalBinaryPattern;->a:I

    sub-int/2addr v7, v8

    if-ltz v7, :cond_1

    const/16 v0, 0x8

    .line 82
    :cond_1
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/CenterSymmetricLocalBinaryPattern;->a:I

    sub-int/2addr v7, v8

    if-ltz v7, :cond_2

    add-int/lit8 v0, v0, 0x4

    .line 83
    :cond_2
    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v7, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {p1, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/CenterSymmetricLocalBinaryPattern;->a:I

    sub-int/2addr v7, v8

    if-ltz v7, :cond_3

    add-int/lit8 v0, v0, 0x2

    .line 84
    :cond_3
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v3, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p1, v3, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/CenterSymmetricLocalBinaryPattern;->a:I

    sub-int/2addr v7, v8

    if-ltz v7, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 85
    :cond_4
    aget v7, v6, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v0

    .line 78
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 77
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 88
    :cond_6
    new-instance v0, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v0, v6}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, LCatalano/Imaging/Texture/BinaryPattern/CenterSymmetricLocalBinaryPattern;->a:I

    return v0
.end method

.method public setThreshold(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, LCatalano/Imaging/Texture/BinaryPattern/CenterSymmetricLocalBinaryPattern;->a:I

    .line 49
    return-void
.end method
