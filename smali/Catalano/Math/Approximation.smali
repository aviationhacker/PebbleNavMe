.class public final LCatalano/Math/Approximation;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Highprecision_Exp(D)D
    .locals 18

    .prologue
    .line 87
    const-wide v0, 0x4116260000000000L    # 362880.0

    const-wide v2, 0x4116260000000000L    # 362880.0

    const-wide v4, 0x4106260000000000L    # 181440.0

    const-wide v6, 0x40ed880000000000L    # 60480.0

    const-wide v8, 0x40cd880000000000L    # 15120.0

    const-wide v10, 0x40a7a00000000000L    # 3024.0

    const-wide v12, 0x407f800000000000L    # 504.0

    const-wide/high16 v14, 0x4052000000000000L    # 72.0

    const-wide/high16 v16, 0x4022000000000000L    # 9.0

    add-double v16, v16, p0

    mul-double v16, v16, p0

    add-double v14, v14, v16

    mul-double v14, v14, p0

    add-double/2addr v12, v14

    mul-double v12, v12, p0

    add-double/2addr v10, v12

    mul-double v10, v10, p0

    add-double/2addr v8, v10

    mul-double v8, v8, p0

    add-double/2addr v6, v8

    mul-double v6, v6, p0

    add-double/2addr v4, v6

    mul-double v4, v4, p0

    add-double/2addr v2, v4

    mul-double v2, v2, p0

    add-double/2addr v0, v2

    const-wide v2, 0x3ec71de3a5005c1fL    # 2.75573192E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static Highprecision_Pow(DD)D
    .locals 2

    .prologue
    .line 65
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Highprecision_Sin(D)D
    .locals 12

    .prologue
    const-wide v10, 0x401921fb5474a168L    # 6.28318531

    const-wide v8, 0x3ff45f306c8462a6L    # 1.27323954

    const-wide v2, 0x3fd9f02f62992759L    # 0.405284735

    const-wide/16 v6, 0x0

    const-wide v4, 0x3fcccccccccccccdL    # 0.225

    .line 129
    const-wide v0, -0x3ff6de04ac372b0fL    # -3.14159265

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 130
    add-double/2addr p0, v10

    .line 135
    :cond_0
    :goto_0
    cmpg-double v0, p0, v6

    if-gez v0, :cond_3

    .line 137
    mul-double v0, v8, p0

    mul-double/2addr v2, p0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    .line 139
    cmpg-double v2, v0, v6

    if-gez v2, :cond_2

    .line 140
    neg-double v2, v0

    mul-double/2addr v2, v0

    sub-double/2addr v2, v0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 151
    :goto_1
    return-wide v0

    .line 131
    :cond_1
    const-wide v0, 0x400921fb53c8d4f1L    # 3.14159265

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    .line 132
    sub-double/2addr p0, v10

    goto :goto_0

    .line 142
    :cond_2
    mul-double v2, v0, v0

    sub-double/2addr v2, v0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_1

    .line 146
    :cond_3
    mul-double v0, v8, p0

    mul-double/2addr v2, p0

    mul-double/2addr v2, p0

    sub-double/2addr v0, v2

    .line 148
    cmpg-double v2, v0, v6

    if-gez v2, :cond_4

    .line 149
    neg-double v2, v0

    mul-double/2addr v2, v0

    sub-double/2addr v2, v0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_1

    .line 151
    :cond_4
    mul-double v2, v0, v0

    sub-double/2addr v2, v0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_1
.end method

.method public static Lowprecision_Log(D)D
    .locals 8

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 98
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    sub-double v2, p0, v4

    mul-double/2addr v0, v2

    add-double v2, p0, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static Lowprecision_Pow(DD)D
    .locals 2

    .prologue
    .line 77
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    invoke-static {v0, v1}, LCatalano/Math/Approximation;->Highprecision_Exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Lowprecision_Sin(D)D
    .locals 8

    .prologue
    const-wide v6, 0x401921fb5474a168L    # 6.28318531

    const-wide v4, 0x3ff45f306c8462a6L    # 1.27323954

    const-wide v2, 0x3fd9f02f62992759L    # 0.405284735

    .line 109
    const-wide v0, -0x3ff6de04ac372b0fL    # -3.14159265

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 110
    add-double/2addr p0, v6

    .line 115
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    .line 116
    mul-double v0, v4, p0

    mul-double/2addr v2, p0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    .line 118
    :goto_1
    return-wide v0

    .line 111
    :cond_1
    const-wide v0, 0x400921fb53c8d4f1L    # 3.14159265

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    .line 112
    sub-double/2addr p0, v6

    goto :goto_0

    .line 118
    :cond_2
    mul-double v0, v4, p0

    mul-double/2addr v2, p0

    mul-double/2addr v2, p0

    sub-double/2addr v0, v2

    goto :goto_1
.end method

.method public static abs(I)I
    .locals 2

    .prologue
    .line 42
    ushr-int/lit8 v0, p0, 0x1f

    .line 43
    xor-int/lit8 v1, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    xor-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static abs(J)J
    .locals 6

    .prologue
    .line 52
    const/16 v0, 0x3f

    ushr-long v0, p0, v0

    .line 53
    const-wide/16 v2, -0x1

    xor-long/2addr v2, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    xor-long/2addr v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static atan2(DD)D
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 164
    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 165
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v0

    .line 166
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 168
    cmpl-double v6, p2, v8

    if-ltz v6, :cond_0

    .line 169
    sub-double v2, p2, v4

    add-double/2addr v4, p2

    div-double/2addr v2, v4

    .line 170
    mul-double/2addr v2, v0

    sub-double/2addr v0, v2

    .line 175
    :goto_0
    cmpg-double v2, p0, v8

    if-gez v2, :cond_1

    neg-double v0, v0

    :goto_1
    return-wide v0

    .line 172
    :cond_0
    add-double v6, p2, v4

    sub-double/2addr v4, p2

    div-double v4, v6, v4

    .line 173
    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    goto :goto_0

    .line 175
    :cond_1
    const-wide v2, 0x3faeb851eb851eb8L    # 0.06

    sub-double/2addr v0, v2

    goto :goto_1
.end method
