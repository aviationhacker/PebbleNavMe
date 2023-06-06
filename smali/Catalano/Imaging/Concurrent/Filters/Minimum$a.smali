.class LCatalano/Imaging/Concurrent/Filters/Minimum$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Minimum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/Minimum;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Minimum;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 101
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 161
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v9, 0xff

    const/4 v7, 0x0

    .line 107
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Minimum;->a(LCatalano/Imaging/Concurrent/Filters/Minimum;)I

    move-result v0

    invoke-direct {p0, v0}, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a(I)I

    move-result v10

    .line 109
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Minimum;->a(LCatalano/Imaging/Concurrent/Filters/Minimum;)I

    move-result v0

    .line 111
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-boolean v1, v1, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    if-eqz v1, :cond_c

    .line 113
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v1, v1, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    iput v1, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    move v6, v7

    .line 116
    :goto_0
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_1
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_a

    move v1, v7

    .line 119
    :goto_2
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v4, v7

    move v2, v9

    .line 121
    :goto_3
    if-ge v4, v10, :cond_2

    .line 122
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/Minimum;->a(LCatalano/Imaging/Concurrent/Filters/Minimum;)I

    move-result v3

    sub-int v3, v4, v3

    add-int v5, v0, v3

    move v3, v7

    .line 123
    :goto_4
    if-ge v3, v10, :cond_1

    .line 124
    iget-object v8, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v8}, LCatalano/Imaging/Concurrent/Filters/Minimum;->a(LCatalano/Imaging/Concurrent/Filters/Minimum;)I

    move-result v8

    sub-int v8, v3, v8

    add-int/2addr v8, v1

    .line 125
    if-ltz v5, :cond_0

    iget-object v11, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v11, v11, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v11, v6

    if-ge v5, v11, :cond_0

    if-ltz v8, :cond_0

    iget-object v11, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v11, v11, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v11}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v11

    if-ge v8, v11, :cond_0

    .line 126
    iget-object v11, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Minimum;->b(LCatalano/Imaging/Concurrent/Filters/Minimum;)LCatalano/Imaging/FastBitmap;

    move-result-object v11

    invoke-virtual {v11, v5, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    if-ge v11, v2, :cond_0

    .line 127
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/Minimum;->b(LCatalano/Imaging/Concurrent/Filters/Minimum;)LCatalano/Imaging/FastBitmap;

    move-result-object v2

    invoke-virtual {v2, v5, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    .line 123
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 121
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    .line 131
    :cond_2
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 118
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_4
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_5
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v1, v0, :cond_a

    move v2, v7

    .line 138
    :goto_6
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    if-ge v2, v0, :cond_9

    move v8, v7

    move v5, v9

    move v4, v9

    move v3, v9

    .line 140
    :goto_7
    if-ge v8, v10, :cond_8

    .line 141
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Minimum;->a(LCatalano/Imaging/Concurrent/Filters/Minimum;)I

    move-result v0

    sub-int v0, v8, v0

    add-int v11, v1, v0

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v7

    .line 142
    :goto_8
    if-ge v5, v10, :cond_7

    .line 143
    iget-object v12, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v12}, LCatalano/Imaging/Concurrent/Filters/Minimum;->a(LCatalano/Imaging/Concurrent/Filters/Minimum;)I

    move-result v12

    sub-int v12, v5, v12

    add-int/2addr v12, v2

    .line 144
    if-ltz v11, :cond_b

    iget-object v13, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v13, v13, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v13, v6

    if-ge v11, v13, :cond_b

    if-ltz v12, :cond_b

    iget-object v13, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v13, v13, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v13}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_b

    .line 145
    iget-object v13, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Minimum;->b(LCatalano/Imaging/Concurrent/Filters/Minimum;)LCatalano/Imaging/FastBitmap;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v13

    if-ge v13, v0, :cond_5

    .line 146
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Minimum;->b(LCatalano/Imaging/Concurrent/Filters/Minimum;)LCatalano/Imaging/FastBitmap;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    .line 147
    :cond_5
    iget-object v13, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Minimum;->b(LCatalano/Imaging/Concurrent/Filters/Minimum;)LCatalano/Imaging/FastBitmap;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v13

    if-ge v13, v3, :cond_6

    .line 148
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/Minimum;->b(LCatalano/Imaging/Concurrent/Filters/Minimum;)LCatalano/Imaging/FastBitmap;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v3

    .line 149
    :cond_6
    iget-object v13, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Minimum;->b(LCatalano/Imaging/Concurrent/Filters/Minimum;)LCatalano/Imaging/FastBitmap;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v13

    if-ge v13, v4, :cond_b

    .line 150
    iget-object v4, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->a:LCatalano/Imaging/Concurrent/Filters/Minimum;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/Minimum;->b(LCatalano/Imaging/Concurrent/Filters/Minimum;)LCatalano/Imaging/FastBitmap;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v4

    move v14, v4

    move v4, v0

    move v0, v14

    .line 142
    :goto_9
    add-int/lit8 v5, v5, 0x1

    move v14, v0

    move v0, v4

    move v4, v14

    goto :goto_8

    .line 140
    :cond_7
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto/16 :goto_7

    .line 154
    :cond_8
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Minimum$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 137
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 158
    :cond_a
    return-void

    :cond_b
    move v14, v4

    move v4, v0

    move v0, v14

    goto :goto_9

    :cond_c
    move v6, v0

    goto/16 :goto_0
.end method
