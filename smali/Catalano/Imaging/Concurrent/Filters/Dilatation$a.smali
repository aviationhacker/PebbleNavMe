.class LCatalano/Imaging/Concurrent/Filters/Dilatation$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Dilatation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Dilatation;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 116
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->a(LCatalano/Imaging/Concurrent/Filters/Dilatation;)I

    move-result v0

    .line 117
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-boolean v1, v1, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    if-eqz v1, :cond_10

    .line 118
    const/4 v0, 0x0

    move v6, v0

    .line 121
    :goto_0
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_1
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v0, v1, :cond_4

    .line 124
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 126
    const/4 v4, 0x0

    .line 127
    const/4 v3, 0x0

    .line 128
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->a(LCatalano/Imaging/Concurrent/Filters/Dilatation;)I

    move-result v2

    sub-int v2, v0, v2

    :goto_3
    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v5}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->a(LCatalano/Imaging/Concurrent/Filters/Dilatation;)I

    move-result v5

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_1

    .line 129
    const/4 v7, 0x0

    .line 130
    iget-object v5, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v5}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->a(LCatalano/Imaging/Concurrent/Filters/Dilatation;)I

    move-result v5

    sub-int v5, v1, v5

    move v8, v7

    :goto_4
    iget-object v7, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v7}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->a(LCatalano/Imaging/Concurrent/Filters/Dilatation;)I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x1

    if-ge v5, v7, :cond_0

    .line 132
    if-ltz v2, :cond_f

    iget-object v7, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v7, v7, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v7, v6

    if-ge v2, v7, :cond_f

    if-ltz v5, :cond_f

    iget-object v7, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v7, v7, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v7}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    if-ge v5, v7, :cond_f

    .line 133
    iget-object v7, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v7}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->b(LCatalano/Imaging/Concurrent/Filters/Dilatation;)LCatalano/Imaging/FastBitmap;

    move-result-object v7

    invoke-virtual {v7, v2, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    iget-object v9, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->c(LCatalano/Imaging/Concurrent/Filters/Dilatation;)[[I

    move-result-object v9

    aget-object v9, v9, v4

    aget v9, v9, v8

    add-int/2addr v7, v9

    .line 135
    if-le v7, v3, :cond_f

    .line 139
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 130
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v7

    goto :goto_4

    .line 141
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 144
    :cond_1
    const/16 v2, 0xff

    if-le v3, v2, :cond_2

    const/16 v3, 0xff

    .line 145
    :cond_2
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0, v1, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 149
    :cond_4
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 151
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_6
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v1, v0, :cond_d

    .line 152
    const/4 v2, 0x0

    :goto_7
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 154
    const/4 v7, 0x0

    .line 155
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->a(LCatalano/Imaging/Concurrent/Filters/Dilatation;)I

    move-result v0

    sub-int v0, v1, v0

    move v14, v3

    move v3, v5

    move v5, v14

    :goto_8
    iget-object v8, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v8}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->a(LCatalano/Imaging/Concurrent/Filters/Dilatation;)I

    move-result v8

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x1

    if-ge v0, v8, :cond_8

    .line 157
    const/4 v9, 0x0

    .line 158
    iget-object v8, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v8}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->a(LCatalano/Imaging/Concurrent/Filters/Dilatation;)I

    move-result v8

    sub-int v8, v2, v8

    move v10, v9

    move v14, v3

    move v3, v5

    move v5, v14

    :goto_9
    iget-object v9, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->a(LCatalano/Imaging/Concurrent/Filters/Dilatation;)I

    move-result v9

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_7

    .line 160
    if-ltz v0, :cond_e

    iget-object v9, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v9, v9, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v9, v6

    if-ge v0, v9, :cond_e

    if-ltz v8, :cond_e

    iget-object v9, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v9, v9, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v9}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_e

    .line 161
    iget-object v9, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->b(LCatalano/Imaging/Concurrent/Filters/Dilatation;)LCatalano/Imaging/FastBitmap;

    move-result-object v9

    invoke-virtual {v9, v0, v8}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v9

    iget-object v11, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->c(LCatalano/Imaging/Concurrent/Filters/Dilatation;)[[I

    move-result-object v11

    aget-object v11, v11, v7

    aget v11, v11, v10

    add-int v12, v9, v11

    .line 162
    iget-object v9, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->b(LCatalano/Imaging/Concurrent/Filters/Dilatation;)LCatalano/Imaging/FastBitmap;

    move-result-object v9

    invoke-virtual {v9, v0, v8}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v9

    iget-object v11, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v11}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->c(LCatalano/Imaging/Concurrent/Filters/Dilatation;)[[I

    move-result-object v11

    aget-object v11, v11, v7

    aget v11, v11, v10

    add-int/2addr v11, v9

    .line 163
    iget-object v9, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->b(LCatalano/Imaging/Concurrent/Filters/Dilatation;)LCatalano/Imaging/FastBitmap;

    move-result-object v9

    invoke-virtual {v9, v0, v8}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v9

    iget-object v13, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->a:LCatalano/Imaging/Concurrent/Filters/Dilatation;

    invoke-static {v13}, LCatalano/Imaging/Concurrent/Filters/Dilatation;->c(LCatalano/Imaging/Concurrent/Filters/Dilatation;)[[I

    move-result-object v13

    aget-object v13, v13, v7

    aget v13, v13, v10

    add-int/2addr v9, v13

    .line 165
    if-le v12, v5, :cond_5

    move v5, v12

    .line 168
    :cond_5
    if-le v11, v4, :cond_6

    move v4, v11

    .line 171
    :cond_6
    if-le v9, v3, :cond_e

    move v14, v9

    move v9, v5

    move v5, v14

    .line 175
    :goto_a
    add-int/lit8 v10, v10, 0x1

    .line 158
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v3, v5

    move v5, v9

    goto :goto_9

    .line 177
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 156
    add-int/lit8 v0, v0, 0x1

    move v14, v3

    move v3, v5

    move v5, v14

    goto/16 :goto_8

    .line 180
    :cond_8
    const/16 v0, 0xff

    if-le v3, v0, :cond_9

    const/16 v3, 0xff

    .line 181
    :cond_9
    const/16 v0, 0xff

    if-le v4, v0, :cond_a

    const/16 v4, 0xff

    .line 182
    :cond_a
    const/16 v0, 0xff

    if-le v5, v0, :cond_b

    const/16 v5, 0xff

    .line 183
    :cond_b
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Dilatation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 151
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 187
    :cond_d
    return-void

    :cond_e
    move v9, v5

    move v5, v3

    goto :goto_a

    :cond_f
    move v7, v3

    goto/16 :goto_5

    :cond_10
    move v6, v0

    goto/16 :goto_0
.end method
