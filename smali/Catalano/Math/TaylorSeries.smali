.class public final LCatalano/Math/TaylorSeries;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Cos(DI)D
    .locals 20

    .prologue
    .line 75
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ge v0, v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 94
    :cond_0
    :goto_0
    return-wide v2

    .line 76
    :cond_1
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 77
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v4, p0, p0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    goto :goto_0

    .line 81
    :cond_2
    mul-double v10, p0, p0

    .line 82
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 83
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 84
    const/4 v3, 0x4

    .line 85
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v12, v10, v8

    sub-double/2addr v4, v12

    .line 86
    const/4 v2, 0x3

    move v14, v2

    move-wide v15, v4

    move v4, v14

    move v5, v3

    move-wide v2, v15

    move-wide/from16 v17, v6

    move-wide v6, v8

    move-wide/from16 v8, v17

    :goto_1
    move/from16 v0, p2

    if-gt v4, v0, :cond_0

    .line 87
    mul-double v12, p0, p0

    mul-double/2addr v12, v10

    .line 88
    add-int/lit8 v10, v5, -0x1

    mul-int/2addr v10, v5

    int-to-double v10, v10

    mul-double/2addr v10, v6

    .line 89
    add-int/lit8 v5, v5, 0x2

    .line 90
    div-double v6, v12, v10

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 91
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v8, v2

    .line 86
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    move-wide v6, v10

    move-wide v10, v12

    goto :goto_1
.end method

.method public static Cosh(DI)D
    .locals 16

    .prologue
    const/4 v2, 0x2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 133
    move/from16 v0, p2

    if-ge v0, v2, :cond_0

    .line 150
    :goto_0
    return-wide p0

    .line 134
    :cond_0
    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 135
    mul-double v2, p0, p0

    div-double/2addr v2, v6

    add-double p0, v10, v2

    goto :goto_0

    .line 139
    :cond_1
    mul-double v8, p0, p0

    .line 141
    const/4 v3, 0x4

    .line 142
    div-double v4, v8, v6

    add-double/2addr v4, v10

    .line 143
    const/4 v2, 0x3

    move v12, v2

    move-wide v13, v4

    move v4, v12

    move v5, v3

    move-wide v2, v13

    :goto_1
    move/from16 v0, p2

    if-gt v4, v0, :cond_2

    .line 144
    mul-double v10, p0, p0

    mul-double/2addr v10, v8

    .line 145
    add-int/lit8 v8, v5, -0x1

    mul-int/2addr v8, v5

    int-to-double v8, v8

    mul-double/2addr v8, v6

    .line 146
    add-int/lit8 v5, v5, 0x2

    .line 147
    div-double v6, v10, v8

    add-double/2addr v6, v2

    .line 143
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    move-wide v6, v8

    move-wide v8, v10

    goto :goto_1

    :cond_2
    move-wide/from16 p0, v2

    .line 150
    goto :goto_0
.end method

.method public static Exp(DI)D
    .locals 12

    .prologue
    const/4 v2, 0x2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 161
    if-ge p2, v2, :cond_1

    add-double/2addr v0, p0

    .line 176
    :cond_0
    :goto_0
    return-wide v0

    .line 162
    :cond_1
    if-ne p2, v2, :cond_2

    .line 163
    add-double/2addr v0, p0

    mul-double v2, p0, p0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_0

    .line 167
    :cond_2
    mul-double v6, p0, p0

    .line 169
    add-double/2addr v0, p0

    div-double v2, v6, v4

    add-double/2addr v2, v0

    .line 170
    const/4 v0, 0x3

    move v10, v0

    move-wide v0, v2

    move v2, v10

    :goto_1
    if-gt v2, p2, :cond_0

    .line 171
    mul-double v8, v6, p0

    .line 172
    int-to-double v6, v2

    mul-double/2addr v6, v4

    .line 173
    div-double v4, v8, v6

    add-double/2addr v4, v0

    .line 170
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    move-wide v4, v6

    move-wide v6, v8

    goto :goto_1
.end method

.method public static Sin(DI)D
    .locals 20

    .prologue
    .line 45
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ge v0, v2, :cond_0

    .line 64
    :goto_0
    return-wide p0

    .line 46
    :cond_0
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 47
    mul-double v2, p0, p0

    mul-double v2, v2, p0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    div-double/2addr v2, v4

    sub-double p0, p0, v2

    goto :goto_0

    .line 51
    :cond_1
    mul-double v2, p0, p0

    mul-double v10, v2, p0

    .line 52
    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    .line 53
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 54
    const/4 v3, 0x5

    .line 55
    div-double v4, v10, v8

    sub-double v4, p0, v4

    .line 56
    const/4 v2, 0x3

    move v14, v2

    move-wide v15, v4

    move v4, v14

    move v5, v3

    move-wide v2, v15

    move-wide/from16 v17, v6

    move-wide v6, v8

    move-wide/from16 v8, v17

    :goto_1
    move/from16 v0, p2

    if-gt v4, v0, :cond_2

    .line 57
    mul-double v12, p0, p0

    mul-double/2addr v12, v10

    .line 58
    add-int/lit8 v10, v5, -0x1

    mul-int/2addr v10, v5

    int-to-double v10, v10

    mul-double/2addr v10, v6

    .line 59
    add-int/lit8 v5, v5, 0x2

    .line 60
    div-double v6, v12, v10

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 61
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v8, v2

    .line 56
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    move-wide v6, v10

    move-wide v10, v12

    goto :goto_1

    :cond_2
    move-wide/from16 p0, v2

    .line 64
    goto :goto_0
.end method

.method public static Sinh(DI)D
    .locals 16

    .prologue
    const/4 v2, 0x2

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    .line 105
    move/from16 v0, p2

    if-ge v0, v2, :cond_0

    .line 122
    :goto_0
    return-wide p0

    .line 106
    :cond_0
    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 107
    mul-double v2, p0, p0

    mul-double v2, v2, p0

    div-double/2addr v2, v6

    add-double p0, p0, v2

    goto :goto_0

    .line 111
    :cond_1
    mul-double v2, p0, p0

    mul-double v8, v2, p0

    .line 113
    const/4 v3, 0x5

    .line 114
    div-double v4, v8, v6

    add-double v4, v4, p0

    .line 115
    const/4 v2, 0x3

    move v12, v2

    move-wide v13, v4

    move v4, v12

    move v5, v3

    move-wide v2, v13

    :goto_1
    move/from16 v0, p2

    if-gt v4, v0, :cond_2

    .line 116
    mul-double v10, p0, p0

    mul-double/2addr v10, v8

    .line 117
    add-int/lit8 v8, v5, -0x1

    mul-int/2addr v8, v5

    int-to-double v8, v8

    mul-double/2addr v8, v6

    .line 118
    add-int/lit8 v5, v5, 0x2

    .line 119
    div-double v6, v10, v8

    add-double/2addr v6, v2

    .line 115
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    move-wide v6, v8

    move-wide v8, v10

    goto :goto_1

    :cond_2
    move-wide/from16 p0, v2

    .line 122
    goto :goto_0
.end method
