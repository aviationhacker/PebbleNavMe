.class public Lcom/jabistudio/androidjhlabs/filter/MinimumFilter;
.super Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILandroid/graphics/Rect;)[I
    .locals 10

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    mul-int v0, p1, p2

    new-array v6, v0, [I

    .line 35
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, p2, :cond_4

    .line 36
    const/4 v0, 0x0

    move v3, v0

    move v4, v1

    :goto_1
    if-ge v3, p1, :cond_3

    .line 37
    const/4 v1, -0x1

    .line 38
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    :goto_2
    const/4 v1, 0x1

    if-gt v2, v1, :cond_2

    .line 39
    add-int v1, v5, v2

    .line 41
    if-ltz v1, :cond_1

    if-ge v1, p2, :cond_1

    .line 42
    mul-int v7, v1, p1

    .line 43
    const/4 v1, -0x1

    :goto_3
    const/4 v8, 0x1

    if-gt v1, v8, :cond_1

    .line 44
    add-int v8, v3, v1

    .line 45
    if-ltz v8, :cond_0

    if-ge v8, p1, :cond_0

    .line 46
    add-int/2addr v8, v7

    aget v8, p3, v8

    const/4 v9, 0x2

    invoke-static {v0, v8, v9}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->combinePixels(III)I

    move-result v0

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 38
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 51
    :cond_2
    add-int/lit8 v1, v4, 0x1

    aput v0, v6, v4

    .line 36
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_1

    .line 35
    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v1, v4

    goto :goto_0

    .line 54
    :cond_4
    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "Blur/Minimum"

    return-object v0
.end method
