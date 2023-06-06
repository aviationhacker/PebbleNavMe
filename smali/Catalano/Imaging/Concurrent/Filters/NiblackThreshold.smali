.class public LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

.field private b:I

.field private c:D

.field private d:D

.field private e:LCatalano/Imaging/FastBitmap;

.field private f:LCatalano/Imaging/FastBitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->a:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 36
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->b:I

    .line 37
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->c:D

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->d:D

    .line 110
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->a:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 36
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->b:I

    .line 37
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->c:D

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->d:D

    .line 126
    iput-wide p1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->c:D

    .line 127
    iput-wide p3, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->d:D

    .line 128
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->a:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 36
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->b:I

    .line 37
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->c:D

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->d:D

    .line 117
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->b:I

    .line 118
    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->a:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 36
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->b:I

    .line 37
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->c:D

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->d:D

    .line 137
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->b:I

    .line 138
    iput-wide p2, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->c:D

    .line 139
    iput-wide p4, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->d:D

    .line 140
    return-void
.end method

.method public constructor <init>(IDDLCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;)V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->a:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 36
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->b:I

    .line 37
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->c:D

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->d:D

    .line 150
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->b:I

    .line 151
    iput-wide p2, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->c:D

    .line 152
    iput-wide p4, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->d:D

    .line 153
    iput-object p6, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->a:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 154
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;)LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->e:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v4

    .line 180
    new-array v5, v4, [Ljava/lang/Thread;

    .line 181
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    div-int/2addr v0, v4

    .line 182
    add-int/lit8 v6, v4, -0x1

    move v2, v1

    move v3, v1

    .line 185
    :goto_0
    if-ge v2, v4, :cond_1

    .line 186
    if-ne v6, v2, :cond_0

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, v3

    .line 187
    :cond_0
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;

    new-instance v9, LCatalano/Imaging/Concurrent/Share;

    add-int v10, v3, v0

    invoke-direct {v9, p1, v3, v10}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;II)V

    invoke-direct {v8, p0, v9}, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold$a;-><init>(LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v7, v5, v2

    .line 188
    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 189
    add-int/2addr v3, v0

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 194
    :goto_1
    if-ge v0, v4, :cond_2

    .line 195
    :try_start_0
    aget-object v1, v5, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 201
    :cond_2
    return-void
.end method

.method static synthetic b(LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;)LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->f:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method static synthetic c(LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;)D
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->c:D

    return-wide v0
.end method

.method static synthetic d(LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;)D
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->d:D

    return-wide v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->e:LCatalano/Imaging/FastBitmap;

    .line 161
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->f:LCatalano/Imaging/FastBitmap;

    .line 163
    new-instance v0, LCatalano/Imaging/Concurrent/Filters/Mean;

    iget v1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->b:I

    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->a:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Concurrent/Filters/Mean;-><init>(ILCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;)V

    .line 164
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->e:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v1}, LCatalano/Imaging/Concurrent/Filters/Mean;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 166
    new-instance v0, LCatalano/Imaging/Concurrent/Filters/FastVariance;

    iget v1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->b:I

    invoke-direct {v0, v1}, LCatalano/Imaging/Concurrent/Filters/FastVariance;-><init>(I)V

    .line 167
    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->f:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v1}, LCatalano/Imaging/Concurrent/Filters/FastVariance;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 169
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->a(LCatalano/Imaging/FastBitmap;)V

    .line 175
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Niblack threshold only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArithmetic()LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->a:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    return-object v0
.end method

.method public getC()D
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->d:D

    return-wide v0
.end method

.method public getK()D
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->c:D

    return-wide v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->b:I

    return v0
.end method

.method public setArithmetic(LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->a:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 57
    return-void
.end method

.method public setC(D)V
    .locals 1

    .prologue
    .line 104
    iput-wide p1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->d:D

    .line 105
    return-void
.end method

.method public setK(D)V
    .locals 1

    .prologue
    .line 88
    iput-wide p1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->c:D

    .line 89
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/NiblackThreshold;->b:I

    .line 73
    return-void
.end method
