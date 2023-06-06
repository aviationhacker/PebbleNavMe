.class public LCatalano/Imaging/Tools/SpatialPyramidHistogram;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x3

    invoke-direct {p0, v0}, LCatalano/Imaging/Tools/SpatialPyramidHistogram;-><init>(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, LCatalano/Imaging/Tools/SpatialPyramidHistogram;->setLevel(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Texture/BinaryPattern/IBinaryPattern;)[I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 76
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 78
    const/4 v0, 0x1

    move v1, v2

    move v3, v0

    move v4, v2

    .line 79
    :goto_0
    iget v0, p0, LCatalano/Imaging/Tools/SpatialPyramidHistogram;->a:I

    if-ge v1, v0, :cond_0

    .line 80
    new-instance v0, LCatalano/Imaging/Tools/SpatialHistogram;

    invoke-direct {v0, v3, v3}, LCatalano/Imaging/Tools/SpatialHistogram;-><init>(II)V

    .line 81
    invoke-virtual {v0, p1, p2}, LCatalano/Imaging/Tools/SpatialHistogram;->Compute(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Texture/BinaryPattern/IBinaryPattern;)[I

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    add-int/2addr v4, v0

    .line 83
    mul-int/lit8 v3, v3, 0x2

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 87
    :cond_0
    new-array v7, v4, [I

    move v1, v2

    move v3, v2

    .line 89
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 90
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v4, v2

    .line 91
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 92
    add-int/lit8 v5, v3, 0x1

    aget v8, v0, v4

    aput v8, v7, v3

    .line 91
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_2

    .line 89
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 96
    :cond_2
    return-object v7
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, LCatalano/Imaging/Tools/SpatialPyramidHistogram;->a:I

    return v0
.end method

.method public setLevel(I)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/SpatialPyramidHistogram;->a:I

    .line 51
    return-void
.end method
