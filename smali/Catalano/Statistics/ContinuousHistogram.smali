.class public LCatalano/Statistics/ContinuousHistogram;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:LCatalano/Core/FloatRange;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:I


# direct methods
.method public constructor <init>([ILCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, LCatalano/Statistics/ContinuousHistogram;->a:[I

    .line 99
    iput-object p2, p0, LCatalano/Statistics/ContinuousHistogram;->b:LCatalano/Core/FloatRange;

    .line 100
    invoke-virtual {p0}, LCatalano/Statistics/ContinuousHistogram;->Update()V

    .line 101
    return-void
.end method


# virtual methods
.method public Update()V
    .locals 12

    .prologue
    .line 137
    iget-object v0, p0, LCatalano/Statistics/ContinuousHistogram;->a:[I

    array-length v3, v0

    .line 138
    add-int/lit8 v4, v3, -0x1

    .line 140
    iget-object v0, p0, LCatalano/Statistics/ContinuousHistogram;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v0}, LCatalano/Core/FloatRange;->length()F

    move-result v5

    .line 141
    iget-object v0, p0, LCatalano/Statistics/ContinuousHistogram;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v0}, LCatalano/Core/FloatRange;->getMin()F

    move-result v6

    .line 143
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Statistics/ContinuousHistogram;->g:F

    .line 144
    int-to-float v0, v3

    iput v0, p0, LCatalano/Statistics/ContinuousHistogram;->f:F

    .line 145
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Statistics/ContinuousHistogram;->c:F

    .line 146
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Statistics/ContinuousHistogram;->d:F

    .line 147
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Statistics/ContinuousHistogram;->h:I

    .line 149
    const-wide/16 v0, 0x0

    .line 152
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 154
    iget-object v7, p0, LCatalano/Statistics/ContinuousHistogram;->a:[I

    aget v7, v7, v2

    .line 156
    if-eqz v7, :cond_1

    .line 159
    int-to-float v8, v2

    iget v9, p0, LCatalano/Statistics/ContinuousHistogram;->g:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 160
    int-to-float v8, v2

    iput v8, p0, LCatalano/Statistics/ContinuousHistogram;->g:F

    .line 162
    :cond_0
    int-to-float v8, v2

    iget v9, p0, LCatalano/Statistics/ContinuousHistogram;->f:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 163
    int-to-float v8, v2

    iput v8, p0, LCatalano/Statistics/ContinuousHistogram;->f:F

    .line 167
    :cond_1
    iget v8, p0, LCatalano/Statistics/ContinuousHistogram;->h:I

    add-int/2addr v8, v7

    iput v8, p0, LCatalano/Statistics/ContinuousHistogram;->h:I

    .line 169
    int-to-double v8, v2

    int-to-double v10, v4

    div-double/2addr v8, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    float-to-double v10, v6

    add-double/2addr v8, v10

    int-to-double v10, v7

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_2
    iget v2, p0, LCatalano/Statistics/ContinuousHistogram;->h:I

    if-eqz v2, :cond_3

    .line 174
    iget v2, p0, LCatalano/Statistics/ContinuousHistogram;->h:I

    int-to-double v8, v2

    div-double/2addr v0, v8

    double-to-float v0, v0

    iput v0, p0, LCatalano/Statistics/ContinuousHistogram;->c:F

    .line 177
    :cond_3
    iget v0, p0, LCatalano/Statistics/ContinuousHistogram;->f:F

    int-to-float v1, v4

    div-float/2addr v0, v1

    mul-float/2addr v0, v5

    add-float/2addr v0, v6

    iput v0, p0, LCatalano/Statistics/ContinuousHistogram;->f:F

    .line 178
    iget v0, p0, LCatalano/Statistics/ContinuousHistogram;->g:F

    int-to-float v1, v4

    div-float/2addr v0, v1

    mul-float/2addr v0, v5

    add-float/2addr v0, v6

    iput v0, p0, LCatalano/Statistics/ContinuousHistogram;->g:F

    .line 181
    const-wide/16 v0, 0x0

    .line 184
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 186
    iget-object v7, p0, LCatalano/Statistics/ContinuousHistogram;->a:[I

    aget v7, v7, v2

    .line 187
    int-to-double v8, v2

    int-to-double v10, v4

    div-double/2addr v8, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    float-to-double v10, v6

    add-double/2addr v8, v10

    iget v10, p0, LCatalano/Statistics/ContinuousHistogram;->c:F

    float-to-double v10, v10

    sub-double/2addr v8, v10

    .line 188
    mul-double/2addr v8, v8

    int-to-double v10, v7

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    :cond_4
    iget v2, p0, LCatalano/Statistics/ContinuousHistogram;->h:I

    if-eqz v2, :cond_5

    .line 193
    iget v2, p0, LCatalano/Statistics/ContinuousHistogram;->h:I

    int-to-double v8, v2

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, LCatalano/Statistics/ContinuousHistogram;->d:F

    .line 197
    :cond_5
    iget v0, p0, LCatalano/Statistics/ContinuousHistogram;->h:I

    div-int/lit8 v2, v0, 0x2

    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v0, v3, :cond_6

    .line 201
    iget-object v7, p0, LCatalano/Statistics/ContinuousHistogram;->a:[I

    aget v7, v7, v0

    add-int/2addr v1, v7

    .line 202
    if-lt v1, v2, :cond_7

    .line 205
    :cond_6
    int-to-float v0, v0

    int-to-float v1, v4

    div-float/2addr v0, v1

    mul-float/2addr v0, v5

    add-float/2addr v0, v6

    iput v0, p0, LCatalano/Statistics/ContinuousHistogram;->e:F

    .line 206
    return-void

    .line 199
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getMax()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, LCatalano/Statistics/ContinuousHistogram;->g:F

    return v0
.end method

.method public getMean()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, LCatalano/Statistics/ContinuousHistogram;->c:F

    return v0
.end method

.method public getMedian()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, LCatalano/Statistics/ContinuousHistogram;->e:F

    return v0
.end method

.method public getMin()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, LCatalano/Statistics/ContinuousHistogram;->f:F

    return v0
.end method

.method public getRange(F)LCatalano/Core/FloatRange;
    .locals 6

    .prologue
    .line 110
    iget v0, p0, LCatalano/Statistics/ContinuousHistogram;->h:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, p1

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 111
    iget-object v0, p0, LCatalano/Statistics/ContinuousHistogram;->a:[I

    array-length v5, v0

    .line 112
    add-int/lit8 v2, v5, -0x1

    .line 115
    const/4 v1, 0x0

    iget v0, p0, LCatalano/Statistics/ContinuousHistogram;->h:I

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_0

    .line 117
    iget-object v1, p0, LCatalano/Statistics/ContinuousHistogram;->a:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    .line 118
    if-ge v0, v4, :cond_2

    .line 122
    :cond_0
    iget v0, p0, LCatalano/Statistics/ContinuousHistogram;->h:I

    move v1, v2

    :goto_1
    if-ltz v1, :cond_1

    .line 124
    iget-object v5, p0, LCatalano/Statistics/ContinuousHistogram;->a:[I

    aget v5, v5, v1

    sub-int/2addr v0, v5

    .line 125
    if-ge v0, v4, :cond_3

    .line 129
    :cond_1
    new-instance v0, LCatalano/Core/FloatRange;

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget-object v4, p0, LCatalano/Statistics/ContinuousHistogram;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v4}, LCatalano/Core/FloatRange;->length()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, LCatalano/Statistics/ContinuousHistogram;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v4}, LCatalano/Core/FloatRange;->getMin()F

    move-result v4

    add-float/2addr v3, v4

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, LCatalano/Statistics/ContinuousHistogram;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v2}, LCatalano/Core/FloatRange;->length()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, LCatalano/Statistics/ContinuousHistogram;->b:LCatalano/Core/FloatRange;

    invoke-virtual {v2}, LCatalano/Core/FloatRange;->getMin()F

    move-result v2

    add-float/2addr v1, v2

    invoke-direct {v0, v3, v1}, LCatalano/Core/FloatRange;-><init>(FF)V

    return-object v0

    .line 115
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 122
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getStdDev()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, LCatalano/Statistics/ContinuousHistogram;->d:F

    return v0
.end method

.method public getValues()[I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, LCatalano/Statistics/ContinuousHistogram;->a:[I

    return-object v0
.end method
