.class public abstract Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field protected canFilterIndexColorModel:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->canFilterIndexColorModel:Z

    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 29
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->a:I

    .line 30
    iput p3, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->b:I

    .line 32
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->a:I

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->b:I

    invoke-virtual {p0, v0, v2}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->setDimensions(II)V

    .line 34
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->a:I

    new-array v4, v0, [I

    .line 35
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->a:I

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->b:I

    mul-int/2addr v0, v2

    new-array v5, v0, [I

    move v0, v1

    .line 37
    :goto_0
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->b:I

    if-ge v0, v2, :cond_3

    .line 39
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->a:I

    mul-int/2addr v2, v0

    move v3, v1

    :goto_1
    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->a:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->a:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_0

    .line 40
    aget v6, p1, v2

    aput v6, v4, v3

    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    .line 44
    :goto_2
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->a:I

    if-ge v2, v3, :cond_1

    .line 45
    aget v3, v4, v2

    invoke-virtual {p0, v2, v0, v3}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->filterRGB(III)I

    move-result v3

    aput v3, v4, v2

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 49
    :cond_1
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->a:I

    mul-int/2addr v2, v0

    move v3, v1

    :goto_3
    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->a:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->a:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_2

    .line 50
    aget v6, v4, v3

    aput v6, v5, v2

    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 37
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_3
    return-object v5
.end method

.method public abstract filterRGB(III)I
.end method

.method public setDimensions(II)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->a:I

    .line 60
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->b:I

    .line 61
    return-void
.end method
