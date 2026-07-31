.class public LCatalano/Imaging/Filters/MorphologicGradientImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:[[I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->b:I

    .line 43
    iput-boolean v0, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->c:Z

    .line 82
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->b:I

    .line 43
    iput-boolean v0, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->c:Z

    .line 89
    iput p1, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->b:I

    .line 90
    iput-boolean v0, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->c:Z

    .line 91
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->b:I

    .line 43
    iput-boolean v0, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->c:Z

    .line 98
    iput-object p1, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->a:[[I

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->c:Z

    .line 100
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 108
    iget-boolean v1, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->c:Z

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, LCatalano/Imaging/Filters/Dilatation;

    iget v2, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->b:I

    invoke-direct {v1, v2}, LCatalano/Imaging/Filters/Dilatation;-><init>(I)V

    .line 110
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Dilatation;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 112
    new-instance v1, LCatalano/Imaging/Filters/Erosion;

    iget v2, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->b:I

    invoke-direct {v1, v2}, LCatalano/Imaging/Filters/Erosion;-><init>(I)V

    .line 113
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/Erosion;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 123
    :goto_0
    new-instance v1, LCatalano/Imaging/Filters/Subtract;

    invoke-direct {v1, v0}, LCatalano/Imaging/Filters/Subtract;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 124
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Subtract;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 125
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->recycle()V

    .line 130
    return-void

    .line 116
    :cond_0
    new-instance v1, LCatalano/Imaging/Filters/Dilatation;

    iget-object v2, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->a:[[I

    invoke-direct {v1, v2}, LCatalano/Imaging/Filters/Dilatation;-><init>([[I)V

    .line 117
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Dilatation;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 119
    new-instance v1, LCatalano/Imaging/Filters/Erosion;

    iget-object v2, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->a:[[I

    invoke-direct {v1, v2}, LCatalano/Imaging/Filters/Erosion;-><init>([[I)V

    .line 120
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/Erosion;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Morphologic Gradient Image only works with grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKernel()[[I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->a:[[I

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->b:I

    return v0
.end method

.method public setKernel([[I)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->a:[[I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->c:Z

    .line 77
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 58
    iput p1, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->b:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/MorphologicGradientImage;->c:Z

    .line 60
    return-void
.end method
