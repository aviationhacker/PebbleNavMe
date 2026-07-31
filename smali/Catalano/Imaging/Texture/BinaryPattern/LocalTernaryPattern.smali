.class public LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Texture/BinaryPattern/IBinaryPattern;


# instance fields
.field private a:I

.field private b:LCatalano/Imaging/Tools/ImageHistogram;

.field private c:LCatalano/Imaging/Tools/ImageHistogram;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x5

    iput v0, p0, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->a:I

    .line 77
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x5

    iput v0, p0, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->a:I

    .line 84
    iput p1, p0, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->a:I

    .line 85
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;II)[[I
    .locals 9

    .prologue
    const/4 v0, 0x3

    const/4 v3, 0x0

    .line 149
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 152
    invoke-virtual {p1, p2, p3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 153
    add-int/lit8 v1, p2, -0x1

    move v4, v1

    move v5, v3

    :goto_0
    add-int/lit8 v1, p2, 0x1

    if-gt v4, v1, :cond_4

    .line 155
    add-int/lit8 v1, p3, -0x1

    move v2, v3

    :goto_1
    add-int/lit8 v7, p3, 0x1

    if-gt v1, v7, :cond_3

    .line 156
    invoke-virtual {p1, v4, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->a:I

    add-int/2addr v8, v6

    if-le v7, v8, :cond_0

    .line 157
    aget-object v7, v0, v5

    const/4 v8, 0x1

    aput v8, v7, v2

    .line 158
    :cond_0
    invoke-virtual {p1, v4, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->a:I

    sub-int v8, v6, v8

    if-le v7, v8, :cond_1

    invoke-virtual {p1, v4, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->a:I

    add-int/2addr v8, v6

    if-ge v7, v8, :cond_1

    .line 159
    aget-object v7, v0, v5

    aput v3, v7, v2

    .line 160
    :cond_1
    invoke-virtual {p1, v4, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    iget v8, p0, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->a:I

    sub-int v8, v6, v8

    if-ge v7, v8, :cond_2

    .line 161
    aget-object v7, v0, v5

    const/4 v8, -0x1

    aput v8, v7, v2

    .line 162
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 164
    :cond_3
    add-int/lit8 v2, v5, 0x1

    .line 153
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v5, v2

    goto :goto_0

    .line 167
    :cond_4
    return-object v0
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/ImageHistogram;
    .locals 14

    .prologue
    .line 93
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local Ternary Pattern only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    const/16 v0, 0x100

    new-array v6, v0, [I

    .line 98
    const/16 v0, 0x100

    new-array v7, v0, [I

    .line 103
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 104
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v9

    .line 105
    const/4 v0, 0x1

    move v5, v0

    :goto_0
    add-int/lit8 v0, v9, -0x1

    if-ge v5, v0, :cond_a

    .line 106
    const/4 v0, 0x1

    move v4, v0

    :goto_1
    add-int/lit8 v0, v8, -0x1

    if-ge v4, v0, :cond_9

    .line 108
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1, v5, v4}, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->a(LCatalano/Imaging/FastBitmap;II)[[I

    move-result-object v10

    .line 114
    const/16 v1, 0x80

    .line 115
    const/4 v0, 0x0

    move v3, v1

    move v1, v2

    move v13, v0

    move v0, v2

    move v2, v13

    :goto_2
    const/4 v11, 0x3

    if-ge v2, v11, :cond_3

    .line 116
    const/4 v11, 0x0

    aget-object v11, v10, v11

    aget v11, v11, v2

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    add-int/2addr v0, v3

    .line 117
    :cond_1
    const/4 v11, 0x0

    aget-object v11, v10, v11

    aget v11, v11, v2

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    add-int/2addr v1, v3

    .line 118
    :cond_2
    div-int/lit8 v3, v3, 0x2

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 121
    :cond_3
    const/4 v2, 0x1

    aget-object v2, v10, v2

    const/4 v11, 0x2

    aget v2, v2, v11

    const/4 v11, 0x1

    if-ne v2, v11, :cond_4

    add-int/2addr v0, v3

    .line 122
    :cond_4
    const/4 v2, 0x1

    aget-object v2, v10, v2

    const/4 v11, 0x2

    aget v2, v2, v11

    const/4 v11, -0x1

    if-ne v2, v11, :cond_5

    add-int/2addr v1, v3

    .line 123
    :cond_5
    div-int/lit8 v3, v3, 0x2

    .line 125
    const/4 v2, 0x0

    :goto_3
    const/4 v11, 0x3

    if-ge v2, v11, :cond_8

    .line 126
    const/4 v11, 0x2

    aget-object v11, v10, v11

    rsub-int/lit8 v12, v2, 0x2

    aget v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    add-int/2addr v0, v3

    .line 127
    :cond_6
    const/4 v11, 0x2

    aget-object v11, v10, v11

    rsub-int/lit8 v12, v2, 0x2

    aget v11, v11, v12

    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    add-int/2addr v1, v3

    .line 128
    :cond_7
    div-int/lit8 v3, v3, 0x2

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 131
    :cond_8
    aget v2, v6, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v6, v0

    .line 132
    aget v0, v7, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, v7, v1

    .line 106
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 105
    :cond_9
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 137
    :cond_a
    new-instance v0, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v0, v6}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    iput-object v0, p0, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->b:LCatalano/Imaging/Tools/ImageHistogram;

    .line 138
    new-instance v0, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v0, v7}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    iput-object v0, p0, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->c:LCatalano/Imaging/Tools/ImageHistogram;

    .line 141
    invoke-static {v6, v7}, LCatalano/Core/ArraysUtil;->Concatenate([I[I)[I

    move-result-object v0

    .line 143
    new-instance v1, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v1, v0}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    return-object v1
.end method

.method public getLowerHistogram()LCatalano/Imaging/Tools/ImageHistogram;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->c:LCatalano/Imaging/Tools/ImageHistogram;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->a:I

    return v0
.end method

.method public getUpperHistogram()LCatalano/Imaging/Tools/ImageHistogram;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->b:LCatalano/Imaging/Tools/ImageHistogram;

    return-object v0
.end method

.method public setThreshold(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, LCatalano/Imaging/Texture/BinaryPattern/LocalTernaryPattern;->a:I

    .line 56
    return-void
.end method
