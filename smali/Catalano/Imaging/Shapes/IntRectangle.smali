.class public LCatalano/Imaging/Shapes/IntRectangle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(DDII)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    double-to-int v0, p1

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    .line 140
    double-to-int v0, p3

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    .line 141
    iput p5, p0, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    .line 142
    iput p6, p0, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    .line 143
    return-void
.end method

.method public constructor <init>(FFII)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    float-to-int v0, p1

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    .line 126
    float-to-int v0, p2

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    .line 127
    iput p3, p0, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    .line 128
    iput p4, p0, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    .line 129
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    .line 112
    iput p2, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    .line 113
    iput p3, p0, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    .line 114
    iput p4, p0, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    .line 115
    return-void
.end method

.method public constructor <init>(LCatalano/Core/DoublePoint;II)V
    .locals 2

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iget-wide v0, p1, LCatalano/Core/DoublePoint;->x:D

    double-to-int v0, v0

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    .line 179
    iget-wide v0, p1, LCatalano/Core/DoublePoint;->y:D

    double-to-int v0, v0

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    .line 180
    iput p2, p0, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    .line 181
    iput p3, p0, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    .line 182
    return-void
.end method

.method public constructor <init>(LCatalano/Core/FloatPoint;II)V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iget v0, p1, LCatalano/Core/FloatPoint;->x:F

    float-to-int v0, v0

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    .line 166
    iget v0, p1, LCatalano/Core/FloatPoint;->y:F

    float-to-int v0, v0

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    .line 167
    iput p2, p0, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    .line 168
    iput p3, p0, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    .line 169
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntPoint;II)V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    .line 153
    iget v0, p1, LCatalano/Core/IntPoint;->y:I

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    .line 154
    iput p2, p0, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    .line 155
    iput p3, p0, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    .line 156
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Shapes/IntRectangle;)V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iget v0, p1, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    .line 190
    iget v0, p1, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    .line 191
    iget v0, p1, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    .line 192
    iget v0, p1, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    iput v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    .line 193
    return-void
.end method


# virtual methods
.method public getEdgePoints()[LCatalano/Core/IntPoint;
    .locals 6

    .prologue
    .line 253
    const/4 v0, 0x4

    new-array v0, v0, [LCatalano/Core/IntPoint;

    .line 255
    const/4 v1, 0x0

    new-instance v2, LCatalano/Core/IntPoint;

    iget v3, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    iget v4, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    invoke-direct {v2, v3, v4}, LCatalano/Core/IntPoint;-><init>(II)V

    aput-object v2, v0, v1

    .line 256
    const/4 v1, 0x1

    new-instance v2, LCatalano/Core/IntPoint;

    iget v3, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    iget v4, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    iget v5, p0, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, LCatalano/Core/IntPoint;-><init>(II)V

    aput-object v2, v0, v1

    .line 257
    const/4 v1, 0x2

    new-instance v2, LCatalano/Core/IntPoint;

    iget v3, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    iget v4, p0, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    add-int/2addr v3, v4

    iget v4, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    invoke-direct {v2, v3, v4}, LCatalano/Core/IntPoint;-><init>(II)V

    aput-object v2, v0, v1

    .line 258
    const/4 v1, 0x3

    new-instance v2, LCatalano/Core/IntPoint;

    iget v3, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    iget v4, p0, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    add-int/2addr v3, v4

    iget v4, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    iget v5, p0, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, LCatalano/Core/IntPoint;-><init>(II)V

    aput-object v2, v0, v1

    .line 260
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    return v0
.end method

.method public isInside(II)Z
    .locals 1

    .prologue
    .line 212
    iget v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    if-lt p1, v0, :cond_0

    iget v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    if-gt p1, v0, :cond_0

    .line 213
    iget v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    if-lt p2, v0, :cond_0

    iget v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    if-gt p2, v0, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInside(LCatalano/Core/IntPoint;)Z
    .locals 2

    .prologue
    .line 201
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1}, LCatalano/Imaging/Shapes/IntRectangle;->isInside(II)Z

    move-result v0

    return v0
.end method

.method public isOverlaped(IIII)Z
    .locals 2

    .prologue
    .line 240
    iget v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    add-int v1, p1, p4

    if-ge v0, v1, :cond_0

    iget v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    iget v1, p0, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_0

    iget v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    iget v0, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    iget v1, p0, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    add-int/2addr v0, v1

    if-le v0, p2, :cond_0

    .line 242
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverlaped(LCatalano/Imaging/Shapes/IntRectangle;)Z
    .locals 4

    .prologue
    .line 227
    iget v0, p1, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    iget v1, p1, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    iget v2, p1, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    iget v3, p1, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, v3}, LCatalano/Imaging/Shapes/IntRectangle;->isOverlaped(IIII)Z

    move-result v0

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    .line 85
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    .line 101
    return-void
.end method

.method public setX(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, LCatalano/Imaging/Shapes/IntRectangle;->x:I

    .line 53
    return-void
.end method

.method public setY(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, LCatalano/Imaging/Shapes/IntRectangle;->y:I

    .line 69
    return-void
.end method
