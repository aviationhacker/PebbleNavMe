.class public LCatalano/Imaging/Shapes/IntPolygon;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:[I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-array v0, v1, [I

    iput-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    .line 84
    new-array v0, v1, [I

    iput-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    .line 128
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    .line 130
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 131
    iget-object v2, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    aput v0, v2, v1

    .line 132
    iget-object v2, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    aput v0, v2, v1

    .line 130
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the number of points is higher than lenght of lstPoints."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    if-gez p2, :cond_1

    .line 147
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    const-string v1, "nPoints < 0"

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    iput p2, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    .line 150
    new-array v0, p2, [I

    iput-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    .line 151
    new-array v0, p2, [I

    iput-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    .line 153
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 154
    iget-object v2, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    aput v0, v2, v1

    .line 155
    iget-object v2, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    aput v0, v2, v1

    .line 153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 157
    :cond_2
    return-void
.end method

.method public constructor <init>([I[I)V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of xPoints and yPoints must be the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    .line 98
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    .line 99
    array-length v0, p1

    iput v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    .line 100
    return-void
.end method

.method public constructor <init>([I[II)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    array-length v0, p1

    if-lt v0, p3, :cond_0

    array-length v0, p2

    if-ge v0, p3, :cond_1

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the number of points is higher than lenght of xPoints or yPoints."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    if-gez p3, :cond_2

    .line 113
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    const-string v1, "nPoints < 0"

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    .line 116
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    .line 117
    iput p3, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    .line 118
    return-void
.end method


# virtual methods
.method public addPoint(II)V
    .locals 2

    .prologue
    .line 174
    iget v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    iget-object v1, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    iget-object v1, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 175
    :cond_0
    iget v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    mul-int/lit8 v0, v0, 0x2

    .line 176
    invoke-static {v0}, LCatalano/Math/Tools;->isPowerOf2(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 179
    :cond_1
    iget-object v1, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    .line 180
    iget-object v1, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    .line 184
    :cond_2
    iget-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    iget v1, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    aput p1, v0, v1

    .line 185
    iget-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    iget v1, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    aput p2, v0, v1

    .line 186
    iget v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    .line 188
    return-void
.end method

.method public addPoint(LCatalano/Core/IntPoint;)V
    .locals 2

    .prologue
    .line 164
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1}, LCatalano/Imaging/Shapes/IntPolygon;->addPoint(II)V

    .line 165
    return-void
.end method

.method public getNPoints()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    if-ge v0, v2, :cond_0

    .line 74
    new-instance v2, LCatalano/Core/IntPoint;

    iget-object v3, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    aget v3, v3, v0

    iget-object v4, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    aget v4, v4, v0

    invoke-direct {v2, v3, v4}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-object v1
.end method

.method public getX()[I
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    array-length v0, v0

    iget v1, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->a:[I

    iget v1, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getY()[I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    array-length v0, v0

    iget v1, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    .line 56
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Shapes/IntPolygon;->b:[I

    iget v1, p0, LCatalano/Imaging/Shapes/IntPolygon;->c:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_0
.end method
