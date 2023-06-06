.class public Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 28
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->a:I

    .line 29
    const v0, -0x777778

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->b:I

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->c:I

    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/16 v0, 0x80

    .line 34
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->d:[I

    .line 35
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 36
    int-to-float v2, v1

    const/high16 v3, 0x42fe0000    # 127.0f

    div-float/2addr v2, v3

    .line 37
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->d:[I

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->a:I

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->b:I

    invoke-static {v2, v4, v5}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v2

    aput v2, v3, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    :goto_1
    if-ge v0, v6, :cond_1

    .line 40
    add-int/lit8 v1, v0, -0x7f

    int-to-float v1, v1

    const/high16 v2, 0x43000000    # 128.0f

    div-float/2addr v1, v2

    .line 41
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->d:[I

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->b:I

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->c:I

    invoke-static {v1, v3, v4}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v1

    aput v1, v2, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->filter([III)[I

    move-result-object v0

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->d:[I

    .line 45
    return-object v0
.end method

.method public filterRGB(III)I
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->d:[I

    invoke-static {p3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->brightness(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getHighColor()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->c:I

    return v0
.end method

.method public getMidColor()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->b:I

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->a:I

    return v0
.end method

.method public setHighColor(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->c:I

    .line 95
    return-void
.end method

.method public setMidColor(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->b:I

    .line 77
    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/TritoneFilter;->a:I

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "Colors/Tritone..."

    return-object v0
.end method
