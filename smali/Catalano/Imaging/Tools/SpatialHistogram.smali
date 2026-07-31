.class public LCatalano/Imaging/Tools/SpatialHistogram;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 41
    invoke-direct {p0, v0, v0}, LCatalano/Imaging/Tools/SpatialHistogram;-><init>(II)V

    .line 42
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, LCatalano/Imaging/Tools/SpatialHistogram;->a:I

    .line 51
    iput p2, p0, LCatalano/Imaging/Tools/SpatialHistogram;->b:I

    .line 52
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;IIII)LCatalano/Imaging/FastBitmap;
    .locals 2

    .prologue
    .line 93
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 95
    new-instance v1, LCatalano/Imaging/Filters/Crop;

    invoke-direct {v1, p2, p3, p4, p5}, LCatalano/Imaging/Filters/Crop;-><init>(IIII)V

    .line 96
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/Crop;->ApplyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 98
    return-object v0
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Texture/BinaryPattern/IBinaryPattern;)[I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 62
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    .line 63
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    .line 65
    int-to-double v2, v0

    iget v0, p0, LCatalano/Imaging/Tools/SpatialHistogram;->a:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    add-int/lit8 v4, v0, -0x1

    .line 66
    int-to-double v0, v1

    iget v2, p0, LCatalano/Imaging/Tools/SpatialHistogram;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v5, v0, -0x1

    .line 68
    iget v0, p0, LCatalano/Imaging/Tools/SpatialHistogram;->a:I

    iget v1, p0, LCatalano/Imaging/Tools/SpatialHistogram;->b:I

    mul-int/2addr v0, v1

    new-array v10, v0, [LCatalano/Imaging/Tools/ImageHistogram;

    move v6, v7

    move v0, v7

    .line 70
    :goto_0
    iget v1, p0, LCatalano/Imaging/Tools/SpatialHistogram;->b:I

    if-ge v6, v1, :cond_1

    move v9, v7

    move v8, v0

    .line 71
    :goto_1
    iget v0, p0, LCatalano/Imaging/Tools/SpatialHistogram;->a:I

    if-ge v9, v0, :cond_0

    .line 72
    mul-int v2, v6, v5

    mul-int v3, v9, v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LCatalano/Imaging/Tools/SpatialHistogram;->a(LCatalano/Imaging/FastBitmap;IIII)LCatalano/Imaging/FastBitmap;

    move-result-object v0

    .line 73
    add-int/lit8 v1, v8, 0x1

    invoke-interface {p2, v0}, LCatalano/Imaging/Texture/BinaryPattern/IBinaryPattern;->ProcessImage(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v0

    aput-object v0, v10, v8

    .line 71
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move v8, v1

    goto :goto_1

    .line 70
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v0, v8

    goto :goto_0

    .line 78
    :cond_1
    array-length v0, v10

    aget-object v1, v10, v7

    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v1

    array-length v1, v1

    mul-int/2addr v0, v1

    new-array v4, v0, [I

    move v0, v7

    move v1, v7

    .line 81
    :goto_2
    array-length v2, v10

    if-ge v0, v2, :cond_3

    .line 82
    aget-object v2, v10, v0

    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v5

    move v2, v7

    .line 83
    :goto_3
    array-length v3, v5

    if-ge v2, v3, :cond_2

    .line 84
    add-int/lit8 v3, v1, 0x1

    aget v6, v5, v2

    aput v6, v4, v1

    .line 83
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_3

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 88
    :cond_3
    return-object v4
.end method
