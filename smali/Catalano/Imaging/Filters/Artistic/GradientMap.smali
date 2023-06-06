.class public LCatalano/Imaging/Filters/Artistic/GradientMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;

.field private b:[[I

.field private c:Z


# direct methods
.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->c:Z

    .line 79
    iput-object p1, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->a:LCatalano/Imaging/FastBitmap;

    .line 80
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->c:Z

    .line 87
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/Artistic/GradientMap;->setLut([[I)V

    .line 88
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)[[I
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/4 v2, 0x0

    .line 127
    const/4 v0, 0x3

    filled-new-array {v6, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 129
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    if-ne v1, v6, :cond_0

    move v1, v2

    .line 130
    :goto_0
    if-ge v1, v6, :cond_1

    .line 131
    aget-object v3, v0, v1

    invoke-virtual {p1, v2, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v4

    aput v4, v3, v2

    .line 132
    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v5

    aput v5, v3, v4

    .line 133
    aget-object v3, v0, v1

    const/4 v4, 0x2

    invoke-virtual {p1, v2, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    aput v5, v3, v4

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Gradient Map needs at least a gradient image with 1 row and exactly 256 columns."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    return-object v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 93
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->c:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->a:LCatalano/Imaging/FastBitmap;

    invoke-direct {p0, v0}, LCatalano/Imaging/Filters/Artistic/GradientMap;->a(LCatalano/Imaging/FastBitmap;)[[I

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->b:[[I

    .line 98
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->toGrayscale()V

    .line 99
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->toRGB()V

    .line 101
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    .line 102
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v8

    move v1, v6

    .line 104
    :goto_0
    if-ge v1, v8, :cond_3

    move v2, v6

    .line 105
    :goto_1
    if-ge v2, v7, :cond_1

    .line 107
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    .line 108
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->b:[[I

    aget-object v3, v3, v0

    aget v3, v3, v6

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->b:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->b:[[I

    aget-object v0, v5, v0

    const/4 v5, 0x2

    aget v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Gradient Map only works in RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_3
    return-void
.end method

.method public getGradient()LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->a:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method public getLut()[[I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->b:[[I

    return-object v0
.end method

.method public setGradient(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->a:LCatalano/Imaging/FastBitmap;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->c:Z

    .line 55
    return-void
.end method

.method public setLut([[I)V
    .locals 1

    .prologue
    .line 70
    iput-object p1, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->b:[[I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Artistic/GradientMap;->c:Z

    .line 72
    return-void
.end method
