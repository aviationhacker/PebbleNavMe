.class LCatalano/Imaging/Concurrent/Filters/Variance$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Variance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/Variance;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Variance;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 100
    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v2

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-boolean v3, v3, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    if-eqz v3, :cond_0

    .line 108
    const/4 v2, 0x0

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    iput v4, v3, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    :cond_0
    move v8, v2

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v3, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v2, v3, :cond_11

    .line 114
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 115
    const-wide/16 v6, 0x0

    .line 116
    const-wide/16 v12, 0x0

    .line 117
    const/4 v5, 0x0

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v4

    sub-int v4, v2, v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v9

    add-int/2addr v9, v2

    if-gt v4, v9, :cond_2

    .line 119
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v9

    sub-int v9, v3, v9

    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v10

    add-int/2addr v10, v3

    if-gt v9, v10, :cond_1

    .line 120
    if-ltz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v10, v10, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v10, v8

    if-ge v4, v10, :cond_18

    if-ltz v9, :cond_18

    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v10, v10, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v10}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_18

    .line 121
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/Variance;->b(LCatalano/Imaging/Concurrent/Filters/Variance;)LCatalano/Imaging/FastBitmap;

    move-result-object v10

    invoke-virtual {v10, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v6, v10

    .line 122
    add-int/lit8 v5, v5, 0x1

    move-wide v10, v6

    move v6, v5

    .line 119
    :goto_4
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v5, v6

    move-wide v6, v10

    goto :goto_3

    .line 118
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 126
    :cond_2
    int-to-double v10, v5

    div-double v14, v6, v10

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v4

    sub-int v4, v2, v4

    move-wide v6, v12

    :goto_5
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v9

    add-int/2addr v9, v2

    if-gt v4, v9, :cond_4

    .line 128
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v9

    sub-int v9, v3, v9

    :goto_6
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v10

    add-int/2addr v10, v3

    if-gt v9, v10, :cond_3

    .line 129
    if-ltz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v10, v10, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v10, v8

    if-ge v4, v10, :cond_17

    if-ltz v9, :cond_17

    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v10, v10, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v10}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_17

    .line 130
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v10}, LCatalano/Imaging/Concurrent/Filters/Variance;->b(LCatalano/Imaging/Concurrent/Filters/Variance;)LCatalano/Imaging/FastBitmap;

    move-result-object v10

    invoke-virtual {v10, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    int-to-double v10, v10

    sub-double/2addr v10, v14

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v6, v10

    move-wide v10, v6

    .line 128
    :goto_7
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move-wide v6, v10

    goto :goto_6

    .line 127
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 133
    :cond_4
    add-int/lit8 v4, v5, -0x1

    int-to-double v4, v4

    div-double v4, v6, v4

    .line 134
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_5

    const-wide/16 v4, 0x0

    .line 135
    :cond_5
    const-wide v6, 0x406fe00000000000L    # 255.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_6

    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 136
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v6, v6, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v6, v2, v3, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 113
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 141
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v2, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v3, v2, :cond_11

    .line 142
    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v4, v2, :cond_10

    .line 143
    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v6, 0x0

    .line 144
    const-wide/16 v20, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v16, 0x0

    .line 145
    const/4 v5, 0x0

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v2

    sub-int v2, v3, v2

    :goto_a
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v9

    add-int/2addr v9, v3

    if-gt v2, v9, :cond_a

    .line 147
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v9

    sub-int v9, v4, v9

    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v14}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v14

    add-int/2addr v14, v4

    if-gt v9, v14, :cond_9

    .line 148
    if-ltz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v14, v14, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v14, v8

    if-ge v2, v14, :cond_16

    if-ltz v9, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v14, v14, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v14}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v14

    if-ge v9, v14, :cond_16

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v14}, LCatalano/Imaging/Concurrent/Filters/Variance;->b(LCatalano/Imaging/Concurrent/Filters/Variance;)LCatalano/Imaging/FastBitmap;

    move-result-object v14

    invoke-virtual {v14, v2, v9}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v14

    int-to-double v14, v14

    add-double/2addr v12, v14

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v14}, LCatalano/Imaging/Concurrent/Filters/Variance;->b(LCatalano/Imaging/Concurrent/Filters/Variance;)LCatalano/Imaging/FastBitmap;

    move-result-object v14

    invoke-virtual {v14, v2, v9}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v14

    int-to-double v14, v14

    add-double/2addr v10, v14

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v14}, LCatalano/Imaging/Concurrent/Filters/Variance;->b(LCatalano/Imaging/Concurrent/Filters/Variance;)LCatalano/Imaging/FastBitmap;

    move-result-object v14

    invoke-virtual {v14, v2, v9}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v14

    int-to-double v14, v14

    add-double/2addr v6, v14

    .line 152
    add-int/lit8 v5, v5, 0x1

    move-wide v14, v12

    move-wide v12, v10

    move-wide v10, v6

    move v6, v5

    .line 147
    :goto_c
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v5, v6

    move-wide v6, v10

    move-wide v10, v12

    move-wide v12, v14

    goto :goto_b

    .line 146
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 156
    :cond_a
    int-to-double v14, v5

    div-double v22, v12, v14

    .line 157
    int-to-double v12, v5

    div-double v24, v10, v12

    .line 158
    int-to-double v10, v5

    div-double v26, v6, v10

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v2

    sub-int v2, v3, v2

    move-wide/from16 v6, v16

    move-wide/from16 v10, v18

    move-wide/from16 v12, v20

    :goto_d
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v9

    add-int/2addr v9, v3

    if-gt v2, v9, :cond_c

    .line 160
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v9

    sub-int v9, v4, v9

    :goto_e
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v14}, LCatalano/Imaging/Concurrent/Filters/Variance;->a(LCatalano/Imaging/Concurrent/Filters/Variance;)I

    move-result v14

    add-int/2addr v14, v4

    if-gt v9, v14, :cond_b

    .line 161
    if-ltz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v14, v14, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v14, v8

    if-ge v2, v14, :cond_15

    if-ltz v9, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v14, v14, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v14}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v14

    if-ge v9, v14, :cond_15

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v14}, LCatalano/Imaging/Concurrent/Filters/Variance;->b(LCatalano/Imaging/Concurrent/Filters/Variance;)LCatalano/Imaging/FastBitmap;

    move-result-object v14

    invoke-virtual {v14, v2, v9}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v14

    int-to-double v14, v14

    sub-double v14, v14, v22

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    .line 163
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v14}, LCatalano/Imaging/Concurrent/Filters/Variance;->b(LCatalano/Imaging/Concurrent/Filters/Variance;)LCatalano/Imaging/FastBitmap;

    move-result-object v14

    invoke-virtual {v14, v2, v9}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v14

    int-to-double v14, v14

    sub-double v14, v14, v24

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v10, v14

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->a:LCatalano/Imaging/Concurrent/Filters/Variance;

    invoke-static {v14}, LCatalano/Imaging/Concurrent/Filters/Variance;->b(LCatalano/Imaging/Concurrent/Filters/Variance;)LCatalano/Imaging/FastBitmap;

    move-result-object v14

    invoke-virtual {v14, v2, v9}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v14

    int-to-double v14, v14

    sub-double v14, v14, v26

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v6, v14

    move-wide v14, v12

    move-wide v12, v10

    move-wide v10, v6

    .line 160
    :goto_f
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move-wide v6, v10

    move-wide v10, v12

    move-wide v12, v14

    goto :goto_e

    .line 159
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 168
    :cond_c
    add-int/lit8 v2, v5, -0x1

    int-to-double v14, v2

    div-double/2addr v12, v14

    .line 169
    add-int/lit8 v2, v5, -0x1

    int-to-double v14, v2

    div-double/2addr v10, v14

    .line 170
    add-int/lit8 v2, v5, -0x1

    int-to-double v14, v2

    div-double/2addr v6, v14

    .line 172
    const-wide/16 v14, 0x0

    cmpg-double v2, v12, v14

    if-gez v2, :cond_d

    const-wide/16 v12, 0x0

    .line 173
    :cond_d
    const-wide/16 v14, 0x0

    cmpg-double v2, v10, v14

    if-gez v2, :cond_e

    const-wide/16 v10, 0x0

    .line 174
    :cond_e
    const-wide/16 v14, 0x0

    cmpg-double v2, v6, v14

    if-gez v2, :cond_f

    const-wide/16 v6, 0x0

    .line 176
    :cond_f
    const-wide v14, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v12, v14

    if-lez v2, :cond_14

    const-wide v12, 0x406fe00000000000L    # 255.0

    move-wide v14, v12

    .line 177
    :goto_10
    const-wide v12, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v10, v12

    if-lez v2, :cond_13

    const-wide v10, 0x406fe00000000000L    # 255.0

    move-wide v12, v10

    .line 178
    :goto_11
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v6, v10

    if-lez v2, :cond_12

    const-wide v6, 0x406fe00000000000L    # 255.0

    move-wide v10, v6

    .line 180
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/Variance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v5, v14

    double-to-int v6, v12

    double-to-int v7, v10

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 141
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 184
    :cond_11
    return-void

    :cond_12
    move-wide v10, v6

    goto :goto_12

    :cond_13
    move-wide v12, v10

    goto :goto_11

    :cond_14
    move-wide v14, v12

    goto :goto_10

    :cond_15
    move-wide v14, v12

    move-wide v12, v10

    move-wide v10, v6

    goto :goto_f

    :cond_16
    move-wide v14, v12

    move-wide v12, v10

    move-wide v10, v6

    move v6, v5

    goto/16 :goto_c

    :cond_17
    move-wide v10, v6

    goto/16 :goto_7

    :cond_18
    move-wide v10, v6

    move v6, v5

    goto/16 :goto_4
.end method
