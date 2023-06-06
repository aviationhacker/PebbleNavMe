.class public LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->a:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->b:Z

    .line 101
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->a:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->b:Z

    .line 108
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->setMaxGapSize(I)V

    .line 109
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->a:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->b:Z

    .line 117
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->setMaxGapSize(I)V

    .line 118
    invoke-virtual {p0, p2}, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->setProcessGapsWithImageBorders(Z)V

    .line 119
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    .line 127
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v5

    move v3, v2

    .line 129
    :goto_0
    if-ge v3, v5, :cond_6

    move v1, v2

    .line 136
    :goto_1
    if-ge v1, v4, :cond_4

    move v0, v1

    .line 141
    :goto_2
    if-ge v0, v4, :cond_0

    invoke-virtual {p1, v3, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    if-nez v6, :cond_0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 146
    :cond_0
    sub-int v6, v0, v1

    iget v7, p0, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->a:I

    if-gt v6, v7, :cond_2

    .line 147
    iget-boolean v6, p0, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->b:Z

    if-nez v6, :cond_1

    if-eq v1, v2, :cond_2

    if-eq v0, v4, :cond_2

    .line 148
    :cond_1
    :goto_3
    if-ge v1, v0, :cond_2

    .line 149
    const/16 v6, 0xff

    invoke-virtual {p1, v3, v1, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 156
    :cond_2
    :goto_4
    if-ge v0, v4, :cond_3

    invoke-virtual {p1, v3, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    move v1, v0

    .line 159
    goto :goto_1

    .line 129
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 163
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HorizontalRunLengthSmoothing only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_6
    return-void
.end method

.method public getMaxGapSize()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->a:I

    return v0
.end method

.method public isProcessGapsWithImageBorders()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->b:Z

    return v0
.end method

.method public setMaxGapSize(I)V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->a:I

    .line 72
    return-void
.end method

.method public setProcessGapsWithImageBorders(Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, LCatalano/Imaging/Filters/HorizontalRunLengthSmoothing;->b:Z

    .line 96
    return-void
.end method
