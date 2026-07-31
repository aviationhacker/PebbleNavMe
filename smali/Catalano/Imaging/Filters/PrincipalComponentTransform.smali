.class public LCatalano/Imaging/Filters/PrincipalComponentTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;
    }
.end annotation


# instance fields
.field private a:[[D

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([[D)[D
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 102
    aget-object v0, p1, v1

    array-length v0, v0

    new-array v2, v0, [D

    move v0, v1

    .line 103
    :goto_0
    aget-object v3, p1, v1

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 104
    invoke-static {p1, v0}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v3

    .line 105
    invoke-static {v3}, LCatalano/Statistics/Tools;->Mean([D)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-object v2
.end method

.method private a([[D[D)[[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 111
    array-length v0, p1

    aget-object v1, p1, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 112
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 113
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 114
    aget-object v4, v0, v1

    aget-object v5, p1, v1

    aget-wide v6, v5, v3

    aget-wide v8, p2, v3

    sub-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    return-object v0
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->b:I

    .line 74
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->c:I

    .line 77
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v2

    .line 78
    const/4 v0, 0x3

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    move v0, v1

    .line 79
    :goto_0
    if-ge v0, v2, :cond_0

    .line 80
    iget-object v3, p0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    aget-object v3, v3, v0

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    int-to-double v4, v4

    aput-wide v4, v3, v1

    .line 81
    iget-object v3, p0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    aget-object v3, v3, v0

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    int-to-double v4, v4

    aput-wide v4, v3, v8

    .line 82
    iget-object v3, p0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    aget-object v3, v3, v0

    const/4 v4, 0x2

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    int-to-double v6, v5

    aput-wide v6, v3, v4

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    invoke-direct {p0, v0}, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a([[D)[D

    move-result-object v0

    .line 89
    iget-object v2, p0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    invoke-direct {p0, v2, v0}, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a([[D[D)[[D

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    .line 92
    new-instance v0, LCatalano/Math/Decompositions/SingularValueDecomposition;

    iget-object v2, p0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    invoke-direct {v0, v2, v1, v8}, LCatalano/Math/Decompositions/SingularValueDecomposition;-><init>([[DZZ)V

    .line 93
    iget-object v1, p0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->getV()[[D

    move-result-object v0

    invoke-static {v1, v0}, LCatalano/Math/Matrix;->Multiply([[D[[D)[[D

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    .line 99
    return-void

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Principal Component Transform only works in RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Extract(LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;)LCatalano/Imaging/FastBitmap;
    .locals 31

    .prologue
    .line 127
    sget-object v4, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->Red:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    const/4 v5, 0x0

    invoke-static {v4, v5}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v4

    invoke-static {v4}, LCatalano/Math/Matrix;->Min([D)D

    move-result-wide v4

    .line 130
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    const/4 v7, 0x0

    invoke-static {v6, v7}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v6

    invoke-static {v6}, LCatalano/Math/Matrix;->Max([D)D

    move-result-wide v6

    .line 132
    new-instance v14, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->b:I

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->c:I

    sget-object v10, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v14, v8, v9, v10}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 134
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->b:I

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->c:I

    mul-int v16, v8, v9

    .line 135
    const/4 v8, 0x0

    move v15, v8

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 136
    const-wide/16 v8, 0x0

    const-wide v10, 0x406fe00000000000L    # 255.0

    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    aget-object v12, v12, v15

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    invoke-static/range {v4 .. v13}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v8

    double-to-int v8, v8

    .line 137
    invoke-virtual {v14, v15, v8}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 135
    add-int/lit8 v8, v15, 0x1

    move v15, v8

    goto :goto_0

    :cond_0
    move-object v4, v14

    .line 194
    :goto_1
    return-object v4

    .line 143
    :cond_1
    sget-object v4, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->Green:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_3

    .line 145
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    const/4 v5, 0x1

    invoke-static {v4, v5}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v4

    invoke-static {v4}, LCatalano/Math/Matrix;->Min([D)D

    move-result-wide v4

    .line 146
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    const/4 v7, 0x1

    invoke-static {v6, v7}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v6

    invoke-static {v6}, LCatalano/Math/Matrix;->Max([D)D

    move-result-wide v6

    .line 148
    new-instance v14, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->b:I

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->c:I

    sget-object v10, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v14, v8, v9, v10}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 150
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->b:I

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->c:I

    mul-int v16, v8, v9

    .line 151
    const/4 v8, 0x0

    move v15, v8

    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 152
    const-wide/16 v8, 0x0

    const-wide v10, 0x406fe00000000000L    # 255.0

    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    aget-object v12, v12, v15

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    invoke-static/range {v4 .. v13}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v8

    double-to-int v8, v8

    .line 153
    invoke-virtual {v14, v15, v8}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 151
    add-int/lit8 v8, v15, 0x1

    move v15, v8

    goto :goto_2

    :cond_2
    move-object v4, v14

    .line 156
    goto :goto_1

    .line 158
    :cond_3
    sget-object v4, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->Blue:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    const/4 v5, 0x2

    invoke-static {v4, v5}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v4

    invoke-static {v4}, LCatalano/Math/Matrix;->Min([D)D

    move-result-wide v4

    .line 161
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    const/4 v7, 0x2

    invoke-static {v6, v7}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v6

    invoke-static {v6}, LCatalano/Math/Matrix;->Max([D)D

    move-result-wide v6

    .line 163
    new-instance v14, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->b:I

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->c:I

    sget-object v10, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v14, v8, v9, v10}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 165
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->b:I

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->c:I

    mul-int v16, v8, v9

    .line 166
    const/4 v8, 0x0

    move v15, v8

    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 167
    const-wide/16 v8, 0x0

    const-wide v10, 0x406fe00000000000L    # 255.0

    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    aget-object v12, v12, v15

    const/4 v13, 0x2

    aget-wide v12, v12, v13

    invoke-static/range {v4 .. v13}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v8

    double-to-int v8, v8

    .line 168
    invoke-virtual {v14, v15, v8}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 166
    add-int/lit8 v8, v15, 0x1

    move v15, v8

    goto :goto_3

    :cond_4
    move-object v4, v14

    .line 171
    goto/16 :goto_1

    .line 175
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    const/4 v5, 0x0

    invoke-static {v4, v5}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v4

    invoke-static {v4}, LCatalano/Math/Matrix;->Min([D)D

    move-result-wide v4

    .line 176
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    const/4 v7, 0x0

    invoke-static {v6, v7}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v6

    invoke-static {v6}, LCatalano/Math/Matrix;->Max([D)D

    move-result-wide v6

    .line 178
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    const/4 v9, 0x1

    invoke-static {v8, v9}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v8

    invoke-static {v8}, LCatalano/Math/Matrix;->Min([D)D

    move-result-wide v20

    .line 179
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    const/4 v9, 0x1

    invoke-static {v8, v9}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v8

    invoke-static {v8}, LCatalano/Math/Matrix;->Max([D)D

    move-result-wide v22

    .line 181
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    const/4 v9, 0x2

    invoke-static {v8, v9}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v8

    invoke-static {v8}, LCatalano/Math/Matrix;->Min([D)D

    move-result-wide v24

    .line 182
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    const/4 v9, 0x2

    invoke-static {v8, v9}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v8

    invoke-static {v8}, LCatalano/Math/Matrix;->Max([D)D

    move-result-wide v26

    .line 184
    new-instance v18, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->b:I

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->c:I

    sget-object v10, LCatalano/Imaging/FastBitmap$ColorSpace;->RGB:LCatalano/Imaging/FastBitmap$ColorSpace;

    move-object/from16 v0, v18

    invoke-direct {v0, v8, v9, v10}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 186
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->b:I

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->c:I

    mul-int v28, v8, v9

    .line 187
    const/4 v8, 0x0

    move/from16 v19, v8

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 188
    const-wide/16 v8, 0x0

    const-wide v10, 0x406fe00000000000L    # 255.0

    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    aget-object v12, v12, v19

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    invoke-static/range {v4 .. v13}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v8

    double-to-int v0, v8

    move/from16 v29, v0

    .line 189
    const-wide/16 v12, 0x0

    const-wide v14, 0x406fe00000000000L    # 255.0

    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    aget-object v8, v8, v19

    const/4 v9, 0x1

    aget-wide v16, v8, v9

    move-wide/from16 v8, v20

    move-wide/from16 v10, v22

    invoke-static/range {v8 .. v17}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v8

    double-to-int v0, v8

    move/from16 v30, v0

    .line 190
    const-wide/16 v12, 0x0

    const-wide v14, 0x406fe00000000000L    # 255.0

    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/PrincipalComponentTransform;->a:[[D

    aget-object v8, v8, v19

    const/4 v9, 0x2

    aget-wide v16, v8, v9

    move-wide/from16 v8, v24

    move-wide/from16 v10, v26

    invoke-static/range {v8 .. v17}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v8

    double-to-int v8, v8

    .line 192
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v8}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 187
    add-int/lit8 v8, v19, 0x1

    move/from16 v19, v8

    goto :goto_4

    :cond_6
    move-object/from16 v4, v18

    .line 194
    goto/16 :goto_1
.end method
