.class public LCatalano/Imaging/Tools/Granulometry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, LCatalano/Imaging/Tools/Granulometry;->a:I

    .line 40
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Tools/Granulometry;->b:I

    .line 41
    iput v1, p0, LCatalano/Imaging/Tools/Granulometry;->c:I

    .line 94
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, LCatalano/Imaging/Tools/Granulometry;->a:I

    .line 40
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Tools/Granulometry;->b:I

    .line 41
    iput v1, p0, LCatalano/Imaging/Tools/Granulometry;->c:I

    .line 101
    iput p1, p0, LCatalano/Imaging/Tools/Granulometry;->b:I

    .line 102
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, LCatalano/Imaging/Tools/Granulometry;->a:I

    .line 40
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Tools/Granulometry;->b:I

    .line 41
    iput v1, p0, LCatalano/Imaging/Tools/Granulometry;->c:I

    .line 110
    iput p1, p0, LCatalano/Imaging/Tools/Granulometry;->a:I

    .line 111
    iput p2, p0, LCatalano/Imaging/Tools/Granulometry;->b:I

    .line 112
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, LCatalano/Imaging/Tools/Granulometry;->a:I

    .line 40
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Tools/Granulometry;->b:I

    .line 41
    iput v1, p0, LCatalano/Imaging/Tools/Granulometry;->c:I

    .line 121
    iput p1, p0, LCatalano/Imaging/Tools/Granulometry;->a:I

    .line 122
    iput p2, p0, LCatalano/Imaging/Tools/Granulometry;->b:I

    .line 123
    iput p3, p0, LCatalano/Imaging/Tools/Granulometry;->c:I

    .line 124
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)J
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 172
    const-wide/16 v2, 0x0

    move v0, v1

    .line 173
    :goto_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 174
    :goto_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 175
    invoke-virtual {p1, v0, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v2

    .line 174
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    return-wide v2
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)[F
    .locals 8

    .prologue
    .line 136
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget v0, p0, LCatalano/Imaging/Tools/Granulometry;->b:I

    iget v1, p0, LCatalano/Imaging/Tools/Granulometry;->a:I

    sub-int/2addr v0, v1

    new-array v2, v0, [F

    .line 139
    invoke-direct {p0, p1}, LCatalano/Imaging/Tools/Granulometry;->a(LCatalano/Imaging/FastBitmap;)J

    move-result-wide v4

    .line 144
    const/4 v1, 0x0

    .line 145
    iget v0, p0, LCatalano/Imaging/Tools/Granulometry;->a:I

    :goto_0
    iget v3, p0, LCatalano/Imaging/Tools/Granulometry;->b:I

    if-ge v0, v3, :cond_1

    .line 146
    new-instance v3, LCatalano/Imaging/FastBitmap;

    invoke-direct {v3, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 147
    new-instance v6, LCatalano/Imaging/Filters/Opening;

    invoke-direct {v6, v0}, LCatalano/Imaging/Filters/Opening;-><init>(I)V

    .line 148
    invoke-virtual {v6, v3}, LCatalano/Imaging/Filters/Opening;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 150
    invoke-direct {p0, v3}, LCatalano/Imaging/Tools/Granulometry;->a(LCatalano/Imaging/FastBitmap;)J

    move-result-wide v6

    .line 154
    sub-long/2addr v6, v4

    long-to-float v3, v6

    neg-float v3, v3

    long-to-float v6, v4

    div-float/2addr v3, v6

    aput v3, v2, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 145
    iget v3, p0, LCatalano/Imaging/Tools/Granulometry;->c:I

    add-int/2addr v0, v3

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Granulometry only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    return-object v2
.end method

.method public getMaxRadius()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, LCatalano/Imaging/Tools/Granulometry;->b:I

    return v0
.end method

.method public getMinRadius()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, LCatalano/Imaging/Tools/Granulometry;->a:I

    return v0
.end method

.method public getSteps()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, LCatalano/Imaging/Tools/Granulometry;->c:I

    return v0
.end method

.method public setMaxRadius(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, LCatalano/Imaging/Tools/Granulometry;->b:I

    .line 73
    return-void
.end method

.method public setMinRadius(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, LCatalano/Imaging/Tools/Granulometry;->a:I

    .line 57
    return-void
.end method

.method public setSteps(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, LCatalano/Imaging/Tools/Granulometry;->c:I

    .line 89
    return-void
.end method
