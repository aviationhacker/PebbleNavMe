.class public LCatalano/Core/FloatPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    double-to-float v0, p1

    iput v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 70
    double-to-float v0, p3

    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 71
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, LCatalano/Core/FloatPoint;->x:F

    .line 60
    iput p2, p0, LCatalano/Core/FloatPoint;->y:F

    .line 61
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    int-to-float v0, p1

    iput v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 80
    int-to-float v0, p2

    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 81
    return-void
.end method

.method public constructor <init>(LCatalano/Core/DoublePoint;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget-wide v0, p1, LCatalano/Core/DoublePoint;->x:D

    double-to-float v0, v0

    iput v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 98
    iget-wide v0, p1, LCatalano/Core/DoublePoint;->y:D

    double-to-float v0, v0

    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 99
    return-void
.end method

.method public constructor <init>(LCatalano/Core/FloatPoint;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget v0, p1, LCatalano/Core/FloatPoint;->x:F

    iput v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 50
    iget v0, p1, LCatalano/Core/FloatPoint;->y:F

    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 51
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntPoint;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    int-to-float v0, v0

    iput v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 89
    iget v0, p1, LCatalano/Core/IntPoint;->y:I

    int-to-float v0, v0

    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 90
    return-void
.end method


# virtual methods
.method public Add(LCatalano/Core/FloatPoint;LCatalano/Core/FloatPoint;)LCatalano/Core/FloatPoint;
    .locals 1

    .prologue
    .line 127
    new-instance v0, LCatalano/Core/FloatPoint;

    invoke-direct {v0, p1}, LCatalano/Core/FloatPoint;-><init>(LCatalano/Core/FloatPoint;)V

    .line 128
    invoke-virtual {v0, p2}, LCatalano/Core/FloatPoint;->Add(LCatalano/Core/FloatPoint;)V

    .line 129
    return-object v0
.end method

.method public Add(F)V
    .locals 1

    .prologue
    .line 137
    iget v0, p0, LCatalano/Core/FloatPoint;->x:F

    add-float/2addr v0, p1

    iput v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 138
    iget v0, p0, LCatalano/Core/FloatPoint;->y:F

    add-float/2addr v0, p1

    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 139
    return-void
.end method

.method public Add(LCatalano/Core/FloatPoint;)V
    .locals 2

    .prologue
    .line 116
    iget v0, p0, LCatalano/Core/FloatPoint;->x:F

    iget v1, p1, LCatalano/Core/FloatPoint;->x:F

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 117
    iget v0, p0, LCatalano/Core/FloatPoint;->y:F

    iget v1, p1, LCatalano/Core/FloatPoint;->y:F

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 118
    return-void
.end method

.method public DistanceTo(LCatalano/Core/FloatPoint;)F
    .locals 3

    .prologue
    .line 237
    iget v0, p0, LCatalano/Core/FloatPoint;->x:F

    iget v1, p1, LCatalano/Core/FloatPoint;->x:F

    sub-float/2addr v0, v1

    .line 238
    iget v1, p0, LCatalano/Core/FloatPoint;->y:F

    iget v2, p1, LCatalano/Core/FloatPoint;->y:F

    sub-float/2addr v1, v2

    .line 240
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public Divide(LCatalano/Core/FloatPoint;LCatalano/Core/FloatPoint;)LCatalano/Core/FloatPoint;
    .locals 1

    .prologue
    .line 217
    new-instance v0, LCatalano/Core/FloatPoint;

    invoke-direct {v0, p1}, LCatalano/Core/FloatPoint;-><init>(LCatalano/Core/FloatPoint;)V

    .line 218
    invoke-virtual {v0, p2}, LCatalano/Core/FloatPoint;->Divide(LCatalano/Core/FloatPoint;)V

    .line 219
    return-object v0
.end method

.method public Divide(F)V
    .locals 1

    .prologue
    .line 227
    iget v0, p0, LCatalano/Core/FloatPoint;->x:F

    div-float/2addr v0, p1

    iput v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 228
    iget v0, p0, LCatalano/Core/FloatPoint;->y:F

    div-float/2addr v0, p1

    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 229
    return-void
.end method

.method public Divide(LCatalano/Core/FloatPoint;)V
    .locals 2

    .prologue
    .line 206
    iget v0, p0, LCatalano/Core/FloatPoint;->x:F

    iget v1, p1, LCatalano/Core/FloatPoint;->x:F

    div-float/2addr v0, v1

    iput v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 207
    iget v0, p0, LCatalano/Core/FloatPoint;->y:F

    iget v1, p1, LCatalano/Core/FloatPoint;->y:F

    div-float/2addr v0, v1

    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 208
    return-void
.end method

.method public Multiply(LCatalano/Core/FloatPoint;LCatalano/Core/FloatPoint;)LCatalano/Core/FloatPoint;
    .locals 1

    .prologue
    .line 187
    new-instance v0, LCatalano/Core/FloatPoint;

    invoke-direct {v0, p1}, LCatalano/Core/FloatPoint;-><init>(LCatalano/Core/FloatPoint;)V

    .line 188
    invoke-virtual {v0, p2}, LCatalano/Core/FloatPoint;->Multiply(LCatalano/Core/FloatPoint;)V

    .line 189
    return-object v0
.end method

.method public Multiply(F)V
    .locals 1

    .prologue
    .line 197
    iget v0, p0, LCatalano/Core/FloatPoint;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 198
    iget v0, p0, LCatalano/Core/FloatPoint;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 199
    return-void
.end method

.method public Multiply(LCatalano/Core/FloatPoint;)V
    .locals 2

    .prologue
    .line 176
    iget v0, p0, LCatalano/Core/FloatPoint;->x:F

    iget v1, p1, LCatalano/Core/FloatPoint;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 177
    iget v0, p0, LCatalano/Core/FloatPoint;->y:F

    iget v1, p1, LCatalano/Core/FloatPoint;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 178
    return-void
.end method

.method public Subtract(LCatalano/Core/FloatPoint;LCatalano/Core/FloatPoint;)LCatalano/Core/FloatPoint;
    .locals 1

    .prologue
    .line 157
    new-instance v0, LCatalano/Core/FloatPoint;

    invoke-direct {v0, p1}, LCatalano/Core/FloatPoint;-><init>(LCatalano/Core/FloatPoint;)V

    .line 158
    invoke-virtual {v0, p2}, LCatalano/Core/FloatPoint;->Subtract(LCatalano/Core/FloatPoint;)V

    .line 159
    return-object v0
.end method

.method public Subtract(F)V
    .locals 1

    .prologue
    .line 167
    iget v0, p0, LCatalano/Core/FloatPoint;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 168
    iget v0, p0, LCatalano/Core/FloatPoint;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 169
    return-void
.end method

.method public Subtract(LCatalano/Core/FloatPoint;)V
    .locals 2

    .prologue
    .line 146
    iget v0, p0, LCatalano/Core/FloatPoint;->x:F

    iget v1, p1, LCatalano/Core/FloatPoint;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 147
    iget v0, p0, LCatalano/Core/FloatPoint;->y:F

    iget v1, p1, LCatalano/Core/FloatPoint;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 148
    return-void
.end method

.method public Swap()V
    .locals 2

    .prologue
    .line 263
    iget v0, p0, LCatalano/Core/FloatPoint;->x:F

    .line 264
    iget v1, p0, LCatalano/Core/FloatPoint;->y:F

    iput v1, p0, LCatalano/Core/FloatPoint;->x:F

    .line 265
    iput v0, p0, LCatalano/Core/FloatPoint;->y:F

    .line 266
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LCatalano/Core/DoublePoint;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    check-cast p1, LCatalano/Core/FloatPoint;

    .line 272
    iget v0, p0, LCatalano/Core/FloatPoint;->x:F

    iget v1, p1, LCatalano/Core/FloatPoint;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, LCatalano/Core/FloatPoint;->y:F

    iget v1, p1, LCatalano/Core/FloatPoint;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 281
    .line 282
    iget v0, p0, LCatalano/Core/FloatPoint;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x26f

    .line 283
    mul-int/lit8 v0, v0, 0x59

    iget v1, p0, LCatalano/Core/FloatPoint;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    return v0
.end method

.method public setXY(FF)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, LCatalano/Core/FloatPoint;->x:F

    .line 108
    iput p2, p0, LCatalano/Core/FloatPoint;->y:F

    .line 109
    return-void
.end method

.method public toDoublePoint()LCatalano/Core/DoublePoint;
    .locals 3

    .prologue
    .line 256
    new-instance v0, LCatalano/Core/DoublePoint;

    iget v1, p0, LCatalano/Core/FloatPoint;->x:F

    iget v2, p0, LCatalano/Core/FloatPoint;->y:F

    invoke-direct {v0, v1, v2}, LCatalano/Core/DoublePoint;-><init>(FF)V

    return-object v0
.end method

.method public toIntPoint()LCatalano/Core/IntPoint;
    .locals 3

    .prologue
    .line 248
    new-instance v0, LCatalano/Core/IntPoint;

    iget v1, p0, LCatalano/Core/FloatPoint;->x:F

    iget v2, p0, LCatalano/Core/FloatPoint;->y:F

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntPoint;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LCatalano/Core/FloatPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LCatalano/Core/FloatPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
