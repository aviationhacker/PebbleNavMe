.class public LCatalano/Imaging/Filters/FrequencyFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LCatalano/Core/IntRange;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, LCatalano/Core/IntRange;

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FrequencyFilter;->a:LCatalano/Core/IntRange;

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, LCatalano/Core/IntRange;

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FrequencyFilter;->a:LCatalano/Core/IntRange;

    .line 48
    new-instance v0, LCatalano/Core/IntRange;

    invoke-direct {v0, p1, p2}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FrequencyFilter;->a:LCatalano/Core/IntRange;

    .line 49
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntRange;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, LCatalano/Core/IntRange;

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FrequencyFilter;->a:LCatalano/Core/IntRange;

    .line 56
    iput-object p1, p0, LCatalano/Imaging/Filters/FrequencyFilter;->a:LCatalano/Core/IntRange;

    .line 57
    return-void
.end method


# virtual methods
.method public ApplyInPlace(LCatalano/Imaging/Filters/FourierTransform;)V
    .locals 14

    .prologue
    .line 80
    invoke-virtual {p1}, LCatalano/Imaging/Filters/FourierTransform;->isFourierTransformed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "the image should be fourier transformed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/Filters/FourierTransform;->getWidth()I

    move-result v2

    .line 89
    invoke-virtual {p1}, LCatalano/Imaging/Filters/FourierTransform;->getHeight()I

    move-result v3

    .line 91
    div-int/lit8 v4, v2, 0x2

    .line 92
    div-int/lit8 v5, v3, 0x2

    .line 94
    iget-object v0, p0, LCatalano/Imaging/Filters/FrequencyFilter;->a:LCatalano/Core/IntRange;

    invoke-virtual {v0}, LCatalano/Core/IntRange;->getMin()I

    move-result v6

    .line 95
    iget-object v0, p0, LCatalano/Imaging/Filters/FrequencyFilter;->a:LCatalano/Core/IntRange;

    invoke-virtual {v0}, LCatalano/Core/IntRange;->getMax()I

    move-result v7

    .line 97
    invoke-virtual {p1}, LCatalano/Imaging/Filters/FourierTransform;->getData()[[LCatalano/Math/ComplexNumber;

    move-result-object v8

    .line 99
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    .line 100
    sub-int v9, v1, v5

    .line 102
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 103
    sub-int v10, v0, v4

    .line 104
    mul-int/2addr v10, v10

    mul-int v11, v9, v9

    add-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 107
    if-gt v10, v7, :cond_1

    if-ge v10, v6, :cond_2

    .line 108
    :cond_1
    aget-object v10, v8, v1

    aget-object v10, v10, v0

    const-wide/16 v12, 0x0

    iput-wide v12, v10, LCatalano/Math/ComplexNumber;->real:D

    .line 109
    aget-object v10, v8, v1

    aget-object v10, v10, v0

    const-wide/16 v12, 0x0

    iput-wide v12, v10, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 102
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 114
    :cond_4
    return-void
.end method

.method public getFrequencyRange()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, LCatalano/Imaging/Filters/FrequencyFilter;->a:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public setFrequencyRange(LCatalano/Core/IntRange;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, LCatalano/Imaging/Filters/FrequencyFilter;->a:LCatalano/Core/IntRange;

    .line 73
    return-void
.end method
