.class public LCatalano/Imaging/Concurrent/Filters/Mean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/Mean$a;,
        LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;
    }
.end annotation


# instance fields
.field private a:I

.field private b:LCatalano/Imaging/FastBitmap;

.field private c:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->a:I

    .line 63
    sget-object v0, LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->c:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 64
    iput v1, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->d:I

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->a:I

    .line 63
    sget-object v1, LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    iput-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->c:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 64
    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->d:I

    .line 76
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 77
    :cond_0
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->a:I

    .line 78
    return-void
.end method

.method public constructor <init>(ILCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->a:I

    .line 63
    sget-object v1, LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    iput-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->c:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 64
    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->d:I

    .line 94
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 95
    :cond_0
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->a:I

    .line 96
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->c:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 97
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->a:I

    .line 63
    sget-object v0, LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->c:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 64
    iput v1, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->d:I

    .line 85
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->c:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 86
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 419
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/Mean;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->a:I

    return v0
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/Mean;I)I
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(I)I

    move-result v0

    return v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v6

    .line 157
    new-array v7, v6, [Ljava/lang/Thread;

    .line 158
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    div-int v5, v0, v6

    .line 160
    add-int/lit8 v8, v6, -0x1

    move v2, v1

    move v3, v1

    move v0, v1

    move v4, v5

    .line 164
    :goto_0
    if-ge v2, v6, :cond_1

    .line 165
    if-ne v2, v8, :cond_0

    const/4 v0, 0x1

    .line 166
    :cond_0
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, LCatalano/Imaging/Concurrent/Filters/Mean$a;

    new-instance v11, LCatalano/Imaging/Concurrent/Share;

    invoke-direct {v11, p1, v3, v4, v0}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;IIZ)V

    invoke-direct {v10, p0, v11}, LCatalano/Imaging/Concurrent/Filters/Mean$a;-><init>(LCatalano/Imaging/Concurrent/Filters/Mean;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v9, v7, v2

    .line 167
    aget-object v3, v7, v2

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 169
    add-int v3, v4, v5

    .line 164
    add-int/lit8 v2, v2, 0x1

    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_0

    :cond_1
    move v0, v1

    .line 173
    :goto_1
    if-ge v0, v6, :cond_2

    .line 174
    :try_start_0
    aget-object v1, v7, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 179
    :cond_2
    return-void
.end method

.method static synthetic b(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->c:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    return-object v0
.end method

.method static synthetic c(LCatalano/Imaging/Concurrent/Filters/Mean;)LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->b:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method static synthetic d(LCatalano/Imaging/Concurrent/Filters/Mean;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->d:I

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 149
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->b:LCatalano/Imaging/FastBitmap;

    .line 150
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/Mean;->a(LCatalano/Imaging/FastBitmap;)V

    .line 151
    return-void
.end method

.method public getArithmetic()LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->c:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->d:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->a:I

    return v0
.end method

.method public setArithmetic(LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->c:LCatalano/Imaging/Concurrent/Filters/Mean$Arithmetic;

    .line 113
    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->d:I

    .line 145
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/Mean;->a:I

    .line 129
    return-void
.end method
