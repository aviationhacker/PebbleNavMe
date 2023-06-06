.class public Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->c:Z

    .line 29
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->setNumLevels(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 5

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->c:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->c:Z

    .line 64
    invoke-virtual {p0}, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->initialize()V

    .line 66
    :cond_0
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    .line 67
    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 68
    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 69
    and-int/lit16 v3, p3, 0xff

    .line 70
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->b:[I

    aget v1, v4, v1

    .line 71
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->b:[I

    aget v2, v4, v2

    .line 72
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->b:[I

    aget v3, v4, v3

    .line 73
    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public getNumLevels()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->a:I

    return v0
.end method

.method protected initialize()V
    .locals 5

    .prologue
    const/16 v4, 0x100

    .line 55
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->b:[I

    .line 56
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 57
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 58
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->b:[I

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->a:I

    mul-int/2addr v2, v0

    div-int/lit16 v2, v2, 0x100

    mul-int/lit16 v2, v2, 0xff

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->a:I

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v2, v3

    aput v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public setNumLevels(I)V
    .locals 1

    .prologue
    .line 38
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->a:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PosterizeFilter;->c:Z

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "Colors/Posterize..."

    return-object v0
.end method
