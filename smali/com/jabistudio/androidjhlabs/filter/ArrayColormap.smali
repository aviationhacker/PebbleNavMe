.class public Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jabistudio/androidjhlabs/filter/Colormap;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected map:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I

    .line 36
    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 48
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;

    .line 49
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColor(F)I
    .locals 2

    .prologue
    const/16 v0, 0xff

    .line 92
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 93
    if-gez v1, :cond_1

    .line 94
    const/4 v0, 0x0

    .line 97
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I

    aget v0, v1, v0

    return v0

    .line 95
    :cond_1
    if-gt v1, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getMap()[I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I

    return-object v0
.end method

.method public setColor(II)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I

    aput p2, v0, p1

    .line 149
    return-void
.end method

.method public setColorInterpolated(IIII)V
    .locals 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I

    aget v1, v0, p2

    .line 111
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I

    aget v2, v0, p3

    move v0, p2

    .line 112
    :goto_0
    if-gt v0, p1, :cond_0

    .line 113
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I

    sub-int v4, v0, p2

    int-to-float v4, v4

    sub-int v5, p1, p2

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v1, p4}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v4

    aput v4, v3, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 114
    :goto_1
    if-ge v0, p3, :cond_1

    .line 115
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I

    sub-int v3, v0, p1

    int-to-float v3, v3

    sub-int v4, p3, p1

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, p4, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v3

    aput v3, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_1
    return-void
.end method

.method public setColorRange(III)V
    .locals 1

    .prologue
    .line 137
    :goto_0
    if-gt p1, p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I

    aput p3, v0, p1

    .line 137
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public setColorRange(IIII)V
    .locals 4

    .prologue
    .line 126
    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_0

    .line 127
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I

    sub-int v2, v0, p1

    int-to-float v2, v2

    sub-int v3, p2, p1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, p3, p4}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v2

    aput v2, v1, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public setMap([I)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->map:[I

    .line 64
    return-void
.end method
