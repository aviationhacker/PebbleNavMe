.class public LCatalano/Imaging/Tools/BlobDetection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Tools/BlobDetection$Algorithm;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Tools/BlobDetection$Algorithm;

.field private b:I

.field private c:I

.field private d:LCatalano/Imaging/FastBitmap;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/Tools/Blob;",
            ">;"
        }
    .end annotation
.end field

.field private j:LCatalano/Imaging/Tools/Blob;

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, LCatalano/Imaging/Tools/BlobDetection$Algorithm;->FourWay:LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->a:LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    .line 45
    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->f:I

    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->g:I

    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->h:I

    .line 48
    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->k:I

    .line 49
    iput-boolean v1, p0, LCatalano/Imaging/Tools/BlobDetection;->l:Z

    .line 50
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->m:I

    .line 52
    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->p:I

    .line 54
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Tools/BlobDetection$Algorithm;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, LCatalano/Imaging/Tools/BlobDetection$Algorithm;->FourWay:LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->a:LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    .line 45
    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->f:I

    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->g:I

    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->h:I

    .line 48
    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->k:I

    .line 49
    iput-boolean v1, p0, LCatalano/Imaging/Tools/BlobDetection;->l:Z

    .line 50
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->m:I

    .line 52
    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->p:I

    .line 57
    iput-object p1, p0, LCatalano/Imaging/Tools/BlobDetection;->a:LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    .line 58
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 128
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->h:I

    if-ne v0, v2, :cond_2

    .line 129
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->g:I

    if-ne v0, v2, :cond_1

    .line 130
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->f:I

    if-ne v0, v2, :cond_0

    .line 131
    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->h:I

    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->g:I

    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->f:I

    .line 133
    :cond_0
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->f:I

    .line 134
    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->g:I

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_1
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->g:I

    .line 138
    iput v1, p0, LCatalano/Imaging/Tools/BlobDetection;->h:I

    goto :goto_0

    .line 142
    :cond_2
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->h:I

    goto :goto_0
.end method

.method private a(IIIII)V
    .locals 13

    .prologue
    .line 147
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 148
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 150
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    const/4 v0, 0x0

    .line 153
    iget-object v3, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, p1, p2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    .line 154
    iget-object v4, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, p1, p2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    .line 155
    iget-object v5, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, p1, p2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    .line 156
    shl-int/lit8 v3, v3, 0x10

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int v12, v3, v5

    .line 159
    new-instance v3, LCatalano/Core/IntPoint;

    invoke-direct {v3, p1, p2}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 161
    sget-object v3, LCatalano/Imaging/Tools/BlobDetection$1;->a:[I

    iget-object v4, p0, LCatalano/Imaging/Tools/BlobDetection;->a:LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    invoke-virtual {v4}, LCatalano/Imaging/Tools/BlobDetection$Algorithm;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v8, v1

    move v9, v2

    move v2, v0

    .line 274
    :goto_0
    iget-boolean v0, p0, LCatalano/Imaging/Tools/BlobDetection;->l:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 275
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->m:I

    if-le v2, v0, :cond_1

    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->n:I

    if-ge v2, v0, :cond_1

    .line 277
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->p:I

    if-le v2, v0, :cond_0

    .line 278
    iput v2, p0, LCatalano/Imaging/Tools/BlobDetection;->p:I

    .line 279
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->k:I

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->o:I

    .line 283
    :cond_0
    invoke-static {v10}, LCatalano/Math/Geometry/PointsCloud;->GetBoundingRectangle(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 284
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v1, v0, LCatalano/Core/IntPoint;->x:I

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 285
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v1, v0, LCatalano/Core/IntPoint;->y:I

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 287
    new-instance v0, LCatalano/Imaging/Tools/Blob;

    iget v1, p0, LCatalano/Imaging/Tools/BlobDetection;->k:I

    new-instance v3, LCatalano/Core/IntPoint;

    div-int v4, v9, v2

    div-int v5, v8, v2

    invoke-direct {v3, v4, v5}, LCatalano/Core/IntPoint;-><init>(II)V

    new-instance v5, LCatalano/Imaging/Shapes/IntRectangle;

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LCatalano/Core/IntPoint;

    iget v8, v4, LCatalano/Core/IntPoint;->x:I

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LCatalano/Core/IntPoint;

    iget v4, v4, LCatalano/Core/IntPoint;->y:I

    invoke-direct {v5, v8, v4, v11, v7}, LCatalano/Imaging/Shapes/IntRectangle;-><init>(IIII)V

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, LCatalano/Imaging/Tools/Blob;-><init>(IILCatalano/Core/IntPoint;Ljava/util/ArrayList;LCatalano/Imaging/Shapes/IntRectangle;)V

    iput-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->j:LCatalano/Imaging/Tools/Blob;

    .line 288
    iget-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->i:Ljava/util/List;

    iget-object v1, p0, LCatalano/Imaging/Tools/BlobDetection;->j:LCatalano/Imaging/Tools/Blob;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->e:I

    .line 290
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->k:I

    .line 308
    :cond_1
    :goto_1
    return-void

    .line 163
    :goto_2
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 164
    invoke-virtual {v11}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LCatalano/Core/IntPoint;

    .line 165
    iget-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    iget v1, v6, LCatalano/Core/IntPoint;->x:I

    iget v2, v6, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    .line 166
    iget-object v1, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    iget v2, v6, LCatalano/Core/IntPoint;->x:I

    iget v3, v6, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v1, v2, v3}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v1

    .line 167
    iget-object v2, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    iget v3, v6, LCatalano/Core/IntPoint;->x:I

    iget v4, v6, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v2, v3, v4}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v2

    .line 168
    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    .line 170
    if-ne v0, v12, :cond_12

    .line 171
    iget v1, v6, LCatalano/Core/IntPoint;->x:I

    .line 172
    iget v2, v6, LCatalano/Core/IntPoint;->y:I

    .line 174
    iget-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 175
    add-int/lit8 v0, v7, 0x1

    .line 176
    new-instance v3, LCatalano/Core/IntPoint;

    invoke-direct {v3, v1, v2}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget v3, v6, LCatalano/Core/IntPoint;->x:I

    add-int/2addr v9, v3

    .line 178
    iget v3, v6, LCatalano/Core/IntPoint;->y:I

    add-int/2addr v8, v3

    .line 180
    add-int/lit8 v3, v1, -0x1

    if-lez v3, :cond_2

    .line 181
    new-instance v3, LCatalano/Core/IntPoint;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v3, v4, v2}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 183
    :cond_2
    add-int/lit8 v3, v1, 0x1

    iget v4, p0, LCatalano/Imaging/Tools/BlobDetection;->c:I

    if-ge v3, v4, :cond_3

    .line 184
    new-instance v3, LCatalano/Core/IntPoint;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v3, v4, v2}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 186
    :cond_3
    add-int/lit8 v3, v2, -0x1

    if-lez v3, :cond_4

    .line 187
    new-instance v3, LCatalano/Core/IntPoint;

    add-int/lit8 v4, v2, -0x1

    invoke-direct {v3, v1, v4}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 189
    :cond_4
    add-int/lit8 v3, v2, 0x1

    iget v4, p0, LCatalano/Imaging/Tools/BlobDetection;->b:I

    if-ge v3, v4, :cond_5

    .line 190
    new-instance v3, LCatalano/Core/IntPoint;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v1, v2}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_5
    move v1, v8

    move v2, v9

    :goto_3
    move v7, v0

    move v8, v1

    move v9, v2

    .line 193
    goto/16 :goto_2

    .line 196
    :goto_4
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 197
    invoke-virtual {v11}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LCatalano/Core/IntPoint;

    .line 198
    iget-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    iget v1, v6, LCatalano/Core/IntPoint;->x:I

    iget v2, v6, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    .line 199
    iget-object v1, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    iget v2, v6, LCatalano/Core/IntPoint;->x:I

    iget v3, v6, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v1, v2, v3}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v1

    .line 200
    iget-object v2, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    iget v3, v6, LCatalano/Core/IntPoint;->x:I

    iget v4, v6, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v2, v3, v4}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v2

    .line 201
    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    .line 203
    if-ne v0, v12, :cond_10

    .line 204
    iget v1, v6, LCatalano/Core/IntPoint;->x:I

    .line 205
    iget v2, v6, LCatalano/Core/IntPoint;->y:I

    .line 207
    iget-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 208
    add-int/lit8 v0, v7, 0x1

    .line 209
    new-instance v3, LCatalano/Core/IntPoint;

    invoke-direct {v3, v1, v2}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget v3, v6, LCatalano/Core/IntPoint;->x:I

    add-int/2addr v9, v3

    .line 211
    iget v3, v6, LCatalano/Core/IntPoint;->y:I

    add-int/2addr v8, v3

    .line 213
    add-int/lit8 v3, v1, -0x1

    if-lez v3, :cond_6

    add-int/lit8 v3, v2, -0x1

    if-lez v3, :cond_6

    .line 214
    new-instance v3, LCatalano/Core/IntPoint;

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-direct {v3, v4, v5}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 216
    :cond_6
    add-int/lit8 v3, v1, -0x1

    if-lez v3, :cond_7

    .line 217
    new-instance v3, LCatalano/Core/IntPoint;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v3, v4, v2}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 219
    :cond_7
    add-int/lit8 v3, v1, -0x1

    if-lez v3, :cond_8

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, LCatalano/Imaging/Tools/BlobDetection;->b:I

    if-ge v3, v4, :cond_8

    .line 220
    new-instance v3, LCatalano/Core/IntPoint;

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v3, v4, v5}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 222
    :cond_8
    add-int/lit8 v3, v2, -0x1

    if-lez v3, :cond_9

    .line 223
    new-instance v3, LCatalano/Core/IntPoint;

    add-int/lit8 v4, v2, -0x1

    invoke-direct {v3, v1, v4}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 225
    :cond_9
    add-int/lit8 v3, v2, 0x1

    iget v4, p0, LCatalano/Imaging/Tools/BlobDetection;->b:I

    if-ge v3, v4, :cond_a

    .line 226
    new-instance v3, LCatalano/Core/IntPoint;

    add-int/lit8 v4, v2, 0x1

    invoke-direct {v3, v1, v4}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 228
    :cond_a
    add-int/lit8 v3, v1, 0x1

    iget v4, p0, LCatalano/Imaging/Tools/BlobDetection;->c:I

    if-ge v3, v4, :cond_b

    add-int/lit8 v3, v2, -0x1

    if-lez v3, :cond_b

    .line 229
    new-instance v3, LCatalano/Core/IntPoint;

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v2, -0x1

    invoke-direct {v3, v4, v5}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 231
    :cond_b
    add-int/lit8 v3, v1, 0x1

    iget v4, p0, LCatalano/Imaging/Tools/BlobDetection;->c:I

    if-ge v3, v4, :cond_c

    .line 232
    new-instance v3, LCatalano/Core/IntPoint;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v3, v4, v2}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 234
    :cond_c
    add-int/lit8 v3, v1, 0x1

    iget v4, p0, LCatalano/Imaging/Tools/BlobDetection;->c:I

    if-ge v3, v4, :cond_d

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, LCatalano/Imaging/Tools/BlobDetection;->b:I

    if-ge v3, v4, :cond_d

    .line 235
    new-instance v3, LCatalano/Core/IntPoint;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v1, v2}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_d
    move v1, v8

    move v2, v9

    :goto_5
    move v7, v0

    move v8, v1

    move v9, v2

    .line 238
    goto/16 :goto_4

    .line 293
    :cond_e
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->p:I

    if-le v2, v0, :cond_f

    .line 294
    iput v2, p0, LCatalano/Imaging/Tools/BlobDetection;->p:I

    .line 295
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->k:I

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->o:I

    .line 299
    :cond_f
    invoke-static {v10}, LCatalano/Math/Geometry/PointsCloud;->GetBoundingRectangle(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 300
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v1, v0, LCatalano/Core/IntPoint;->x:I

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 301
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v1, v0, LCatalano/Core/IntPoint;->y:I

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 303
    new-instance v0, LCatalano/Imaging/Tools/Blob;

    iget v1, p0, LCatalano/Imaging/Tools/BlobDetection;->k:I

    new-instance v3, LCatalano/Core/IntPoint;

    div-int v4, v9, v2

    div-int v5, v8, v2

    invoke-direct {v3, v4, v5}, LCatalano/Core/IntPoint;-><init>(II)V

    new-instance v5, LCatalano/Imaging/Shapes/IntRectangle;

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LCatalano/Core/IntPoint;

    iget v8, v4, LCatalano/Core/IntPoint;->x:I

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LCatalano/Core/IntPoint;

    iget v4, v4, LCatalano/Core/IntPoint;->y:I

    invoke-direct {v5, v8, v4, v11, v7}, LCatalano/Imaging/Shapes/IntRectangle;-><init>(IIII)V

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, LCatalano/Imaging/Tools/Blob;-><init>(IILCatalano/Core/IntPoint;Ljava/util/ArrayList;LCatalano/Imaging/Shapes/IntRectangle;)V

    iput-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->j:LCatalano/Imaging/Tools/Blob;

    .line 304
    iget-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->i:Ljava/util/List;

    iget-object v1, p0, LCatalano/Imaging/Tools/BlobDetection;->j:LCatalano/Imaging/Tools/Blob;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->e:I

    .line 306
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->k:I

    goto/16 :goto_1

    :cond_10
    move v0, v7

    move v1, v8

    move v2, v9

    goto/16 :goto_5

    :cond_11
    move v2, v7

    goto/16 :goto_0

    :cond_12
    move v0, v7

    move v1, v8

    move v2, v9

    goto/16 :goto_3

    :pswitch_0
    move v7, v0

    move v8, v1

    move v9, v2

    goto/16 :goto_2

    :pswitch_1
    move v7, v0

    move v8, v1

    move v9, v2

    goto/16 :goto_4

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Imaging/FastBitmap;",
            ")",
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/Tools/Blob;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 94
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->b:I

    .line 96
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->c:I

    .line 98
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->n:I

    if-nez v0, :cond_0

    .line 99
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->b:I

    iget v1, p0, LCatalano/Imaging/Tools/BlobDetection;->c:I

    mul-int/2addr v0, v1

    iput v0, p0, LCatalano/Imaging/Tools/BlobDetection;->n:I

    .line 103
    :cond_0
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    .line 104
    iget-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->toRGB()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->i:Ljava/util/List;

    move v1, v6

    .line 107
    :goto_0
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->c:I

    if-ge v1, v0, :cond_3

    move v2, v6

    .line 108
    :goto_1
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->b:I

    if-ge v2, v0, :cond_2

    .line 111
    iget-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->d:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    const/16 v3, 0xff

    if-ne v0, v3, :cond_1

    .line 112
    invoke-direct {p0}, LCatalano/Imaging/Tools/BlobDetection;->a()V

    .line 113
    iget v3, p0, LCatalano/Imaging/Tools/BlobDetection;->f:I

    iget v4, p0, LCatalano/Imaging/Tools/BlobDetection;->g:I

    iget v5, p0, LCatalano/Imaging/Tools/BlobDetection;->h:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LCatalano/Imaging/Tools/BlobDetection;->a(IIIII)V

    .line 108
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, LCatalano/Imaging/Tools/BlobDetection;->i:Ljava/util/List;

    return-object v0

    .line 120
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blob detection only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdBiggestBlob()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->o:I

    return v0
.end method

.method public getMaxArea()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->n:I

    return v0
.end method

.method public getMinArea()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->m:I

    return v0
.end method

.method public isFilterBlob()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, LCatalano/Imaging/Tools/BlobDetection;->l:Z

    return v0
.end method

.method public setFilterBlob(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, LCatalano/Imaging/Tools/BlobDetection;->l:Z

    .line 70
    return-void
.end method

.method public setMaxArea(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, LCatalano/Imaging/Tools/BlobDetection;->n:I

    .line 78
    return-void
.end method

.method public setMinArea(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, LCatalano/Imaging/Tools/BlobDetection;->m:I

    .line 86
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, LCatalano/Imaging/Tools/BlobDetection;->e:I

    return v0
.end method
