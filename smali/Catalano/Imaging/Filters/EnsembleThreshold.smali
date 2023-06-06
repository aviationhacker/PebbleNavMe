.class public LCatalano/Imaging/Filters/EnsembleThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:[I

.field private b:Z


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Filters/EnsembleThreshold;-><init>([IZ)V

    .line 80
    return-void
.end method

.method public constructor <init>([IZ)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, LCatalano/Imaging/Filters/EnsembleThreshold;->a:[I

    .line 89
    iput-boolean p2, p0, LCatalano/Imaging/Filters/EnsembleThreshold;->b:Z

    .line 90
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v3

    move v2, v1

    .line 98
    :goto_0
    if-ge v2, v3, :cond_6

    .line 99
    invoke-virtual {p1, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v4

    .line 100
    const/4 v0, 0x2

    new-array v5, v0, [I

    move v0, v1

    .line 101
    :goto_1
    iget-object v6, p0, LCatalano/Imaging/Filters/EnsembleThreshold;->a:[I

    array-length v6, v6

    if-ge v0, v6, :cond_3

    .line 102
    iget-boolean v6, p0, LCatalano/Imaging/Filters/EnsembleThreshold;->b:Z

    if-nez v6, :cond_1

    .line 103
    iget-object v6, p0, LCatalano/Imaging/Filters/EnsembleThreshold;->a:[I

    aget v6, v6, v0

    if-lt v4, v6, :cond_0

    .line 104
    aget v6, v5, v7

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v7

    .line 101
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_0
    aget v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 109
    :cond_1
    iget-object v6, p0, LCatalano/Imaging/Filters/EnsembleThreshold;->a:[I

    aget v6, v6, v0

    if-lt v4, v6, :cond_2

    .line 110
    aget v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 112
    :cond_2
    aget v6, v5, v7

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v7

    goto :goto_2

    .line 117
    :cond_3
    invoke-static {v5}, LCatalano/Math/Matrix;->MaxIndex([I)I

    move-result v0

    .line 118
    if-nez v0, :cond_4

    .line 119
    invoke-virtual {p1, v2, v1}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 98
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 121
    :cond_4
    const/16 v0, 0xff

    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    goto :goto_3

    .line 126
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ensemble Threshold only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_6
    return-void
.end method

.method public getThreshold()[I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, LCatalano/Imaging/Filters/EnsembleThreshold;->a:[I

    return-object v0
.end method

.method public isInvert()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, LCatalano/Imaging/Filters/EnsembleThreshold;->b:Z

    return v0
.end method

.method public setInvert(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, LCatalano/Imaging/Filters/EnsembleThreshold;->b:Z

    .line 72
    return-void
.end method

.method public setThreshold([I)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, LCatalano/Imaging/Filters/EnsembleThreshold;->a:[I

    .line 56
    return-void
.end method
