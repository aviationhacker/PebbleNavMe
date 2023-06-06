.class public LCatalano/Imaging/Tools/VariationLaplacian;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;)D
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 48
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    .line 56
    new-instance v1, LCatalano/Imaging/Filters/Convolution;

    invoke-direct {v1, v0}, LCatalano/Imaging/Filters/Convolution;-><init>([[I)V

    .line 57
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 59
    invoke-static {p1}, LCatalano/Imaging/Tools/ImageStatistics;->Variance(LCatalano/Imaging/FastBitmap;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variation laplacian only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        -0x4
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x0
    .end array-data
.end method
