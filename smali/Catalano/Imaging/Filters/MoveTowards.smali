.class public LCatalano/Imaging/Filters/MoveTowards;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    .line 43
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    .line 51
    iput-object p1, p0, LCatalano/Imaging/Filters/MoveTowards;->a:LCatalano/Imaging/FastBitmap;

    .line 52
    invoke-virtual {p0, p2}, LCatalano/Imaging/Filters/MoveTowards;->setStepSize(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v8

    .line 85
    iget-object v1, p0, LCatalano/Imaging/Filters/MoveTowards;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, LCatalano/Imaging/Filters/MoveTowards;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 86
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, LCatalano/Imaging/Filters/MoveTowards;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    if-ne v8, v1, :cond_e

    move v2, v0

    .line 89
    :goto_0
    if-ge v2, v8, :cond_e

    .line 90
    iget-object v0, p0, LCatalano/Imaging/Filters/MoveTowards;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    invoke-virtual {p1, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 91
    invoke-virtual {p1, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v1

    .line 92
    if-lez v0, :cond_1

    .line 93
    iget v3, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    if-ge v3, v0, :cond_0

    iget v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    :cond_0
    add-int/2addr v0, v1

    .line 99
    :goto_1
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 89
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 95
    :cond_1
    if-gez v0, :cond_11

    .line 96
    neg-int v0, v0

    .line 97
    iget v3, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    if-ge v3, v0, :cond_2

    iget v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    :cond_2
    sub-int v0, v1, v0

    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, LCatalano/Imaging/Filters/MoveTowards;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 104
    if-ne v8, v1, :cond_e

    move v7, v0

    .line 106
    :goto_2
    if-ge v7, v8, :cond_e

    .line 107
    iget-object v0, p0, LCatalano/Imaging/Filters/MoveTowards;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v7}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v0

    invoke-virtual {p1, v7}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    sub-int v1, v0, v1

    .line 108
    iget-object v0, p0, LCatalano/Imaging/Filters/MoveTowards;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v7}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v0

    invoke-virtual {p1, v7}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v2

    sub-int v2, v0, v2

    .line 109
    iget-object v0, p0, LCatalano/Imaging/Filters/MoveTowards;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v7}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v0

    invoke-virtual {p1, v7}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    sub-int v3, v0, v3

    .line 110
    invoke-virtual {p1, v7}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v6

    .line 111
    invoke-virtual {p1, v7}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v5

    .line 112
    invoke-virtual {p1, v7}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    .line 114
    if-lez v1, :cond_4

    .line 115
    iget v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    if-ge v0, v1, :cond_b

    iget v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    :goto_3
    add-int/2addr v6, v0

    .line 117
    :cond_4
    if-lez v2, :cond_5

    .line 118
    iget v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    if-ge v0, v2, :cond_c

    iget v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    :goto_4
    add-int/2addr v5, v0

    .line 120
    :cond_5
    if-lez v3, :cond_6

    .line 121
    iget v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    if-ge v0, v3, :cond_d

    iget v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    :goto_5
    add-int/2addr v4, v0

    .line 123
    :cond_6
    if-gez v1, :cond_8

    .line 124
    neg-int v0, v1

    .line 125
    iget v1, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    if-ge v1, v0, :cond_7

    iget v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    :cond_7
    sub-int v0, v6, v0

    move v6, v0

    .line 127
    :cond_8
    if-gez v2, :cond_10

    .line 128
    neg-int v0, v2

    .line 129
    iget v1, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    if-ge v1, v0, :cond_9

    iget v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    :cond_9
    sub-int v0, v5, v0

    move v1, v0

    .line 131
    :goto_6
    if-gez v3, :cond_f

    .line 132
    neg-int v0, v3

    .line 133
    iget v2, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    if-ge v2, v0, :cond_a

    iget v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    :cond_a
    sub-int v0, v4, v0

    .line 135
    :goto_7
    invoke-virtual {p1, v7, v6, v1, v0}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 106
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    :cond_b
    move v0, v1

    .line 115
    goto :goto_3

    :cond_c
    move v0, v2

    .line 118
    goto :goto_4

    :cond_d
    move v0, v3

    .line 121
    goto :goto_5

    .line 139
    :cond_e
    return-void

    :cond_f
    move v0, v4

    goto :goto_7

    :cond_10
    move v1, v5

    goto :goto_6

    :cond_11
    move v0, v1

    goto/16 :goto_1
.end method

.method public getStepSize()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    return v0
.end method

.method public setOverlayImage(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, LCatalano/Imaging/Filters/MoveTowards;->a:LCatalano/Imaging/FastBitmap;

    .line 79
    return-void
.end method

.method public setStepSize(I)V
    .locals 0

    .prologue
    .line 68
    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 69
    :cond_0
    iput p1, p0, LCatalano/Imaging/Filters/MoveTowards;->b:I

    .line 70
    return-void
.end method
