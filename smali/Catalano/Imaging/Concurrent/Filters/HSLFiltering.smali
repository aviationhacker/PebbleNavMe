.class public LCatalano/Imaging/Concurrent/Filters/HSLFiltering;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;
    }
.end annotation


# instance fields
.field private a:LCatalano/Core/IntRange;

.field private b:LCatalano/Core/FloatRange;

.field private c:LCatalano/Core/FloatRange;

.field private d:I

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
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, LCatalano/Core/IntRange;

    const/16 v1, 0x167

    invoke-direct {v0, v5, v1}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    .line 45
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v2, v4}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->b:LCatalano/Core/FloatRange;

    .line 46
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v2, v4}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c:LCatalano/Core/FloatRange;

    .line 48
    iput v5, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->d:I

    .line 49
    iput v2, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->e:F

    .line 50
    iput v2, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->f:F

    .line 51
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->g:Z

    .line 53
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->h:Z

    .line 54
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->i:Z

    .line 55
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->j:Z

    .line 192
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntRange;LCatalano/Core/FloatRange;LCatalano/Core/FloatRange;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, LCatalano/Core/IntRange;

    const/16 v1, 0x167

    invoke-direct {v0, v5, v1}, LCatalano/Core/IntRange;-><init>(II)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    .line 45
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v2, v4}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->b:LCatalano/Core/FloatRange;

    .line 46
    new-instance v0, LCatalano/Core/FloatRange;

    invoke-direct {v0, v2, v4}, LCatalano/Core/FloatRange;-><init>(FF)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c:LCatalano/Core/FloatRange;

    .line 48
    iput v5, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->d:I

    .line 49
    iput v2, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->e:F

    .line 50
    iput v2, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->f:F

    .line 51
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->g:Z

    .line 53
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->h:Z

    .line 54
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->i:Z

    .line 55
    iput-boolean v3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->j:Z

    .line 201
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    .line 202
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->b:LCatalano/Core/FloatRange;

    .line 203
    iput-object p3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c:LCatalano/Core/FloatRange;

    .line 204
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->b:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 220
    new-array v4, v3, [Ljava/lang/Thread;

    .line 221
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    div-int v5, v1, v3

    move v1, v0

    move v2, v0

    .line 224
    :goto_0
    if-ge v1, v3, :cond_0

    .line 225
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;

    new-instance v8, LCatalano/Imaging/Concurrent/Share;

    add-int v9, v2, v5

    invoke-direct {v8, p1, v2, v9}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;II)V

    invoke-direct {v7, p0, v8}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering$a;-><init>(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v6, v4, v1

    .line 226
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 227
    add-int/2addr v2, v5

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    .line 233
    :try_start_0
    aget-object v1, v4, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 239
    :cond_1
    return-void
.end method

.method static synthetic b(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method static synthetic c(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    return-object v0
.end method

.method static synthetic d(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->g:Z

    return v0
.end method

.method static synthetic e(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->h:Z

    return v0
.end method

.method static synthetic f(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->d:I

    return v0
.end method

.method static synthetic g(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->i:Z

    return v0
.end method

.method static synthetic h(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->e:F

    return v0
.end method

.method static synthetic i(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->j:Z

    return v0
.end method

.method static synthetic j(LCatalano/Imaging/Concurrent/Filters/HSLFiltering;)F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->f:F

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->a(LCatalano/Imaging/FastBitmap;)V

    .line 215
    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HSL Filtering only works in RGB space color."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFillColor()[F
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->d:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->e:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->f:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getHue()LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    return-object v0
.end method

.method public getLuminance()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public getSaturation()LCatalano/Core/FloatRange;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->b:LCatalano/Core/FloatRange;

    return-object v0
.end method

.method public isFillOutsideRange()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->g:Z

    return v0
.end method

.method public isUpdatedHue()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->h:Z

    return v0
.end method

.method public isUpdatedLuminance()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->j:Z

    return v0
.end method

.method public isUpdatedSaturation()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->i:Z

    return v0
.end method

.method public setFillColor(IFF)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->d:I

    .line 121
    iput p2, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->e:F

    .line 122
    iput p3, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->f:F

    .line 123
    return-void
.end method

.method public setFillOutsideRange(Z)V
    .locals 0

    .prologue
    .line 138
    iput-boolean p1, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->g:Z

    .line 139
    return-void
.end method

.method public setHue(LCatalano/Core/IntRange;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->a:LCatalano/Core/IntRange;

    .line 71
    return-void
.end method

.method public setLuminance(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->c:LCatalano/Core/FloatRange;

    .line 103
    return-void
.end method

.method public setSaturation(LCatalano/Core/FloatRange;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->b:LCatalano/Core/FloatRange;

    .line 87
    return-void
.end method

.method public setUpdateHue(Z)V
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->h:Z

    .line 155
    return-void
.end method

.method public setUpdateLuminance(Z)V
    .locals 0

    .prologue
    .line 186
    iput-boolean p1, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->j:Z

    .line 187
    return-void
.end method

.method public setUpdateSaturation(Z)V
    .locals 0

    .prologue
    .line 170
    iput-boolean p1, p0, LCatalano/Imaging/Concurrent/Filters/HSLFiltering;->i:Z

    .line 171
    return-void
.end method
