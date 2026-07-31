.class public Lcom/jabistudio/androidjhlabs/filter/Histogram;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BLUE:I = 0x2

.field public static final GRAY:I = 0x3

.field public static final GREEN:I = 0x1

.field public static final RED:I


# instance fields
.field protected histogram:[[I

.field protected isGray:Z

.field protected maxFrequency:[I

.field protected maxValue:[I

.field protected mean:[F

.field protected minFrequency:[I

.field protected minValue:[I

.field protected numSamples:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    .line 39
    check-cast v0, [[I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->isGray:Z

    .line 42
    iput-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minValue:[I

    .line 43
    iput-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxValue:[I

    .line 44
    iput-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minFrequency:[I

    .line 45
    iput-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxFrequency:[I

    .line 46
    iput-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->mean:[F

    .line 47
    return-void
.end method

.method public constructor <init>([IIIII)V
    .locals 8

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x3

    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minValue:[I

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxValue:[I

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minFrequency:[I

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxFrequency:[I

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->mean:[F

    .line 57
    mul-int v0, p2, p3

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->isGray:Z

    .line 61
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, p3, :cond_1

    .line 62
    mul-int v0, v3, p5

    add-int v1, p4, v0

    .line 63
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_0

    .line 64
    add-int/lit8 v2, v1, 0x1

    aget v1, p1, v1

    .line 65
    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 66
    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 67
    and-int/lit16 v1, v1, 0xff

    .line 68
    iget-object v6, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aget v7, v6, v4

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v4

    .line 69
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    const/4 v6, 0x1

    aget-object v4, v4, v6

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 70
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget v5, v4, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    .line 63
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x100

    if-ge v0, v1, :cond_3

    .line 75
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v1, v1, v0

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aget v2, v2, v0

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget v1, v1, v0

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    const/4 v3, 0x2

    aget-object v2, v2, v3

    aget v2, v2, v0

    if-eq v1, v2, :cond_6

    .line 76
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->isGray:Z

    .line 81
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/4 v0, 0x3

    if-ge v1, v0, :cond_a

    .line 82
    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x100

    if-ge v0, v2, :cond_4

    .line 83
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-lez v2, :cond_7

    .line 84
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minValue:[I

    aput v0, v2, v1

    .line 89
    :cond_4
    const/16 v0, 0xff

    :goto_5
    if-ltz v0, :cond_5

    .line 90
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-lez v2, :cond_8

    .line 91
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxValue:[I

    aput v0, v2, v1

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minFrequency:[I

    const v2, 0x7fffffff

    aput v2, v0, v1

    .line 97
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxFrequency:[I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 98
    const/4 v0, 0x0

    :goto_6
    const/16 v2, 0x100

    if-ge v0, v2, :cond_9

    .line 99
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minFrequency:[I

    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minFrequency:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v2, v1

    .line 100
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxFrequency:[I

    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxFrequency:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v2, v1

    .line 101
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->mean:[F

    aget v3, v2, v1

    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    mul-int/2addr v4, v0

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v2, v1

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 74
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 82
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 89
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 103
    :cond_9
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->mean:[F

    aget v2, v0, v1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 81
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 105
    :cond_a
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minValue:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minValue:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minValue:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minValue:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxValue:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxValue:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxValue:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxValue:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v1

    .line 107
    return-void
.end method


# virtual methods
.method public getFrequency(I)I
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->isGray:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget v0, v0, p1

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getFrequency(II)I
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0xff

    if-le p2, v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, -0x1

    .line 127
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->histogram:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    goto :goto_0
.end method

.method public getMaxFrequency()I
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->isGray:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxFrequency:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxFrequency(I)I
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 151
    :cond_0
    const/4 v0, -0x1

    .line 152
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxFrequency:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getMaxValue()I
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->isGray:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxValue(I)I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->maxValue:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMeanValue()F
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->isGray:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->mean:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 179
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getMeanValue(I)F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->mean:[F

    aget v0, v0, p1

    .line 185
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getMinFrequency()I
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->isGray:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minFrequency:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinFrequency(I)I
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 138
    :cond_0
    const/4 v0, -0x1

    .line 139
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minFrequency:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getMinValue()I
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->isGray:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinValue(I)I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->minValue:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNumSamples()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->numSamples:I

    return v0
.end method

.method public isGray()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/Histogram;->isGray:Z

    return v0
.end method
