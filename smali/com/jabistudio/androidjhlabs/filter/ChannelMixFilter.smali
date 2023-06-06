.class public Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->canFilterIndexColorModel:Z

    .line 31
    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 8

    .prologue
    .line 82
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    .line 83
    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 84
    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 85
    and-int/lit16 v3, p3, 0xff

    .line 86
    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->d:I

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->a:I

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->a:I

    rsub-int v6, v6, 0xff

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->d:I

    rsub-int v5, v5, 0xff

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v4

    .line 87
    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->e:I

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->b:I

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->b:I

    rsub-int v7, v7, 0xff

    mul-int/2addr v7, v1

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xff

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->e:I

    rsub-int v6, v6, 0xff

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v5

    .line 88
    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->f:I

    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->c:I

    mul-int/2addr v1, v7

    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->c:I

    rsub-int v7, v7, 0xff

    mul-int/2addr v2, v7

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    div-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->f:I

    rsub-int v2, v2, 0xff

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v1

    .line 89
    shl-int/lit8 v2, v4, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v5, 0x8

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public getBlueGreen()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->a:I

    return v0
.end method

.method public getGreenRed()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->c:I

    return v0
.end method

.method public getIntoB()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->f:I

    return v0
.end method

.method public getIntoG()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->e:I

    return v0
.end method

.method public getIntoR()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->d:I

    return v0
.end method

.method public getRedBlue()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->b:I

    return v0
.end method

.method public setBlueGreen(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->a:I

    .line 35
    return-void
.end method

.method public setGreenRed(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->c:I

    .line 51
    return-void
.end method

.method public setIntoB(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->f:I

    .line 75
    return-void
.end method

.method public setIntoG(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->e:I

    .line 67
    return-void
.end method

.method public setIntoR(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->d:I

    .line 59
    return-void
.end method

.method public setRedBlue(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ChannelMixFilter;->b:I

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "Colors/Mix Channels..."

    return-object v0
.end method
