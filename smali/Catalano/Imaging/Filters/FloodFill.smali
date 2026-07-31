.class public LCatalano/Imaging/Filters/FloodFill;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/FloodFill$Algorithm;
    }
.end annotation


# instance fields
.field a:LCatalano/Core/IntPoint;

.field private b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

.field private c:LCatalano/Imaging/Color;

.field private d:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, LCatalano/Imaging/Filters/FloodFill$Algorithm;->FourWay:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 146
    new-instance v0, LCatalano/Core/IntPoint;

    invoke-direct {v0, p1, p2}, LCatalano/Core/IntPoint;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    .line 147
    iput p3, p0, LCatalano/Imaging/Filters/FloodFill;->d:I

    .line 148
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, LCatalano/Imaging/Filters/FloodFill$Algorithm;->FourWay:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 84
    new-instance v0, LCatalano/Core/IntPoint;

    invoke-direct {v0, p1, p2}, LCatalano/Core/IntPoint;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    .line 85
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, p3, p4, p5}, LCatalano/Imaging/Color;-><init>(III)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->c:LCatalano/Imaging/Color;

    .line 86
    return-void
.end method

.method public constructor <init>(IIIIILCatalano/Imaging/Filters/FloodFill$Algorithm;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, LCatalano/Imaging/Filters/FloodFill$Algorithm;->FourWay:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 98
    new-instance v0, LCatalano/Core/IntPoint;

    invoke-direct {v0, p1, p2}, LCatalano/Core/IntPoint;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    .line 99
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, p3, p4, p5}, LCatalano/Imaging/Color;-><init>(III)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->c:LCatalano/Imaging/Color;

    .line 100
    iput-object p6, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 101
    return-void
.end method

.method public constructor <init>(IIILCatalano/Imaging/Filters/FloodFill$Algorithm;)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, LCatalano/Imaging/Filters/FloodFill$Algorithm;->FourWay:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 158
    new-instance v0, LCatalano/Core/IntPoint;

    invoke-direct {v0, p1, p2}, LCatalano/Core/IntPoint;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    .line 159
    iput-object p4, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 160
    return-void
.end method

.method public constructor <init>(IILCatalano/Imaging/Color;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, LCatalano/Imaging/Filters/FloodFill$Algorithm;->FourWay:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 71
    new-instance v0, LCatalano/Core/IntPoint;

    invoke-direct {v0, p1, p2}, LCatalano/Core/IntPoint;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    .line 72
    iput-object p3, p0, LCatalano/Imaging/Filters/FloodFill;->c:LCatalano/Imaging/Color;

    .line 73
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntPoint;I)V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, LCatalano/Imaging/Filters/FloodFill$Algorithm;->FourWay:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 168
    iput-object p1, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    .line 169
    iput p2, p0, LCatalano/Imaging/Filters/FloodFill;->d:I

    .line 170
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntPoint;III)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, LCatalano/Imaging/Filters/FloodFill$Algorithm;->FourWay:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 111
    iput-object p1, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    .line 112
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, p2, p3, p4}, LCatalano/Imaging/Color;-><init>(III)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->c:LCatalano/Imaging/Color;

    .line 113
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntPoint;IIILCatalano/Imaging/Filters/FloodFill$Algorithm;)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, LCatalano/Imaging/Filters/FloodFill$Algorithm;->FourWay:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 134
    iput-object p1, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    .line 135
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, p2, p3, p4}, LCatalano/Imaging/Color;-><init>(III)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->c:LCatalano/Imaging/Color;

    .line 136
    iput-object p5, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 137
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntPoint;ILCatalano/Imaging/Filters/FloodFill$Algorithm;)V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, LCatalano/Imaging/Filters/FloodFill$Algorithm;->FourWay:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 179
    iput-object p1, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    .line 180
    iput p2, p0, LCatalano/Imaging/Filters/FloodFill;->d:I

    .line 181
    iput-object p3, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 182
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntPoint;LCatalano/Imaging/Color;)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, LCatalano/Imaging/Filters/FloodFill$Algorithm;->FourWay:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 121
    iput-object p1, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    .line 122
    iput-object p2, p0, LCatalano/Imaging/Filters/FloodFill;->c:LCatalano/Imaging/Color;

    .line 123
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 9

    .prologue
    .line 230
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 231
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    .line 232
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    .line 233
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 235
    new-instance v4, LCatalano/Imaging/Color;

    iget-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRGB(LCatalano/Core/IntPoint;)[I

    move-result-object v0

    invoke-direct {v4, v0}, LCatalano/Imaging/Color;-><init>([I)V

    .line 237
    sget-object v0, LCatalano/Imaging/Filters/FloodFill$1;->a:[I

    iget-object v5, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    invoke-virtual {v5}, LCatalano/Imaging/Filters/FloodFill$Algorithm;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->c:LCatalano/Imaging/Color;

    invoke-static {v4, v0}, LCatalano/Imaging/Color;->isEqual(LCatalano/Imaging/Color;LCatalano/Imaging/Color;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    new-instance v0, LCatalano/Core/IntPoint;

    iget-object v4, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    invoke-direct {v0, v4}, LCatalano/Core/IntPoint;-><init>(LCatalano/Core/IntPoint;)V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 242
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 243
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 244
    new-instance v4, LCatalano/Imaging/Color;

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRGB(LCatalano/Core/IntPoint;)[I

    move-result-object v5

    invoke-direct {v4, v5}, LCatalano/Imaging/Color;-><init>([I)V

    .line 246
    iget-object v5, p0, LCatalano/Imaging/Filters/FloodFill;->c:LCatalano/Imaging/Color;

    invoke-static {v4, v5}, LCatalano/Imaging/Color;->isEqual(LCatalano/Imaging/Color;LCatalano/Imaging/Color;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 247
    iget v4, v0, LCatalano/Core/IntPoint;->x:I

    .line 248
    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    .line 250
    iget-object v5, p0, LCatalano/Imaging/Filters/FloodFill;->c:LCatalano/Imaging/Color;

    invoke-virtual {p1, v4, v0, v5}, LCatalano/Imaging/FastBitmap;->setRGB(IILCatalano/Imaging/Color;)V

    .line 252
    add-int/lit8 v5, v0, -0x1

    if-lez v5, :cond_2

    .line 253
    new-instance v5, LCatalano/Core/IntPoint;

    add-int/lit8 v6, v0, -0x1

    invoke-direct {v5, v4, v6}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 255
    :cond_2
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v1, :cond_3

    .line 256
    new-instance v5, LCatalano/Core/IntPoint;

    add-int/lit8 v6, v0, 0x1

    invoke-direct {v5, v4, v6}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 258
    :cond_3
    add-int/lit8 v5, v4, 0x1

    if-ge v5, v2, :cond_4

    .line 259
    new-instance v5, LCatalano/Core/IntPoint;

    add-int/lit8 v6, v4, 0x1

    invoke-direct {v5, v6, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 261
    :cond_4
    add-int/lit8 v5, v4, -0x1

    if-lez v5, :cond_1

    .line 262
    new-instance v5, LCatalano/Core/IntPoint;

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v5, v4, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 270
    :pswitch_1
    iget-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->c:LCatalano/Imaging/Color;

    invoke-static {v4, v0}, LCatalano/Imaging/Color;->isEqual(LCatalano/Imaging/Color;LCatalano/Imaging/Color;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    new-instance v0, LCatalano/Core/IntPoint;

    iget-object v5, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    invoke-direct {v0, v5}, LCatalano/Core/IntPoint;-><init>(LCatalano/Core/IntPoint;)V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 272
    :cond_5
    :goto_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 273
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 275
    iget-object v5, p0, LCatalano/Imaging/Filters/FloodFill;->c:LCatalano/Imaging/Color;

    invoke-static {v4, v5}, LCatalano/Imaging/Color;->isEqual(LCatalano/Imaging/Color;LCatalano/Imaging/Color;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 276
    iget v5, v0, LCatalano/Core/IntPoint;->x:I

    .line 277
    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    .line 279
    iget-object v6, p0, LCatalano/Imaging/Filters/FloodFill;->c:LCatalano/Imaging/Color;

    invoke-virtual {p1, v5, v0, v6}, LCatalano/Imaging/FastBitmap;->setRGB(IILCatalano/Imaging/Color;)V

    .line 281
    add-int/lit8 v6, v5, -0x1

    if-lez v6, :cond_6

    add-int/lit8 v6, v0, -0x1

    if-lez v6, :cond_6

    .line 282
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v5, -0x1

    add-int/lit8 v8, v0, -0x1

    invoke-direct {v6, v7, v8}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 284
    :cond_6
    add-int/lit8 v6, v5, -0x1

    if-lez v6, :cond_7

    .line 285
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v5, -0x1

    invoke-direct {v6, v7, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 287
    :cond_7
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v2, :cond_8

    add-int/lit8 v6, v0, 0x1

    if-ge v6, v1, :cond_8

    .line 288
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v0, 0x1

    invoke-direct {v6, v7, v8}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 290
    :cond_8
    add-int/lit8 v6, v0, -0x1

    if-lez v6, :cond_9

    .line 291
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v0, -0x1

    invoke-direct {v6, v5, v7}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 293
    :cond_9
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v1, :cond_a

    .line 294
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v0, 0x1

    invoke-direct {v6, v5, v7}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 296
    :cond_a
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v2, :cond_b

    add-int/lit8 v6, v0, -0x1

    if-lez v6, :cond_b

    .line 297
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v0, -0x1

    invoke-direct {v6, v7, v8}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 299
    :cond_b
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v2, :cond_c

    .line 300
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v5, 0x1

    invoke-direct {v6, v7, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 302
    :cond_c
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v2, :cond_5

    add-int/lit8 v6, v0, 0x1

    if-ge v6, v1, :cond_5

    .line 303
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v6, v5, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 311
    :cond_d
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 312
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    .line 313
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    .line 314
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 316
    iget-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGray(LCatalano/Core/IntPoint;)I

    move-result v4

    .line 318
    iget v0, p0, LCatalano/Imaging/Filters/FloodFill;->d:I

    .line 322
    sget-object v5, LCatalano/Imaging/Filters/FloodFill$1;->a:[I

    iget-object v6, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    invoke-virtual {v6}, LCatalano/Imaging/Filters/FloodFill$Algorithm;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_0

    .line 324
    :pswitch_2
    if-eq v4, v0, :cond_0

    .line 325
    new-instance v0, LCatalano/Core/IntPoint;

    iget-object v5, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    invoke-direct {v0, v5}, LCatalano/Core/IntPoint;-><init>(LCatalano/Core/IntPoint;)V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 326
    :cond_e
    :goto_3
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 327
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 328
    iget v5, v0, LCatalano/Core/IntPoint;->x:I

    iget v6, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p1, v5, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    .line 331
    if-ne v5, v4, :cond_e

    .line 332
    iget v5, v0, LCatalano/Core/IntPoint;->x:I

    .line 333
    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    .line 335
    iget v6, p0, LCatalano/Imaging/Filters/FloodFill;->d:I

    invoke-virtual {p1, v5, v0, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 337
    add-int/lit8 v6, v0, -0x1

    if-lez v6, :cond_f

    .line 338
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v0, -0x1

    invoke-direct {v6, v5, v7}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 340
    :cond_f
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v1, :cond_10

    .line 341
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v0, 0x1

    invoke-direct {v6, v5, v7}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 343
    :cond_10
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v2, :cond_11

    .line 344
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v5, 0x1

    invoke-direct {v6, v7, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 346
    :cond_11
    add-int/lit8 v6, v5, -0x1

    if-lez v6, :cond_e

    .line 347
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v6, v5, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_3

    .line 355
    :pswitch_3
    if-eq v4, v0, :cond_0

    .line 356
    new-instance v0, LCatalano/Core/IntPoint;

    iget-object v5, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    invoke-direct {v0, v5}, LCatalano/Core/IntPoint;-><init>(LCatalano/Core/IntPoint;)V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 357
    :cond_12
    :goto_4
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 358
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 359
    iget v5, v0, LCatalano/Core/IntPoint;->x:I

    iget v6, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p1, v5, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    .line 362
    if-ne v5, v4, :cond_12

    .line 363
    iget v5, v0, LCatalano/Core/IntPoint;->x:I

    .line 364
    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    .line 366
    iget v6, p0, LCatalano/Imaging/Filters/FloodFill;->d:I

    invoke-virtual {p1, v5, v0, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 368
    add-int/lit8 v6, v5, -0x1

    if-lez v6, :cond_13

    add-int/lit8 v6, v0, -0x1

    if-lez v6, :cond_13

    .line 369
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v5, -0x1

    add-int/lit8 v8, v0, -0x1

    invoke-direct {v6, v7, v8}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 371
    :cond_13
    add-int/lit8 v6, v5, -0x1

    if-lez v6, :cond_14

    .line 372
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v5, -0x1

    invoke-direct {v6, v7, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 374
    :cond_14
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v2, :cond_15

    add-int/lit8 v6, v0, 0x1

    if-ge v6, v1, :cond_15

    .line 375
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v0, 0x1

    invoke-direct {v6, v7, v8}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 377
    :cond_15
    add-int/lit8 v6, v0, -0x1

    if-lez v6, :cond_16

    .line 378
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v0, -0x1

    invoke-direct {v6, v5, v7}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 380
    :cond_16
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v1, :cond_17

    .line 381
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v0, 0x1

    invoke-direct {v6, v5, v7}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 383
    :cond_17
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v2, :cond_18

    add-int/lit8 v6, v0, -0x1

    if-lez v6, :cond_18

    .line 384
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v0, -0x1

    invoke-direct {v6, v7, v8}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 386
    :cond_18
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v2, :cond_19

    .line 387
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v7, v5, 0x1

    invoke-direct {v6, v7, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 389
    :cond_19
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v2, :cond_12

    add-int/lit8 v6, v0, 0x1

    if-ge v6, v1, :cond_12

    .line 390
    new-instance v6, LCatalano/Core/IntPoint;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v6, v5, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 399
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Flood fill only works in RGB and grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 322
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAlgorithm()LCatalano/Imaging/Filters/FloodFill$Algorithm;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    return-object v0
.end method

.method public getPoint()LCatalano/Core/IntPoint;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    return-object v0
.end method

.method public setAlgorithm(LCatalano/Imaging/Filters/FloodFill$Algorithm;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, LCatalano/Imaging/Filters/FloodFill;->b:LCatalano/Imaging/Filters/FloodFill$Algorithm;

    .line 198
    return-void
.end method

.method public setPoint(II)V
    .locals 1

    .prologue
    .line 224
    new-instance v0, LCatalano/Core/IntPoint;

    invoke-direct {v0, p1, p2}, LCatalano/Core/IntPoint;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->a:LCatalano/Core/IntPoint;

    .line 225
    return-void
.end method

.method public setRGB(III)V
    .locals 1

    .prologue
    .line 207
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, p1, p2, p3}, LCatalano/Imaging/Color;-><init>(III)V

    iput-object v0, p0, LCatalano/Imaging/Filters/FloodFill;->c:LCatalano/Imaging/Color;

    .line 208
    return-void
.end method
