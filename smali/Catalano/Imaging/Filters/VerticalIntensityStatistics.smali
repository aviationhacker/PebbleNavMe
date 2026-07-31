.class public LCatalano/Imaging/Filters/VerticalIntensityStatistics;
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
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/VerticalIntensityStatistics;->a(LCatalano/Imaging/FastBitmap;)V

    .line 44
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v2

    .line 85
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    .line 87
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    new-array v4, v3, [I

    move v1, v0

    .line 89
    :goto_0
    if-ge v1, v2, :cond_0

    .line 90
    aget v5, v4, v1

    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance v1, LCatalano/Statistics/Histogram;

    invoke-direct {v1, v4}, LCatalano/Statistics/Histogram;-><init>([I)V

    iput-object v1, p0, LCatalano/Imaging/Filters/VerticalIntensityStatistics;->d:LCatalano/Statistics/Histogram;

    .line 94
    :cond_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    new-array v1, v3, [I

    .line 96
    new-array v2, v3, [I

    .line 97
    new-array v4, v3, [I

    .line 98
    :goto_1
    if-ge v0, v3, :cond_2

    .line 99
    aget v5, v1, v0

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v1, v0

    .line 100
    aget v5, v2, v0

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v2, v0

    .line 101
    aget v5, v4, v0

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_2
    new-instance v0, LCatalano/Statistics/Histogram;

    invoke-direct {v0, v1}, LCatalano/Statistics/Histogram;-><init>([I)V

    iput-object v0, p0, LCatalano/Imaging/Filters/VerticalIntensityStatistics;->a:LCatalano/Statistics/Histogram;

    .line 104
    new-instance v0, LCatalano/Statistics/Histogram;

    invoke-direct {v0, v2}, LCatalano/Statistics/Histogram;-><init>([I)V

    iput-object v0, p0, LCatalano/Imaging/Filters/VerticalIntensityStatistics;->b:LCatalano/Statistics/Histogram;

    .line 105
    new-instance v0, LCatalano/Statistics/Histogram;

    invoke-direct {v0, v4}, LCatalano/Statistics/Histogram;-><init>([I)V

    iput-object v0, p0, LCatalano/Imaging/Filters/VerticalIntensityStatistics;->c:LCatalano/Statistics/Histogram;

    .line 107
    :cond_3
    return-void
.end method


# virtual methods
.method public getBlue()LCatalano/Statistics/Histogram;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, LCatalano/Imaging/Filters/VerticalIntensityStatistics;->c:LCatalano/Statistics/Histogram;

    return-object v0
.end method

.method public getGray()LCatalano/Statistics/Histogram;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, LCatalano/Imaging/Filters/VerticalIntensityStatistics;->d:LCatalano/Statistics/Histogram;

    return-object v0
.end method

.method public getGreen()LCatalano/Statistics/Histogram;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, LCatalano/Imaging/Filters/VerticalIntensityStatistics;->b:LCatalano/Statistics/Histogram;

    return-object v0
.end method

.method public getRed()LCatalano/Statistics/Histogram;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, LCatalano/Imaging/Filters/VerticalIntensityStatistics;->a:LCatalano/Statistics/Histogram;

    return-object v0
.end method
