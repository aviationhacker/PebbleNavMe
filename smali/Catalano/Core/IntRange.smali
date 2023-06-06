.class public LCatalano/Core/IntRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, LCatalano/Core/IntRange;->a:I

    .line 49
    iput p2, p0, LCatalano/Core/IntRange;->b:I

    .line 50
    return-void
.end method


# virtual methods
.method public IsOverlapping(LCatalano/Core/IntRange;)Z
    .locals 1

    .prologue
    .line 107
    iget v0, p1, LCatalano/Core/IntRange;->a:I

    invoke-virtual {p0, v0}, LCatalano/Core/IntRange;->isInside(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, LCatalano/Core/IntRange;->b:I

    invoke-virtual {p0, v0}, LCatalano/Core/IntRange;->isInside(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, LCatalano/Core/IntRange;->a:I

    .line 108
    invoke-virtual {p1, v0}, LCatalano/Core/IntRange;->isInside(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, LCatalano/Core/IntRange;->b:I

    invoke-virtual {p1, v0}, LCatalano/Core/IntRange;->isInside(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, LCatalano/Core/IntRange;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    check-cast p1, LCatalano/Core/IntRange;

    .line 131
    iget v1, p0, LCatalano/Core/IntRange;->a:I

    invoke-virtual {p1}, LCatalano/Core/IntRange;->getMin()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, LCatalano/Core/IntRange;->b:I

    invoke-virtual {p1}, LCatalano/Core/IntRange;->getMax()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 134
    :cond_0
    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, LCatalano/Core/IntRange;->b:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, LCatalano/Core/IntRange;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 140
    .line 141
    iget v0, p0, LCatalano/Core/IntRange;->a:I

    add-int/lit16 v0, v0, 0x163

    .line 142
    mul-int/lit8 v0, v0, 0x47

    iget v1, p0, LCatalano/Core/IntRange;->b:I

    add-int/2addr v0, v1

    .line 143
    return v0
.end method

.method public isInside(I)Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, LCatalano/Core/IntRange;->a:I

    if-lt p1, v0, :cond_0

    iget v0, p0, LCatalano/Core/IntRange;->b:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()D
    .locals 2

    .prologue
    .line 89
    iget v0, p0, LCatalano/Core/IntRange;->b:I

    iget v1, p0, LCatalano/Core/IntRange;->a:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    return-wide v0
.end method

.method public setMax(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, LCatalano/Core/IntRange;->b:I

    .line 82
    return-void
.end method

.method public setMin(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, LCatalano/Core/IntRange;->a:I

    .line 66
    return-void
.end method

.method public toDoubleRange()LCatalano/Core/DoubleRange;
    .locals 6

    .prologue
    .line 124
    new-instance v0, LCatalano/Core/DoubleRange;

    iget v1, p0, LCatalano/Core/IntRange;->a:I

    int-to-double v2, v1

    iget v1, p0, LCatalano/Core/IntRange;->b:I

    int-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Core/DoubleRange;-><init>(DD)V

    return-object v0
.end method

.method public toFloatRange()LCatalano/Core/FloatRange;
    .locals 3

    .prologue
    .line 116
    new-instance v0, LCatalano/Core/FloatRange;

    iget v1, p0, LCatalano/Core/IntRange;->a:I

    int-to-float v1, v1

    iget v2, p0, LCatalano/Core/IntRange;->b:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, LCatalano/Core/FloatRange;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Minimum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LCatalano/Core/IntRange;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Maximum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LCatalano/Core/IntRange;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
