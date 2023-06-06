.class LCatalano/Imaging/Concurrent/Filters/Median$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Median;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/Median;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Median;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->a:LCatalano/Imaging/Concurrent/Filters/Median;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 103
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 176
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    .line 109
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->a:LCatalano/Imaging/Concurrent/Filters/Median;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Median;->a(LCatalano/Imaging/Concurrent/Filters/Median;)I

    move-result v0

    invoke-direct {p0, v0}, LCatalano/Imaging/Concurrent/Filters/Median$a;->a(I)I

    move-result v8

    .line 110
    mul-int v1, v8, v8

    .line 113
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->a:LCatalano/Imaging/Concurrent/Filters/Median;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Median;->a(LCatalano/Imaging/Concurrent/Filters/Median;)I

    move-result v0

    .line 115
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-boolean v2, v2, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    if-eqz v2, :cond_a

    .line 117
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    iput v2, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    move v6, v7

    .line 120
    :goto_0
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    new-array v5, v1, [I

    .line 123
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_1
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_9

    move v1, v7

    .line 124
    :goto_2
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v4, v7

    move v2, v7

    .line 126
    :goto_3
    if-ge v4, v8, :cond_2

    .line 127
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->a:LCatalano/Imaging/Concurrent/Filters/Median;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/Median;->a(LCatalano/Imaging/Concurrent/Filters/Median;)I

    move-result v3

    sub-int v3, v4, v3

    add-int v9, v0, v3

    move v3, v7

    .line 128
    :goto_4
    if-ge v3, v8, :cond_1

    .line 129
    iget-object v10, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->a:LCatalano/Imaging/Concurrent/Filters/Median;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/Median;->a(LCatalano/Imaging/Concurrent/Filters/Median;)I

    move-result v10

    sub-int v10, v3, v10

    add-int/2addr v10, v1

    .line 130
    if-ltz v9, :cond_0

    iget-object v11, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v11, v11, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v11, v6

    if-ge v9, v11, :cond_0

    if-ltz v10, :cond_0

    iget-object v11, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v11, v11, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v11}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 131
    iget-object v11, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->a:LCatalano/Imaging/Concurrent/Filters/Median;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Median;->b(LCatalano/Imaging/Concurrent/Filters/Median;)LCatalano/Imaging/FastBitmap;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    aput v10, v5, v2

    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 128
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 126
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    .line 136
    :cond_2
    invoke-static {v5, v7, v2}, Ljava/util/Arrays;->sort([III)V

    .line 138
    div-int/lit8 v2, v2, 0x2

    .line 139
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    aget v2, v5, v2

    invoke-virtual {v3, v0, v1, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 144
    :cond_4
    new-array v9, v1, [I

    .line 145
    new-array v10, v1, [I

    .line 146
    new-array v11, v1, [I

    .line 149
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_5
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v1, v0, :cond_9

    move v2, v7

    .line 150
    :goto_6
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    if-ge v2, v0, :cond_8

    move v4, v7

    move v0, v7

    .line 152
    :goto_7
    if-ge v4, v8, :cond_7

    .line 153
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->a:LCatalano/Imaging/Concurrent/Filters/Median;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/Median;->a(LCatalano/Imaging/Concurrent/Filters/Median;)I

    move-result v3

    sub-int v3, v4, v3

    add-int v5, v1, v3

    move v3, v7

    .line 154
    :goto_8
    if-ge v3, v8, :cond_6

    .line 155
    iget-object v12, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->a:LCatalano/Imaging/Concurrent/Filters/Median;

    invoke-static {v12}, LCatalano/Imaging/Concurrent/Filters/Median;->a(LCatalano/Imaging/Concurrent/Filters/Median;)I

    move-result v12

    sub-int v12, v3, v12

    add-int/2addr v12, v2

    .line 156
    if-ltz v5, :cond_5

    iget-object v13, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v13, v13, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v13, v6

    if-ge v5, v13, :cond_5

    if-ltz v12, :cond_5

    iget-object v13, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v13, v13, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v13}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_5

    .line 157
    iget-object v13, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->a:LCatalano/Imaging/Concurrent/Filters/Median;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Median;->b(LCatalano/Imaging/Concurrent/Filters/Median;)LCatalano/Imaging/FastBitmap;

    move-result-object v13

    invoke-virtual {v13, v5, v12}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v13

    aput v13, v9, v0

    .line 158
    iget-object v13, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->a:LCatalano/Imaging/Concurrent/Filters/Median;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Median;->b(LCatalano/Imaging/Concurrent/Filters/Median;)LCatalano/Imaging/FastBitmap;

    move-result-object v13

    invoke-virtual {v13, v5, v12}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v13

    aput v13, v10, v0

    .line 159
    iget-object v13, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->a:LCatalano/Imaging/Concurrent/Filters/Median;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Median;->b(LCatalano/Imaging/Concurrent/Filters/Median;)LCatalano/Imaging/FastBitmap;

    move-result-object v13

    invoke-virtual {v13, v5, v12}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v12

    aput v12, v11, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    .line 154
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 152
    :cond_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_7

    .line 164
    :cond_7
    invoke-static {v9, v7, v0}, Ljava/util/Arrays;->sort([III)V

    .line 165
    invoke-static {v10, v7, v0}, Ljava/util/Arrays;->sort([III)V

    .line 166
    invoke-static {v11, v7, v0}, Ljava/util/Arrays;->sort([III)V

    .line 168
    div-int/lit8 v5, v0, 0x2

    .line 169
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Median$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    aget v3, v9, v5

    aget v4, v10, v5

    aget v5, v11, v5

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 149
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 173
    :cond_9
    return-void

    :cond_a
    move v6, v0

    goto/16 :goto_0
.end method
