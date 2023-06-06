.class public LCatalano/Imaging/Tools/HoughLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:D

.field private b:D

.field private c:I

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDID)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-wide p1, p0, LCatalano/Imaging/Tools/HoughLine;->a:D

    .line 118
    iput-wide p3, p0, LCatalano/Imaging/Tools/HoughLine;->b:D

    .line 119
    iput p5, p0, LCatalano/Imaging/Tools/HoughLine;->c:I

    .line 120
    iput-wide p6, p0, LCatalano/Imaging/Tools/HoughLine;->d:D

    .line 121
    return-void
.end method


# virtual methods
.method public DrawLine(LCatalano/Imaging/FastBitmap;I)V
    .locals 16

    .prologue
    .line 130
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 131
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    .line 132
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    .line 135
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v8, v2

    mul-double/2addr v6, v8

    double-to-int v2, v6

    div-int/lit8 v5, v2, 0x2

    .line 138
    div-int/lit8 v2, v4, 0x2

    int-to-float v6, v2

    .line 139
    div-int/lit8 v2, v3, 0x2

    int-to-float v7, v2

    .line 142
    move-object/from16 v0, p0

    iget-wide v8, v0, LCatalano/Imaging/Tools/HoughLine;->a:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 143
    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/Tools/HoughLine;->a:D

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 145
    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/Tools/HoughLine;->a:D

    const-wide v14, 0x3fe921fb54442d18L    # 0.7853981633974483

    cmpg-double v2, v12, v14

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/Tools/HoughLine;->a:D

    const-wide v14, 0x4002d97c7f3321d2L    # 2.356194490192345

    cmpl-double v2, v12, v14

    if-lez v2, :cond_2

    .line 147
    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_5

    .line 148
    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/Tools/HoughLine;->b:D

    int-to-double v14, v5

    sub-double/2addr v12, v14

    int-to-float v14, v2

    sub-float/2addr v14, v7

    float-to-double v14, v14

    mul-double/2addr v14, v8

    sub-double/2addr v12, v14

    div-double/2addr v12, v10

    float-to-double v14, v6

    add-double/2addr v12, v14

    double-to-int v12, v12

    .line 149
    if-ge v12, v3, :cond_1

    if-ltz v12, :cond_1

    .line 150
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v12, v2, v1}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 147
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    .line 156
    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/Tools/HoughLine;->b:D

    int-to-double v14, v5

    sub-double/2addr v12, v14

    int-to-float v14, v2

    sub-float/2addr v14, v6

    float-to-double v14, v14

    mul-double/2addr v14, v10

    sub-double/2addr v12, v14

    div-double/2addr v12, v8

    float-to-double v14, v7

    add-double/2addr v12, v14

    double-to-int v12, v12

    .line 157
    if-ge v12, v4, :cond_3

    if-ltz v12, :cond_3

    .line 158
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v2, v12, v1}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 155
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DrawLine the image is RGB, should be Grayscale."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_5
    return-void
.end method

.method public DrawLine(LCatalano/Imaging/FastBitmap;III)V
    .locals 18

    .prologue
    .line 178
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v8

    .line 180
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 183
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    div-int/lit8 v10, v2, 0x2

    .line 186
    div-int/lit8 v2, v9, 0x2

    int-to-float v11, v2

    .line 187
    div-int/lit8 v2, v8, 0x2

    int-to-float v12, v2

    .line 190
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/Tools/HoughLine;->a:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 191
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/Tools/HoughLine;->a:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 193
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/Tools/HoughLine;->a:D

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/Tools/HoughLine;->a:D

    const-wide v4, 0x4002d97c7f3321d2L    # 2.356194490192345

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 195
    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v9, :cond_5

    .line 196
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/Tools/HoughLine;->b:D

    int-to-double v6, v10

    sub-double/2addr v2, v6

    int-to-float v5, v4

    sub-float/2addr v5, v12

    float-to-double v6, v5

    mul-double/2addr v6, v14

    sub-double/2addr v2, v6

    div-double v2, v2, v16

    float-to-double v6, v11

    add-double/2addr v2, v6

    double-to-int v3, v2

    .line 197
    if-ge v3, v8, :cond_1

    if-ltz v3, :cond_1

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 198
    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 195
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_5

    .line 204
    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/Tools/HoughLine;->b:D

    int-to-double v6, v10

    sub-double/2addr v4, v6

    int-to-float v2, v3

    sub-float/2addr v2, v11

    float-to-double v6, v2

    mul-double v6, v6, v16

    sub-double/2addr v4, v6

    div-double/2addr v4, v14

    float-to-double v6, v12

    add-double/2addr v4, v6

    double-to-int v4, v4

    .line 205
    if-ge v4, v9, :cond_3

    if-ltz v4, :cond_3

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 206
    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 203
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 212
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DrawLine the image is Grayscale, should be RGB."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_5
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 219
    check-cast p1, LCatalano/Imaging/Tools/HoughLine;

    .line 220
    iget v0, p0, LCatalano/Imaging/Tools/HoughLine;->c:I

    iget v1, p1, LCatalano/Imaging/Tools/HoughLine;->c:I

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    .line 222
    :goto_0
    return v0

    .line 221
    :cond_0
    iget v0, p0, LCatalano/Imaging/Tools/HoughLine;->c:I

    iget v1, p1, LCatalano/Imaging/Tools/HoughLine;->c:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntensity()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, LCatalano/Imaging/Tools/HoughLine;->c:I

    return v0
.end method

.method public getRadius()D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, LCatalano/Imaging/Tools/HoughLine;->b:D

    return-wide v0
.end method

.method public getRelativeIntensity()D
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, LCatalano/Imaging/Tools/HoughLine;->d:D

    return-wide v0
.end method

.method public getTheta()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, LCatalano/Imaging/Tools/HoughLine;->a:D

    return-wide v0
.end method

.method public setIntensity(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, LCatalano/Imaging/Tools/HoughLine;->c:I

    .line 86
    return-void
.end method

.method public setRadius(D)V
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, LCatalano/Imaging/Tools/HoughLine;->b:D

    .line 54
    return-void
.end method

.method public setRelativeIntensity(D)V
    .locals 1

    .prologue
    .line 101
    iput-wide p1, p0, LCatalano/Imaging/Tools/HoughLine;->d:D

    .line 102
    return-void
.end method

.method public setTheta(D)V
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, LCatalano/Imaging/Tools/HoughLine;->a:D

    .line 70
    return-void
.end method
