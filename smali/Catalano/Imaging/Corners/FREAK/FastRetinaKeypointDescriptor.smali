.class public LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Integral:LCatalano/Imaging/Tools/IntegralImage;

.field a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

.field private b:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:LCatalano/Imaging/FastBitmap;


# direct methods
.method constructor <init>(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Tools/IntegralImage;LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->e:Z

    .line 86
    iput-boolean v1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->c:Z

    .line 87
    iput-boolean v1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->d:Z

    .line 88
    iput-object p1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->f:LCatalano/Imaging/FastBitmap;

    .line 89
    iput-object p2, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->Integral:LCatalano/Imaging/Tools/IntegralImage;

    .line 91
    iput-object p3, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->b:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

    .line 92
    return-void
.end method

.method private a(DDIII)I
    .locals 15

    .prologue
    .line 255
    .line 259
    iget-object v2, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->b:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

    iget-object v2, v2, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->lookupTable:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;

    move/from16 v0, p5

    mul-int/lit16 v3, v0, 0x100

    mul-int/lit8 v3, v3, 0x2b

    mul-int/lit8 v4, p6, 0x2b

    add-int/2addr v3, v4

    add-int v3, v3, p7

    aget-object v2, v2, v3

    .line 263
    iget v3, v2, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;->a:F

    float-to-double v4, v3

    add-double v4, v4, p3

    .line 264
    iget v3, v2, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;->b:F

    float-to-double v6, v3

    add-double v6, v6, p1

    .line 265
    double-to-int v3, v4

    .line 266
    double-to-int v8, v6

    .line 270
    iget v2, v2, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;->c:F

    .line 273
    float-to-double v10, v2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpg-double v9, v10, v12

    if-gez v9, :cond_0

    .line 276
    int-to-double v10, v3

    sub-double/2addr v4, v10

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    mul-double/2addr v4, v10

    double-to-int v2, v4

    .line 277
    int-to-double v4, v8

    sub-double v4, v6, v4

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 278
    rsub-int v5, v2, 0x400

    .line 279
    rsub-int v6, v4, 0x400

    .line 283
    mul-int v7, v5, v6

    iget-object v9, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->f:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v9, v8, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    mul-int/2addr v7, v9

    .line 285
    mul-int/2addr v6, v2

    iget-object v9, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->f:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v8, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    mul-int/2addr v6, v9

    add-int/2addr v6, v7

    .line 287
    mul-int/2addr v2, v4

    iget-object v7, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->f:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v7, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    mul-int/2addr v2, v7

    add-int/2addr v2, v6

    .line 289
    mul-int/2addr v4, v5

    iget-object v5, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->f:LCatalano/Imaging/FastBitmap;

    add-int/lit8 v6, v8, 0x1

    invoke-virtual {v5, v6, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 290
    add-int/lit16 v2, v2, 0x200

    div-int/lit16 v2, v2, 0x400

    .line 305
    :goto_0
    return v2

    .line 295
    :cond_0
    float-to-double v8, v2

    sub-double v8, v4, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v3, v8

    .line 296
    float-to-double v8, v2

    sub-double v8, v6, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v8, v8

    .line 297
    float-to-double v10, v2

    add-double/2addr v4, v10

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    add-double/2addr v4, v10

    double-to-int v4, v4

    .line 298
    float-to-double v10, v2

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    add-double/2addr v6, v10

    double-to-int v2, v6

    .line 300
    iget-object v5, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->Integral:LCatalano/Imaging/Tools/IntegralImage;

    invoke-virtual {v5, v2, v4}, LCatalano/Imaging/Tools/IntegralImage;->getInternalData(II)I

    move-result v5

    .line 301
    iget-object v6, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->Integral:LCatalano/Imaging/Tools/IntegralImage;

    invoke-virtual {v6, v2, v3}, LCatalano/Imaging/Tools/IntegralImage;->getInternalData(II)I

    move-result v6

    sub-int/2addr v5, v6

    .line 302
    iget-object v6, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->Integral:LCatalano/Imaging/Tools/IntegralImage;

    invoke-virtual {v6, v8, v3}, LCatalano/Imaging/Tools/IntegralImage;->getInternalData(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 303
    iget-object v6, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->Integral:LCatalano/Imaging/Tools/IntegralImage;

    invoke-virtual {v6, v8, v4}, LCatalano/Imaging/Tools/IntegralImage;->getInternalData(II)I

    move-result v6

    sub-int/2addr v5, v6

    .line 304
    sub-int v3, v4, v3

    sub-int/2addr v2, v8

    mul-int/2addr v2, v3

    div-int v2, v5, v2

    goto :goto_0
.end method


# virtual methods
.method public Compute(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .line 100
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->b:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

    iget-object v2, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->patternSizes:[I

    .line 101
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->b:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

    iget-object v10, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->pointsValues:[I

    .line 102
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->b:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

    iget-object v11, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    .line 103
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->b:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

    iget-object v12, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->descriptionPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;

    .line 104
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->b:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

    iget-wide v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->step:D

    .line 108
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 110
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    iget-boolean v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->d:Z

    if-eqz v0, :cond_4

    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_8

    .line 121
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iget-wide v6, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->scale:D

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    div-double/2addr v6, v8

    .line 122
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v0, v6

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x40

    if-lt v0, v3, :cond_1

    .line 125
    const/16 v0, 0x3f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iget-wide v6, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->x:D

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    int-to-double v8, v0

    cmpg-double v0, v6, v8

    if-lez v0, :cond_2

    .line 129
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iget-wide v6, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->y:D

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    int-to-double v8, v0

    cmpg-double v0, v6, v8

    if-lez v0, :cond_2

    .line 130
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iget-wide v6, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->x:D

    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->f:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    sub-int v0, v3, v0

    int-to-double v8, v0

    cmpl-double v0, v6, v8

    if-gez v0, :cond_2

    .line 131
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iget-wide v6, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->y:D

    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->f:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    sub-int v0, v3, v0

    int-to-double v8, v0

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_3

    .line 133
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 134
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 118
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_1

    .line 141
    :cond_4
    const-wide v0, 0x3ff193ea7aad030bL    # 1.0986122886681098

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    double-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_8

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x40

    if-lt v0, v4, :cond_5

    .line 150
    const/16 v0, 0x3f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iget-wide v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->x:D

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-lez v0, :cond_6

    .line 153
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iget-wide v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->y:D

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-lez v0, :cond_6

    .line 154
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iget-wide v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->x:D

    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->f:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v6

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    sub-int v0, v6, v0

    int-to-double v6, v0

    cmpl-double v0, v4, v6

    if-gez v0, :cond_6

    .line 155
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iget-wide v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->y:D

    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->f:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    sub-int v0, v6, v0

    int-to-double v6, v0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_7

    .line 157
    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    :cond_7
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_2

    .line 169
    :cond_8
    const/4 v0, 0x0

    move v9, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_14

    .line 174
    iget-boolean v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->c:Z

    if-nez v0, :cond_a

    .line 177
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iput-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    .line 178
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->setOrientation(D)V

    .line 179
    const/4 v7, 0x0

    .line 180
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    invoke-interface {p1, v9, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_9
    :goto_4
    const/4 v8, 0x0

    :goto_5
    array-length v0, v10

    if-ge v8, v0, :cond_e

    .line 211
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iget-wide v2, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->x:D

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iget-wide v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->y:D

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a(DDIII)I

    move-result v0

    aput v0, v10, v8

    .line 210
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 186
    :cond_a
    const/4 v8, 0x0

    :goto_6
    array-length v0, v10

    if-ge v8, v0, :cond_b

    .line 187
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iget-wide v2, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->x:D

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iget-wide v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->y:D

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a(DDIII)I

    move-result v0

    aput v0, v10, v8

    .line 186
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 189
    :cond_b
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 190
    const/4 v0, 0x0

    :goto_7
    array-length v3, v11

    if-ge v0, v3, :cond_c

    .line 192
    aget-object v3, v11, v0

    .line 193
    iget v4, v3, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    aget v4, v10, v4

    iget v5, v3, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    aget v5, v10, v5

    sub-int/2addr v4, v5

    .line 194
    iget v5, v3, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->c:I

    mul-int/2addr v5, v4

    div-int/lit16 v5, v5, 0x800

    add-int/2addr v2, v5

    .line 195
    iget v3, v3, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->d:I

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x800

    add-int/2addr v1, v3

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 198
    :cond_c
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iput-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    .line 199
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    int-to-double v4, v1

    int-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->setOrientation(D)V

    .line 200
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    invoke-interface {p1, v9, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    invoke-virtual {v0}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->getOrientation()D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide v2, 0x3f66c16c16c16c17L    # 0.002777777777777778

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v7, v0

    .line 203
    if-gez v7, :cond_d

    .line 204
    add-int/lit16 v7, v7, 0x100

    .line 205
    :cond_d
    const/16 v0, 0x100

    if-lt v7, v0, :cond_9

    .line 206
    add-int/lit16 v7, v7, -0x100

    goto/16 :goto_4

    .line 217
    :cond_e
    iget-boolean v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->e:Z

    if-nez v0, :cond_10

    .line 219
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iput-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    .line 220
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    const/16 v1, 0x40

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->setDescriptor([B)V

    .line 221
    const/4 v0, 0x0

    :goto_8
    array-length v1, v12

    if-ge v0, v1, :cond_13

    .line 223
    aget-object v1, v12, v0

    .line 224
    iget-object v2, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    invoke-virtual {v2}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->getDescriptor()[B

    move-result-object v2

    .line 226
    iget v3, v1, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;->a:I

    aget v3, v10, v3

    iget v1, v1, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;->b:I

    aget v1, v10, v1

    if-le v3, v1, :cond_f

    .line 227
    div-int/lit8 v1, v0, 0x8

    aget-byte v3, v2, v1

    const/4 v4, 0x1

    rem-int/lit8 v5, v0, 0x8

    shl-int/2addr v4, v5

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 221
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 228
    :cond_f
    div-int/lit8 v1, v0, 0x8

    aget-byte v3, v2, v1

    const/4 v4, 0x1

    rem-int/lit8 v5, v0, 0x8

    shl-int/2addr v4, v5

    xor-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    goto :goto_9

    .line 235
    :cond_10
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    iput-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    .line 236
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->setDescriptor([B)V

    .line 237
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_a
    array-length v2, v10

    if-ge v1, v2, :cond_13

    .line 239
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_12

    .line 241
    iget-object v3, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    invoke-virtual {v3}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->getDescriptor()[B

    move-result-object v3

    .line 243
    aget v4, v10, v1

    aget v5, v10, v2

    if-le v4, v5, :cond_11

    .line 244
    div-int/lit8 v4, v0, 0x8

    aget-byte v5, v3, v4

    const/4 v6, 0x1

    rem-int/lit8 v7, v0, 0x8

    shl-int/2addr v6, v7

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 239
    :goto_c
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 245
    :cond_11
    div-int/lit8 v4, v0, 0x8

    aget-byte v5, v3, v4

    const/4 v6, 0x1

    rem-int/lit8 v7, v0, 0x8

    shl-int/2addr v6, v7

    xor-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    goto :goto_c

    .line 237
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 169
    :cond_13
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_3

    .line 250
    :cond_14
    return-void
.end method

.method public IsExtended()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->e:Z

    return v0
.end method

.method public IsOrientationNormal()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->c:Z

    return v0
.end method

.method public IsScaleNormal()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->d:Z

    return v0
.end method

.method public setExtended(Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->e:Z

    .line 82
    return-void
.end method

.method public setOrientationNormal(Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->c:Z

    .line 66
    return-void
.end method

.method public setScaleNormal(Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->d:Z

    .line 74
    return-void
.end method
