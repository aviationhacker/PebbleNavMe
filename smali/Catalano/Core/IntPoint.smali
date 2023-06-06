.class public LCatalano/Core/IntPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:I

.field public y:I


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
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    double-to-int v0, p1

    iput v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 82
    double-to-int v0, p3

    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 83
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    float-to-int v0, p1

    iput v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 72
    float-to-int v0, p2

    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 73
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, LCatalano/Core/IntPoint;->x:I

    .line 62
    iput p2, p0, LCatalano/Core/IntPoint;->y:I

    .line 63
    return-void
.end method

.method public constructor <init>(LCatalano/Core/DoublePoint;)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget-wide v0, p1, LCatalano/Core/DoublePoint;->x:D

    double-to-int v0, v0

    iput v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 100
    iget-wide v0, p1, LCatalano/Core/DoublePoint;->y:D

    double-to-int v0, v0

    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 101
    return-void
.end method

.method public constructor <init>(LCatalano/Core/FloatPoint;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iget v0, p1, LCatalano/Core/FloatPoint;->x:F

    float-to-int v0, v0

    iput v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 91
    iget v0, p1, LCatalano/Core/FloatPoint;->y:F

    float-to-int v0, v0

    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 92
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntPoint;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iput v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 52
    iget v0, p1, LCatalano/Core/IntPoint;->y:I

    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 53
    return-void
.end method

.method public static Add(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)LCatalano/Core/IntPoint;
    .locals 1

    .prologue
    .line 129
    new-instance v0, LCatalano/Core/IntPoint;

    invoke-direct {v0, p0}, LCatalano/Core/IntPoint;-><init>(LCatalano/Core/IntPoint;)V

    .line 130
    invoke-virtual {v0, p1}, LCatalano/Core/IntPoint;->Add(LCatalano/Core/IntPoint;)V

    .line 131
    return-object v0
.end method

.method public static Divide(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)LCatalano/Core/IntPoint;
    .locals 1

    .prologue
    .line 219
    new-instance v0, LCatalano/Core/IntPoint;

    invoke-direct {v0, p0}, LCatalano/Core/IntPoint;-><init>(LCatalano/Core/IntPoint;)V

    .line 220
    invoke-virtual {v0, p1}, LCatalano/Core/IntPoint;->Divide(LCatalano/Core/IntPoint;)V

    .line 221
    return-object v0
.end method

.method public static Multiply(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)LCatalano/Core/IntPoint;
    .locals 1

    .prologue
    .line 189
    new-instance v0, LCatalano/Core/IntPoint;

    invoke-direct {v0, p0}, LCatalano/Core/IntPoint;-><init>(LCatalano/Core/IntPoint;)V

    .line 190
    invoke-virtual {v0, p1}, LCatalano/Core/IntPoint;->Multiply(LCatalano/Core/IntPoint;)V

    .line 191
    return-object v0
.end method

.method public static Subtract(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)LCatalano/Core/IntPoint;
    .locals 1

    .prologue
    .line 159
    new-instance v0, LCatalano/Core/IntPoint;

    invoke-direct {v0, p0}, LCatalano/Core/IntPoint;-><init>(LCatalano/Core/IntPoint;)V

    .line 160
    invoke-virtual {v0, p1}, LCatalano/Core/IntPoint;->Subtract(LCatalano/Core/IntPoint;)V

    .line 161
    return-object v0
.end method


# virtual methods
.method public Add(I)V
    .locals 1

    .prologue
    .line 139
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    add-int/2addr v0, p1

    iput v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 140
    iget v0, p0, LCatalano/Core/IntPoint;->y:I

    add-int/2addr v0, p1

    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 141
    return-void
.end method

.method public Add(LCatalano/Core/IntPoint;)V
    .locals 2

    .prologue
    .line 118
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->x:I

    add-int/2addr v0, v1

    iput v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 119
    iget v0, p0, LCatalano/Core/IntPoint;->y:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    add-int/2addr v0, v1

    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 120
    return-void
.end method

.method public DistanceTo(LCatalano/Core/IntPoint;)F
    .locals 3

    .prologue
    .line 239
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 240
    iget v1, p0, LCatalano/Core/IntPoint;->y:I

    iget v2, p1, LCatalano/Core/IntPoint;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 242
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public Divide(I)V
    .locals 1

    .prologue
    .line 229
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    div-int/2addr v0, p1

    iput v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 230
    iget v0, p0, LCatalano/Core/IntPoint;->y:I

    div-int/2addr v0, p1

    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 231
    return-void
.end method

.method public Divide(LCatalano/Core/IntPoint;)V
    .locals 2

    .prologue
    .line 208
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->x:I

    div-int/2addr v0, v1

    iput v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 209
    iget v0, p0, LCatalano/Core/IntPoint;->y:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    div-int/2addr v0, v1

    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 210
    return-void
.end method

.method public Multiply(I)V
    .locals 1

    .prologue
    .line 199
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 200
    iget v0, p0, LCatalano/Core/IntPoint;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 201
    return-void
.end method

.method public Multiply(LCatalano/Core/IntPoint;)V
    .locals 2

    .prologue
    .line 178
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 179
    iget v0, p0, LCatalano/Core/IntPoint;->y:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 180
    return-void
.end method

.method public Subtract(I)V
    .locals 1

    .prologue
    .line 169
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 170
    iget v0, p0, LCatalano/Core/IntPoint;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 171
    return-void
.end method

.method public Subtract(LCatalano/Core/IntPoint;)V
    .locals 2

    .prologue
    .line 148
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 149
    iget v0, p0, LCatalano/Core/IntPoint;->y:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 150
    return-void
.end method

.method public Swap()V
    .locals 2

    .prologue
    .line 265
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    .line 266
    iget v1, p0, LCatalano/Core/IntPoint;->y:I

    iput v1, p0, LCatalano/Core/IntPoint;->x:I

    .line 267
    iput v0, p0, LCatalano/Core/IntPoint;->y:I

    .line 268
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LCatalano/Core/IntPoint;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    check-cast p1, LCatalano/Core/IntPoint;

    .line 274
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, LCatalano/Core/IntPoint;->y:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    if-ne v0, v1, :cond_0

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
    .locals 2

    .prologue
    .line 283
    .line 284
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    add-int/lit16 v0, v0, 0xc9

    .line 285
    mul-int/lit8 v0, v0, 0x43

    iget v1, p0, LCatalano/Core/IntPoint;->y:I

    add-int/2addr v0, v1

    .line 286
    return v0
.end method

.method public setXY(II)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, LCatalano/Core/IntPoint;->x:I

    .line 110
    iput p2, p0, LCatalano/Core/IntPoint;->y:I

    .line 111
    return-void
.end method

.method public toDoublePoint()LCatalano/Core/DoublePoint;
    .locals 3

    .prologue
    .line 258
    new-instance v0, LCatalano/Core/DoublePoint;

    iget v1, p0, LCatalano/Core/IntPoint;->x:I

    iget v2, p0, LCatalano/Core/IntPoint;->y:I

    invoke-direct {v0, v1, v2}, LCatalano/Core/DoublePoint;-><init>(II)V

    return-object v0
.end method

.method public toFloatPoint()LCatalano/Core/FloatPoint;
    .locals 3

    .prologue
    .line 250
    new-instance v0, LCatalano/Core/FloatPoint;

    iget v1, p0, LCatalano/Core/IntPoint;->x:I

    iget v2, p0, LCatalano/Core/IntPoint;->y:I

    invoke-direct {v0, v1, v2}, LCatalano/Core/FloatPoint;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LCatalano/Core/IntPoint;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
