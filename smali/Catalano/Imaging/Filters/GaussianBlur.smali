.class public LCatalano/Imaging/Filters/GaussianBlur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:D

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide v0, 0x3ff6666666666666L    # 1.4

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaussianBlur;->a:D

    .line 37
    const/4 v0, 0x5

    iput v0, p0, LCatalano/Imaging/Filters/GaussianBlur;->b:I

    .line 42
    return-void
.end method

.method public constructor <init>(D)V
    .locals 5

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide v0, 0x3ff6666666666666L    # 1.4

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaussianBlur;->a:D

    .line 37
    const/4 v0, 0x5

    iput v0, p0, LCatalano/Imaging/Filters/GaussianBlur;->b:I

    .line 49
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaussianBlur;->a:D

    .line 50
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide v0, 0x3ff6666666666666L    # 1.4

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaussianBlur;->a:D

    .line 37
    const/4 v0, 0x5

    iput v0, p0, LCatalano/Imaging/Filters/GaussianBlur;->b:I

    .line 58
    invoke-virtual {p0, p1, p2}, LCatalano/Imaging/Filters/GaussianBlur;->setSigma(D)V

    .line 59
    invoke-virtual {p0, p3}, LCatalano/Imaging/Filters/GaussianBlur;->setSize(I)V

    .line 60
    return-void
.end method

.method private a()[[I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 102
    new-instance v0, LCatalano/Math/Functions/Gaussian;

    iget-wide v4, p0, LCatalano/Imaging/Filters/GaussianBlur;->a:D

    invoke-direct {v0, v4, v5}, LCatalano/Math/Functions/Gaussian;-><init>(D)V

    .line 103
    iget v1, p0, LCatalano/Imaging/Filters/GaussianBlur;->b:I

    invoke-virtual {v0, v1}, LCatalano/Math/Functions/Gaussian;->Kernel2D(I)[[D

    move-result-object v4

    .line 104
    array-length v0, v4

    aget-object v1, v4, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 105
    aget-object v1, v4, v2

    aget-wide v6, v1, v2

    move v1, v2

    .line 107
    :goto_0
    iget v3, p0, LCatalano/Imaging/Filters/GaussianBlur;->b:I

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 108
    :goto_1
    iget v5, p0, LCatalano/Imaging/Filters/GaussianBlur;->b:I

    if-ge v3, v5, :cond_0

    .line 109
    aget-object v5, v4, v1

    aget-wide v8, v5, v3

    div-double/2addr v8, v6

    .line 110
    aget-object v5, v0, v1

    double-to-int v8, v8

    aput v8, v5, v3

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_1
    return-object v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, LCatalano/Imaging/Filters/GaussianBlur;->a()[[I

    move-result-object v0

    .line 97
    new-instance v1, LCatalano/Imaging/Filters/Convolution;

    invoke-direct {v1, v0}, LCatalano/Imaging/Filters/Convolution;-><init>([[I)V

    .line 98
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 99
    return-void
.end method

.method public getSigma()D
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, LCatalano/Imaging/Filters/GaussianBlur;->a:D

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, LCatalano/Imaging/Filters/GaussianBlur;->b:I

    return v0
.end method

.method public setSigma(D)V
    .locals 5

    .prologue
    .line 75
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaussianBlur;->a:D

    .line 76
    return-void
.end method

.method public setSize(I)V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x3

    const/16 v1, 0x15

    or-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/GaussianBlur;->b:I

    .line 92
    return-void
.end method
