.class public LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;
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

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->b:I

    .line 44
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->c:Z

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->b:I

    .line 44
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->c:Z

    .line 90
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->b:I

    .line 91
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->c:Z

    .line 92
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->b:I

    .line 44
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->c:Z

    .line 99
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->a:[[I

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->c:Z

    .line 101
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 109
    iget-boolean v1, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->c:Z

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, LCatalano/Imaging/Concurrent/Filters/Dilatation;

    iget v2, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->b:I

    invoke-direct {v1, v2}, LCatalano/Imaging/Concurrent/Filters/Dilatation;-><init>(I)V

    .line 111
    invoke-virtual {v1, p1}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 113
    new-instance v1, LCatalano/Imaging/Concurrent/Filters/Erosion;

    iget v2, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->b:I

    invoke-direct {v1, v2}, LCatalano/Imaging/Concurrent/Filters/Erosion;-><init>(I)V

    .line 114
    invoke-virtual {v1, v0}, LCatalano/Imaging/Concurrent/Filters/Erosion;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 124
    :goto_0
    new-instance v1, LCatalano/Imaging/Filters/Subtract;

    invoke-direct {v1, v0}, LCatalano/Imaging/Filters/Subtract;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 125
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Subtract;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 130
    return-void

    .line 117
    :cond_0
    new-instance v1, LCatalano/Imaging/Concurrent/Filters/Dilatation;

    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->a:[[I

    invoke-direct {v1, v2}, LCatalano/Imaging/Concurrent/Filters/Dilatation;-><init>([[I)V

    .line 118
    invoke-virtual {v1, p1}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 120
    new-instance v1, LCatalano/Imaging/Concurrent/Filters/Erosion;

    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->a:[[I

    invoke-direct {v1, v2}, LCatalano/Imaging/Concurrent/Filters/Erosion;-><init>([[I)V

    .line 121
    invoke-virtual {v1, v0}, LCatalano/Imaging/Concurrent/Filters/Erosion;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

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
    .line 68
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->a:[[I

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->b:I

    return v0
.end method

.method public setKernel([[I)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->a:[[I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->c:Z

    .line 78
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 59
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->b:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/MorphologicGradientImage;->c:Z

    .line 61
    return-void
.end method
