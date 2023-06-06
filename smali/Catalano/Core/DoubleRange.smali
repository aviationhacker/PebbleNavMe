.class public LCatalano/Core/DoubleRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:D

.field b:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, LCatalano/Core/DoubleRange;->a:D

    .line 49
    iput-wide p3, p0, LCatalano/Core/DoubleRange;->b:D

    .line 50
    return-void
.end method


# virtual methods
.method public IsOverlapping(LCatalano/Core/DoubleRange;)Z
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p1, LCatalano/Core/DoubleRange;->a:D

    invoke-virtual {p0, v0, v1}, LCatalano/Core/DoubleRange;->isInside(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, LCatalano/Core/DoubleRange;->b:D

    invoke-virtual {p0, v0, v1}, LCatalano/Core/DoubleRange;->isInside(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, LCatalano/Core/DoubleRange;->a:D

    .line 108
    invoke-virtual {p1, v0, v1}, LCatalano/Core/DoubleRange;->isInside(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, LCatalano/Core/DoubleRange;->b:D

    invoke-virtual {p1, v0, v1}, LCatalano/Core/DoubleRange;->isInside(D)Z

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
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, LCatalano/Core/DoubleRange;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    check-cast p1, LCatalano/Core/DoubleRange;

    .line 131
    iget-wide v2, p0, LCatalano/Core/DoubleRange;->a:D

    invoke-virtual {p1}, LCatalano/Core/DoubleRange;->getMin()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, LCatalano/Core/DoubleRange;->b:D

    invoke-virtual {p1}, LCatalano/Core/DoubleRange;->getMax()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 133
    :cond_0
    return v0
.end method

.method public getMax()D
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, LCatalano/Core/DoubleRange;->b:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, LCatalano/Core/DoubleRange;->a:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 138
    .line 139
    iget-wide v0, p0, LCatalano/Core/DoubleRange;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Core/DoubleRange;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x131

    .line 140
    mul-int/lit8 v1, v0, 0x3d

    iget-wide v2, p0, LCatalano/Core/DoubleRange;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, LCatalano/Core/DoubleRange;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 141
    return v0
.end method

.method public isInside(D)Z
    .locals 3

    .prologue
    .line 98
    iget-wide v0, p0, LCatalano/Core/DoubleRange;->a:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, LCatalano/Core/DoubleRange;->b:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()D
    .locals 4

    .prologue
    .line 89
    iget-wide v0, p0, LCatalano/Core/DoubleRange;->b:D

    iget-wide v2, p0, LCatalano/Core/DoubleRange;->a:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public setMax(D)V
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, LCatalano/Core/DoubleRange;->b:D

    .line 82
    return-void
.end method

.method public setMin(D)V
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, LCatalano/Core/DoubleRange;->a:D

    .line 66
    return-void
.end method

.method public toFloatRange()LCatalano/Core/FloatRange;
    .locals 4

    .prologue
    .line 124
    new-instance v0, LCatalano/Core/FloatRange;

    iget-wide v2, p0, LCatalano/Core/DoubleRange;->a:D

    double-to-float v1, v2

    iget-wide v2, p0, LCatalano/Core/DoubleRange;->b:D

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, LCatalano/Core/FloatRange;-><init>(FF)V

    return-object v0
.end method

.method public toIntRange()LCatalano/Core/IntRange;
    .locals 4

    .prologue
    .line 116
    new-instance v0, LCatalano/Core/IntRange;

    iget-wide v2, p0, LCatalano/Core/DoubleRange;->a:D

    double-to-int v1, v2

    iget-wide v2, p0, LCatalano/Core/DoubleRange;->b:D

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntRange;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Minimum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LCatalano/Core/DoubleRange;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Maximum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LCatalano/Core/DoubleRange;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
