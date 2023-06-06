.class public LCatalano/Imaging/Corners/SusanCornersDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Corners/ICornersDetector;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation
.end field

.field private d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x19

    iput v0, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->a:I

    .line 39
    const/16 v0, 0x12

    iput v0, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->b:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->c:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->d:[I

    .line 46
    return-void

    .line 41
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x3
        0x3
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x19

    iput v0, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->a:I

    .line 39
    const/16 v0, 0x12

    iput v0, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->b:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->c:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->d:[I

    .line 54
    iput p1, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->a:I

    .line 55
    iput p2, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->b:I

    .line 56
    return-void

    .line 41
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x3
        0x3
        0x2
        0x1
    .end array-data
.end method

.method private a(LCatalano/Imaging/FastBitmap;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Imaging/FastBitmap;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 116
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v10

    .line 117
    filled-new-array {v10, v9}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 119
    const/4 v2, 0x3

    move v8, v2

    :goto_0
    add-int/lit8 v2, v10, -0x3

    if-ge v8, v2, :cond_7

    .line 120
    const/4 v2, 0x3

    move v7, v2

    :goto_1
    add-int/lit8 v2, v9, -0x3

    if-ge v7, v2, :cond_6

    .line 121
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    .line 122
    const/4 v5, 0x0

    .line 123
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 124
    const/4 v2, -0x3

    move v6, v2

    :goto_2
    const/4 v2, 0x3

    if-gt v6, v2, :cond_2

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Corners/SusanCornersDetector;->d:[I

    add-int/lit8 v12, v6, 0x3

    aget v12, v2, v12

    .line 126
    neg-int v2, v12

    move v15, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v15

    :goto_3
    if-gt v5, v12, :cond_1

    .line 127
    add-int v13, v8, v6

    add-int v14, v7, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v13

    .line 129
    sub-int v13, v11, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, LCatalano/Imaging/Corners/SusanCornersDetector;->a:I

    if-gt v13, v14, :cond_0

    .line 130
    add-int/lit8 v4, v4, 0x1

    .line 131
    add-int v13, v8, v5

    add-int/2addr v3, v13

    .line 132
    add-int v13, v7, v6

    add-int/2addr v2, v13

    .line 126
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 124
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_2

    .line 138
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Corners/SusanCornersDetector;->b:I

    if-ge v5, v2, :cond_5

    .line 139
    div-int v2, v4, v5

    .line 140
    div-int/2addr v3, v5

    .line 142
    if-ne v8, v2, :cond_3

    if-eq v7, v3, :cond_4

    .line 143
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Corners/SusanCornersDetector;->b:I

    sub-int/2addr v2, v5

    .line 154
    :goto_4
    aget-object v3, v1, v8

    aput v2, v3, v7

    .line 120
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    .line 146
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 150
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 119
    :cond_6
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    .line 159
    :cond_7
    const/4 v2, 0x2

    move v6, v2

    :goto_5
    add-int/lit8 v2, v10, -0x2

    if-ge v6, v2, :cond_d

    .line 161
    const/4 v2, 0x2

    move v5, v2

    :goto_6
    add-int/lit8 v2, v9, -0x2

    if-ge v5, v2, :cond_c

    .line 162
    aget-object v2, v1, v6

    aget v3, v2, v5

    .line 165
    const/4 v2, -0x2

    move v4, v2

    move v2, v3

    :goto_7
    if-eqz v2, :cond_a

    const/4 v3, 0x2

    if-gt v4, v3, :cond_a

    .line 167
    const/4 v3, -0x2

    :goto_8
    const/4 v7, 0x2

    if-gt v3, v7, :cond_8

    .line 168
    add-int v7, v6, v4

    aget-object v7, v1, v7

    add-int v8, v5, v3

    aget v7, v7, v8

    if-le v7, v2, :cond_9

    .line 169
    const/4 v2, 0x0

    .line 165
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_7

    .line 167
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 176
    :cond_a
    if-eqz v2, :cond_b

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Corners/SusanCornersDetector;->c:Ljava/util/ArrayList;

    new-instance v3, LCatalano/Core/IntPoint;

    invoke-direct {v3, v6, v5}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_b
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_6

    .line 159
    :cond_c
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_5

    .line 182
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Corners/SusanCornersDetector;->c:Ljava/util/ArrayList;

    return-object v1
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Imaging/FastBitmap;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0, p1}, LCatalano/Imaging/Corners/SusanCornersDetector;->a(LCatalano/Imaging/FastBitmap;)Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 103
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->toGrayscale()V

    .line 104
    invoke-direct {p0, v0}, LCatalano/Imaging/Corners/SusanCornersDetector;->a(LCatalano/Imaging/FastBitmap;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->c:Ljava/util/ArrayList;

    .line 105
    iget-object v0, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->c:Ljava/util/ArrayList;

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Susan Corners Detector only works in grayscale or rgb images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, LCatalano/Imaging/Corners/SusanCornersDetector;->ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDifferenceThreshold()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->a:I

    return v0
.end method

.method public getGeometricalThreshold()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->b:I

    return v0
.end method

.method public setDifferenceThreshold(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->a:I

    .line 72
    return-void
.end method

.method public setGeometricalThreshold(I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, LCatalano/Imaging/Corners/SusanCornersDetector;->b:I

    .line 88
    return-void
.end method
