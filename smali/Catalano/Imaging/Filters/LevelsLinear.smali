.class public LCatalano/Imaging/Filters/LevelsLinear;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Core/IntRange;

.field private b:LCatalano/Core/IntRange;

.field private c:LCatalano/Core/IntRange;

.field private d:LCatalano/Core/IntRange;

.field private e:LCatalano/Core/IntRange;

.field private f:LCatalano/Core/IntRange;

.field private g:LCatalano/Core/IntRange;

.field private h:LCatalano/Core/IntRange;

.field private i:[I

.field private j:[I

.field private k:[I

.field private l:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, LCatalano/Core/IntRange;

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->a:LCatalano/Core/IntRange;

    .line 43
    new-instance v0, LCatalano/Core/IntRange;

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->b:LCatalano/Core/IntRange;

    .line 44
    new-instance v0, LCatalano/Core/IntRange;

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->c:LCatalano/Core/IntRange;

    .line 45
    new-instance v0, LCatalano/Core/IntRange;

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->d:LCatalano/Core/IntRange;

    .line 47
    new-instance v0, LCatalano/Core/IntRange;

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->e:LCatalano/Core/IntRange;

    .line 48
    new-instance v0, LCatalano/Core/IntRange;

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->f:LCatalano/Core/IntRange;

    .line 49
    new-instance v0, LCatalano/Core/IntRange;

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->g:LCatalano/Core/IntRange;

    .line 50
    new-instance v0, LCatalano/Core/IntRange;

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->h:LCatalano/Core/IntRange;

    .line 52
    new-array v0, v3, [I

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->i:[I

    .line 53
    new-array v0, v3, [I

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->j:[I

    .line 54
    new-array v0, v3, [I

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->k:[I

    .line 55
    new-array v0, v3, [I

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->l:[I

    .line 60
    return-void
.end method

.method private a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 263
    .line 265
    invoke-virtual {p1}, LCatalano/Core/IntRange;->getMax()I

    move-result v2

    invoke-virtual {p1}, LCatalano/Core/IntRange;->getMin()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 267
    invoke-virtual {p2}, LCatalano/Core/IntRange;->getMax()I

    move-result v0

    invoke-virtual {p2}, LCatalano/Core/IntRange;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-virtual {p1}, LCatalano/Core/IntRange;->getMax()I

    move-result v2

    invoke-virtual {p1}, LCatalano/Core/IntRange;->getMin()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double v2, v0, v2

    .line 268
    invoke-virtual {p2}, LCatalano/Core/IntRange;->getMin()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, LCatalano/Core/IntRange;->getMin()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    .line 271
    :goto_0
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/16 v4, 0x100

    if-ge v5, v4, :cond_2

    .line 275
    invoke-virtual {p1}, LCatalano/Core/IntRange;->getMax()I

    move-result v4

    if-lt v5, v4, :cond_0

    .line 276
    invoke-virtual {p2}, LCatalano/Core/IntRange;->getMax()I

    move-result v4

    .line 282
    :goto_2
    aput v4, p3, v5

    .line 271
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 277
    :cond_0
    invoke-virtual {p1}, LCatalano/Core/IntRange;->getMin()I

    move-result v4

    if-gt v5, v4, :cond_1

    .line 278
    invoke-virtual {p2}, LCatalano/Core/IntRange;->getMin()I

    move-result v4

    goto :goto_2

    .line 280
    :cond_1
    int-to-double v6, v5

    mul-double/2addr v6, v2

    add-double/2addr v6, v0

    double-to-int v4, v6

    goto :goto_2

    .line 284
    :cond_2
    return-void

    :cond_3
    move-wide v2, v0

    goto :goto_0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v1

    .line 231
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, LCatalano/Imaging/Filters/LevelsLinear;->d:LCatalano/Core/IntRange;

    iget-object v3, p0, LCatalano/Imaging/Filters/LevelsLinear;->h:LCatalano/Core/IntRange;

    iget-object v4, p0, LCatalano/Imaging/Filters/LevelsLinear;->l:[I

    invoke-direct {p0, v2, v3, v4}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 235
    :goto_0
    if-ge v0, v1, :cond_1

    .line 236
    iget-object v2, p0, LCatalano/Imaging/Filters/LevelsLinear;->l:[I

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p1, v0, v2}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    iget-object v2, p0, LCatalano/Imaging/Filters/LevelsLinear;->a:LCatalano/Core/IntRange;

    iget-object v3, p0, LCatalano/Imaging/Filters/LevelsLinear;->e:LCatalano/Core/IntRange;

    iget-object v4, p0, LCatalano/Imaging/Filters/LevelsLinear;->i:[I

    invoke-direct {p0, v2, v3, v4}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 242
    iget-object v2, p0, LCatalano/Imaging/Filters/LevelsLinear;->b:LCatalano/Core/IntRange;

    iget-object v3, p0, LCatalano/Imaging/Filters/LevelsLinear;->f:LCatalano/Core/IntRange;

    iget-object v4, p0, LCatalano/Imaging/Filters/LevelsLinear;->j:[I

    invoke-direct {p0, v2, v3, v4}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 243
    iget-object v2, p0, LCatalano/Imaging/Filters/LevelsLinear;->c:LCatalano/Core/IntRange;

    iget-object v3, p0, LCatalano/Imaging/Filters/LevelsLinear;->g:LCatalano/Core/IntRange;

    iget-object v4, p0, LCatalano/Imaging/Filters/LevelsLinear;->k:[I

    invoke-direct {p0, v2, v3, v4}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 245
    :goto_1
    if-ge v0, v1, :cond_1

    .line 246
    iget-object v2, p0, LCatalano/Imaging/Filters/LevelsLinear;->i:[I

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    aget v2, v2, v3

    .line 247
    iget-object v3, p0, LCatalano/Imaging/Filters/LevelsLinear;->j:[I

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    aget v3, v3, v4

    .line 248
    iget-object v4, p0, LCatalano/Imaging/Filters/LevelsLinear;->k:[I

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    aget v4, v4, v5

    .line 250
    invoke-virtual {p1, v0, v2, v3, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :cond_1
    return-void
.end method

.method public getInBlue()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->c:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public getInGray()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->d:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public getInGreen()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->b:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public getInRed()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->a:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public getOutBlue()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->g:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public getOutGray()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->h:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public getOutGreen()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->f:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public getOutRed()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->e:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public setInBlue(LCatalano/Core/IntRange;)V
    .locals 2

    .prologue
    .line 75
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->c:LCatalano/Core/IntRange;

    .line 76
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->g:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->k:[I

    invoke-direct {p0, p1, v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 77
    return-void
.end method

.method public setInGray(LCatalano/Core/IntRange;)V
    .locals 2

    .prologue
    .line 92
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->d:LCatalano/Core/IntRange;

    .line 93
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->h:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->l:[I

    invoke-direct {p0, p1, v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 94
    return-void
.end method

.method public setInGreen(LCatalano/Core/IntRange;)V
    .locals 2

    .prologue
    .line 109
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->b:LCatalano/Core/IntRange;

    .line 110
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->f:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->j:[I

    invoke-direct {p0, p1, v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 111
    return-void
.end method

.method public setInRGB(LCatalano/Core/IntRange;)V
    .locals 2

    .prologue
    .line 203
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->a:LCatalano/Core/IntRange;

    .line 204
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->b:LCatalano/Core/IntRange;

    .line 205
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->c:LCatalano/Core/IntRange;

    .line 207
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->e:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->i:[I

    invoke-direct {p0, p1, v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 208
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->f:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->j:[I

    invoke-direct {p0, p1, v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 209
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->g:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->k:[I

    invoke-direct {p0, p1, v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 210
    return-void
.end method

.method public setInRed(LCatalano/Core/IntRange;)V
    .locals 2

    .prologue
    .line 126
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->a:LCatalano/Core/IntRange;

    .line 127
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->e:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->i:[I

    invoke-direct {p0, p1, v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 128
    return-void
.end method

.method public setOutBlue(LCatalano/Core/IntRange;)V
    .locals 2

    .prologue
    .line 143
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->g:LCatalano/Core/IntRange;

    .line 144
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->c:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->k:[I

    invoke-direct {p0, v0, p1, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 145
    return-void
.end method

.method public setOutGray(LCatalano/Core/IntRange;)V
    .locals 2

    .prologue
    .line 160
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->h:LCatalano/Core/IntRange;

    .line 161
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->d:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->l:[I

    invoke-direct {p0, v0, p1, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 162
    return-void
.end method

.method public setOutGreen(LCatalano/Core/IntRange;)V
    .locals 2

    .prologue
    .line 177
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->f:LCatalano/Core/IntRange;

    .line 178
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->b:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->j:[I

    invoke-direct {p0, v0, p1, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 179
    return-void
.end method

.method public setOutRGB(LCatalano/Core/IntRange;)V
    .locals 2

    .prologue
    .line 217
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->e:LCatalano/Core/IntRange;

    .line 218
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->f:LCatalano/Core/IntRange;

    .line 219
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->g:LCatalano/Core/IntRange;

    .line 221
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->a:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->i:[I

    invoke-direct {p0, v0, p1, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 222
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->b:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->j:[I

    invoke-direct {p0, v0, p1, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 223
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->c:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->k:[I

    invoke-direct {p0, v0, p1, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 224
    return-void
.end method

.method public setOutRed(LCatalano/Core/IntRange;)V
    .locals 2

    .prologue
    .line 194
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsLinear;->e:LCatalano/Core/IntRange;

    .line 195
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsLinear;->a:LCatalano/Core/IntRange;

    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsLinear;->i:[I

    invoke-direct {p0, v0, p1, v1}, LCatalano/Imaging/Filters/LevelsLinear;->a(LCatalano/Core/IntRange;LCatalano/Core/IntRange;[I)V

    .line 196
    return-void
.end method
