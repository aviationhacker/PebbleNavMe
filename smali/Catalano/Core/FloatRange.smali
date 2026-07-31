.class public LCatalano/Core/FloatRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:F

.field b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, LCatalano/Core/FloatRange;->a:F

    .line 49
    iput p2, p0, LCatalano/Core/FloatRange;->b:F

    .line 50
    return-void
.end method


# virtual methods
.method public IsOverlapping(LCatalano/Core/FloatRange;)Z
    .locals 1

    .prologue
    .line 107
    iget v0, p1, LCatalano/Core/FloatRange;->a:F

    invoke-virtual {p0, v0}, LCatalano/Core/FloatRange;->isInside(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, LCatalano/Core/FloatRange;->b:F

    invoke-virtual {p0, v0}, LCatalano/Core/FloatRange;->isInside(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, LCatalano/Core/FloatRange;->a:F

    .line 108
    invoke-virtual {p1, v0}, LCatalano/Core/FloatRange;->isInside(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, LCatalano/Core/FloatRange;->b:F

    invoke-virtual {p1, v0}, LCatalano/Core/FloatRange;->isInside(F)Z

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

    const-class v2, LCatalano/Core/FloatRange;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    check-cast p1, LCatalano/Core/FloatRange;

    .line 131
    iget v1, p0, LCatalano/Core/FloatRange;->a:F

    invoke-virtual {p1}, LCatalano/Core/FloatRange;->getMin()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, LCatalano/Core/FloatRange;->b:F

    invoke-virtual {p1}, LCatalano/Core/FloatRange;->getMax()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 134
    :cond_0
    return v0
.end method

.method public getMax()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, LCatalano/Core/FloatRange;->b:F

    return v0
.end method

.method public getMin()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, LCatalano/Core/FloatRange;->a:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 140
    .line 141
    iget v0, p0, LCatalano/Core/FloatRange;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x39

    .line 142
    mul-int/lit8 v1, v0, 0x13

    iget v2, p0, LCatalano/Core/FloatRange;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 143
    return v0
.end method

.method public isInside(F)Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, LCatalano/Core/FloatRange;->a:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, LCatalano/Core/FloatRange;->b:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()F
    .locals 2

    .prologue
    .line 89
    iget v0, p0, LCatalano/Core/FloatRange;->b:F

    iget v1, p0, LCatalano/Core/FloatRange;->a:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public setMax(F)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, LCatalano/Core/FloatRange;->b:F

    .line 82
    return-void
.end method

.method public setMin(F)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, LCatalano/Core/FloatRange;->a:F

    .line 66
    return-void
.end method

.method public toDoubleRange()LCatalano/Core/DoubleRange;
    .locals 6

    .prologue
    .line 124
    new-instance v0, LCatalano/Core/DoubleRange;

    iget v1, p0, LCatalano/Core/FloatRange;->a:F

    float-to-double v2, v1

    iget v1, p0, LCatalano/Core/FloatRange;->b:F

    float-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Core/DoubleRange;-><init>(DD)V

    return-object v0
.end method

.method public toIntRange()LCatalano/Core/IntRange;
    .locals 3

    .prologue
    .line 116
    new-instance v0, LCatalano/Core/IntRange;

    iget v1, p0, LCatalano/Core/FloatRange;->a:F

    float-to-int v1, v1

    iget v2, p0, LCatalano/Core/FloatRange;->b:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntRange;-><init>(II)V

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

    iget v1, p0, LCatalano/Core/FloatRange;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Maximum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LCatalano/Core/FloatRange;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
