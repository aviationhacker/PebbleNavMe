.class public LCatalano/Imaging/Filters/FillHoles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, LCatalano/Imaging/Filters/FillHoles;->a:I

    iput v0, p0, LCatalano/Imaging/Filters/FillHoles;->b:I

    .line 42
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v1, p0, LCatalano/Imaging/Filters/FillHoles;->a:I

    iput v1, p0, LCatalano/Imaging/Filters/FillHoles;->b:I

    .line 50
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/FillHoles;->b:I

    .line 51
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/FillHoles;->a:I

    .line 52
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 3

    .prologue
    .line 89
    new-instance v0, LCatalano/Imaging/Filters/Invert;

    invoke-direct {v0}, LCatalano/Imaging/Filters/Invert;-><init>()V

    .line 90
    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/Invert;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 92
    new-instance v1, LCatalano/Imaging/Filters/BlobsFiltering;

    invoke-direct {v1}, LCatalano/Imaging/Filters/BlobsFiltering;-><init>()V

    .line 93
    iget v2, p0, LCatalano/Imaging/Filters/FillHoles;->a:I

    invoke-virtual {v1, v2}, LCatalano/Imaging/Filters/BlobsFiltering;->setMinArea(I)V

    .line 94
    iget v2, p0, LCatalano/Imaging/Filters/FillHoles;->b:I

    invoke-virtual {v1, v2}, LCatalano/Imaging/Filters/BlobsFiltering;->setMaxArea(I)V

    .line 95
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/BlobsFiltering;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 96
    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/Invert;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 98
    return-void
.end method

.method public getMaxArea()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, LCatalano/Imaging/Filters/FillHoles;->b:I

    return v0
.end method

.method public getMinArea()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, LCatalano/Imaging/Filters/FillHoles;->a:I

    return v0
.end method

.method public setMaxArea(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, LCatalano/Imaging/Filters/FillHoles;->b:I

    .line 84
    return-void
.end method

.method public setMinArea(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, LCatalano/Imaging/Filters/FillHoles;->a:I

    .line 68
    return-void
.end method
