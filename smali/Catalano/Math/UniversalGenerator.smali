.class public LCatalano/Math/UniversalGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Math/RandomNumberGenerator;


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:[D

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const v0, 0x33b49b1

    invoke-direct {p0, v0}, LCatalano/Math/UniversalGenerator;->a(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const v0, 0x35a4e8db

    rem-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-direct {p0, v0}, LCatalano/Math/UniversalGenerator;->a(I)V

    .line 68
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-wide/32 v0, 0x35a4e8db

    rem-long v0, p1, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-direct {p0, v0}, LCatalano/Math/UniversalGenerator;->a(I)V

    .line 75
    return-void
.end method

.method private a(I)V
    .locals 18

    .prologue
    .line 81
    const/16 v2, 0x61

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, LCatalano/Math/UniversalGenerator;->d:[D

    .line 83
    move/from16 v0, p1

    div-int/lit16 v3, v0, 0x7582

    .line 84
    move/from16 v0, p1

    rem-int/lit16 v2, v0, 0x7582

    .line 89
    if-ltz v3, :cond_0

    const/16 v4, 0x7a60

    if-gt v3, v4, :cond_0

    if-ltz v2, :cond_0

    const/16 v4, 0x7581

    if-le v2, v4, :cond_1

    .line 90
    :cond_0
    rem-int/lit16 v3, v3, 0x7a61

    .line 91
    rem-int/lit16 v2, v2, 0x7582

    .line 94
    :cond_1
    div-int/lit16 v4, v3, 0xb1

    rem-int/lit16 v4, v4, 0xb1

    add-int/lit8 v10, v4, 0x2

    .line 95
    rem-int/lit16 v3, v3, 0xb1

    add-int/lit8 v9, v3, 0x2

    .line 96
    div-int/lit16 v3, v2, 0xa9

    rem-int/lit16 v3, v3, 0xb2

    add-int/lit8 v8, v3, 0x1

    .line 97
    rem-int/lit16 v3, v2, 0xa9

    .line 101
    const/4 v2, 0x0

    move v11, v2

    :goto_0
    const/16 v2, 0x61

    if-ge v11, v2, :cond_4

    .line 102
    const-wide/16 v6, 0x0

    .line 103
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 104
    const/4 v2, 0x0

    move v14, v2

    move-wide v15, v4

    move v4, v14

    move v5, v3

    move-wide v2, v6

    move-wide v6, v15

    move/from16 v17, v9

    move v9, v10

    move/from16 v10, v17

    :goto_1
    const/16 v12, 0x18

    if-ge v4, v12, :cond_3

    .line 105
    mul-int/2addr v9, v10

    rem-int/lit16 v9, v9, 0xb3

    mul-int/2addr v9, v8

    rem-int/lit16 v9, v9, 0xb3

    .line 109
    mul-int/lit8 v5, v5, 0x35

    add-int/lit8 v5, v5, 0x1

    rem-int/lit16 v5, v5, 0xa9

    .line 110
    mul-int v12, v5, v9

    rem-int/lit8 v12, v12, 0x40

    const/16 v13, 0x20

    if-lt v12, v13, :cond_2

    .line 111
    add-double/2addr v2, v6

    .line 113
    :cond_2
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v12

    .line 104
    add-int/lit8 v4, v4, 0x1

    move v14, v9

    move v9, v10

    move v10, v8

    move v8, v14

    goto :goto_1

    .line 115
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Math/UniversalGenerator;->d:[D

    aput-wide v2, v4, v11

    .line 101
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v3, v5

    move v14, v10

    move v10, v9

    move v9, v14

    goto :goto_0

    .line 118
    :cond_4
    const-wide v2, 0x3f961f1000000000L    # 0.021602869033813477

    move-object/from16 v0, p0

    iput-wide v2, v0, LCatalano/Math/UniversalGenerator;->a:D

    .line 119
    const-wide v2, 0x3fdd32ec40000000L    # 0.45623308420181274

    move-object/from16 v0, p0

    iput-wide v2, v0, LCatalano/Math/UniversalGenerator;->b:D

    .line 120
    const-wide v2, 0x3fefffffa0000000L    # 0.9999998211860657

    move-object/from16 v0, p0

    iput-wide v2, v0, LCatalano/Math/UniversalGenerator;->c:D

    .line 121
    const/16 v2, 0x60

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Math/UniversalGenerator;->e:I

    .line 122
    const/16 v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Math/UniversalGenerator;->f:I

    .line 123
    return-void
.end method


# virtual methods
.method public next(I)I
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, LCatalano/Math/UniversalGenerator;->nextInt()I

    move-result v0

    rsub-int/lit8 v1, p1, 0x20

    ushr-int/2addr v0, v1

    return v0
.end method

.method public nextDouble()D
    .locals 10

    .prologue
    const/16 v4, 0x60

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    .line 129
    iget-object v0, p0, LCatalano/Math/UniversalGenerator;->d:[D

    iget v1, p0, LCatalano/Math/UniversalGenerator;->e:I

    aget-wide v0, v0, v1

    iget-object v2, p0, LCatalano/Math/UniversalGenerator;->d:[D

    iget v3, p0, LCatalano/Math/UniversalGenerator;->f:I

    aget-wide v2, v2, v3

    sub-double/2addr v0, v2

    .line 130
    cmpg-double v2, v0, v6

    if-gez v2, :cond_0

    .line 131
    add-double/2addr v0, v8

    .line 134
    :cond_0
    iget-object v2, p0, LCatalano/Math/UniversalGenerator;->d:[D

    iget v3, p0, LCatalano/Math/UniversalGenerator;->e:I

    aput-wide v0, v2, v3

    .line 135
    iget v2, p0, LCatalano/Math/UniversalGenerator;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LCatalano/Math/UniversalGenerator;->e:I

    if-gez v2, :cond_1

    .line 136
    iput v4, p0, LCatalano/Math/UniversalGenerator;->e:I

    .line 139
    :cond_1
    iget v2, p0, LCatalano/Math/UniversalGenerator;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LCatalano/Math/UniversalGenerator;->f:I

    if-gez v2, :cond_2

    .line 140
    iput v4, p0, LCatalano/Math/UniversalGenerator;->f:I

    .line 143
    :cond_2
    iget-wide v2, p0, LCatalano/Math/UniversalGenerator;->a:D

    iget-wide v4, p0, LCatalano/Math/UniversalGenerator;->b:D

    sub-double/2addr v2, v4

    iput-wide v2, p0, LCatalano/Math/UniversalGenerator;->a:D

    .line 144
    iget-wide v2, p0, LCatalano/Math/UniversalGenerator;->a:D

    cmpg-double v2, v2, v6

    if-gez v2, :cond_3

    .line 145
    iget-wide v2, p0, LCatalano/Math/UniversalGenerator;->a:D

    iget-wide v4, p0, LCatalano/Math/UniversalGenerator;->c:D

    add-double/2addr v2, v4

    iput-wide v2, p0, LCatalano/Math/UniversalGenerator;->a:D

    .line 148
    :cond_3
    iget-wide v2, p0, LCatalano/Math/UniversalGenerator;->a:D

    sub-double/2addr v0, v2

    .line 149
    cmpg-double v2, v0, v6

    if-gez v2, :cond_4

    .line 150
    add-double/2addr v0, v8

    .line 153
    :cond_4
    return-wide v0
.end method

.method public nextDoubles([D)V
    .locals 13

    .prologue
    const/16 v12, 0x60

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    .line 158
    array-length v3, p1

    .line 162
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_5

    .line 163
    iget-object v0, p0, LCatalano/Math/UniversalGenerator;->d:[D

    iget v1, p0, LCatalano/Math/UniversalGenerator;->e:I

    aget-wide v0, v0, v1

    iget-object v4, p0, LCatalano/Math/UniversalGenerator;->d:[D

    iget v5, p0, LCatalano/Math/UniversalGenerator;->f:I

    aget-wide v4, v4, v5

    sub-double/2addr v0, v4

    .line 164
    cmpg-double v4, v0, v8

    if-gez v4, :cond_0

    .line 165
    add-double/2addr v0, v10

    .line 167
    :cond_0
    iget-object v4, p0, LCatalano/Math/UniversalGenerator;->d:[D

    iget v5, p0, LCatalano/Math/UniversalGenerator;->e:I

    aput-wide v0, v4, v5

    .line 168
    iget v4, p0, LCatalano/Math/UniversalGenerator;->e:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, LCatalano/Math/UniversalGenerator;->e:I

    if-gez v4, :cond_1

    .line 169
    iput v12, p0, LCatalano/Math/UniversalGenerator;->e:I

    .line 171
    :cond_1
    iget v4, p0, LCatalano/Math/UniversalGenerator;->f:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, LCatalano/Math/UniversalGenerator;->f:I

    if-gez v4, :cond_2

    .line 172
    iput v12, p0, LCatalano/Math/UniversalGenerator;->f:I

    .line 174
    :cond_2
    iget-wide v4, p0, LCatalano/Math/UniversalGenerator;->a:D

    iget-wide v6, p0, LCatalano/Math/UniversalGenerator;->b:D

    sub-double/2addr v4, v6

    iput-wide v4, p0, LCatalano/Math/UniversalGenerator;->a:D

    .line 175
    iget-wide v4, p0, LCatalano/Math/UniversalGenerator;->a:D

    cmpg-double v4, v4, v8

    if-gez v4, :cond_3

    .line 176
    iget-wide v4, p0, LCatalano/Math/UniversalGenerator;->a:D

    iget-wide v6, p0, LCatalano/Math/UniversalGenerator;->c:D

    add-double/2addr v4, v6

    iput-wide v4, p0, LCatalano/Math/UniversalGenerator;->a:D

    .line 178
    :cond_3
    iget-wide v4, p0, LCatalano/Math/UniversalGenerator;->a:D

    sub-double/2addr v0, v4

    .line 179
    cmpg-double v4, v0, v8

    if-gez v4, :cond_4

    .line 180
    add-double/2addr v0, v10

    .line 182
    :cond_4
    aput-wide v0, p1, v2

    .line 162
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 184
    :cond_5
    return-void
.end method

.method public nextInt()I
    .locals 6

    .prologue
    .line 193
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, LCatalano/Math/UniversalGenerator;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public nextInt(I)I
    .locals 5

    .prologue
    const/16 v4, 0x1f

    .line 198
    if-gtz p1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    neg-int v0, p1

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    .line 204
    int-to-long v0, p1

    invoke-virtual {p0, v4}, LCatalano/Math/UniversalGenerator;->next(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    shr-long/2addr v0, v4

    long-to-int v0, v0

    .line 213
    :goto_0
    return v0

    .line 209
    :cond_1
    invoke-virtual {p0, v4}, LCatalano/Math/UniversalGenerator;->next(I)I

    move-result v1

    .line 210
    rem-int v0, v1, p1

    .line 211
    sub-int/2addr v1, v0

    add-int/lit8 v2, p1, -0x1

    add-int/2addr v1, v2

    if-ltz v1, :cond_1

    goto :goto_0
.end method

.method public nextLong()J
    .locals 6

    .prologue
    .line 218
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, LCatalano/Math/UniversalGenerator;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method
