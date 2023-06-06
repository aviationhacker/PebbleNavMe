.class public LCatalano/Core/DoublePoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, LCatalano/Core/DoublePoint;->x:D

    .line 62
    iput-wide p3, p0, LCatalano/Core/DoublePoint;->y:D

    .line 63
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    float-to-double v0, p1

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 72
    float-to-double v0, p2

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 73
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    int-to-double v0, p1

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 82
    int-to-double v0, p2

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 83
    return-void
.end method

.method public constructor <init>(LCatalano/Core/DoublePoint;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-wide v0, p1, LCatalano/Core/DoublePoint;->x:D

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 52
    iget-wide v0, p1, LCatalano/Core/DoublePoint;->y:D

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 53
    return-void
.end method

.method public constructor <init>(LCatalano/Core/FloatPoint;)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget v0, p1, LCatalano/Core/FloatPoint;->x:F

    float-to-double v0, v0

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 100
    iget v0, p1, LCatalano/Core/FloatPoint;->y:F

    float-to-double v0, v0

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 101
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntPoint;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    int-to-double v0, v0

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 91
    iget v0, p1, LCatalano/Core/IntPoint;->y:I

    int-to-double v0, v0

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 92
    return-void
.end method


# virtual methods
.method public Add(LCatalano/Core/DoublePoint;LCatalano/Core/DoublePoint;)LCatalano/Core/DoublePoint;
    .locals 1

    .prologue
    .line 129
    new-instance v0, LCatalano/Core/DoublePoint;

    invoke-direct {v0, p1}, LCatalano/Core/DoublePoint;-><init>(LCatalano/Core/DoublePoint;)V

    .line 130
    invoke-virtual {v0, p2}, LCatalano/Core/DoublePoint;->Add(LCatalano/Core/DoublePoint;)V

    .line 131
    return-object v0
.end method

.method public Add(D)V
    .locals 3

    .prologue
    .line 139
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 140
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 141
    return-void
.end method

.method public Add(LCatalano/Core/DoublePoint;)V
    .locals 4

    .prologue
    .line 118
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    iget-wide v2, p1, LCatalano/Core/DoublePoint;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 119
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    iget-wide v2, p1, LCatalano/Core/DoublePoint;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 120
    return-void
.end method

.method public DistanceTo(LCatalano/Core/DoublePoint;)D
    .locals 6

    .prologue
    .line 239
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    iget-wide v2, p1, LCatalano/Core/DoublePoint;->x:D

    sub-double/2addr v0, v2

    .line 240
    iget-wide v2, p0, LCatalano/Core/DoublePoint;->y:D

    iget-wide v4, p1, LCatalano/Core/DoublePoint;->y:D

    sub-double/2addr v2, v4

    .line 242
    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Divide(LCatalano/Core/DoublePoint;LCatalano/Core/DoublePoint;)LCatalano/Core/DoublePoint;
    .locals 1

    .prologue
    .line 219
    new-instance v0, LCatalano/Core/DoublePoint;

    invoke-direct {v0, p1}, LCatalano/Core/DoublePoint;-><init>(LCatalano/Core/DoublePoint;)V

    .line 220
    invoke-virtual {v0, p2}, LCatalano/Core/DoublePoint;->Divide(LCatalano/Core/DoublePoint;)V

    .line 221
    return-object v0
.end method

.method public Divide(D)V
    .locals 3

    .prologue
    .line 229
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 230
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 231
    return-void
.end method

.method public Divide(LCatalano/Core/DoublePoint;)V
    .locals 4

    .prologue
    .line 208
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    iget-wide v2, p1, LCatalano/Core/DoublePoint;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 209
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    iget-wide v2, p1, LCatalano/Core/DoublePoint;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 210
    return-void
.end method

.method public Multiply(LCatalano/Core/DoublePoint;LCatalano/Core/DoublePoint;)LCatalano/Core/DoublePoint;
    .locals 1

    .prologue
    .line 189
    new-instance v0, LCatalano/Core/DoublePoint;

    invoke-direct {v0, p1}, LCatalano/Core/DoublePoint;-><init>(LCatalano/Core/DoublePoint;)V

    .line 190
    invoke-virtual {v0, p2}, LCatalano/Core/DoublePoint;->Multiply(LCatalano/Core/DoublePoint;)V

    .line 191
    return-object v0
.end method

.method public Multiply(D)V
    .locals 3

    .prologue
    .line 199
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 200
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 201
    return-void
.end method

.method public Multiply(LCatalano/Core/DoublePoint;)V
    .locals 4

    .prologue
    .line 178
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    iget-wide v2, p1, LCatalano/Core/DoublePoint;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 179
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    iget-wide v2, p1, LCatalano/Core/DoublePoint;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 180
    return-void
.end method

.method public Subtract(LCatalano/Core/DoublePoint;LCatalano/Core/DoublePoint;)LCatalano/Core/DoublePoint;
    .locals 1

    .prologue
    .line 159
    new-instance v0, LCatalano/Core/DoublePoint;

    invoke-direct {v0, p1}, LCatalano/Core/DoublePoint;-><init>(LCatalano/Core/DoublePoint;)V

    .line 160
    invoke-virtual {v0, p2}, LCatalano/Core/DoublePoint;->Subtract(LCatalano/Core/DoublePoint;)V

    .line 161
    return-object v0
.end method

.method public Subtract(D)V
    .locals 3

    .prologue
    .line 169
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 170
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 171
    return-void
.end method

.method public Subtract(LCatalano/Core/DoublePoint;)V
    .locals 4

    .prologue
    .line 148
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    iget-wide v2, p1, LCatalano/Core/DoublePoint;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 149
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    iget-wide v2, p1, LCatalano/Core/DoublePoint;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 150
    return-void
.end method

.method public Swap()V
    .locals 4

    .prologue
    .line 249
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    .line 250
    iget-wide v2, p0, LCatalano/Core/DoublePoint;->y:D

    iput-wide v2, p0, LCatalano/Core/DoublePoint;->x:D

    .line 251
    iput-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    .line 252
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LCatalano/Core/DoublePoint;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    check-cast p1, LCatalano/Core/DoublePoint;

    .line 274
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    iget-wide v2, p1, LCatalano/Core/DoublePoint;->x:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, LCatalano/Core/DoublePoint;->y:D

    iget-wide v2, p1, LCatalano/Core/DoublePoint;->y:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 283
    .line 284
    iget-wide v0, p0, LCatalano/Core/DoublePoint;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Core/DoublePoint;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x2a7

    .line 285
    mul-int/lit8 v0, v0, 0x61

    iget-wide v2, p0, LCatalano/Core/DoublePoint;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, LCatalano/Core/DoublePoint;->y:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 286
    return v0
.end method

.method public setXY(DD)V
    .locals 1

    .prologue
    .line 109
    iput-wide p1, p0, LCatalano/Core/DoublePoint;->x:D

    .line 110
    iput-wide p3, p0, LCatalano/Core/DoublePoint;->y:D

    .line 111
    return-void
.end method

.method public toFloatPoint()LCatalano/Core/FloatPoint;
    .locals 6

    .prologue
    .line 267
    new-instance v0, LCatalano/Core/FloatPoint;

    iget-wide v2, p0, LCatalano/Core/DoublePoint;->x:D

    iget-wide v4, p0, LCatalano/Core/DoublePoint;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Core/FloatPoint;-><init>(DD)V

    return-object v0
.end method

.method public toIntPoint()LCatalano/Core/IntPoint;
    .locals 6

    .prologue
    .line 259
    new-instance v0, LCatalano/Core/IntPoint;

    iget-wide v2, p0, LCatalano/Core/DoublePoint;->x:D

    iget-wide v4, p0, LCatalano/Core/DoublePoint;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Core/IntPoint;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LCatalano/Core/DoublePoint;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LCatalano/Core/DoublePoint;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
