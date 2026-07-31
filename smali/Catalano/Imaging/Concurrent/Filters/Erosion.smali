.class public LCatalano/Imaging/Concurrent/Filters/Erosion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/Erosion$a;
    }
.end annotation


# instance fields
.field a:LCatalano/Imaging/FastBitmap;

.field private b:I

.field private c:[[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->b:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->b:I

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->b:I

    .line 55
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->b:I

    .line 56
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->b:I

    .line 63
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->c:[[I

    .line 64
    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 195
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 196
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->c:[[I

    move v0, v1

    .line 197
    :goto_0
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->c:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 198
    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->c:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 199
    iget-object v3, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->c:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aput v4, v3, v2

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/Erosion;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/Erosion;->a(I)V

    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v4

    .line 79
    new-array v5, v4, [Ljava/lang/Thread;

    .line 80
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    div-int v6, v0, v4

    .line 81
    add-int/lit8 v7, v4, -0x1

    move v2, v1

    move v3, v1

    move v0, v1

    .line 85
    :goto_0
    if-ge v2, v4, :cond_1

    .line 86
    if-ne v2, v7, :cond_0

    const/4 v0, 0x1

    .line 87
    :cond_0
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, LCatalano/Imaging/Concurrent/Filters/Erosion$a;

    new-instance v10, LCatalano/Imaging/Concurrent/Share;

    add-int v11, v3, v6

    invoke-direct {v10, p1, v3, v11, v0}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;IIZ)V

    invoke-direct {v9, p0, v10}, LCatalano/Imaging/Concurrent/Filters/Erosion$a;-><init>(LCatalano/Imaging/Concurrent/Filters/Erosion;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v8, v5, v2

    .line 88
    aget-object v8, v5, v2

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 89
    add-int/2addr v3, v6

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 94
    :goto_1
    if-ge v0, v4, :cond_2

    .line 95
    :try_start_0
    aget-object v1, v5, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 101
    :cond_2
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/Erosion;)[[I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->c:[[I

    return-object v0
.end method

.method static synthetic b(LCatalano/Imaging/Concurrent/Filters/Erosion;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->b:I

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 68
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->a:LCatalano/Imaging/FastBitmap;

    .line 70
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->c:[[I

    if-nez v0, :cond_0

    .line 71
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/Erosion;->b:I

    invoke-direct {p0, v0}, LCatalano/Imaging/Concurrent/Filters/Erosion;->a(I)V

    .line 73
    :cond_0
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/Erosion;->a(LCatalano/Imaging/FastBitmap;)V

    .line 74
    return-void
.end method
