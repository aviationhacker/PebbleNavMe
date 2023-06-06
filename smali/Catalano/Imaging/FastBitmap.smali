.class public LCatalano/Imaging/FastBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/FastBitmap$ColorSpace;,
        LCatalano/Imaging/FastBitmap$CoordinateSystem;
    }
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:[I

.field private c:LCatalano/Imaging/FastBitmap$CoordinateSystem;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 74
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 107
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    .line 108
    sget-object v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;->Matrix:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    invoke-virtual {p0, v0}, LCatalano/Imaging/FastBitmap;->setCoordinateSystem(LCatalano/Imaging/FastBitmap$CoordinateSystem;)V

    .line 109
    invoke-direct {p0}, LCatalano/Imaging/FastBitmap;->a()V

    .line 110
    return-void
.end method

.method public constructor <init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 119
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    .line 120
    sget-object v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;->Matrix:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    invoke-virtual {p0, v0}, LCatalano/Imaging/FastBitmap;->setCoordinateSystem(LCatalano/Imaging/FastBitmap$CoordinateSystem;)V

    .line 121
    invoke-direct {p0}, LCatalano/Imaging/FastBitmap;->a()V

    .line 122
    sget-object v0, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 123
    :cond_0
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 81
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->toBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    .line 82
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getCoordinateSystem()LCatalano/Imaging/FastBitmap$CoordinateSystem;

    move-result-object v0

    invoke-virtual {p0, v0}, LCatalano/Imaging/FastBitmap;->setCoordinateSystem(LCatalano/Imaging/FastBitmap$CoordinateSystem;)V

    .line 83
    invoke-direct {p0}, LCatalano/Imaging/FastBitmap;->a()V

    .line 85
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iput-boolean v1, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/FastBitmap;->d:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 96
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    .line 97
    sget-object v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;->Matrix:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    invoke-virtual {p0, v0}, LCatalano/Imaging/FastBitmap;->setCoordinateSystem(LCatalano/Imaging/FastBitmap$CoordinateSystem;)V

    .line 98
    invoke-direct {p0}, LCatalano/Imaging/FastBitmap;->a()V

    .line 99
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 130
    aget-object v0, p1, v0

    array-length v0, v0

    array-length v1, p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 132
    sget-object v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;->Matrix:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    invoke-virtual {p0, v0}, LCatalano/Imaging/FastBitmap;->setCoordinateSystem(LCatalano/Imaging/FastBitmap$CoordinateSystem;)V

    .line 133
    invoke-direct {p0}, LCatalano/Imaging/FastBitmap;->a()V

    .line 134
    invoke-virtual {p0, p1}, LCatalano/Imaging/FastBitmap;->matrixToImage([[I)V

    .line 135
    return-void
.end method

.method public constructor <init>([[[I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v3, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 142
    aget-object v0, p1, v3

    aget-object v0, v0, v3

    array-length v0, v0

    aget-object v1, p1, v3

    array-length v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    .line 143
    iput-boolean v3, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 144
    sget-object v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;->Matrix:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    invoke-virtual {p0, v0}, LCatalano/Imaging/FastBitmap;->setCoordinateSystem(LCatalano/Imaging/FastBitmap$CoordinateSystem;)V

    .line 145
    invoke-direct {p0}, LCatalano/Imaging/FastBitmap;->a()V

    .line 146
    invoke-virtual {p0, p1}, LCatalano/Imaging/FastBitmap;->matrixToImage([[[I)V

    .line 147
    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    .line 163
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->b:[I

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v4, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 164
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 153
    move v0, v1

    :goto_0
    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 154
    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aput v1, v2, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public clampValues(III)I
    .locals 0

    .prologue
    .line 812
    if-ge p1, p2, :cond_0

    .line 816
    :goto_0
    return p2

    .line 814
    :cond_0
    if-le p1, p3, :cond_1

    move p2, p3

    .line 815
    goto :goto_0

    :cond_1
    move p2, p1

    .line 816
    goto :goto_0
.end method

.method public getBlue(I)I
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getBlue(II)I
    .locals 3

    .prologue
    .line 751
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v1, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v1, p1

    iget v2, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getBlue(LCatalano/Core/IntPoint;)I
    .locals 2

    .prologue
    .line 760
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v0

    return v0
.end method

.method public getColorSpace()LCatalano/Imaging/FastBitmap$ColorSpace;
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, LCatalano/Imaging/FastBitmap;->d:Z

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    .line 214
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, LCatalano/Imaging/FastBitmap$ColorSpace;->RGB:LCatalano/Imaging/FastBitmap$ColorSpace;

    goto :goto_0
.end method

.method public getCoordinateSystem()LCatalano/Imaging/FastBitmap$CoordinateSystem;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->c:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    return-object v0
.end method

.method public getData()[I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    return-object v0
.end method

.method public getGray(I)I
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getGray(II)I
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v1, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v1, p1

    iget v2, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getGray(LCatalano/Core/IntPoint;)I
    .locals 2

    .prologue
    .line 584
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    return v0
.end method

.method public getGreen(I)I
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getGreen(II)I
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v1, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v1, p1

    iget v2, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getGreen(LCatalano/Core/IntPoint;)I
    .locals 2

    .prologue
    .line 700
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRGB(I)[I
    .locals 3

    .prologue
    .line 448
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 449
    const/4 v1, 0x0

    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v2, v2, p1

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 450
    const/4 v1, 0x1

    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v2, v2, p1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 451
    const/4 v1, 0x2

    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v2, v2, p1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 452
    return-object v0
.end method

.method public getRGB(II)[I
    .locals 4

    .prologue
    .line 462
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 463
    const/4 v1, 0x0

    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    mul-int/2addr v3, p1

    add-int/2addr v3, p2

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 464
    const/4 v1, 0x1

    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    mul-int/2addr v3, p1

    add-int/2addr v3, p2

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 465
    const/4 v1, 0x2

    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    mul-int/2addr v3, p1

    add-int/2addr v3, p2

    aget v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 466
    return-object v0
.end method

.method public getRGB(LCatalano/Core/IntPoint;)[I
    .locals 2

    .prologue
    .line 475
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1}, LCatalano/Imaging/FastBitmap;->getRGB(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getRed(I)I
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getRed(II)I
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v1, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v1, p1

    iget v2, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getRed(LCatalano/Core/IntPoint;)I
    .locals 2

    .prologue
    .line 640
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    array-length v0, v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public indicateGrayscale(Z)V
    .locals 0

    .prologue
    .line 888
    iput-boolean p1, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 889
    return-void
.end method

.method public isGrayscale()Z
    .locals 1

    .prologue
    .line 860
    iget-boolean v0, p0, LCatalano/Imaging/FastBitmap;->d:Z

    return v0
.end method

.method public isRGB()Z
    .locals 1

    .prologue
    .line 852
    iget-boolean v0, p0, LCatalano/Imaging/FastBitmap;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matrixToImage([[D)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 395
    move v0, v1

    move v2, v1

    .line 396
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 397
    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 398
    add-int/lit8 v4, v2, 0x1

    aget-object v5, p1, v0

    aget-wide v6, v5, v3

    double-to-int v5, v6

    invoke-virtual {p0, v2, v5}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 397
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 396
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_1
    return-void
.end method

.method public matrixToImage([[F)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 382
    move v0, v1

    move v2, v1

    .line 383
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 384
    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 385
    add-int/lit8 v4, v2, 0x1

    aget-object v5, p1, v0

    aget v5, v5, v3

    float-to-int v5, v5

    invoke-virtual {p0, v2, v5}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 384
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_1
    return-void
.end method

.method public matrixToImage([[I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 369
    move v0, v1

    move v2, v1

    .line 370
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 371
    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 372
    add-int/lit8 v4, v2, 0x1

    aget-object v5, p1, v0

    aget v5, v5, v3

    invoke-virtual {p0, v2, v5}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 371
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 370
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    return-void
.end method

.method public matrixToImage([[[D)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 434
    move v0, v1

    move v2, v1

    .line 435
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 436
    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 437
    add-int/lit8 v4, v2, 0x1

    aget-object v5, p1, v0

    aget-object v5, v5, v3

    aget-wide v6, v5, v1

    double-to-int v5, v6

    aget-object v6, p1, v0

    aget-object v6, v6, v3

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    double-to-int v6, v6

    aget-object v7, p1, v0

    aget-object v7, v7, v3

    const/4 v8, 0x2

    aget-wide v8, v7, v8

    double-to-int v7, v8

    invoke-virtual {p0, v2, v5, v6, v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 436
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 435
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_1
    return-void
.end method

.method public matrixToImage([[[F)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 421
    move v0, v1

    move v2, v1

    .line 422
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 423
    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 424
    add-int/lit8 v4, v2, 0x1

    aget-object v5, p1, v0

    aget-object v5, v5, v3

    aget v5, v5, v1

    float-to-int v5, v5

    aget-object v6, p1, v0

    aget-object v6, v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    float-to-int v6, v6

    aget-object v7, p1, v0

    aget-object v7, v7, v3

    const/4 v8, 0x2

    aget v7, v7, v8

    float-to-int v7, v7

    invoke-virtual {p0, v2, v5, v6, v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 423
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 422
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :cond_1
    return-void
.end method

.method public matrixToImage([[[I)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 408
    move v0, v1

    move v2, v1

    .line 409
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 410
    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 411
    add-int/lit8 v4, v2, 0x1

    aget-object v5, p1, v0

    aget-object v5, v5, v3

    aget v5, v5, v1

    aget-object v6, p1, v0

    aget-object v6, v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    aget-object v7, p1, v0

    aget-object v7, v7, v3

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {p0, v2, v5, v6, v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 410
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 409
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_1
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 918
    return-void
.end method

.method public setBlue(II)V
    .locals 4

    .prologue
    .line 778
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 779
    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v1, v1, p1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 780
    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    const/high16 v3, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p2

    aput v0, v2, p1

    .line 781
    return-void
.end method

.method public setBlue(III)V
    .locals 5

    .prologue
    .line 790
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v1, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v1, p1

    iget v2, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 791
    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v2, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v2, p1

    iget v3, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 792
    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v3, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v3, p1

    iget v4, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v4, p2

    add-int/2addr v3, v4

    const/high16 v4, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v4

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    aput v0, v2, v3

    .line 793
    return-void
.end method

.method public setBlue(LCatalano/Core/IntPoint;I)V
    .locals 2

    .prologue
    .line 801
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1, p2}, LCatalano/Imaging/FastBitmap;->setBlue(III)V

    .line 802
    return-void
.end method

.method public setCoordinateSystem(LCatalano/Imaging/FastBitmap$CoordinateSystem;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 230
    iput-object p1, p0, LCatalano/Imaging/FastBitmap;->c:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    .line 231
    sget-object v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;->Matrix:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    if-ne p1, v0, :cond_0

    .line 232
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/FastBitmap;->f:I

    .line 233
    iput v1, p0, LCatalano/Imaging/FastBitmap;->g:I

    .line 239
    :goto_0
    return-void

    .line 236
    :cond_0
    iput v1, p0, LCatalano/Imaging/FastBitmap;->f:I

    .line 237
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/FastBitmap;->g:I

    goto :goto_0
.end method

.method public setData([I)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, LCatalano/Imaging/FastBitmap;->b:[I

    .line 204
    return-void
.end method

.method public setGray(II)V
    .locals 3

    .prologue
    .line 602
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    const/high16 v1, -0x1000000

    shl-int/lit8 v2, p2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, p2

    aput v1, v0, p1

    .line 603
    return-void
.end method

.method public setGray(III)V
    .locals 4

    .prologue
    .line 612
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v1, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v1, p1

    iget v2, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    const/high16 v2, -0x1000000

    shl-int/lit8 v3, p3, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, p3, 0x8

    or-int/2addr v2, v3

    or-int/2addr v2, p3

    aput v2, v0, v1

    .line 613
    return-void
.end method

.method public setGray(LCatalano/Core/IntPoint;I)V
    .locals 2

    .prologue
    .line 621
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1, p2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 622
    return-void
.end method

.method public setGreen(II)V
    .locals 4

    .prologue
    .line 718
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 719
    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    .line 720
    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    const/high16 v3, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v3, p2, 0x8

    or-int/2addr v0, v3

    or-int/2addr v0, v1

    aput v0, v2, p1

    .line 721
    return-void
.end method

.method public setGreen(III)V
    .locals 5

    .prologue
    .line 730
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v1, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v1, p1

    iget v2, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 731
    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v2, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v2, p1

    iget v3, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    aget v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 732
    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v3, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v3, p1

    iget v4, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v4, p2

    add-int/2addr v3, v4

    const/high16 v4, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v4

    shl-int/lit8 v4, p3, 0x8

    or-int/2addr v0, v4

    or-int/2addr v0, v1

    aput v0, v2, v3

    .line 733
    return-void
.end method

.method public setGreen(LCatalano/Core/IntPoint;I)V
    .locals 2

    .prologue
    .line 741
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1, p2}, LCatalano/Imaging/FastBitmap;->setGreen(III)V

    .line 742
    return-void
.end method

.method public setImage(LCatalano/Imaging/FastBitmap;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 836
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->toBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    .line 837
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/FastBitmap;->e:I

    .line 838
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getCoordinateSystem()LCatalano/Imaging/FastBitmap$CoordinateSystem;

    move-result-object v0

    invoke-virtual {p0, v0}, LCatalano/Imaging/FastBitmap;->setCoordinateSystem(LCatalano/Imaging/FastBitmap$CoordinateSystem;)V

    .line 839
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    .line 840
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->b:[I

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v4, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 841
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iput-boolean v2, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 845
    :goto_0
    return-void

    .line 844
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/FastBitmap;->d:Z

    goto :goto_0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 824
    iput-object p1, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    .line 825
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/FastBitmap;->e:I

    .line 826
    sget-object v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;->Matrix:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    invoke-virtual {p0, v0}, LCatalano/Imaging/FastBitmap;->setCoordinateSystem(LCatalano/Imaging/FastBitmap$CoordinateSystem;)V

    .line 827
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    .line 828
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->b:[I

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v4, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 829
    return-void
.end method

.method public setRGB(IIII)V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    const/high16 v1, -0x1000000

    shl-int/lit8 v2, p2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, p3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, p4

    aput v1, v0, p1

    .line 557
    return-void
.end method

.method public setRGB(IIIII)V
    .locals 4

    .prologue
    .line 487
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v1, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v1, p1

    iget v2, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    const/high16 v2, -0x1000000

    shl-int/lit8 v3, p3, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, p4, 0x8

    or-int/2addr v2, v3

    or-int/2addr v2, p5

    aput v2, v0, v1

    .line 488
    return-void
.end method

.method public setRGB(IILCatalano/Imaging/Color;)V
    .locals 4

    .prologue
    .line 527
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    const/high16 v2, -0x1000000

    iget v3, p3, LCatalano/Imaging/Color;->r:I

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget v3, p3, LCatalano/Imaging/Color;->g:I

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget v3, p3, LCatalano/Imaging/Color;->b:I

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 528
    return-void
.end method

.method public setRGB(II[I)V
    .locals 4

    .prologue
    .line 508
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v1, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v1, p1

    iget v2, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    aget v3, p3, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget v3, p3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x2

    aget v3, p3, v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 509
    return-void
.end method

.method public setRGB(ILCatalano/Imaging/Color;)V
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    const/high16 v1, -0x1000000

    iget v2, p2, LCatalano/Imaging/Color;->r:I

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget v2, p2, LCatalano/Imaging/Color;->g:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p2, LCatalano/Imaging/Color;->b:I

    or-int/2addr v1, v2

    aput v1, v0, p1

    .line 546
    return-void
.end method

.method public setRGB(I[I)V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    aget v2, p2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget v2, p2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p2, v2

    or-int/2addr v1, v2

    aput v1, v0, p1

    .line 566
    return-void
.end method

.method public setRGB(LCatalano/Core/IntPoint;III)V
    .locals 6

    .prologue
    .line 498
    iget v1, p1, LCatalano/Core/IntPoint;->x:I

    iget v2, p1, LCatalano/Core/IntPoint;->y:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 499
    return-void
.end method

.method public setRGB(LCatalano/Core/IntPoint;LCatalano/Imaging/Color;)V
    .locals 4

    .prologue
    .line 536
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v1, p1, LCatalano/Core/IntPoint;->x:I

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p1, LCatalano/Core/IntPoint;->y:I

    add-int/2addr v1, v2

    const/high16 v2, -0x1000000

    iget v3, p2, LCatalano/Imaging/Color;->r:I

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget v3, p2, LCatalano/Imaging/Color;->g:I

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget v3, p2, LCatalano/Imaging/Color;->b:I

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 537
    return-void
.end method

.method public setRGB(LCatalano/Core/IntPoint;[I)V
    .locals 4

    .prologue
    .line 517
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v1, p1, LCatalano/Core/IntPoint;->x:I

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p1, LCatalano/Core/IntPoint;->y:I

    add-int/2addr v1, v2

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    aget v3, p2, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x2

    aget v3, p2, v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 518
    return-void
.end method

.method public setRed(II)V
    .locals 5

    .prologue
    .line 658
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 659
    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    .line 660
    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    const/high16 v3, -0x1000000

    shl-int/lit8 v4, p2, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    or-int/2addr v0, v1

    aput v0, v2, p1

    .line 661
    return-void
.end method

.method public setRed(III)V
    .locals 6

    .prologue
    .line 670
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v1, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v1, p1

    iget v2, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 671
    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v2, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v2, p1

    iget v3, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    aget v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 672
    iget-object v2, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v3, p0, LCatalano/Imaging/FastBitmap;->f:I

    mul-int/2addr v3, p1

    iget v4, p0, LCatalano/Imaging/FastBitmap;->g:I

    mul-int/2addr v4, p2

    add-int/2addr v3, v4

    const/high16 v4, -0x1000000

    shl-int/lit8 v5, p3, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v4

    or-int/2addr v0, v1

    aput v0, v2, v3

    .line 673
    return-void
.end method

.method public setRed(LCatalano/Core/IntPoint;I)V
    .locals 2

    .prologue
    .line 681
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1, p2}, LCatalano/Imaging/FastBitmap;->setRed(III)V

    .line 682
    return-void
.end method

.method public toBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 896
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v3, p0, LCatalano/Imaging/FastBitmap;->f:I

    iget v4, p0, LCatalano/Imaging/FastBitmap;->g:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v4, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 907
    :goto_0
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    return-object v0

    .line 900
    :cond_0
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    mul-int/2addr v1, v0

    move v0, v2

    .line 901
    :goto_1
    if-ge v0, v1, :cond_1

    .line 902
    iget-object v3, p0, LCatalano/Imaging/FastBitmap;->b:[I

    aget v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    .line 903
    iget-object v4, p0, LCatalano/Imaging/FastBitmap;->b:[I

    const/high16 v5, -0x1000000

    shl-int/lit8 v6, v3, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x8

    or-int/2addr v5, v6

    or-int/2addr v3, v5

    aput v3, v4, v0

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 905
    :cond_1
    iget-object v0, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, LCatalano/Imaging/FastBitmap;->b:[I

    iget v3, p0, LCatalano/Imaging/FastBitmap;->f:I

    iget v4, p0, LCatalano/Imaging/FastBitmap;->g:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v4, p0, LCatalano/Imaging/FastBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method

.method public toGrayscale()V
    .locals 1

    .prologue
    .line 874
    new-instance v0, LCatalano/Imaging/Filters/Grayscale;

    invoke-direct {v0}, LCatalano/Imaging/Filters/Grayscale;-><init>()V

    invoke-virtual {v0, p0}, LCatalano/Imaging/Filters/Grayscale;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 875
    return-void
.end method

.method public toMatrixGrayAsDouble()[[D
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 265
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v6

    .line 266
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    .line 268
    filled-new-array {v6, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v5, v2

    move v1, v2

    .line 270
    :goto_0
    if-ge v5, v6, :cond_1

    move v3, v1

    move v1, v2

    .line 271
    :goto_1
    if-ge v1, v7, :cond_0

    .line 272
    aget-object v8, v0, v5

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v3

    int-to-double v10, v3

    aput-wide v10, v8, v1

    .line 271
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_1

    .line 270
    :cond_0
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v3

    goto :goto_0

    .line 276
    :cond_1
    return-object v0
.end method

.method public toMatrixGrayAsFloat()[[F
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v6

    .line 285
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    .line 287
    filled-new-array {v6, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v5, v2

    move v1, v2

    .line 289
    :goto_0
    if-ge v5, v6, :cond_1

    move v3, v1

    move v1, v2

    .line 290
    :goto_1
    if-ge v1, v7, :cond_0

    .line 291
    aget-object v8, v0, v5

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v8, v1

    .line 290
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_1

    .line 289
    :cond_0
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v3

    goto :goto_0

    .line 295
    :cond_1
    return-object v0
.end method

.method public toMatrixGrayAsInt()[[I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v6

    .line 247
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    .line 249
    filled-new-array {v6, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v5, v2

    move v1, v2

    .line 251
    :goto_0
    if-ge v5, v6, :cond_1

    move v3, v1

    move v1, v2

    .line 252
    :goto_1
    if-ge v1, v7, :cond_0

    .line 253
    aget-object v8, v0, v5

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v3

    aput v3, v8, v1

    .line 252
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_1

    .line 251
    :cond_0
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v3

    goto :goto_0

    .line 257
    :cond_1
    return-object v0
.end method

.method public toMatrixRGBAsDouble()[[[D
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 325
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v5

    .line 326
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 328
    const/4 v0, 0x3

    filled-new-array {v5, v6, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    move v4, v2

    move v1, v2

    .line 330
    :goto_0
    if-ge v4, v5, :cond_1

    move v3, v1

    move v1, v2

    .line 331
    :goto_1
    if-ge v1, v6, :cond_0

    .line 332
    aget-object v7, v0, v4

    aget-object v7, v7, v1

    invoke-virtual {p0, v3}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v8

    int-to-double v8, v8

    aput-wide v8, v7, v2

    .line 333
    aget-object v7, v0, v4

    aget-object v7, v7, v1

    const/4 v8, 0x1

    invoke-virtual {p0, v3}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v9

    int-to-double v10, v9

    aput-wide v10, v7, v8

    .line 334
    aget-object v7, v0, v4

    aget-object v7, v7, v1

    const/4 v8, 0x2

    invoke-virtual {p0, v3}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v9

    int-to-double v10, v9

    aput-wide v10, v7, v8

    .line 335
    add-int/lit8 v3, v3, 0x1

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 330
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v3

    goto :goto_0

    .line 339
    :cond_1
    return-object v0
.end method

.method public toMatrixRGBAsFloat()[[[F
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 347
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v5

    .line 348
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 350
    const/4 v0, 0x3

    filled-new-array {v5, v6, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    move v4, v2

    move v1, v2

    .line 352
    :goto_0
    if-ge v4, v5, :cond_1

    move v3, v1

    move v1, v2

    .line 353
    :goto_1
    if-ge v1, v6, :cond_0

    .line 354
    aget-object v7, v0, v4

    aget-object v7, v7, v1

    invoke-virtual {p0, v3}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v2

    .line 355
    aget-object v7, v0, v4

    aget-object v7, v7, v1

    const/4 v8, 0x1

    invoke-virtual {p0, v3}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    .line 356
    aget-object v7, v0, v4

    aget-object v7, v7, v1

    const/4 v8, 0x2

    invoke-virtual {p0, v3}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    .line 357
    add-int/lit8 v3, v3, 0x1

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 352
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v3

    goto :goto_0

    .line 361
    :cond_1
    return-object v0
.end method

.method public toMatrixRGBAsInt()[[[I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 303
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v5

    .line 304
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 306
    const/4 v0, 0x3

    filled-new-array {v5, v6, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    move v4, v2

    move v1, v2

    .line 308
    :goto_0
    if-ge v4, v5, :cond_1

    move v3, v1

    move v1, v2

    .line 309
    :goto_1
    if-ge v1, v6, :cond_0

    .line 310
    aget-object v7, v0, v4

    aget-object v7, v7, v1

    invoke-virtual {p0, v3}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v8

    aput v8, v7, v2

    .line 311
    aget-object v7, v0, v4

    aget-object v7, v7, v1

    const/4 v8, 0x1

    invoke-virtual {p0, v3}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v9

    aput v9, v7, v8

    .line 312
    aget-object v7, v0, v4

    aget-object v7, v7, v1

    const/4 v8, 0x2

    invoke-virtual {p0, v3}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v9

    aput v9, v7, v8

    .line 313
    add-int/lit8 v3, v3, 0x1

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 308
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v3

    goto :goto_0

    .line 317
    :cond_1
    return-object v0
.end method

.method public toRGB()V
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/FastBitmap;->d:Z

    .line 868
    return-void
.end method
