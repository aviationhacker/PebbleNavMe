.class LCatalano/Imaging/Concurrent/Filters/FastVariance$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/FastVariance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/FastVariance;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 100
    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->a(LCatalano/Imaging/Concurrent/Filters/FastVariance;)I

    move-result v2

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-boolean v3, v3, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    if-eqz v3, :cond_0

    .line 108
    const/4 v2, 0x0

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    iput v4, v3, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    :cond_0
    move v8, v2

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v3, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v2, v3, :cond_d

    .line 114
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v4, v4, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 115
    const/4 v5, 0x0

    .line 116
    const-wide/16 v10, 0x0

    .line 117
    const-wide/16 v6, 0x0

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    invoke-static {v4}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->a(LCatalano/Imaging/Concurrent/Filters/FastVariance;)I

    move-result v4

    sub-int v4, v2, v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->a(LCatalano/Imaging/Concurrent/Filters/FastVariance;)I

    move-result v9

    add-int/2addr v9, v2

    if-gt v4, v9, :cond_2

    .line 119
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->a(LCatalano/Imaging/Concurrent/Filters/FastVariance;)I

    move-result v9

    sub-int v9, v3, v9

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    invoke-static {v12}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->a(LCatalano/Imaging/Concurrent/Filters/FastVariance;)I

    move-result v12

    add-int/2addr v12, v3

    if-gt v9, v12, :cond_1

    .line 120
    if-ltz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v12, v12, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    add-int/2addr v12, v8

    if-ge v4, v12, :cond_12

    if-ltz v9, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v12, v12, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v12}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v12

    if-ge v9, v12, :cond_12

    .line 121
    add-int/lit8 v5, v5, 0x1

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    invoke-static {v12}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->b(LCatalano/Imaging/Concurrent/Filters/FastVariance;)LCatalano/Imaging/FastBitmap;

    move-result-object v12

    invoke-virtual {v12, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v12

    int-to-double v12, v12

    sub-double/2addr v12, v10

    .line 123
    int-to-double v14, v5

    div-double v14, v12, v14

    add-double/2addr v10, v14

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    invoke-static {v14}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->b(LCatalano/Imaging/Concurrent/Filters/FastVariance;)LCatalano/Imaging/FastBitmap;

    move-result-object v14

    invoke-virtual {v14, v4, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v14

    int-to-double v14, v14

    sub-double/2addr v14, v10

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    move v12, v5

    .line 119
    :goto_4
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v5, v12

    goto :goto_3

    .line 118
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 128
    :cond_2
    add-int/lit8 v4, v5, -0x1

    int-to-double v4, v4

    div-double v4, v6, v4

    .line 129
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_3

    const-wide/16 v4, 0x0

    .line 130
    :cond_3
    const-wide v6, 0x406fe00000000000L    # 255.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_4

    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 131
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v6, v6, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v4, v4

    invoke-virtual {v6, v2, v3, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 113
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 136
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v3, v2, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v2, v2, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v3, v2, :cond_d

    .line 137
    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ge v4, v2, :cond_c

    .line 138
    const/4 v5, 0x0

    .line 139
    const-wide/16 v18, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v14, 0x0

    .line 140
    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v6, 0x0

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    invoke-static {v2}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->a(LCatalano/Imaging/Concurrent/Filters/FastVariance;)I

    move-result v2

    sub-int v2, v3, v2

    :goto_7
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->a(LCatalano/Imaging/Concurrent/Filters/FastVariance;)I

    move-result v9

    add-int/2addr v9, v3

    if-gt v2, v9, :cond_8

    .line 142
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    invoke-static {v9}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->a(LCatalano/Imaging/Concurrent/Filters/FastVariance;)I

    move-result v9

    sub-int v9, v4, v9

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->a(LCatalano/Imaging/Concurrent/Filters/FastVariance;)I

    move-result v20

    add-int v20, v20, v4

    move/from16 v0, v20

    if-gt v9, v0, :cond_7

    .line 143
    if-ltz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    move/from16 v20, v0

    add-int v20, v20, v8

    move/from16 v0, v20

    if-ge v2, v0, :cond_11

    if-ltz v9, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_11

    .line 144
    add-int/lit8 v5, v5, 0x1

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->b(LCatalano/Imaging/Concurrent/Filters/FastVariance;)LCatalano/Imaging/FastBitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v9}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v20, v20, v18

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->b(LCatalano/Imaging/Concurrent/Filters/FastVariance;)LCatalano/Imaging/FastBitmap;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v9}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v22, v22, v16

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->b(LCatalano/Imaging/Concurrent/Filters/FastVariance;)LCatalano/Imaging/FastBitmap;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v9}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v24, v24, v14

    .line 149
    int-to-double v0, v5

    move-wide/from16 v26, v0

    div-double v26, v20, v26

    add-double v18, v18, v26

    .line 150
    int-to-double v0, v5

    move-wide/from16 v26, v0

    div-double v26, v22, v26

    add-double v16, v16, v26

    .line 151
    int-to-double v0, v5

    move-wide/from16 v26, v0

    div-double v26, v24, v26

    add-double v14, v14, v26

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->b(LCatalano/Imaging/Concurrent/Filters/FastVariance;)LCatalano/Imaging/FastBitmap;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v9}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v26, v18

    mul-double v20, v20, v26

    add-double v12, v12, v20

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->b(LCatalano/Imaging/Concurrent/Filters/FastVariance;)LCatalano/Imaging/FastBitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v9}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v20, v20, v16

    mul-double v20, v20, v22

    add-double v10, v10, v20

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->a:LCatalano/Imaging/Concurrent/Filters/FastVariance;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->b(LCatalano/Imaging/Concurrent/Filters/FastVariance;)LCatalano/Imaging/FastBitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v9}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v20, v20, v14

    mul-double v20, v20, v24

    add-double v6, v6, v20

    move/from16 v20, v5

    .line 142
    :goto_9
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move/from16 v5, v20

    goto/16 :goto_8

    .line 141
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 160
    :cond_8
    add-int/lit8 v2, v5, -0x1

    int-to-double v14, v2

    div-double/2addr v12, v14

    .line 161
    add-int/lit8 v2, v5, -0x1

    int-to-double v14, v2

    div-double/2addr v10, v14

    .line 162
    add-int/lit8 v2, v5, -0x1

    int-to-double v14, v2

    div-double/2addr v6, v14

    .line 164
    const-wide/16 v14, 0x0

    cmpg-double v2, v12, v14

    if-gez v2, :cond_9

    const-wide/16 v12, 0x0

    .line 165
    :cond_9
    const-wide/16 v14, 0x0

    cmpg-double v2, v10, v14

    if-gez v2, :cond_a

    const-wide/16 v10, 0x0

    .line 166
    :cond_a
    const-wide/16 v14, 0x0

    cmpg-double v2, v6, v14

    if-gez v2, :cond_b

    const-wide/16 v6, 0x0

    .line 168
    :cond_b
    const-wide v14, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v12, v14

    if-lez v2, :cond_10

    const-wide v12, 0x406fe00000000000L    # 255.0

    move-wide v14, v12

    .line 169
    :goto_a
    const-wide v12, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v10, v12

    if-lez v2, :cond_f

    const-wide v10, 0x406fe00000000000L    # 255.0

    move-wide v12, v10

    .line 170
    :goto_b
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v6, v10

    if-lez v2, :cond_e

    const-wide v6, 0x406fe00000000000L    # 255.0

    move-wide v10, v6

    .line 172
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Concurrent/Filters/FastVariance$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v2, v2, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v5, v14

    double-to-int v6, v12

    double-to-int v7, v10

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 136
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 176
    :cond_d
    return-void

    :cond_e
    move-wide v10, v6

    goto :goto_c

    :cond_f
    move-wide v12, v10

    goto :goto_b

    :cond_10
    move-wide v14, v12

    goto :goto_a

    :cond_11
    move/from16 v20, v5

    goto :goto_9

    :cond_12
    move v12, v5

    goto/16 :goto_4
.end method
