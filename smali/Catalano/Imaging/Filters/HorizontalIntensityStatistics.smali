.class public LCatalano/Imaging/Filters/HorizontalIntensityStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LCatalano/Statistics/Histogram;

.field private b:LCatalano/Statistics/Histogram;

.field private c:LCatalano/Statistics/Histogram;

.field private d:LCatalano/Statistics/Histogram;


# direct methods
.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/HorizontalIntensityStatistics;->a(LCatalano/Imaging/FastBitmap;)V

    .line 44
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 85
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 87
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    new-array v5, v3, [I

    move v2, v1

    .line 89
    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    .line 90
    :goto_1
    if-ge v0, v3, :cond_0

    .line 91
    aget v6, v5, v0

    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, LCatalano/Statistics/Histogram;

    invoke-direct {v0, v5}, LCatalano/Statistics/Histogram;-><init>([I)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HorizontalIntensityStatistics;->d:LCatalano/Statistics/Histogram;

    .line 96
    :cond_2
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    new-array v5, v3, [I

    .line 98
    new-array v6, v3, [I

    .line 99
    new-array v7, v3, [I

    move v2, v1

    .line 100
    :goto_2
    if-ge v2, v4, :cond_4

    move v0, v1

    .line 101
    :goto_3
    if-ge v0, v3, :cond_3

    .line 102
    aget v8, v5, v0

    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v5, v0

    .line 103
    aget v8, v6, v0

    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v6, v0

    .line 104
    aget v8, v7, v0

    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v7, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 100
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 107
    :cond_4
    new-instance v0, LCatalano/Statistics/Histogram;

    invoke-direct {v0, v5}, LCatalano/Statistics/Histogram;-><init>([I)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HorizontalIntensityStatistics;->a:LCatalano/Statistics/Histogram;

    .line 108
    new-instance v0, LCatalano/Statistics/Histogram;

    invoke-direct {v0, v6}, LCatalano/Statistics/Histogram;-><init>([I)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HorizontalIntensityStatistics;->b:LCatalano/Statistics/Histogram;

    .line 109
    new-instance v0, LCatalano/Statistics/Histogram;

    invoke-direct {v0, v7}, LCatalano/Statistics/Histogram;-><init>([I)V

    iput-object v0, p0, LCatalano/Imaging/Filters/HorizontalIntensityStatistics;->c:LCatalano/Statistics/Histogram;

    .line 111
    :cond_5
    return-void
.end method


# virtual methods
.method public getBlue()LCatalano/Statistics/Histogram;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, LCatalano/Imaging/Filters/HorizontalIntensityStatistics;->c:LCatalano/Statistics/Histogram;

    return-object v0
.end method

.method public getGray()LCatalano/Statistics/Histogram;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, LCatalano/Imaging/Filters/HorizontalIntensityStatistics;->d:LCatalano/Statistics/Histogram;

    return-object v0
.end method

.method public getGreen()LCatalano/Statistics/Histogram;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, LCatalano/Imaging/Filters/HorizontalIntensityStatistics;->b:LCatalano/Statistics/Histogram;

    return-object v0
.end method

.method public getRed()LCatalano/Statistics/Histogram;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, LCatalano/Imaging/Filters/HorizontalIntensityStatistics;->a:LCatalano/Statistics/Histogram;

    return-object v0
.end method
