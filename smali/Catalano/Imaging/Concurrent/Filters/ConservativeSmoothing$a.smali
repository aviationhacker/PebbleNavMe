.class LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 106
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 205
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v1}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->a(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a(I)I

    move-result v13

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v1}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->a(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)I

    move-result v1

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-boolean v2, v2, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    if-eqz v2, :cond_0

    .line 117
    const/4 v1, 0x0

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    iput v3, v2, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    :cond_0
    move v7, v1

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v1, v1, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v1, v2, :cond_f

    .line 125
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v3, v3, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 126
    const/16 v5, 0xff

    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v3, 0x0

    move v6, v3

    move v3, v5

    :goto_2
    if-ge v6, v13, :cond_4

    .line 129
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v5}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->a(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)I

    move-result v5

    sub-int v5, v6, v5

    add-int v8, v1, v5

    .line 130
    const/4 v5, 0x0

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    :goto_3
    if-ge v5, v13, :cond_3

    .line 131
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->a(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)I

    move-result v9

    sub-int v9, v5, v9

    add-int/2addr v9, v2

    .line 132
    if-ltz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v10, v10, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v10, v7

    if-ge v8, v10, :cond_2

    if-ltz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v10, v10, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v10}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_2

    if-eq v6, v5, :cond_2

    .line 134
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-le v10, v3, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v3}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    .line 137
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    if-ge v10, v4, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    .line 130
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 128
    :cond_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    goto :goto_2

    .line 143
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v5}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    .line 145
    if-le v5, v4, :cond_18

    .line 146
    :goto_4
    if-ge v4, v3, :cond_17

    .line 148
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1, v2, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 124
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 155
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v1, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v1, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v2, v1, :cond_f

    .line 156
    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v1, v1, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    if-ge v3, v1, :cond_e

    .line 157
    const/16 v6, 0xff

    .line 158
    const/4 v5, 0x0

    .line 159
    const/4 v1, 0x0

    move v11, v1

    move v8, v5

    move v9, v5

    move v4, v6

    move v1, v5

    move v5, v6

    :goto_8
    if-ge v11, v13, :cond_d

    .line 160
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->a(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)I

    move-result v10

    sub-int v10, v11, v10

    add-int v12, v2, v10

    .line 161
    const/4 v10, 0x0

    move/from16 v16, v1

    move v1, v9

    move v9, v6

    move v6, v4

    move v4, v8

    move v8, v5

    move/from16 v5, v16

    :goto_9
    if-ge v10, v13, :cond_c

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v14}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->a(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)I

    move-result v14

    sub-int v14, v10, v14

    add-int/2addr v14, v3

    .line 163
    if-ltz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v15, v15, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v15, v7

    if-ge v12, v15, :cond_16

    if-ltz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v15, v15, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v15}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v15

    if-ge v14, v15, :cond_16

    if-eq v11, v10, :cond_16

    .line 165
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v15}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v15

    invoke-virtual {v15, v12, v14}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v15

    if-le v15, v1, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v1}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v1

    invoke-virtual {v1, v12, v14}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v1

    .line 168
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v15}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v15

    invoke-virtual {v15, v12, v14}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v15

    if-le v15, v4, :cond_8

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v4

    invoke-virtual {v4, v12, v14}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    .line 171
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v15}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v15

    invoke-virtual {v15, v12, v14}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v15

    if-le v15, v5, :cond_9

    .line 172
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v5}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v5

    invoke-virtual {v5, v12, v14}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    .line 174
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v15}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v15

    invoke-virtual {v15, v12, v14}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v15

    if-ge v15, v6, :cond_a

    .line 175
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v6}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v6

    invoke-virtual {v6, v12, v14}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v6

    .line 177
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v15}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v15

    invoke-virtual {v15, v12, v14}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v15

    if-ge v15, v8, :cond_b

    .line 178
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v8}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v8

    invoke-virtual {v8, v12, v14}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v8

    .line 180
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v15}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v15

    invoke-virtual {v15, v12, v14}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v15

    if-ge v15, v9, :cond_16

    .line 181
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v9

    invoke-virtual {v9, v12, v14}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v9

    move/from16 v16, v9

    move v9, v6

    move/from16 v6, v16

    .line 161
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v6

    move v6, v9

    move/from16 v9, v16

    goto/16 :goto_9

    .line 159
    :cond_c
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    move/from16 v16, v5

    move v5, v8

    move v8, v4

    move v4, v6

    move v6, v9

    move v9, v1

    move/from16 v1, v16

    goto/16 :goto_8

    .line 186
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v12

    .line 187
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v11

    .line 188
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->a:LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;->b(LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing;)LCatalano/Imaging/FastBitmap;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v10

    .line 190
    if-le v12, v9, :cond_15

    .line 191
    :goto_b
    if-le v11, v8, :cond_14

    .line 192
    :goto_c
    if-le v10, v1, :cond_13

    .line 194
    :goto_d
    if-ge v9, v4, :cond_12

    .line 195
    :goto_e
    if-ge v8, v5, :cond_11

    .line 196
    :goto_f
    if-ge v1, v6, :cond_10

    .line 198
    :goto_10
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Concurrent/Filters/ConservativeSmoothing$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v1, v1, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual/range {v1 .. v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 155
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 202
    :cond_f
    return-void

    :cond_10
    move v6, v1

    goto :goto_10

    :cond_11
    move v5, v8

    goto :goto_f

    :cond_12
    move v4, v9

    goto :goto_e

    :cond_13
    move v1, v10

    goto :goto_d

    :cond_14
    move v8, v11

    goto :goto_c

    :cond_15
    move v9, v12

    goto :goto_b

    :cond_16
    move/from16 v16, v9

    move v9, v6

    move/from16 v6, v16

    goto :goto_a

    :cond_17
    move v3, v4

    goto/16 :goto_5

    :cond_18
    move v4, v5

    goto/16 :goto_4
.end method
