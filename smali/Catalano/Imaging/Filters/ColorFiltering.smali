.class public LCatalano/Imaging/Filters/ColorFiltering;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Core/IntRange;

.field private b:LCatalano/Core/IntRange;

.field private c:LCatalano/Core/IntRange;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntRange;LCatalano/Core/IntRange;LCatalano/Core/IntRange;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, LCatalano/Imaging/Filters/ColorFiltering;->a:LCatalano/Core/IntRange;

    .line 105
    iput-object p2, p0, LCatalano/Imaging/Filters/ColorFiltering;->b:LCatalano/Core/IntRange;

    .line 106
    iput-object p3, p0, LCatalano/Imaging/Filters/ColorFiltering;->c:LCatalano/Core/IntRange;

    .line 107
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v2

    move v0, v1

    .line 115
    :goto_0
    if-ge v0, v2, :cond_2

    .line 116
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    .line 117
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    .line 118
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    .line 120
    iget-object v6, p0, LCatalano/Imaging/Filters/ColorFiltering;->a:LCatalano/Core/IntRange;

    .line 121
    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMin()I

    move-result v6

    if-lt v3, v6, :cond_0

    iget-object v6, p0, LCatalano/Imaging/Filters/ColorFiltering;->a:LCatalano/Core/IntRange;

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMax()I

    move-result v6

    if-gt v3, v6, :cond_0

    iget-object v6, p0, LCatalano/Imaging/Filters/ColorFiltering;->b:LCatalano/Core/IntRange;

    .line 122
    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMin()I

    move-result v6

    if-lt v4, v6, :cond_0

    iget-object v6, p0, LCatalano/Imaging/Filters/ColorFiltering;->b:LCatalano/Core/IntRange;

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMax()I

    move-result v6

    if-gt v4, v6, :cond_0

    iget-object v6, p0, LCatalano/Imaging/Filters/ColorFiltering;->c:LCatalano/Core/IntRange;

    .line 123
    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMin()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget-object v6, p0, LCatalano/Imaging/Filters/ColorFiltering;->c:LCatalano/Core/IntRange;

    invoke-virtual {v6}, LCatalano/Core/IntRange;->getMax()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 125
    invoke-virtual {p1, v0, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 115
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1, v0, v1, v1, v1}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    goto :goto_1

    .line 133
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Color filtering only works in RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2
    return-void
.end method

.method public getBlue()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, LCatalano/Imaging/Filters/ColorFiltering;->c:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public getGreen()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, LCatalano/Imaging/Filters/ColorFiltering;->b:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public getRed()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, LCatalano/Imaging/Filters/ColorFiltering;->a:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public setBlue(LCatalano/Core/IntRange;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, LCatalano/Imaging/Filters/ColorFiltering;->c:LCatalano/Core/IntRange;

    .line 90
    return-void
.end method

.method public setGreen(LCatalano/Core/IntRange;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, LCatalano/Imaging/Filters/ColorFiltering;->b:LCatalano/Core/IntRange;

    .line 74
    return-void
.end method

.method public setRed(LCatalano/Core/IntRange;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, LCatalano/Imaging/Filters/ColorFiltering;->a:LCatalano/Core/IntRange;

    .line 58
    return-void
.end method
