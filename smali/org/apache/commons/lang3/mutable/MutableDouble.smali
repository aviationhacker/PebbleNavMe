.class public Lorg/apache/commons/lang3/mutable/MutableDouble;
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
        "Lorg/apache/commons/lang3/mutable/MutableDouble;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5e9a330cL


# instance fields
.field private a:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 52
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 63
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    .line 76
    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 3

    .prologue
    .line 153
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    .line 154
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 4

    .prologue
    .line 164
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    .line 165
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableDouble;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableDouble;->compareTo(Lorg/apache/commons/lang3/mutable/MutableDouble;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableDouble;)I
    .locals 4

    .prologue
    .line 295
    iget-wide v0, p1, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    .line 296
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .locals 4

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    .line 143
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 272
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableDouble;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableDouble;

    iget-wide v0, p1, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    double-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableDouble;->getValue()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 283
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 284
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public increment()V
    .locals 4

    .prologue
    .line 133
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    .line 134
    return-void
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public setValue(D)V
    .locals 1

    .prologue
    .line 94
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    .line 95
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    .line 105
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableDouble;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(D)V
    .locals 3

    .prologue
    .line 174
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    .line 175
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 4

    .prologue
    .line 185
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    .line 186
    return-void
.end method

.method public toDouble()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableDouble;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->a:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
