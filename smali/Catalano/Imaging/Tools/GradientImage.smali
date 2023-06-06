.class public LCatalano/Imaging/Tools/GradientImage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[[I

.field private b:[[I

.field private c:LCatalano/Imaging/FastBitmap;

.field private d:LCatalano/Imaging/FastBitmap;

.field private e:[[F

.field private f:[[F

.field private g:I


# direct methods
.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Tools/GradientImage;->g:I

    .line 61
    invoke-direct {p0, p1}, LCatalano/Imaging/Tools/GradientImage;->a(LCatalano/Imaging/FastBitmap;)V

    .line 62
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;[[I[[I)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Tools/GradientImage;->g:I

    .line 71
    iput-object p2, p0, LCatalano/Imaging/Tools/GradientImage;->a:[[I

    .line 72
    iput-object p3, p0, LCatalano/Imaging/Tools/GradientImage;->b:[[I

    .line 73
    invoke-direct {p0, p1}, LCatalano/Imaging/Tools/GradientImage;->a(LCatalano/Imaging/FastBitmap;)V

    .line 74
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;[[I[[II)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Tools/GradientImage;->g:I

    .line 84
    iput-object p2, p0, LCatalano/Imaging/Tools/GradientImage;->a:[[I

    .line 85
    iput-object p3, p0, LCatalano/Imaging/Tools/GradientImage;->b:[[I

    .line 86
    iput p4, p0, LCatalano/Imaging/Tools/GradientImage;->g:I

    .line 87
    invoke-direct {p0, p1}, LCatalano/Imaging/Tools/GradientImage;->a(LCatalano/Imaging/FastBitmap;)V

    .line 88
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 95
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v0, p0, LCatalano/Imaging/Tools/GradientImage;->c:LCatalano/Imaging/FastBitmap;

    .line 96
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v0, p0, LCatalano/Imaging/Tools/GradientImage;->d:LCatalano/Imaging/FastBitmap;

    .line 98
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 99
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 102
    new-instance v0, LCatalano/Imaging/Filters/Convolution;

    iget-object v2, p0, LCatalano/Imaging/Tools/GradientImage;->a:[[I

    iget v5, p0, LCatalano/Imaging/Tools/GradientImage;->g:I

    invoke-direct {v0, v2, v5}, LCatalano/Imaging/Filters/Convolution;-><init>([[II)V

    .line 103
    iget-object v2, p0, LCatalano/Imaging/Tools/GradientImage;->c:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v2}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 106
    iget-object v2, p0, LCatalano/Imaging/Tools/GradientImage;->b:[[I

    invoke-virtual {v0, v2}, LCatalano/Imaging/Filters/Convolution;->setKernel([[I)V

    .line 107
    iget-object v2, p0, LCatalano/Imaging/Tools/GradientImage;->d:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v2}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 110
    filled-new-array {v4, v3}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, LCatalano/Imaging/Tools/GradientImage;->e:[[F

    .line 111
    filled-new-array {v4, v3}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, LCatalano/Imaging/Tools/GradientImage;->f:[[F

    move v2, v1

    .line 113
    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    .line 114
    :goto_1
    if-ge v0, v3, :cond_0

    .line 115
    iget-object v5, p0, LCatalano/Imaging/Tools/GradientImage;->c:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    int-to-double v6, v5

    .line 116
    iget-object v5, p0, LCatalano/Imaging/Tools/GradientImage;->d:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    int-to-double v8, v5

    .line 117
    iget-object v5, p0, LCatalano/Imaging/Tools/GradientImage;->e:[[F

    aget-object v5, v5, v2

    mul-double v10, v6, v6

    mul-double v12, v8, v8

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v5, v0

    .line 118
    iget-object v5, p0, LCatalano/Imaging/Tools/GradientImage;->f:[[F

    aget-object v5, v5, v2

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v5, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method


# virtual methods
.method public getDivision()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, LCatalano/Imaging/Tools/GradientImage;->g:I

    return v0
.end method

.method public getHorizontalImage()LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, LCatalano/Imaging/Tools/GradientImage;->c:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method public getMagnitude(II)F
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, LCatalano/Imaging/Tools/GradientImage;->e:[[F

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getMagnitude(LCatalano/Core/IntPoint;)F
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, LCatalano/Imaging/Tools/GradientImage;->e:[[F

    iget v1, p1, LCatalano/Core/IntPoint;->x:I

    aget-object v0, v0, v1

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    aget v0, v0, v1

    return v0
.end method

.method public getMagnitude()[[F
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, LCatalano/Imaging/Tools/GradientImage;->e:[[F

    return-object v0
.end method

.method public getOrientation(II)F
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, LCatalano/Imaging/Tools/GradientImage;->f:[[F

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getOrientation(LCatalano/Core/IntPoint;)F
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, LCatalano/Imaging/Tools/GradientImage;->f:[[F

    iget v1, p1, LCatalano/Core/IntPoint;->x:I

    aget-object v0, v0, v1

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    aget v0, v0, v1

    return v0
.end method

.method public getOrientation()[[F
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, LCatalano/Imaging/Tools/GradientImage;->f:[[F

    return-object v0
.end method

.method public getVerticalImage()LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, LCatalano/Imaging/Tools/GradientImage;->d:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method public setDivision(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, LCatalano/Imaging/Tools/GradientImage;->g:I

    .line 54
    return-void
.end method
