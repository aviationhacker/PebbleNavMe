.class public LCatalano/Math/Wavelets/Haar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Math/Wavelets/IWavelet;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x2

    iput v0, p0, LCatalano/Math/Wavelets/Haar;->a:I

    .line 44
    iput p1, p0, LCatalano/Math/Wavelets/Haar;->a:I

    .line 45
    return-void
.end method


# virtual methods
.method public Backward([D)V
    .locals 14

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 98
    array-length v1, p1

    new-array v2, v1, [D

    .line 99
    array-length v1, p1

    shr-int/lit8 v3, v1, 0x1

    move v1, v0

    .line 101
    :goto_0
    if-ge v1, v3, :cond_0

    .line 102
    shl-int/lit8 v4, v1, 0x1

    .line 103
    aget-wide v6, p1, v1

    mul-double/2addr v6, v12

    add-int v5, v1, v3

    aget-wide v8, p1, v5

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    div-double/2addr v6, v12

    aput-wide v6, v2, v4

    .line 104
    add-int/lit8 v4, v4, 0x1

    aget-wide v6, p1, v1

    mul-double/2addr v6, v12

    add-int v5, v1, v3

    aget-wide v8, p1, v5

    const-wide/high16 v10, -0x4020000000000000L    # -0.5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    div-double/2addr v6, v12

    aput-wide v6, v2, v4

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 108
    aget-wide v4, v2, v0

    aput-wide v4, p1, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_1
    return-void
.end method

.method public Backward([[D)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 113
    array-length v4, p1

    .line 114
    aget-object v0, p1, v1

    array-length v5, v0

    .line 116
    new-array v6, v5, [D

    .line 117
    new-array v7, v4, [D

    move v0, v1

    .line 119
    :goto_0
    iget v2, p0, LCatalano/Math/Wavelets/Haar;->a:I

    if-ge v0, v2, :cond_6

    move v3, v1

    .line 120
    :goto_1
    if-ge v3, v5, :cond_2

    move v2, v1

    .line 121
    :goto_2
    array-length v8, v6

    if-ge v2, v8, :cond_0

    .line 122
    aget-object v8, p1, v2

    aget-wide v8, v8, v3

    aput-wide v8, v7, v2

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 124
    :cond_0
    invoke-virtual {p0, v7}, LCatalano/Math/Wavelets/Haar;->Backward([D)V

    move v2, v1

    .line 126
    :goto_3
    array-length v8, v7

    if-ge v2, v8, :cond_1

    .line 127
    aget-object v8, p1, v2

    aget-wide v10, v7, v2

    aput-wide v10, v8, v3

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 120
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 130
    :goto_4
    if-ge v3, v4, :cond_5

    move v2, v1

    .line 131
    :goto_5
    array-length v8, v6

    if-ge v2, v8, :cond_3

    .line 132
    aget-object v8, p1, v3

    aget-wide v8, v8, v2

    aput-wide v8, v6, v2

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 134
    :cond_3
    invoke-virtual {p0, v6}, LCatalano/Math/Wavelets/Haar;->Backward([D)V

    move v2, v1

    .line 136
    :goto_6
    array-length v8, v6

    if-ge v2, v8, :cond_4

    .line 137
    aget-object v8, p1, v3

    aget-wide v10, v6, v2

    aput-wide v10, v8, v2

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 130
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 119
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_6
    return-void
.end method

.method public Forward([D)V
    .locals 14

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 49
    array-length v1, p1

    new-array v2, v1, [D

    .line 50
    array-length v1, p1

    shr-int/lit8 v3, v1, 0x1

    move v1, v0

    .line 52
    :goto_0
    if-ge v1, v3, :cond_0

    .line 53
    shl-int/lit8 v4, v1, 0x1

    .line 54
    aget-wide v6, p1, v4

    mul-double/2addr v6, v12

    add-int/lit8 v5, v4, 0x1

    aget-wide v8, p1, v5

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    aput-wide v6, v2, v1

    .line 55
    add-int v5, v1, v3

    aget-wide v6, p1, v4

    mul-double/2addr v6, v12

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, p1, v4

    const-wide/high16 v10, -0x4020000000000000L    # -0.5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v2, v5

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 59
    aget-wide v4, v2, v0

    aput-wide v4, p1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_1
    return-void
.end method

.method public Forward([[D)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 64
    array-length v4, p1

    .line 65
    aget-object v0, p1, v1

    array-length v5, v0

    .line 67
    new-array v6, v5, [D

    .line 68
    new-array v7, v4, [D

    move v0, v1

    .line 70
    :goto_0
    iget v2, p0, LCatalano/Math/Wavelets/Haar;->a:I

    if-ge v0, v2, :cond_6

    move v3, v1

    .line 72
    :goto_1
    if-ge v3, v4, :cond_2

    move v2, v1

    .line 74
    :goto_2
    array-length v8, v6

    if-ge v2, v8, :cond_0

    .line 75
    aget-object v8, p1, v3

    aget-wide v8, v8, v2

    aput-wide v8, v6, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 77
    :cond_0
    invoke-virtual {p0, v6}, LCatalano/Math/Wavelets/Haar;->Forward([D)V

    move v2, v1

    .line 79
    :goto_3
    array-length v8, v6

    if-ge v2, v8, :cond_1

    .line 80
    aget-object v8, p1, v3

    aget-wide v10, v6, v2

    aput-wide v10, v8, v2

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 72
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 83
    :goto_4
    if-ge v3, v5, :cond_5

    move v2, v1

    .line 85
    :goto_5
    array-length v8, v7

    if-ge v2, v8, :cond_3

    .line 86
    aget-object v8, p1, v2

    aget-wide v8, v8, v3

    aput-wide v8, v7, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 88
    :cond_3
    invoke-virtual {p0, v7}, LCatalano/Math/Wavelets/Haar;->Forward([D)V

    move v2, v1

    .line 90
    :goto_6
    array-length v8, v7

    if-ge v2, v8, :cond_4

    .line 91
    aget-object v8, p1, v2

    aget-wide v10, v7, v2

    aput-wide v10, v8, v3

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 83
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 70
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_6
    return-void
.end method
