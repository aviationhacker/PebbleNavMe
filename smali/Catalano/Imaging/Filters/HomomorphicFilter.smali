.class public LCatalano/Imaging/Filters/HomomorphicFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Core/IntRange;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, LCatalano/Core/IntRange;

    invoke-direct {v0, p1, p2}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HomomorphicFilter;->a:LCatalano/Core/IntRange;

    .line 51
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntRange;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, LCatalano/Imaging/Filters/HomomorphicFilter;->a:LCatalano/Core/IntRange;

    .line 59
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x0

    .line 66
    new-instance v3, LCatalano/Imaging/Filters/FourierTransform;

    invoke-direct {v3, p1}, LCatalano/Imaging/Filters/FourierTransform;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 67
    invoke-virtual {v3}, LCatalano/Imaging/Filters/FourierTransform;->getData()[[LCatalano/Math/ComplexNumber;

    move-result-object v4

    .line 68
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v5

    .line 69
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v6

    move v2, v1

    .line 72
    :goto_0
    if-ge v2, v6, :cond_1

    move v0, v1

    .line 73
    :goto_1
    if-ge v0, v5, :cond_0

    .line 74
    aget-object v7, v4, v2

    aget-object v7, v7, v0

    aget-object v8, v4, v2

    aget-object v8, v8, v0

    iget-wide v8, v8, LCatalano/Math/ComplexNumber;->real:D

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    iput-wide v8, v7, LCatalano/Math/ComplexNumber;->real:D

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v3, v4}, LCatalano/Imaging/Filters/FourierTransform;->setData([[LCatalano/Math/ComplexNumber;)V

    .line 80
    invoke-virtual {v3}, LCatalano/Imaging/Filters/FourierTransform;->Forward()V

    .line 83
    new-instance v0, LCatalano/Imaging/Filters/FrequencyFilter;

    iget-object v2, p0, LCatalano/Imaging/Filters/HomomorphicFilter;->a:LCatalano/Core/IntRange;

    invoke-direct {v0, v2}, LCatalano/Imaging/Filters/FrequencyFilter;-><init>(LCatalano/Core/IntRange;)V

    .line 84
    invoke-virtual {v0, v3}, LCatalano/Imaging/Filters/FrequencyFilter;->ApplyInPlace(LCatalano/Imaging/Filters/FourierTransform;)V

    .line 87
    invoke-virtual {v3}, LCatalano/Imaging/Filters/FourierTransform;->Backward()V

    .line 90
    invoke-virtual {v3}, LCatalano/Imaging/Filters/FourierTransform;->getData()[[LCatalano/Math/ComplexNumber;

    move-result-object v4

    move v2, v1

    .line 91
    :goto_2
    if-ge v2, v6, :cond_3

    move v0, v1

    .line 92
    :goto_3
    if-ge v0, v5, :cond_2

    .line 93
    aget-object v7, v4, v2

    aget-object v7, v7, v0

    aget-object v8, v4, v2

    aget-object v8, v8, v0

    iget-wide v8, v8, LCatalano/Math/ComplexNumber;->real:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    iput-wide v8, v7, LCatalano/Math/ComplexNumber;->real:D

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 91
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v3, v4}, LCatalano/Imaging/Filters/FourierTransform;->setData([[LCatalano/Math/ComplexNumber;)V

    .line 98
    invoke-virtual {v3}, LCatalano/Imaging/Filters/FourierTransform;->toFastBitmap()LCatalano/Imaging/FastBitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 99
    return-void
.end method
