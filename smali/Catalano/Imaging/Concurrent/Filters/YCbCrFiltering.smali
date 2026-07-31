.class public LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;
    }
.end annotation


# instance fields
.field private a:LCatalano/Core/FloatRange;

.field private b:LCatalano/Core/FloatRange;

.field private c:LCatalano/Core/FloatRange;

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, -0x41000000    # -0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, LCatalano/Core/FloatRange;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->a:LCatalano/Core/FloatRange;

    .line 44
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v4, v5}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->b:LCatalano/Core/FloatRange;

    .line 45
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v4, v5}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->c:LCatalano/Core/FloatRange;

    .line 47
    iput v2, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->d:F

    .line 48
    iput v2, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->e:F

    .line 49
    iput v2, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->f:F

    .line 50
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->g:Z

    .line 52
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->h:Z

    .line 53
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->i:Z

    .line 54
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->j:Z

    .line 191
    return-void
.end method

.method public constructor <init>(LCatalano/Core/FloatRange;LCatalano/Core/FloatRange;LCatalano/Core/FloatRange;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, -0x41000000    # -0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, LCatalano/Core/FloatRange;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->a:LCatalano/Core/FloatRange;

    .line 44
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v4, v5}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->b:LCatalano/Core/FloatRange;

    .line 45
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v4, v5}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->c:LCatalano/Core/FloatRange;

    .line 47
    iput v2, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->d:F

    .line 48
    iput v2, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->e:F

    .line 49
    iput v2, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->f:F

    .line 50
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->g:Z

    .line 52
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->h:Z

    .line 53
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->i:Z

    .line 54
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->j:Z

    .line 200
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->a:LCatalano/Core/FloatRange;

    .line 201
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->b:LCatalano/Core/FloatRange;

    .line 202
    iput-object p3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->c:LCatalano/Core/FloatRange;

    .line 203
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->a:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 219
    new-array v4, v3, [Ljava/lang/Thread;

    .line 220
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    div-int v5, v1, v3

    move v1, v0

    move v2, v0

    .line 223
    :goto_0
    if-ge v1, v3, :cond_0

    .line 224
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;

    new-instance v8, LCatalano/Imaging/Concurrent/Share;

    add-int v9, v2, v5

    invoke-direct {v8, p1, v2, v9}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;II)V

    invoke-direct {v7, p0, v8}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering$a;-><init>(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v6, v4, v1

    .line 225
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 226
    add-int/2addr v2, v5

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    .line 232
    :try_start_0
    aget-object v1, v4, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 238
    :cond_1
    return-void
.end method

.method static synthetic b(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->b:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method static synthetic c(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->c:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method static synthetic d(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->g:Z

    return v0
.end method

.method static synthetic e(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->h:Z

    return v0
.end method

.method static synthetic f(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->d:F

    return v0
.end method

.method static synthetic g(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->i:Z

    return v0
.end method

.method static synthetic h(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->e:F

    return v0
.end method

.method static synthetic i(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->j:Z

    return v0
.end method

.method static synthetic j(LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->f:F

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->a(LCatalano/Imaging/FastBitmap;)V

    .line 214
    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HSL Filtering only works in RGB space color."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCb()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->b:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public getCr()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->c:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public getFillColor()[F
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->d:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->e:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->f:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getY()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->a:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public isFillOutsideRange()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->g:Z

    return v0
.end method

.method public isUpdatedCb()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->i:Z

    return v0
.end method

.method public isUpdatedCr()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->j:Z

    return v0
.end method

.method public isUpdatedY()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->h:Z

    return v0
.end method

.method public setCb(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->b:LCatalano/Core/FloatRange;

    .line 86
    return-void
.end method

.method public setCr(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->c:LCatalano/Core/FloatRange;

    .line 102
    return-void
.end method

.method public setFillColor(FFF)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->d:F

    .line 120
    iput p2, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->e:F

    .line 121
    iput p3, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->f:F

    .line 122
    return-void
.end method

.method public setFillOutsideRange(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->g:Z

    .line 138
    return-void
.end method

.method public setHue(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->a:LCatalano/Core/FloatRange;

    .line 70
    return-void
.end method

.method public setUpdateCb(Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->i:Z

    .line 170
    return-void
.end method

.method public setUpdateCr(Z)V
    .locals 0

    .prologue
    .line 185
    iput-boolean p1, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->j:Z

    .line 186
    return-void
.end method

.method public setUpdateY(Z)V
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, LCatalano/Imaging/Concurrent/Filters/YCbCrFiltering;->h:Z

    .line 154
    return-void
.end method
