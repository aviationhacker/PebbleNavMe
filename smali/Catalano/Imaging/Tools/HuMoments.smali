.class public LCatalano/Imaging/Tools/HuMoments;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHuMoment(LCatalano/Imaging/FastBitmap;I)D
    .locals 22

    .prologue
    .line 108
    const/16 v2, 0x8

    const/4 v3, 0x1

    move/from16 v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 113
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v4

    .line 114
    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v3, v6}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v6

    .line 115
    const/4 v3, 0x3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v8}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v8

    .line 116
    const/4 v3, 0x1

    const/4 v10, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v10

    .line 117
    const/4 v3, 0x2

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v12}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v12

    .line 118
    const/4 v3, 0x0

    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v3, v14}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v14

    .line 119
    const/4 v3, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v3, v1}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v16

    .line 121
    packed-switch v2, :pswitch_data_0

    .line 158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid number for Hu moment."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :pswitch_0
    add-double v2, v4, v6

    .line 161
    :goto_0
    return-wide v2

    .line 126
    :pswitch_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double v2, v4, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v16

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 127
    goto :goto_0

    .line 129
    :pswitch_2
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v10

    sub-double v2, v8, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v12

    sub-double/2addr v4, v14

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 130
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 131
    goto :goto_0

    .line 133
    :pswitch_3
    add-double v2, v8, v10

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double v4, v10, v14

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 134
    goto :goto_0

    .line 136
    :pswitch_4
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v10

    sub-double v2, v8, v2

    add-double v4, v8, v10

    mul-double/2addr v2, v4

    add-double v4, v8, v10

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 137
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    add-double v16, v12, v14

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v6, v6, v16

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v12

    sub-double/2addr v4, v14

    add-double v6, v12, v14

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 139
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double v8, v12, v14

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 140
    goto :goto_0

    .line 142
    :pswitch_5
    sub-double v2, v4, v6

    add-double v4, v8, v10

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 143
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double v6, v12, v14

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double v4, v4, v16

    add-double v6, v8, v10

    mul-double/2addr v4, v6

    add-double v6, v12, v14

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 145
    goto/16 :goto_0

    .line 147
    :pswitch_6
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v12

    sub-double/2addr v2, v14

    add-double v4, v8, v10

    mul-double/2addr v2, v4

    add-double v4, v8, v10

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 148
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    add-double v16, v12, v14

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v6, v6, v16

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v10

    sub-double v4, v8, v4

    add-double v6, v12, v14

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 150
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double v8, v12, v14

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 151
    goto/16 :goto_0

    .line 153
    :pswitch_7
    add-double v2, v8, v10

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double v18, v14, v12

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    sub-double v2, v2, v18

    mul-double v2, v2, v16

    sub-double/2addr v4, v6

    add-double v6, v8, v10

    mul-double/2addr v4, v6

    add-double v6, v14, v12

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    .line 155
    goto/16 :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;)[D
    .locals 28

    .prologue
    .line 50
    const/16 v2, 0x8

    new-array v2, v2, [D

    .line 53
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v4

    .line 54
    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v3, v6}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v6

    .line 55
    const/4 v3, 0x3

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v8}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v8

    .line 56
    const/4 v3, 0x1

    const/4 v10, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v3, v10}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v10

    .line 57
    const/4 v3, 0x2

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v12}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v12

    .line 58
    const/4 v3, 0x0

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-static {v0, v3, v14}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v14

    .line 59
    const/4 v3, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v3, v1}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v16

    .line 62
    const/4 v3, 0x0

    add-double v18, v4, v6

    aput-wide v18, v2, v3

    .line 65
    const/4 v3, 0x1

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    sub-double v18, v4, v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v16

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    aput-wide v18, v2, v3

    .line 68
    const/4 v3, 0x2

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    mul-double v18, v18, v10

    sub-double v18, v8, v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    mul-double v20, v20, v12

    sub-double v20, v20, v14

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    .line 69
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    aput-wide v18, v2, v3

    .line 72
    const/4 v3, 0x3

    add-double v18, v8, v10

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v20, v10, v14

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    aput-wide v18, v2, v3

    .line 75
    const/4 v3, 0x4

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    mul-double v18, v18, v10

    sub-double v18, v8, v18

    add-double v20, v8, v10

    mul-double v18, v18, v20

    add-double v20, v8, v10

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    .line 76
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    add-double v24, v12, v14

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    mul-double v20, v20, v12

    sub-double v20, v20, v14

    add-double v22, v12, v14

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    add-double v24, v8, v10

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    .line 78
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v24, v12, v14

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    add-double v18, v18, v20

    aput-wide v18, v2, v3

    .line 81
    const/4 v3, 0x5

    sub-double v18, v4, v6

    add-double v20, v8, v10

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    .line 82
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v22, v12, v14

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    mul-double v20, v20, v16

    add-double v22, v8, v10

    mul-double v20, v20, v22

    add-double v22, v12, v14

    mul-double v20, v20, v22

    add-double v18, v18, v20

    aput-wide v18, v2, v3

    .line 86
    const/4 v3, 0x6

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    mul-double v18, v18, v12

    sub-double v18, v18, v14

    add-double v20, v8, v10

    mul-double v18, v18, v20

    add-double v20, v8, v10

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    .line 87
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    add-double v24, v12, v14

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    mul-double v20, v20, v10

    sub-double v20, v8, v20

    add-double v22, v12, v14

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    add-double v24, v8, v10

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    .line 89
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v24, v12, v14

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    add-double v18, v18, v20

    aput-wide v18, v2, v3

    .line 92
    const/4 v3, 0x7

    add-double v18, v8, v10

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v20, v14, v12

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    sub-double/2addr v4, v6

    add-double v6, v8, v10

    mul-double/2addr v4, v6

    add-double v6, v14, v12

    mul-double/2addr v4, v6

    sub-double v4, v16, v4

    aput-wide v4, v2, v3

    .line 96
    return-object v2
.end method
