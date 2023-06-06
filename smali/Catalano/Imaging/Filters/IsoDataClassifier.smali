.class public LCatalano/Imaging/Filters/IsoDataClassifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field a:I

.field b:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Filters/IsoDataClassifier;->a:I

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0xff

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/IsoDataClassifier;->a:I

    .line 54
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/IsoDataClassifier;->a:I

    .line 55
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)[I
    .locals 5

    .prologue
    .line 80
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v1

    .line 81
    const/16 v0, 0x100

    new-array v2, v0, [I

    .line 83
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 84
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v3

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-object v2
.end method

.method private a([II)[I
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 97
    array-length v0, p1

    new-array v9, v0, [I

    move v0, v1

    move v2, v1

    .line 99
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 100
    aget v3, p1, v0

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v1

    move v8, v1

    move v6, v1

    .line 102
    :goto_1
    if-ge v8, p2, :cond_4

    move v0, v1

    move v3, v4

    move v5, v6

    .line 104
    :goto_2
    array-length v7, p1

    if-ge v3, v7, :cond_1

    mul-int v7, v5, p2

    div-int/2addr v7, v2

    add-int/lit8 v10, v8, 0x1

    if-ge v7, v10, :cond_1

    .line 105
    aget v7, p1, v3

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    .line 106
    add-int/lit8 v5, v3, 0x1

    aget v3, p1, v3

    add-int/2addr v0, v3

    move v3, v5

    move v5, v7

    goto :goto_2

    .line 108
    :cond_1
    if-lez v0, :cond_2

    sub-int v6, v5, v6

    div-int v0, v6, v0

    .line 109
    :goto_3
    if-ge v4, v3, :cond_3

    .line 110
    add-int/lit8 v6, v4, 0x1

    aput v0, v9, v4

    move v4, v6

    goto :goto_3

    .line 108
    :cond_2
    add-int v0, v3, v4

    div-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 102
    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v6, v5

    goto :goto_1

    .line 112
    :cond_4
    return-object v9
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/IsoDataClassifier;->a(LCatalano/Imaging/FastBitmap;)[I

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Filters/IsoDataClassifier;->b:[I

    .line 61
    iget-object v0, p0, LCatalano/Imaging/Filters/IsoDataClassifier;->b:[I

    iget v1, p0, LCatalano/Imaging/Filters/IsoDataClassifier;->a:I

    invoke-direct {p0, v0, v1}, LCatalano/Imaging/Filters/IsoDataClassifier;->a([II)[I

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Filters/IsoDataClassifier;->b:[I

    .line 63
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v1

    .line 65
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 66
    iget-object v2, p0, LCatalano/Imaging/Filters/IsoDataClassifier;->b:[I

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p1, v0, v2}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IsoData Classifier only works with grayscale image."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    return-void
.end method
