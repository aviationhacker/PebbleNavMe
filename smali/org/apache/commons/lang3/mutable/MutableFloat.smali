.class public Lorg/apache/commons/lang3/mutable/MutableFloat;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/lang3/mutable/MutableFloat;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x158f131a2L


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 52
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 63
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    .line 76
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    .line 154
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    .line 165
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableFloat;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableFloat;->compareTo(Lorg/apache/commons/lang3/mutable/MutableFloat;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableFloat;)I
    .locals 2

    .prologue
    .line 296
    iget v0, p1, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    .line 297
    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    .line 143
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 274
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableFloat;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableFloat;

    iget v0, p1, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    return v0
.end method

.method public getValue()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableFloat;->getValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public increment()V
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    .line 134
    return-void
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    float-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public setValue(F)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    .line 95
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    .line 105
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableFloat;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(F)V
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    .line 175
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    .line 186
    return-void
.end method

.method public toFloat()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableFloat;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->a:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
