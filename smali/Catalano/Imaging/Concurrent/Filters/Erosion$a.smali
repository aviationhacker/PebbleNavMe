.class LCatalano/Imaging/Concurrent/Filters/Erosion$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Erosion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/Erosion;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Erosion;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 109
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 114
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Erosion;->a(LCatalano/Imaging/Concurrent/Filters/Erosion;)[[I

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v1}, LCatalano/Imaging/Concurrent/Filters/Erosion;->b(LCatalano/Imaging/Concurrent/Filters/Erosion;)I

    move-result v1

    invoke-static {v0, v1}, LCatalano/Imaging/Concurrent/Filters/Erosion;->a(LCatalano/Imaging/Concurrent/Filters/Erosion;I)V

    .line 118
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Erosion;->b(LCatalano/Imaging/Concurrent/Filters/Erosion;)I

    move-result v0

    .line 119
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-boolean v1, v1, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    if-eqz v1, :cond_1

    .line 120
    const/4 v0, 0x0

    .line 123
    :cond_1
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v1, v2, :cond_6

    .line 124
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 126
    const/4 v4, 0x0

    .line 127
    const/16 v5, 0xff

    .line 128
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/Erosion;->b(LCatalano/Imaging/Concurrent/Filters/Erosion;)I

    move-result v3

    sub-int v3, v1, v3

    :goto_2
    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/Erosion;->b(LCatalano/Imaging/Concurrent/Filters/Erosion;)I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    if-ge v3, v6, :cond_3

    .line 129
    const/4 v7, 0x0

    .line 130
    iget-object v6, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/Erosion;->b(LCatalano/Imaging/Concurrent/Filters/Erosion;)I

    move-result v6

    sub-int v6, v2, v6

    :goto_3
    iget-object v8, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v8}, LCatalano/Imaging/Concurrent/Filters/Erosion;->b(LCatalano/Imaging/Concurrent/Filters/Erosion;)I

    move-result v8

    add-int/2addr v8, v2

    add-int/lit8 v8, v8, 0x1

    if-ge v6, v8, :cond_2

    .line 131
    if-ltz v3, :cond_13

    iget-object v8, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v8, v8, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v8, v0

    if-ge v3, v8, :cond_13

    if-ltz v6, :cond_13

    iget-object v8, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v8, v8, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v8}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    if-ge v6, v8, :cond_13

    .line 132
    iget-object v8, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    iget-object v8, v8, LCatalano/Imaging/Concurrent/Filters/Erosion;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v8, v3, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    iget-object v9, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Erosion;->a(LCatalano/Imaging/Concurrent/Filters/Erosion;)[[I

    move-result-object v9

    aget-object v9, v9, v4

    aget v9, v9, v7

    sub-int/2addr v8, v9

    .line 133
    if-ge v8, v5, :cond_13

    .line 136
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 130
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v8

    goto :goto_3

    .line 138
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 140
    :cond_3
    if-gez v5, :cond_4

    const/4 v5, 0x0

    .line 141
    :cond_4
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1, v2, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_6
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 146
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Erosion;->a(LCatalano/Imaging/Concurrent/Filters/Erosion;)[[I

    move-result-object v0

    if-nez v0, :cond_7

    .line 147
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v1}, LCatalano/Imaging/Concurrent/Filters/Erosion;->b(LCatalano/Imaging/Concurrent/Filters/Erosion;)I

    move-result v1

    invoke-static {v0, v1}, LCatalano/Imaging/Concurrent/Filters/Erosion;->a(LCatalano/Imaging/Concurrent/Filters/Erosion;I)V

    .line 149
    :cond_7
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Erosion;->b(LCatalano/Imaging/Concurrent/Filters/Erosion;)I

    move-result v0

    .line 150
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-boolean v1, v1, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    if-eqz v1, :cond_12

    .line 151
    const/4 v0, 0x0

    move v6, v0

    .line 154
    :goto_5
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_6
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v1, v0, :cond_10

    .line 155
    const/4 v2, 0x0

    :goto_7
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    if-ge v2, v0, :cond_f

    .line 157
    const/4 v3, 0x0

    .line 158
    const/16 v4, 0xff

    .line 160
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Erosion;->b(LCatalano/Imaging/Concurrent/Filters/Erosion;)I

    move-result v0

    sub-int v0, v1, v0

    move v5, v4

    move v7, v4

    :goto_8
    iget-object v8, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v8}, LCatalano/Imaging/Concurrent/Filters/Erosion;->b(LCatalano/Imaging/Concurrent/Filters/Erosion;)I

    move-result v8

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x1

    if-ge v0, v8, :cond_b

    .line 161
    const/4 v9, 0x0

    .line 162
    iget-object v8, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v8}, LCatalano/Imaging/Concurrent/Filters/Erosion;->b(LCatalano/Imaging/Concurrent/Filters/Erosion;)I

    move-result v8

    sub-int v8, v2, v8

    move v14, v5

    move v5, v4

    move v4, v14

    :goto_9
    iget-object v10, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/Erosion;->b(LCatalano/Imaging/Concurrent/Filters/Erosion;)I

    move-result v10

    add-int/2addr v10, v2

    add-int/lit8 v10, v10, 0x1

    if-ge v8, v10, :cond_a

    .line 164
    if-ltz v0, :cond_11

    iget-object v10, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v10, v10, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v10, v6

    if-ge v0, v10, :cond_11

    if-ltz v8, :cond_11

    iget-object v10, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v10, v10, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v10}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v10

    if-ge v8, v10, :cond_11

    .line 165
    iget-object v10, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    iget-object v10, v10, LCatalano/Imaging/Concurrent/Filters/Erosion;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v10, v0, v8}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v10

    iget-object v11, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Erosion;->a(LCatalano/Imaging/Concurrent/Filters/Erosion;)[[I

    move-result-object v11

    aget-object v11, v11, v3

    aget v11, v11, v9

    sub-int v12, v10, v11

    .line 166
    iget-object v10, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    iget-object v10, v10, LCatalano/Imaging/Concurrent/Filters/Erosion;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v10, v0, v8}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v10

    iget-object v11, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Erosion;->a(LCatalano/Imaging/Concurrent/Filters/Erosion;)[[I

    move-result-object v11

    aget-object v11, v11, v3

    aget v11, v11, v9

    sub-int v11, v10, v11

    .line 167
    iget-object v10, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    iget-object v10, v10, LCatalano/Imaging/Concurrent/Filters/Erosion;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v10, v0, v8}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v10

    iget-object v13, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->a:LCatalano/Imaging/Concurrent/Filters/Erosion;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Erosion;->a(LCatalano/Imaging/Concurrent/Filters/Erosion;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    aget v13, v13, v9

    sub-int/2addr v10, v13

    .line 169
    if-ge v12, v7, :cond_8

    move v7, v12

    .line 172
    :cond_8
    if-ge v11, v5, :cond_9

    move v5, v11

    .line 175
    :cond_9
    if-ge v10, v4, :cond_11

    move v11, v7

    move v7, v10

    move v10, v5

    .line 178
    :goto_a
    add-int/lit8 v5, v9, 0x1

    .line 162
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v9, v5

    move v4, v7

    move v5, v10

    move v7, v11

    goto :goto_9

    .line 180
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 160
    add-int/lit8 v0, v0, 0x1

    move v14, v4

    move v4, v5

    move v5, v14

    goto/16 :goto_8

    .line 183
    :cond_b
    if-gez v7, :cond_e

    const/4 v3, 0x0

    .line 184
    :goto_b
    if-gez v4, :cond_c

    const/4 v4, 0x0

    .line 185
    :cond_c
    if-gez v5, :cond_d

    const/4 v5, 0x0

    .line 187
    :cond_d
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_e
    move v3, v7

    .line 183
    goto :goto_b

    .line 154
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 191
    :cond_10
    return-void

    :cond_11
    move v10, v5

    move v11, v7

    move v7, v4

    goto :goto_a

    :cond_12
    move v6, v0

    goto/16 :goto_5

    :cond_13
    move v8, v5

    goto/16 :goto_4
.end method
