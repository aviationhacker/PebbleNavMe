.class public Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransformFilter;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;-><init>(IIZ)V

    .line 27
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 30
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->c:I

    .line 31
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->d:I

    .line 32
    iput-boolean p3, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->e:Z

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->setEdgeAction(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 2

    .prologue
    .line 71
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->a:I

    .line 72
    iput p3, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->b:I

    .line 73
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->e:Z

    if-eqz v0, :cond_2

    .line 74
    :goto_0
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->c:I

    if-gez v0, :cond_0

    .line 75
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->c:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->c:I

    goto :goto_0

    .line 76
    :cond_0
    :goto_1
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->d:I

    if-gez v0, :cond_1

    .line 77
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->d:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->d:I

    goto :goto_1

    .line 78
    :cond_1
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->c:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->a:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->c:I

    .line 79
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->d:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->b:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->d:I

    .line 81
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getWrap()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->e:Z

    return v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->c:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->d:I

    return v0
.end method

.method public setWrap(Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->e:Z

    .line 54
    return-void
.end method

.method public setXOffset(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->c:I

    .line 38
    return-void
.end method

.method public setYOffset(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->d:I

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "Distort/Offset..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->e:Z

    if-eqz v0, :cond_0

    .line 62
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->a:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->c:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->a:I

    rem-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p3, v2

    .line 63
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->b:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->d:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->b:I

    rem-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p3, v3

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->c:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    aput v0, p3, v2

    .line 66
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OffsetFilter;->d:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    aput v0, p3, v3

    goto :goto_0
.end method
