.class public LCatalano/Math/Random;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LCatalano/Math/RandomNumberGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, LCatalano/Math/UniversalGenerator;

    invoke-direct {v0}, LCatalano/Math/UniversalGenerator;-><init>()V

    invoke-direct {p0, v0}, LCatalano/Math/Random;-><init>(LCatalano/Math/RandomNumberGenerator;)V

    .line 42
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 48
    new-instance v0, LCatalano/Math/UniversalGenerator;

    invoke-direct {v0, p1, p2}, LCatalano/Math/UniversalGenerator;-><init>(J)V

    invoke-direct {p0, v0}, LCatalano/Math/Random;-><init>(LCatalano/Math/RandomNumberGenerator;)V

    .line 49
    return-void
.end method

.method public constructor <init>(LCatalano/Math/RandomNumberGenerator;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, LCatalano/Math/Random;->a:LCatalano/Math/RandomNumberGenerator;

    .line 56
    return-void
.end method


# virtual methods
.method public nextDouble()D
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, LCatalano/Math/Random;->a:LCatalano/Math/RandomNumberGenerator;

    invoke-interface {v0}, LCatalano/Math/RandomNumberGenerator;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextDouble(DD)D
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 81
    cmpg-double v0, p1, v2

    if-gez v0, :cond_1

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LCatalano/Math/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 83
    neg-double v0, p1

    invoke-virtual {p0, v2, v3, v0, v1}, LCatalano/Math/Random;->nextDouble(DD)D

    move-result-wide v0

    neg-double v0, v0

    .line 88
    :goto_0
    return-wide v0

    .line 85
    :cond_0
    invoke-virtual {p0, v2, v3, p3, p4}, LCatalano/Math/Random;->nextDouble(DD)D

    move-result-wide v0

    goto :goto_0

    .line 88
    :cond_1
    sub-double v0, p3, p1

    invoke-virtual {p0}, LCatalano/Math/Random;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    goto :goto_0
.end method

.method public nextDoubles([D)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, LCatalano/Math/Random;->a:LCatalano/Math/RandomNumberGenerator;

    invoke-interface {v0, p1}, LCatalano/Math/RandomNumberGenerator;->nextDoubles([D)V

    .line 72
    return-void
.end method

.method public nextDoubles([DDD)V
    .locals 6

    .prologue
    .line 99
    iget-object v0, p0, LCatalano/Math/Random;->a:LCatalano/Math/RandomNumberGenerator;

    invoke-interface {v0, p1}, LCatalano/Math/RandomNumberGenerator;->nextDoubles([D)V

    .line 101
    sub-double v2, p4, p2

    .line 102
    array-length v1, p1

    .line 103
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 104
    aget-wide v4, p1, v0

    mul-double/2addr v4, v2

    add-double/2addr v4, p2

    aput-wide v4, p1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, LCatalano/Math/Random;->a:LCatalano/Math/RandomNumberGenerator;

    invoke-interface {v0}, LCatalano/Math/RandomNumberGenerator;->nextInt()I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, LCatalano/Math/Random;->a:LCatalano/Math/RandomNumberGenerator;

    invoke-interface {v0, p1}, LCatalano/Math/RandomNumberGenerator;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, LCatalano/Math/Random;->a:LCatalano/Math/RandomNumberGenerator;

    invoke-interface {v0}, LCatalano/Math/RandomNumberGenerator;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public permutate([D)V
    .locals 6

    .prologue
    .line 169
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 170
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, LCatalano/Math/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 171
    aget-wide v2, p1, v0

    .line 172
    aget-wide v4, p1, v1

    aput-wide v4, p1, v0

    .line 173
    aput-wide v2, p1, v1

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public permutate([F)V
    .locals 4

    .prologue
    .line 157
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 158
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, LCatalano/Math/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 159
    aget v2, p1, v0

    .line 160
    aget v3, p1, v1

    aput v3, p1, v0

    .line 161
    aput v2, p1, v1

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public permutate([I)V
    .locals 4

    .prologue
    .line 145
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 146
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, LCatalano/Math/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 147
    aget v2, p1, v0

    .line 148
    aget v3, p1, v1

    aput v3, p1, v0

    .line 149
    aput v2, p1, v1

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method public permutate([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 181
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 182
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, LCatalano/Math/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 183
    aget-object v2, p1, v0

    .line 184
    aget-object v3, p1, v1

    aput-object v3, p1, v0

    .line 185
    aput-object v2, p1, v1

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public permutate(I)[I
    .locals 2

    .prologue
    .line 131
    new-array v1, p1, [I

    .line 132
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 133
    aput v0, v1, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0, v1}, LCatalano/Math/Random;->permutate([I)V

    .line 138
    return-object v1
.end method
